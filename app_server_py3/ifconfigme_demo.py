from flask import Blueprint , render_template, make_response, request
import json

#  创建蓝图 第一个参数为蓝图的名字
ifconfigme = Blueprint('ifconfigme',__name__)

@ifconfigme.route('/ifconfig/', methods=['GET','POST'])
@ifconfigme.route('/ifconfig')
def ifconfig_me():
    ip = request.remote_addr
    ua = str(request.user_agent)
    return render_template('ifconfig_me.html', user_ip=ip, ua=ua)

@ifconfigme.route('/ifconfig/ip/', methods=['GET','POST'])
@ifconfigme.route('/ifconfig/ip')
def ifconfig_ip():
    if request.method == 'GET' or request.method == 'POST':
        ip = request.remote_addr
        resp = make_response(ip, 200)
        return resp
    elif request.method == 'HEAD':
        resp = make_response("HEAD", 200)
        return resp

@ifconfigme.route('/ifconfig/ua/', methods=['GET','POST'])
@ifconfigme.route('/ifconfig/ua')
def ifconfig_ua():
    if request.method == 'GET' or request.method == 'POST':
        UA = request.user_agent
        data = {
            "User-Agent" : UA.string,
            "ua_browser" :UA.browser,
            "ua_version" : UA.version,
            "ua_platform" : UA.platform,
            "ua_language" : UA.language,
        }
        json_str = json.dumps(data, ensure_ascii=False)
        
        resp = make_response(json_str, 200)
        return resp
    elif request.method == 'HEAD':
        resp = make_response("HEAD", 200)
        return resp