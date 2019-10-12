# -*-coding:utf8 -*-
import os
import sqlite3
import json
import os.path

from flask import Flask, request, session, g, redirect, url_for, abort, \
    render_template, flash, Response, make_response, jsonify, current_app, \
    send_from_directory, after_this_request

import functools
from functools import wraps
import gzip
try:
    from cStringIO import StringIO as IO
except ImportError:
    from io import StringIO as IO
try:
    import StringIO as StrIO
except ImportError:
    import io as StrIO   

from werkzeug import utils

app = Flask(__name__)
app.config.from_object(__name__)

app.config.update(dict(
    DATABASE=os.path.join(app.root_path, 'bank.db'),
    DEBUG=True,
    SECRET_KEY='development key',
    USERNAME='admin',
    PASSWORD='default'
))
app.config.from_envvar('FLASKR_SETTINGS', silent=True)


def get_response_data(data):
    return_dict = {'records': data}
    try:
        resp_data = json.dumps(return_dict).decode('unicode-escape').encode('utf-8')
    except Exception as e:
        print(e.message)
        resp_data = json.dumps(return_dict, ensure_ascii=False)

    return resp_data


def get_request_data(request, for_key):
    data = dict
    if request.method == 'GET':
        data = request.args
    else:
        try:
            if request.json is not None:
                data = request.json
                data = json.dumps(json.loads(data), ensure_ascii=False)
            elif request.form is not None and len(request.form) > 0:
                data = json.dumps(request.form, ensure_ascii=False)
            else:
                data = request.data

        except Exception as e:
            print("Request data does not exist!")
            print(str(e))
            return str(e)

    if for_key and data.has_key(for_key):
        return data.get(for_key, "")

    return data


def jsonp(func):
    """Wraps JSONified output for JSONP requests."""

    @wraps(func)
    def decorated_function(*args, **kwargs):
        callback = request.args.get('callback', False)
        if callback:
            data = str(func(*args, **kwargs).data)
            content = str(callback) + '(' + data + ')'
            mimetype = 'application/javascript'
            return current_app.response_class(content, mimetype=mimetype)
        else:
            return func(*args, **kwargs)

    return decorated_function


def gzipped(f):
    """
    只支持POST、PUT请求
    """

    @functools.wraps(f)
    def view_func(*args, **kwargs):
        @after_this_request
        def zipper(response):
            accept_encoding = request.headers.get('Accept-Encoding', '')
            print("Request Accept-Encoding {0}".format(accept_encoding))

            if 'gzip' not in accept_encoding.lower():
                return response

            response.direct_passthrough = False

            if (response.status_code < 200 or
                    response.status_code >= 300 or
                    'Content-Encoding' in response.headers):
                return response

            if request.method not in ["POST", "PUT"]:
                return response

            try:
                if not response.data:
                    return response

                gzip_buffer = IO()
                gzip_file = gzip.GzipFile(mode='wb', fileobj=gzip_buffer)
                gzip_file.write(response.data)
                gzip_file.close()

                response.data = gzip_buffer.getvalue()
                gzip_buffer.close()
                print("Gzip response data successfully.")
                response.headers['Content-Encoding'] = 'gzip'
                response.headers['Vary'] = 'Accept-Encoding'

                return response
            except Exception as e:
                return response

        return f(*args, **kwargs)

    return view_func


def connect_db():
    """Connects to the specific database."""
    rv = sqlite3.connect(app.config['DATABASE'])
    rv.row_factory = sqlite3.Row
    return rv


def get_db():
    """
    Opens a new database connection if there is none yet for the
    current application context.
    """
    if not hasattr(g, 'sqlite_db'):
        g.sqlite_db = connect_db()
    return g.sqlite_db


@app.teardown_appcontext
def close_db(error):
    """Closes the database again at the end of the request."""
    if hasattr(g, 'sqlite_db'):
        g.sqlite_db.close()


def init_db():
    if os.path.isfile(app.config['DATABASE']):
        return
    with app.app_context():
        db = get_db()
        with app.open_resource('schema.sql', mode='r') as f:
            db.cursor().executescript(f.read())
        db.commit()


@app.route("/", methods=['GET', 'POST'])
@app.route("/index/")
@app.route("/api/home")
@app.route("/index.jsp")
@app.route("/index.asp")
@app.route("/index.aspx")
@app.route("/index.php")
@app.route("/index.html")
@app.route("/index.htm")
@app.route("/index.mhtml")
def home():
    return render_template('index.html')


@app.route("/large_page/", methods=['GET', 'POST'])
def large_page():
    return render_template('large_page.html')


@app.route('/sync_conf/', methods=['GET', 'POST', 'DELETE'])
@app.route('/api/', methods=['GET', 'POST', 'DELETE'])
# @gzipped
def show_entries():
    db = get_db()
    if request.method == 'DELETE':
        db.execute('DELETE FROM bank')
        db.commit()
        try:
            if request.json is not None:
                data = request.json

            elif request.form is not None:
                data = request.form
            else:
                data = request.data
            data = json.dumps(data)

        except Exception as e:
            print("Json does not exist!!")
            print(str(e))
            return str(e)

    if request.method == 'POST':
        try:
            if request.json is not None:
                data = request.json
                data = json.dumps(json.loads(data), ensure_ascii=False)
            elif request.form is not None and len(request.form) > 0:
                data = json.dumps(request.form, ensure_ascii=False)
            else:
                data = request.data

        except Exception as e:
            print("Json does not exist!!")
            print(str(e))
            return str(e)
        cur = db.execute('SELECT * FROM bank ORDER BY id DESC LIMIT 1')
        entry = cur.fetchall()

        if data and type(data) == dict:
            summary = data.get('trans')
            trans = data.get('trans')
            trans_type = data.get('type')

            if summary is None or trans is None or trans_type is None:
                pass
            else:
                db.execute('INSERT INTO bank (type, trans, sum) VALUES (?, ?, ?)',
                           [trans_type, trans, summary])
                db.commit()

    if request.method == 'GET':
        data = request.args
        cur = db.execute('SELECT * FROM bank ORDER BY id DESC LIMIT 1')
        entry = cur.fetchall()

        if data:
            if data.get("trans") and data.get("type"):
                summary = data.get('trans')
                db.execute('INSERT INTO bank (type, trans, sum) VALUES (?, ?, ?)',
                           [data.get('type'), data.get('trans'), summary])
                db.commit()
            else:
                print("Request with no trans & type.")
        else:
            print("Request with no args.")

    cur = db.execute('SELECT * FROM bank ORDER BY id DESC LIMIT 1')
    entries = cur.fetchall()

    try:
        buf = StrIO.StringIO(data)
        f = gzip.GzipFile(fileobj=buf)
        data = f.read()
        buf.close()
        f.close()
    except Exception as ex:
        print("Request data: ", ex.message)

    resp_data = get_response_data(data)
    resp = make_response(resp_data)
    resp.headers["Content-type"] = "application/json"
    resp.headers["Content-Length"] = len(resp_data)
    return resp


@app.route('/api/gzip/', methods=['POST', 'GET'])
def api_gzip():
    accept_encoding = request.headers.get('Accept-Encoding', '')
    print("accept_encoding: ", accept_encoding)
    print("Request Data: ", request.data)
    print("Request Args: ", request.args)
    if request.data:
        request_body = request.data
    elif request.args and len(request.args) > 0:
        request_body = request.args.get("data", "")
    elif request.form and len(request.form) > 0:
        request_body = request.form.get("data", "")
    else:
        request_body = ""

    DEFAULT_RESPONSE = "Can not get any request body, this is default response."
    body = DEFAULT_RESPONSE if request_body == "" else request_body
    try:
        buf = StrIO.StringIO(body)
        f = gzip.GzipFile(fileobj=buf)
        body = f.read()
        buf.close()
        f.close()
    except Exception as ex:
        print("Request data: {0}, needn't to unzip.".format(ex.message))

    data = json.dumps({'records': body}).decode('unicode-escape').encode('utf-8')

    gzip_buffer = IO()
    gzip_file = gzip.GzipFile(mode='wb', fileobj=gzip_buffer)
    gzip_file.write(data)
    gzip_file.close()

    zip_data = gzip_buffer.getvalue()
    gzip_buffer.close()

    print("Response Data: ", zip_data)

    response = make_response(zip_data)
    response.headers["Content-type"] = "application/json"
    response.headers['Content-Encoding'] = 'gzip'
    response.headers['Vary'] = 'Accept-Encoding'

    return response


@app.route('/test/api/test/', methods=['GET', 'POST', 'DELETE'])
def show_entries2():
    db = get_db()

    if request.method == 'DELETE':
        db.execute('DELETE FROM bank')
        db.commit()

    if request.method == 'POST':
        print(request.data)
        print(request.json)
        data = request.json
        cur = db.execute('SELECT * FROM bank ORDER BY id DESC LIMIT 1')
        entry = cur.fetchall()

        if data:
            summary = data['trans']
            # if len(entry) is not 0:
            #     r = entry[0]
            #     trans_type = data['type']
            #     if trans_type is 1:
            #         summary += r[3]
            #     elif trans_type is 2:
            #         summary = r[3] - summary

            db.execute('INSERT INTO bank (type, trans, sum) VALUES (?, ?, ?)',
                       [data['type'], data['trans'], summary])
            db.commit()

    # cur = db.execute('select * from bank order by id desc')
    cur = db.execute('SELECT * FROM bank ORDER BY id DESC LIMIT 1')
    entries = cur.fetchall()
    data = list()
    for row in entries:
        r = dict()
        r['type'] = row[1]
        r['trans'] = row[2]
        r['sum'] = row[3]
        data.append(r)
    return json.dumps({'records': data})


@app.route('/test/test/', methods=['GET', 'POST', 'DELETE'])
def show_entries3():
    db = get_db()

    if request.method == 'DELETE':
        db.execute('DELETE FROM bank')
        db.commit()

    if request.method == 'POST':
        print(request.data)
        print(request.json)
        data = request.json
        cur = db.execute('SELECT * FROM bank ORDER BY id DESC LIMIT 1')
        entry = cur.fetchall()

        if data:
            summary = data['trans']
            db.execute('INSERT INTO bank (type, trans, sum) VALUES (?, ?, ?)',
                       [data['type'], data['trans'], summary])
            db.commit()

    # cur = db.execute('select * from bank order by id desc')
    cur = db.execute('SELECT * FROM bank ORDER BY id DESC LIMIT 1')
    entries = cur.fetchall()
    data = list()
    for row in entries:
        r = dict()
        r['type'] = row[1]
        r['trans'] = row[2]
        r['sum'] = row[3]
        data.append(r)
    return json.dumps({'records': data})


@app.route('/custom_code/')
def generate_bad_gateway():
    return '', request.args.get('status')


@app.route('/api/large_data/', methods=['GET', 'POST'])
def show_large_data():
    data = list()
    for i in range(1, 1000):
        r = dict()
        r['type'] = i
        r['trans'] = 'trans'
        data.append(r)
    resp = make_response(json.dumps({'records': data}))
    resp.headers["Content-type"] = "application/json"
    return resp


@app.route('/large_data/', methods=['GET'])
def show_large_data2():
    data = list()
    for i in range(1, 1000):
        r = dict()
        r['type'] = i
        r['trans'] = 'trans'
        data.append(r)
    return json.dumps({'records': data})


@app.route('/api/minimal/', methods=['GET'])
def get_min_response():
    return json.dumps({})


@app.route('/api/upload/', methods=['POST'])
def api_upload():
    file_dir = os.path.join(app.root_path, 'upload')
    if not os.path.exists(file_dir):
        os.makedirs(file_dir)
    f = request.files['upload_file']
    if f:
        f.save(os.path.join(file_dir, f.filename))
        return json.dumps({"msg": "upload succeeded!"})
    else:
        abort(400)


@app.route('/api/upload_with_app/', methods=['POST'])
def api_upload_app():
    file_dir = os.path.join(app.root_path, 'upload')
    if not os.path.exists(file_dir):
        os.makedirs(file_dir)
    filename = request.headers["filename"]
    print("receive filename:", filename)
    if filename is None:
        return json.dumps({"msg": "no filename!"})
    try:
        with open(os.path.join(file_dir, filename), "w") as f:
            f.write(request.stream.read())
            f.close()
            return json.dumps({"msg": "upload succeeded!"})
        abort(400)
    except Exception as e:
        print(e)
        abort(400)


@app.route('/api/download/<path:filename>')
def api_download(filename):
    dirpath = os.path.join(app.root_path, 'upload')
    if os.path.isfile(os.path.join(dirpath, filename)):
        return send_from_directory('upload', filename, as_attachment=True)
    abort(404)


@app.route("/about/", methods=['GET'])
def show_about():
    return render_template('about.html')

userInfo = {
            'feifei': {'user_name': 'feifei', 'age': '30', 'sex': 'male', 'amount': '10000'},
            'qiqi': {'user_name': 'qiqi', 'age': '25', 'sex': 'female', 'amount': '30000'},
            'liyi': {'user_name': 'liyi', 'age': '20', 'sex': 'male', 'amount': '22000'},
            'lili': {'user_name': 'lili', 'age': '56', 'sex': 'female', 'amount': '20030'},
            'zhangdm': {'user_name': 'zhangdm', 'age': '27', 'sex': 'male', 'amount': '60000'},
            'limumu': {'user_name': 'limumu', 'age': '21', 'sex': 'male', 'amount': '70000'},
            'limu': {'user_name': 'limu', 'age': '29', 'sex': 'male', 'amount': '77000'}
            }


@app.route("/detail/", methods=['GET', 'POST'])
def userDetail():
    user = ""
    if request.method == 'GET':
        user = request.args.get("user")
    elif request.method == 'POST':
        if request.form is not None and len(request.form) > 0:
            user = request.form.get("user")

    resp = make_response(json.dumps(userInfo.get(user, ""), ensure_ascii=False))
    resp.headers["Access-Control-Allow-Origin"] = "*"
    return resp


@app.route("/register/", methods=['GET', 'POST', 'OPTIONS', 'HEAD'])
@app.route("/login/", methods=['GET', 'POST', 'OPTIONS', 'HEAD'])
def register():
    user = ""
    name = ""
    password = ""
    if request.method == 'POST':
        try:
            if request.json is not None:
                data = request.json
                #print("request.json",type(request.json), request.json)
            elif request.form is not None and len(request.form) > 0:
                data = request.form
                #print("request.form",type(request.form), request.form)
                '''
                for key in data:
                    if not name:
                        name = key
                    elif not password:
                        password = key
                '''
                name = data.getlist("uid")[0]
                password = data.getlist("passw")[0]
            elif type(request.data) == str:
                data = json.dumps(request.data, ensure_ascii=False)

            user = data.get("user_name")
        except Exception as e:
            print("Json does not exist!!")
            print(str(e))
            return str(e)
    elif request.method == 'GET':
        user = request.args.get("user_name")

    info = ""
    if name in userInfo.keys():
        if password == "123456":
            info = userInfo.get(name)
        else:
            info = {'error': u'密码错误!'}

    if not info:
        info = {'error': u'用户不存在!'}

    resp = make_response(json.dumps(info, ensure_ascii=False))
    resp.headers["Access-Control-Allow-Origin"] = "*"
    resp.headers['Access-Control-Allow-Methods'] = 'GET,POST,OPTIONS,HEAD'
    return resp


@app.route(
    "/api/testestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestes/",
    methods=['GET', 'POST'])
def show_long_url_path():
    if request.method == 'GET':
        return json.dumps({'records': 'GET'})
    if request.method == 'POST':
        return json.dumps({'records': 'POST'})


@app.route("/world_languages/", methods=['GET', 'POST', 'OPTIONS', 'HEAD'])
def world_languages():
    if request.method == 'GET':
        resp = render_template('world_languages.html')
    else:
        text = render_template('world_languages.html')
        resp = make_response(text)
        resp.headers["Access-Control-Allow-Origin"] = "*"
        resp.headers['Access-Control-Allow-Methods'] = 'GET,POST,OPTIONS,HEAD'
        resp.headers["Access-Control-Allow-Headers"] = "x-requested-with,content-type,test-expose-header"
    return resp


@app.route("/inner_page/", methods=['GET', 'POST', 'OPTIONS', 'HEAD'])
def inner_page():
    if request.method == 'GET':
        text = render_template('inner_page.html')
    else:
        text = render_template('inner_page.html')
    resp = make_response(text)
    resp.headers["Access-Control-Allow-Origin"] = "*"
    resp.headers['Access-Control-Allow-Methods'] = 'GET,POST,OPTIONS,HEAD'
    resp.headers["Access-Control-Allow-Headers"] = "x-requested-with,content-type,test-expose-header"
    resp.headers["Access-Control-Expose-Headers"] = "test-expose-header"
    resp.headers["test-expose-header"] = "response-test-expose-header"
    return resp


def test_ajax():
    data = ""
    if request.method == "POST" and request.json and request.json.has_key("data"):
        data = request.json.get("data")
    elif request.method == "GET" and request.args.get("data"):
        data = request.args.get("data")
    resp = make_response(json.dumps({"remoteDataJson": "Ajax request success!", "request_data": data}))
    resp.headers["Access-Control-Allow-Origin"] = "*"
    resp.headers['Access-Control-Allow-Methods'] = 'GET,POST,OPTIONS,HEAD'
    resp.headers["Access-Control-Allow-Headers"] = "x-requested-with,content-type,test-expose-header"
    resp.headers["Access-Control-Expose-Headers"] = "test-expose-header"
    resp.headers["test-expose-header"] = "response-test-expose-header"
    return resp


@app.route("/test_ajax/", methods=['GET', 'POST', 'OPTIONS', 'HEAD'])
@gzipped
def test_ajax_all():
    return test_ajax()


@app.route("/test_ajax_get/", methods=['GET', 'OPTIONS', 'HEAD'])
@gzipped
def test_ajax_get():
    return test_ajax()


@app.route("/test_ajax_post/", methods=['POST', 'OPTIONS', 'HEAD'])
@gzipped
def test_ajax_post():
    return test_ajax()


@app.route("/test_jsonp/")
def test_jsonp():
    callback_name = request.args['callback']
    resp = make_response(
        "{0}({1})".format(callback_name, json.dumps({"jsonpData": "Correct jsonp response data from server."})))
    resp.headers["Content-type"] = "application/javascript"
    return resp


@app.route("/test_form/", methods=['GET', 'POST', 'DELETE', 'PUT', 'OPTIONS', "HEAD"])
def test_form():
    data = request.args.to_dict()
    temp = render_template('form_commit.html', redata=data)
    resp = make_response(temp)
    resp.headers["Access-Control-Allow-Origin"] = "*"
    resp.headers['Access-Control-Allow-Methods'] = 'GET,POST,OPTIONS,HEAD'
    resp.headers["Access-Control-Allow-Headers"] = "Origin,x-requested-with,content-type"
    return resp


@app.route("/redirect/", methods=['GET', 'POST'])
def redirect():
    data = dict()
    if request.method == 'GET':
        data = request.args.to_dict()
    if request.method == 'POST':
        try:
            if request.json is not None:
                data = request.json
                data = json.loads(data)
            elif request.form is not None:
                data = request.form
            elif request.values and request.values.has_key("location_host"):
                data = request.values
            else:
                data = request.data
            print(request.get_data())


        except Exception as e:
            print("Json does not exist!!")
            print(str(e))
            return str(e)

    resp = make_response((json.dumps({'records': data}, ensure_ascii=False), 302))
    resp.headers["Content-type"] = "application/json"
    location_host = data.get('location_host')
    if location_host:
        resp.headers["location"] = "http://{0}/".format(location_host)
    else:
        resp.headers["location"] = "http://{0}/".format(request.host)
    return resp


@app.route('/mydict', methods=['GET', 'POST'])
def mydict():
    d = {'name': 'xmr', 'age': 18}
    return jsonify(d)


@app.route('/show/j', methods=['GET'])
def show_photo():
    file_dir = 'static/'
    if request.method == 'GET':
        image_data = open(os.path.join(file_dir, '%s' % 'j.jpeg'), "rb").read()
        response = make_response(image_data)
        response.headers['Content-Type'] = 'image/png'
        return response
    abort(404)


@app.route("/hook.html")
def hookHtml():
    return render_template('hook.html')


@app.route("/not_html/")
@app.route("/not_html.html")
def not_html():
    response = make_response("Just text, not the html page.")
    response.headers['Content-Type'] = 'text/plain'
    return response


@app.route("/test_result/", methods=['GET', 'POST'])
def test_result():
    if request.method == "POST":
        db = get_db()
        data = request.json
        if data:
            platform = data.get("platform")
            model = data.get("model")
            sys_version = data.get("sys_version")
            manufacturer = data.get("manufacturer")
            case_name = data.get("case_name")
            result = data.get("result")
            error = data.get("error")
            device_id = data.get("device_id")

            try:
                db.execute(
                    'INSERT INTO test_results (platform, model, sys_version, manufacturer, case_name, result, error, device_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?)',
                    [platform, model, sys_version, manufacturer, case_name, result, error, device_id])
                db.commit()
                db.close()
                return json.dumps({'result': True})
            except Exception as e:
                print(e.message)
                return json.dumps({'result': False})
        else:
            form = request.form
            if form.get('request_type') == "load_results":
                results = []
                cur = db.execute('SELECT * FROM test_results ORDER BY id DESC')
                entry = cur.fetchall()
                for row in entry:
                    re = dict((cur.description[idx][0], v) for idx, v in enumerate(row))
                    results.append(re)
                db.close()
                return json.dumps(results)
            else:
                db.execute('DELETE FROM test_results')
                db.commit()
                db.close()
                return json.dumps({"result": True})

    if request.method == "GET":
        return render_template('test_results.html')


if __name__ == "__main__":
    #init_db()
    app.run(host='::', port=5001, threaded=True, debug=True)
    # server = pywsgi.WSGIServer(('::', 5001), app)
    # server.serve_forever()
