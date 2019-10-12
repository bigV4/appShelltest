.class public Lcom/msec/net/WebKit/WebViewProxy;
.super Ljava/lang/Object;
.source "WebViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/msec/net/WebKit/WebViewProxy$WebViewProviderProxy;,
        Lcom/msec/net/WebKit/WebViewProxy$WebViewFactoryProviderProxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hookWebView(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .line 19
    const-string v0, "WebViewProxy.hookWebView"

    invoke-static {v0}, Lcom/msec/MLog;->logd(Ljava/lang/String;)V

    .line 21
    :try_start_0
    const-string v0, "android.webkit.WebViewFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 22
    .local v0, "clsFactory":Ljava/lang/Class;
    const-string v1, "getProvider"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/msec/Helper;->getHiddenMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 23
    .local v1, "mGetProvider":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 24
    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v5, "sProviderInstance"

    invoke-static {v0, v5}, Lcom/msec/Helper;->getHiddenField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 26
    .local v5, "fProviderInstance":Ljava/lang/reflect/Field;
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 27
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 28
    .local v6, "provider":Ljava/lang/Object;
    new-array v3, v3, [Ljava/lang/Class;

    .line 29
    .local v3, "interfaces":[Ljava/lang/Class;
    const-string v7, "android.webkit.WebViewFactoryProvider"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v3, v4

    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    new-instance v8, Lcom/msec/net/WebKit/WebViewProxy$WebViewFactoryProviderProxy;

    invoke-direct {v8, v6}, Lcom/msec/net/WebKit/WebViewProxy$WebViewFactoryProviderProxy;-><init>(Ljava/lang/Object;)V

    invoke-static {v7, v3, v8}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v7

    .line 33
    .local v7, "proxy":Ljava/lang/Object;
    invoke-virtual {v5, v2, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 35
    invoke-static {v0}, Lcom/msec/MSecClient;->createGlobalRef(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .end local v0    # "clsFactory":Ljava/lang/Class;
    .end local v1    # "mGetProvider":Ljava/lang/reflect/Method;
    .end local v3    # "interfaces":[Ljava/lang/Class;
    .end local v5    # "fProviderInstance":Ljava/lang/reflect/Field;
    .end local v6    # "provider":Ljava/lang/Object;
    .end local v7    # "proxy":Ljava/lang/Object;
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/msec/MLog;->loge(Ljava/lang/String;)V

    .line 39
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
