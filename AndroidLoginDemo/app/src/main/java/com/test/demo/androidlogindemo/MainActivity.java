package com.test.demo.androidlogindemo;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.view.View.OnClickListener;
import android.widget.Switch;
import android.widget.Toast;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;

import com.msec.MSecClient;
import com.msec.net.URL;

import org.json.JSONException;
import org.json.JSONObject;

public class MainActivity extends AppCompatActivity {
    private EditText mServer;
    private EditText mAccount;
    private EditText mPwd;
    private Button mLoginButton;
    private Button mLogoutButton;
    private Button mWebButton;
    private Context ctx;

    static public Switch secureSwitch;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        ctx = this;
        mServer = findViewById(R.id.server);
        mAccount = findViewById(R.id.usrname);
        mPwd = findViewById(R.id.psd);
        mLoginButton = findViewById(R.id.login);
        mLogoutButton = findViewById(R.id.logout);
        mWebButton = findViewById(R.id.web);
        secureSwitch = findViewById(R.id.secureSwitch);

        secureSwitch.setChecked(true);
        secureSwitch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                secureSwitch.setChecked(isChecked);
            }
        });

        mLoginButton.setOnClickListener(mListener);
        mLogoutButton.setOnClickListener(mListener);
        mWebButton.setOnClickListener(mListener);

        SharedPreferences preferences =  PreferenceManager.getDefaultSharedPreferences(this);
        String server = preferences.getString("server", "");
        if (!server.equals("")) {
            mServer.setText(server);
        }

        MSecClient.initialize(this.getApplicationContext());

    }

    OnClickListener mListener = new OnClickListener() {
        @Override
        public void onClick(View view) {
            switch (view.getId()) {
                case R.id.login:
                    userLogin();
                    break;
                case R.id.logout:
                    userLogout();
                    break;
                case R.id.web:
                    webPage();
                    break;
            }
        }
    };

    void userLogin() {
        String server = mServer.getText().toString().trim();
        String acc = mAccount.getText().toString().trim();
        String psd = mPwd.getText().toString().trim();
        if (isInputValid(server, acc, psd)) {
            if (!server.contains("://")) {
                server = "http://" + server;
            }
            final String fServer = server;
            final String fData = acc + "&" + psd;
            new Thread(new Runnable() {
                @Override
                public void run() {
                    postData(fServer, fData);
                }
            }).start();
        }
    }

    void userLogout() {
        mAccount.getText().clear();
        mPwd.getText().clear();
    }

    void webPage() {
        Intent intent = new Intent(this, MyWebview.class);
        Bundle bundle = new Bundle();
        bundle.putString("url", mServer.getText().toString().trim());
        intent.putExtras(bundle);
        startActivity(intent);
    }

    boolean isInputValid(String server, String acc, String psd) {
        if (server.equals("")) {
            Toast.makeText(this, "请输入有效的服务器地址", Toast.LENGTH_SHORT).show();
            return false;
        }
        if (acc.equals("") && psd.equals("")) {
            Toast.makeText(this, "请输入用户名和密码", Toast.LENGTH_SHORT).show();
            return false;
        } else if (acc.equals("")) {
            Toast.makeText(this, "请输入用户名", Toast.LENGTH_SHORT).show();
            return false;
        } else if (psd.equals("")) {
            Toast.makeText(this, "请输入密码", Toast.LENGTH_SHORT).show();
            return false;
        }
        return true;
    }

    void postData(String server, String data) {
        HttpURLConnection conn = null;
        try {
            if (secureSwitch.isChecked()) {
                URL url = new URL(server);
                conn = (HttpURLConnection) url.openConnection();
            }
            else {
                java.net.URL url = new java.net.URL(server);
                conn = (HttpURLConnection) url.openConnection();
            }
            conn.setConnectTimeout(20000);
            conn.setRequestMethod("POST");
            conn.setDoInput(true);
            conn.setDoOutput(true);
            conn.setUseCaches(false);

            DataOutputStream output = new DataOutputStream(conn.getOutputStream());


            output.write(data.getBytes());
            output.flush();
            output.close();

            int code = conn.getResponseCode();
            if (code == HttpURLConnection.HTTP_OK) {
                SharedPreferences preferences =  PreferenceManager.getDefaultSharedPreferences(this);
                SharedPreferences.Editor editor = preferences.edit();
                editor.putString("server", server);
                editor.apply();

                BufferedReader reader = new BufferedReader(new InputStreamReader(conn.getInputStream()));
                StringBuilder result = new StringBuilder();
                String line;
                while((line = reader.readLine()) != null) {
                    result.append(line);
                }

                String resData = result.toString();
                try {
                    JSONObject resJson = new JSONObject(resData);
                    try {
                        String error = resJson.get("error").toString();
                        makeToast("用户名或密码输入错误，请重新输入！");
                        return;
                    } catch (JSONException e) {

                    }

                    Intent intent = new Intent(this, LoginSuccess.class);
                    Bundle bundle = new Bundle();
                    bundle.putString("name", resJson.get("user_name").toString());
                    bundle.putString("age", resJson.get("age").toString());
                    bundle.putString("sex", resJson.get("sex").toString());
                    bundle.putString("amount", resJson.get("amount").toString());
                    intent.putExtras(bundle);
                    startActivity(intent);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            } else {
                makeToast("请求发送失败! 响应码: " + code);
            }
        } catch (MalformedURLException e) {
            e.printStackTrace();
            makeToast("填写的服务器地址错误，请检查！");
        } catch (IOException e) {
            e.printStackTrace();
            makeToast("请求发送失败，检查服务器地址及保证网络通畅后重试！");
        } finally {
            if (conn != null) {
                conn.disconnect();
            }
        }
    }

    void makeToast(final String msg) {
        this.runOnUiThread(new Runnable() {
            public void run() {
                Toast.makeText(ctx, msg, Toast.LENGTH_SHORT).show();
            }
        });
    }
}
