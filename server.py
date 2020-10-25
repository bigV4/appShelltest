# coding:utf-8
from flask import Flask, request, make_response
import time, json, sys

app = Flask(__name__)

userInfo = {
            'fay': {'user_name': 'fay', 'age': '30', 'sex': 'male', 'amount': '10000'},
            'qiqi': {'user_name': 'qiqi', 'age': '25', 'sex': 'female', 'amount': '30000'},
            'liyi': {'user_name': 'liyi', 'age': '20', 'sex': 'male', 'amount': '20000'}
            }

@app.route('/login', methods = ['GET', 'POST', 'OPTIONS', 'HEAD'])
def login():
    data = request.data
    if not data:
        data = request.form

    if isinstance(data, str):
        data = json.loads(data)
    username = data.get('username')
    password = data.get('password')
    info = {}
    for user in userInfo.keys():
        if username == user:
            if password == 'password':
                info['success'] = time.strftime('%Y-%m-%d %H:%M:%S', time.localtime()) 
            else:
                info['error'] = u'密码错误!'
    
    if not info:
        info['error'] = u'未找到该用户!'

    resp = make_response(json.dumps(info, ensure_ascii=False))
    resp.headers["Access-Control-Allow-Origin"] = "*"
    resp.headers['Access-Control-Allow-Methods'] = 'GET,POST,OPTIONS,HEAD'
    return resp

@app.route('/account', methods = ['POST'])
def account():
    data = request.data
    if not data:
        data = request.form

    if isinstance(data, str):
        data = json.loads(data)
    username = data.get('username')
    password = data.get('password')
    for user in userInfo.keys():
        if username == user and password == 'password':
            resp = make_response(json.dumps(userInfo.get(user, ""), ensure_ascii=False))
            resp.headers["Access-Control-Allow-Origin"] = "*"
            return resp

    return make_response(json.dumps({'error': u'异常登录!'}, 403, ensure_ascii=False))

@app.route('/web', methods = ['GET'])
def H5():
    return make_response('This is webview test!', 200)

if __name__ == "__main__":
    port = 5000
    if len(sys.argv) > 1:
        port = sys.argv[1]

    app.run(host='0.0.0.0', port = port)