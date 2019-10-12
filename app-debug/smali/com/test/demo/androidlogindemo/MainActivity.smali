.class public Lcom/test/demo/androidlogindemo/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# static fields
.field public static secureSwitch:Landroid/widget/Switch;


# instance fields
.field private ctx:Landroid/content/Context;

.field private mAccount:Landroid/widget/EditText;

.field mListener:Landroid/view/View$OnClickListener;

.field private mLoginButton:Landroid/widget/Button;

.field private mLogoutButton:Landroid/widget/Button;

.field private mPwd:Landroid/widget/EditText;

.field private mServer:Landroid/widget/EditText;

.field private mWebButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 77
    new-instance v0, Lcom/test/demo/androidlogindemo/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/test/demo/androidlogindemo/MainActivity$2;-><init>(Lcom/test/demo/androidlogindemo/MainActivity;)V

    iput-object v0, p0, Lcom/test/demo/androidlogindemo/MainActivity;->mListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/test/demo/androidlogindemo/MainActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/test/demo/androidlogindemo/MainActivity;

    .line 31
    iget-object v0, p0, Lcom/test/demo/androidlogindemo/MainActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method isInputValid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "acc"    # Ljava/lang/String;
    .param p3, "psd"    # Ljava/lang/String;

    .line 127
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 128
    const-string v0, "\u8bf7\u8f93\u5165\u6709\u6548\u7684\u670d\u52a1\u5668\u5730\u5740"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 129
    return v1

    .line 131
    :cond_0
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    const-string v0, "\u8bf7\u8f93\u5165\u7528\u6237\u540d\u548c\u5bc6\u7801"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 133
    return v1

    .line 134
    :cond_1
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    const-string v0, "\u8bf7\u8f93\u5165\u7528\u6237\u540d"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 136
    return v1

    .line 137
    :cond_2
    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    const-string v0, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 139
    return v1

    .line 141
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method makeToast(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 221
    new-instance v0, Lcom/test/demo/androidlogindemo/MainActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/test/demo/androidlogindemo/MainActivity$4;-><init>(Lcom/test/demo/androidlogindemo/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/test/demo/androidlogindemo/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 226
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 44
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Lcom/test/demo/androidlogindemo/MainActivity;->setContentView(I)V

    .line 46
    iput-object p0, p0, Lcom/test/demo/androidlogindemo/MainActivity;->ctx:Landroid/content/Context;

    .line 47
    const v0, 0x7f070074

    invoke-virtual {p0, v0}, Lcom/test/demo/androidlogindemo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/test/demo/androidlogindemo/MainActivity;->mServer:Landroid/widget/EditText;

    .line 48
    const v0, 0x7f070096

    invoke-virtual {p0, v0}, Lcom/test/demo/androidlogindemo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/test/demo/androidlogindemo/MainActivity;->mAccount:Landroid/widget/EditText;

    .line 49
    const v0, 0x7f07005f

    invoke-virtual {p0, v0}, Lcom/test/demo/androidlogindemo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/test/demo/androidlogindemo/MainActivity;->mPwd:Landroid/widget/EditText;

    .line 50
    const v0, 0x7f07004e

    invoke-virtual {p0, v0}, Lcom/test/demo/androidlogindemo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/test/demo/androidlogindemo/MainActivity;->mLoginButton:Landroid/widget/Button;

    .line 51
    const v0, 0x7f07004f

    invoke-virtual {p0, v0}, Lcom/test/demo/androidlogindemo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/test/demo/androidlogindemo/MainActivity;->mLogoutButton:Landroid/widget/Button;

    .line 52
    const v0, 0x7f070097

    invoke-virtual {p0, v0}, Lcom/test/demo/androidlogindemo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/test/demo/androidlogindemo/MainActivity;->mWebButton:Landroid/widget/Button;

    .line 53
    const v0, 0x7f070072

    invoke-virtual {p0, v0}, Lcom/test/demo/androidlogindemo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    sput-object v0, Lcom/test/demo/androidlogindemo/MainActivity;->secureSwitch:Landroid/widget/Switch;

    .line 55
    sget-object v0, Lcom/test/demo/androidlogindemo/MainActivity;->secureSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 56
    sget-object v0, Lcom/test/demo/androidlogindemo/MainActivity;->secureSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/test/demo/androidlogindemo/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/test/demo/androidlogindemo/MainActivity$1;-><init>(Lcom/test/demo/androidlogindemo/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 63
    iget-object v0, p0, Lcom/test/demo/androidlogindemo/MainActivity;->mLoginButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/test/demo/androidlogindemo/MainActivity;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/test/demo/androidlogindemo/MainActivity;->mLogoutButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/test/demo/androidlogindemo/MainActivity;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/test/demo/androidlogindemo/MainActivity;->mWebButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/test/demo/androidlogindemo/MainActivity;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 68
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "server"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "server":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    iget-object v2, p0, Lcom/test/demo/androidlogindemo/MainActivity;->mServer:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/test/demo/androidlogindemo/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/msec/MSecClient;->initialize(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method postData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 145
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v0, 0x0

    move-object v3, v0

    .line 147
    .local v3, "conn":Ljava/net/HttpURLConnection;
    :try_start_0
    sget-object v0, Lcom/test/demo/androidlogindemo/MainActivity;->secureSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Lcom/msec/net/URL;

    invoke-direct {v0, v2}, Lcom/msec/net/URL;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, "url":Lcom/msec/net/URL;
    invoke-virtual {v0}, Lcom/msec/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    move-object v0, v4

    .line 150
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .local v0, "conn":Ljava/net/HttpURLConnection;
    nop

    .line 155
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "conn":Ljava/net/HttpURLConnection;
    :goto_0
    move-object v3, v0

    goto :goto_1

    .line 152
    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 153
    .local v0, "url":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    move-object v0, v4

    goto :goto_0

    .line 155
    .end local v0    # "url":Ljava/net/URL;
    :goto_1
    const/16 v0, 0x4e20

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 156
    const-string v0, "POST"

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 157
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 158
    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 159
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 161
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v4, v0

    .line 164
    .local v4, "output":Ljava/io/DataOutputStream;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 165
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 166
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 168
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    move v5, v0

    .line 169
    .local v5, "code":I
    const/16 v0, 0xc8

    if-ne v5, v0, :cond_3

    .line 170
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    move-object v6, v0

    .line 171
    .local v6, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    move-object v7, v0

    .line 172
    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v0, "server"

    invoke-interface {v7, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 173
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 175
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v8, v0

    .line 176
    .local v8, "reader":Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "result":Ljava/lang/StringBuilder;
    :goto_2
    move-object v9, v0

    .line 178
    .end local v0    # "result":Ljava/lang/StringBuilder;
    .local v9, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .local v10, "line":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    move-object v0, v9

    goto :goto_2

    .line 182
    :cond_1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, v0

    .line 184
    .local v11, "resData":Ljava/lang/String;
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v12, v0

    .line 186
    .local v12, "resJson":Lorg/json/JSONObject;
    :try_start_2
    const-string v0, "error"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "error":Ljava/lang/String;
    const-string v13, "\u7528\u6237\u540d\u6216\u5bc6\u7801\u8f93\u5165\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165\uff01"

    invoke-virtual {v1, v13}, Lcom/test/demo/androidlogindemo/MainActivity;->makeToast(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 214
    if-eqz v3, :cond_2

    .line 215
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 188
    :cond_2
    return-void

    .line 189
    .end local v0    # "error":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 193
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    const-class v13, Lcom/test/demo/androidlogindemo/LoginSuccess;

    invoke-direct {v0, v1, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    .local v0, "intent":Landroid/content/Intent;
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 195
    .local v13, "bundle":Landroid/os/Bundle;
    const-string v14, "name"

    const-string v15, "user_name"

    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v14, "age"

    const-string v15, "age"

    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v14, "sex"

    const-string v15, "sex"

    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v14, "amount"

    const-string v15, "amount"

    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0, v13}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 200
    invoke-virtual {v1, v0}, Lcom/test/demo/androidlogindemo/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 203
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v12    # "resJson":Lorg/json/JSONObject;
    .end local v13    # "bundle":Landroid/os/Bundle;
    goto :goto_3

    .line 201
    :catch_1
    move-exception v0

    .line 202
    .local v0, "e":Lorg/json/JSONException;
    :try_start_4
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 204
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v6    # "preferences":Landroid/content/SharedPreferences;
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .end local v9    # "result":Ljava/lang/StringBuilder;
    .end local v10    # "line":Ljava/lang/String;
    .end local v11    # "resData":Ljava/lang/String;
    :goto_3
    goto :goto_4

    .line 205
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u8bf7\u6c42\u53d1\u9001\u5931\u8d25! \u54cd\u5e94\u7801: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/test/demo/androidlogindemo/MainActivity;->makeToast(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 214
    .end local v4    # "output":Ljava/io/DataOutputStream;
    .end local v5    # "code":I
    :goto_4
    if-eqz v3, :cond_4

    .line 215
    :goto_5
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_6

    .line 214
    :catchall_0
    move-exception v0

    goto :goto_7

    .line 210
    :catch_2
    move-exception v0

    .line 211
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 212
    const-string v4, "\u8bf7\u6c42\u53d1\u9001\u5931\u8d25\uff0c\u68c0\u67e5\u670d\u52a1\u5668\u5730\u5740\u53ca\u4fdd\u8bc1\u7f51\u7edc\u901a\u7545\u540e\u91cd\u8bd5\uff01"

    invoke-virtual {v1, v4}, Lcom/test/demo/androidlogindemo/MainActivity;->makeToast(Ljava/lang/String;)V

    .line 214
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_4

    goto :goto_5

    .line 207
    :catch_3
    move-exception v0

    .line 208
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 209
    const-string v4, "\u586b\u5199\u7684\u670d\u52a1\u5668\u5730\u5740\u9519\u8bef\uff0c\u8bf7\u68c0\u67e5\uff01"

    invoke-virtual {v1, v4}, Lcom/test/demo/androidlogindemo/MainActivity;->makeToast(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 214
    .end local v0    # "e":Ljava/net/MalformedURLException;
    if-eqz v3, :cond_4

    goto :goto_5

    .line 218
    :cond_4
    :goto_6
    return-void

    .line 214
    :goto_7
    if-eqz v3, :cond_5

    .line 215
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw v0
.end method

.method userLogin()V
    .locals 7

    .line 95
    iget-object v0, p0, Lcom/test/demo/androidlogindemo/MainActivity;->mServer:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "server":Ljava/lang/String;
    iget-object v1, p0, Lcom/test/demo/androidlogindemo/MainActivity;->mAccount:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "acc":Ljava/lang/String;
    iget-object v2, p0, Lcom/test/demo/androidlogindemo/MainActivity;->mPwd:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "psd":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/test/demo/androidlogindemo/MainActivity;->isInputValid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 99
    const-string v3, "://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    :cond_0
    move-object v3, v0

    .line 103
    .local v3, "fServer":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, "fData":Ljava/lang/String;
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/test/demo/androidlogindemo/MainActivity$3;

    invoke-direct {v6, p0, v3, v4}, Lcom/test/demo/androidlogindemo/MainActivity$3;-><init>(Lcom/test/demo/androidlogindemo/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 109
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 111
    .end local v3    # "fServer":Ljava/lang/String;
    .end local v4    # "fData":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method userLogout()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/test/demo/androidlogindemo/MainActivity;->mAccount:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 115
    iget-object v0, p0, Lcom/test/demo/androidlogindemo/MainActivity;->mPwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 116
    return-void
.end method

.method webPage()V
    .locals 4

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/test/demo/androidlogindemo/MyWebview;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 121
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "url"

    iget-object v3, p0, Lcom/test/demo/androidlogindemo/MainActivity;->mServer:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0, v0}, Lcom/test/demo/androidlogindemo/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 124
    return-void
.end method
