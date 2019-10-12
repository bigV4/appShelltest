.class public Lcom/msec/net/WebKit/WebViewProxyClient;
.super Lcom/msec/net/WebKit/WebViewClient;
.source "WebViewProxyClient.java"

# interfaces
.implements Lcom/msec/net/WebKit/WebViewLoader;


# static fields
.field private static methodLoadDataWithBaseURL:Ljava/lang/reflect/Method;

.field private static methodLoadUrl:Ljava/lang/reflect/Method;


# instance fields
.field private mProvider:Ljava/lang/Object;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/msec/net/WebKit/WebViewProxyClient;->methodLoadUrl:Ljava/lang/reflect/Method;

    .line 17
    sput-object v0, Lcom/msec/net/WebKit/WebViewProxyClient;->methodLoadDataWithBaseURL:Ljava/lang/reflect/Method;

    return-void
.end method

.method constructor <init>(Landroid/webkit/WebView;Ljava/lang/Object;)V
    .locals 0
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "provider"    # Ljava/lang/Object;

    .line 19
    invoke-direct {p0}, Lcom/msec/net/WebKit/WebViewClient;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/msec/net/WebKit/WebViewProxyClient;->mWebView:Landroid/webkit/WebView;

    .line 21
    iput-object p2, p0, Lcom/msec/net/WebKit/WebViewProxyClient;->mProvider:Ljava/lang/Object;

    .line 22
    return-void
.end method

.method private static getProviderMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "argTypes"    # [Ljava/lang/Class;

    .line 95
    :try_start_0
    const-string v0, "android.webkit.WebViewProvider"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 96
    .local v0, "clsProvider":Ljava/lang/Class;
    invoke-virtual {v0, p0, p1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 97
    .end local v0    # "clsProvider":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/msec/MLog;->loge(Ljava/lang/String;)V

    .line 100
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public doLoadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "historyUrl"    # Ljava/lang/String;

    .line 71
    sget-object v0, Lcom/msec/net/WebKit/WebViewProxyClient;->methodLoadDataWithBaseURL:Ljava/lang/reflect/Method;

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x5

    if-nez v0, :cond_0

    .line 72
    const-string v0, "loadDataWithBaseURL"

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v5

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v4

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v3

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v2

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v1

    invoke-static {v0, v7}, Lcom/msec/net/WebKit/WebViewProxyClient;->getProviderMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/msec/net/WebKit/WebViewProxyClient;->methodLoadDataWithBaseURL:Ljava/lang/reflect/Method;

    .line 76
    :cond_0
    :try_start_0
    sget-object v0, Lcom/msec/net/WebKit/WebViewProxyClient;->methodLoadDataWithBaseURL:Ljava/lang/reflect/Method;

    iget-object v7, p0, Lcom/msec/net/WebKit/WebViewProxyClient;->mProvider:Ljava/lang/Object;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v5

    aput-object p2, v6, v4

    aput-object p3, v6, v3

    aput-object p4, v6, v2

    aput-object p5, v6, v1

    invoke-virtual {v0, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/msec/MLog;->loge(Ljava/lang/String;)V

    .line 80
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method protected doLoadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 84
    invoke-virtual {p0, p2}, Lcom/msec/net/WebKit/WebViewProxyClient;->doLoadUrl(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public doLoadUrl(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .line 58
    sget-object v0, Lcom/msec/net/WebKit/WebViewProxyClient;->methodLoadUrl:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_0

    .line 59
    const-string v0, "loadUrl"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v2

    const-class v5, Ljava/util/Map;

    aput-object v5, v4, v1

    invoke-static {v0, v4}, Lcom/msec/net/WebKit/WebViewProxyClient;->getProviderMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/msec/net/WebKit/WebViewProxyClient;->methodLoadUrl:Ljava/lang/reflect/Method;

    .line 63
    :cond_0
    :try_start_0
    sget-object v0, Lcom/msec/net/WebKit/WebViewProxyClient;->methodLoadUrl:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/msec/net/WebKit/WebViewProxyClient;->mProvider:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    const/4 v2, 0x0

    aput-object v2, v3, v1

    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/msec/MLog;->loge(Ljava/lang/String;)V

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public initWrapperEnv()V
    .locals 2

    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewProxyClient;->mWebView:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/msec/net/WebKit/WebView;->initWrapperEnv(Landroid/webkit/WebView;)V

    .line 91
    :cond_0
    return-void
.end method

.method public loadDataWithBaseURL([Ljava/lang/Object;)Z
    .locals 6
    .param p1, "args"    # [Ljava/lang/Object;

    .line 37
    const/4 v0, 0x1

    aget-object v1, p1, v0

    check-cast v1, Ljava/lang/String;

    .line 38
    .local v1, "data":Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/String;

    .line 40
    .local v2, "mimeType":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, "text/html"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 41
    :cond_0
    invoke-static {}, Lcom/msec/MSecClient;->isProtectLocalHtml()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 42
    if-eqz v1, :cond_1

    .line 44
    :try_start_0
    const-string v3, "utf-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/msec/MSecClient;->protectHtmlData([B)[B

    move-result-object v3

    .line 45
    .local v3, "protectBytes":[B
    new-instance v4, Ljava/lang/String;

    const-string v5, "utf-8"

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    aput-object v4, p1, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v3    # "protectBytes":[B
    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-boolean v3, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 48
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 53
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadUrl([Ljava/lang/Object;)Z
    .locals 3
    .param p1, "args"    # [Ljava/lang/Object;

    .line 25
    const/4 v0, 0x0

    aget-object v1, p1, v0

    check-cast v1, Ljava/lang/String;

    .line 26
    .local v1, "url":Ljava/lang/String;
    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    invoke-static {v1}, Lcom/msec/net/WebKit/WebView;->isHtmlPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 28
    invoke-static {}, Lcom/msec/MSecClient;->isProtectLocalHtml()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    invoke-static {v1, p0}, Lcom/msec/net/WebKit/WebView;->loadWithJs(Ljava/lang/String;Lcom/msec/net/WebKit/WebViewLoader;)V

    .line 31
    const/4 v0, 0x1

    return v0

    .line 33
    :cond_0
    return v0
.end method
