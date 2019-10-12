#!/bin/bash

server="http://10.10.119.226:5001/login/"
username="qiqi"
password="123456"

location_X=400
location_url_y=400
location_name_y=540
location_password_y=680
location_login_y=850
location_del_y=1060
location_web_y=1250

function clear_input() {
    adb shell input keyevent KEYCODE_MOVE_END
    adb shell input keyevent --longpress $(printf 'KEYCODE_DEL %.0s' {1..250})
}

adb shell am start -n com.test.demo.androidlogindemo/com.test.demo.androidlogindemo.MainActivity
sleep 2

adb shell input tap $location_X $location_url_y
clear_input
adb shell input text $server
sleep 2

adb shell input tap $location_X $location_name_y
clear_input
adb shell input text $username
sleep 2

adb shell input tap $location_X $location_password_y
clear_input
adb shell input text $password
sleep 2

adb shell input tap $location_X $location_login_y
adb shell input keyevent 1
sleep 2
