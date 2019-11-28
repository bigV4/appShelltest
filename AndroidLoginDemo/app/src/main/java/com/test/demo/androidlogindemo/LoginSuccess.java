package com.test.demo.androidlogindemo;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.widget.TextView;

public class LoginSuccess extends AppCompatActivity {
    private TextView welcome;
    @Override
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.login_success);
        welcome = findViewById(R.id.textView);
        Intent intent = getIntent();
        Bundle bundle = intent.getExtras();
        if (bundle != null) {
            String name = bundle.getString("name");
            String sex = bundle.getString("sex").equals("male") ? "男" : "女";
            if (name != null) {
                welcome.setText(name + " 您好！欢迎回来。\n" +
                                "账户信息：\n" +
                                "姓名：" + name + "\n" +
                                "年龄：" + bundle.getString("age") + '\n' +
                                "性别：" + sex + "\n" +
                                "资金：" + bundle.getString("amount"));
            }
        }
    }
}
