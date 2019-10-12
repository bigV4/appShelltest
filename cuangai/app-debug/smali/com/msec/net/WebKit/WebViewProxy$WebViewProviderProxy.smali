.class Lcom/msec/net/WebKit/WebViewProxy$WebViewProviderProxy;
.super Ljava/lang/Object;
.source "WebViewProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/msec/net/WebKit/WebViewProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebViewProviderProxy"
.end annotation


# instance fields
.field private mClient:Lcom/msec/net/WebKit/WebViewProxyClient;

.field private mProvider:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Ljava/lang/Object;)V
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "provider"    # Ljava/lang/Object;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p2, p0, Lcom/msec/net/WebKit/WebViewProxy$WebViewProviderProxy;->mProvider:Ljava/lang/Object;

    .line 72
    new-instance v0, Lcom/msec/net/WebKit/WebViewProxyClient;

    invoke-direct {v0, p1, p2}, Lcom/msec/net/WebKit/WebViewProxyClient;-><init>(Landroid/webkit/WebView;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/msec/net/WebKit/WebViewProxy$WebViewProviderProxy;->mClient:Lcom/msec/net/WebKit/WebViewProxyClient;

    .line 73
    return-void
.end method


# virtual methods
.method public getClient()Lcom/msec/net/WebKit/WebViewProxyClient;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewProxy$WebViewProviderProxy;->mClient:Lcom/msec/net/WebKit/WebViewProxyClient;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 81
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "methodName":Ljava/lang/String;
    const-string v1, "loadUrl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_1

    .line 83
    sget-boolean v1, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WebViewProviderProxy loadUrl: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p3, v4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/msec/MLog;->logd(Ljava/lang/String;)V

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/msec/net/WebKit/WebViewProxy$WebViewProviderProxy;->mClient:Lcom/msec/net/WebKit/WebViewProxyClient;

    invoke-virtual {v1, p3}, Lcom/msec/net/WebKit/WebViewProxyClient;->loadUrl([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 87
    return-object v2

    .line 89
    :cond_1
    const-string v1, "loadDataWithBaseURL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 90
    sget-boolean v1, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WebViewProviderProxy loadDataWithBaseURL: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p3, v4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/msec/MLog;->logd(Ljava/lang/String;)V

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/msec/net/WebKit/WebViewProxy$WebViewProviderProxy;->mClient:Lcom/msec/net/WebKit/WebViewProxyClient;

    invoke-virtual {v1, p3}, Lcom/msec/net/WebKit/WebViewProxyClient;->loadDataWithBaseURL([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 94
    return-object v2

    .line 96
    :cond_3
    const-string v1, "setWebViewClient"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 97
    const-string v1, "WebViewProviderProxy setWebViewClient"

    invoke-static {v1}, Lcom/msec/MLog;->logd(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/msec/net/WebKit/WebViewProxy$WebViewProviderProxy;->mClient:Lcom/msec/net/WebKit/WebViewProxyClient;

    aget-object v2, p3, v4

    check-cast v2, Landroid/webkit/WebViewClient;

    invoke-virtual {v1, v2}, Lcom/msec/net/WebKit/WebViewProxyClient;->setmWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 99
    iget-object v1, p0, Lcom/msec/net/WebKit/WebViewProxy$WebViewProviderProxy;->mProvider:Ljava/lang/Object;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/msec/net/WebKit/WebViewProxy$WebViewProviderProxy;->mClient:Lcom/msec/net/WebKit/WebViewProxyClient;

    aput-object v3, v2, v4

    invoke-virtual {p2, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 101
    :cond_4
    iget-object v1, p0, Lcom/msec/net/WebKit/WebViewProxy$WebViewProviderProxy;->mProvider:Ljava/lang/Object;

    invoke-virtual {p2, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 102
    .local v1, "obj":Ljava/lang/Object;
    const-string v2, "init"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    .line 103
    const-string v2, "WebViewProviderProxy init"

    invoke-static {v2}, Lcom/msec/MLog;->logd(Ljava/lang/String;)V

    .line 104
    iget-object v2, p0, Lcom/msec/net/WebKit/WebViewProxy$WebViewProviderProxy;->mClient:Lcom/msec/net/WebKit/WebViewProxyClient;

    invoke-virtual {v2}, Lcom/msec/net/WebKit/WebViewProxyClient;->initWrapperEnv()V

    .line 106
    :try_start_0
    const-string v2, "android.webkit.WebViewProvider"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 107
    .local v2, "clsProvider":Ljava/lang/Class;
    const-string v5, "setWebViewClient"

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Landroid/webkit/WebViewClient;

    aput-object v7, v6, v4

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 108
    .local v5, "mSetWebViewClient":Ljava/lang/reflect/Method;
    iget-object v6, p0, Lcom/msec/net/WebKit/WebViewProxy$WebViewProviderProxy;->mProvider:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/msec/net/WebKit/WebViewProxy$WebViewProviderProxy;->mClient:Lcom/msec/net/WebKit/WebViewProxyClient;

    aput-object v7, v3, v4

    invoke-virtual {v5, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v2    # "clsProvider":Ljava/lang/Class;
    .end local v5    # "mSetWebViewClient":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 109
    :catch_0
    move-exception v2

    .line 110
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/msec/MLog;->loge(Ljava/lang/String;)V

    .line 113
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_0
    return-object v1
.end method
