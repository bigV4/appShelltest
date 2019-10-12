.class public Lcom/msec/net/asynchttp/AsyncHttpClientProxy;
.super Ljava/lang/Object;
.source "AsyncHttpClientProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/msec/net/asynchttp/AsyncHttpClientProxy$HttpInterceptor;
    }
.end annotation


# static fields
.field private static fClient:Ljava/lang/reflect/Field;

.field private static inited:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .line 32
    const-string v0, "AsyncHttpClientProxy.init"

    invoke-static {v0}, Lcom/msec/MLog;->logd(Ljava/lang/String;)V

    .line 33
    sget-boolean v0, Lcom/msec/net/asynchttp/AsyncHttpClientProxy;->inited:Z

    if-eqz v0, :cond_0

    .line 34
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/msec/net/asynchttp/AsyncHttpClientProxy;->inited:Z

    .line 39
    :try_start_0
    invoke-static {}, Lcom/msec/MSecClient;->isDalvikMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 41
    const-class v0, Lcom/loopj/android/http/AsyncHttpRequest;

    const-string v1, "makeRequestWithRetries"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 42
    .local v0, "tgtMethod":Ljava/lang/reflect/Method;
    const-class v1, Lcom/msec/net/asynchttp/AsyncHttpClientProxy;

    const-string v3, "makeRequestWithRetries"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 43
    .local v1, "hookMethod":Ljava/lang/reflect/Method;
    invoke-static {v0, v1}, Lcom/msec/MSecClient;->hookDalvikMethod(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 44
    .end local v0    # "tgtMethod":Ljava/lang/reflect/Method;
    .end local v1    # "hookMethod":Ljava/lang/reflect/Method;
    goto/16 :goto_1

    .line 46
    :cond_1
    const-class v1, Lcom/loopj/android/http/AsyncHttpClient;

    const-string v3, "httpClient"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 47
    .local v1, "fClient":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    .line 48
    .local v3, "injected":Z
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 50
    const-string v4, "asynchttpclient149"

    const-class v5, Lcom/loopj/android/http/BuildConfig;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/msec/Helper;->injectAssetJar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 51
    const-class v4, Lcom/loopj/android/http/AsyncHttpRequest;

    const-string v5, "injectInterceptor"

    invoke-static {v4, v5}, Lcom/msec/Helper;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    move v3, v4

    .line 53
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AsyncHttpClientProxy.init: injected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/msec/MLog;->logd(Ljava/lang/String;)V

    .line 54
    if-nez v3, :cond_4

    .line 56
    invoke-static {p0}, Lcom/msec/Helper;->loadPatch(Landroid/content/Context;)Ljava/lang/ClassLoader;

    move-result-object v4

    .line 57
    .local v4, "classLoader":Ljava/lang/ClassLoader;
    const-string v5, "com.msec.patch.AsyncHttpPatch"

    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 58
    .local v5, "clsPatch":Ljava/lang/Class;
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 59
    const-class v6, Lcom/loopj/android/http/AsyncHttpRequest;

    const-string v7, "makeRequestWithRetries"

    new-array v8, v2, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 60
    .local v6, "tgtMethod":Ljava/lang/reflect/Method;
    const-string v7, "new_makeRequestWithRetries"

    new-array v8, v0, [Ljava/lang/Class;

    const-class v9, Ljava/lang/Object;

    aput-object v9, v8, v2

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 61
    .local v7, "hookMethod":Ljava/lang/reflect/Method;
    const-string v8, "old_makeRequestWithRetries"

    new-array v0, v0, [Ljava/lang/Class;

    const-class v9, Ljava/lang/Object;

    aput-object v9, v0, v2

    invoke-virtual {v5, v8, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 62
    .local v0, "backupMethod":Ljava/lang/reflect/Method;
    invoke-static {v6, v7, v0}, Lcom/msec/MSecClient;->hookArtMethod(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 63
    invoke-static {v5}, Lcom/msec/MSecClient;->createGlobalRef(Ljava/lang/Object;)V

    .line 66
    .end local v0    # "backupMethod":Ljava/lang/reflect/Method;
    .end local v1    # "fClient":Ljava/lang/reflect/Field;
    .end local v3    # "injected":Z
    .end local v4    # "classLoader":Ljava/lang/ClassLoader;
    .end local v5    # "clsPatch":Ljava/lang/Class;
    .end local v6    # "tgtMethod":Ljava/lang/reflect/Method;
    .end local v7    # "hookMethod":Ljava/lang/reflect/Method;
    :cond_4
    :goto_1
    const-class v0, Lcom/loopj/android/http/AsyncHttpRequest;

    invoke-static {v0}, Lcom/msec/MSecClient;->createGlobalRef(Ljava/lang/Object;)V

    .line 67
    const-class v0, Lcom/msec/net/asynchttp/AsyncHttpClientProxy;

    invoke-static {v0}, Lcom/msec/MSecClient;->createGlobalRef(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_2

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/msec/MLog;->loge(Ljava/lang/String;)V

    .line 72
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2
    return-void
.end method

.method public static injectInterceptor(Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;)V
    .locals 3
    .param p0, "client"    # Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;

    .line 90
    const-string v0, "AsyncHttpClientProxy.injectInterceptor"

    invoke-static {v0}, Lcom/msec/MLog;->logd(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->getRequestInterceptorCount()I

    move-result v0

    .line 92
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 93
    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->getResponseInterceptor(I)Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    move-result-object v2

    instance-of v2, v2, Lcom/msec/net/asynchttp/AsyncHttpClientProxy$HttpInterceptor;

    if-eqz v2, :cond_0

    .line 94
    return-void

    .line 92
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Lcom/msec/net/asynchttp/AsyncHttpClientProxy$HttpInterceptor;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/msec/net/asynchttp/AsyncHttpClientProxy$HttpInterceptor;-><init>(Lcom/msec/net/asynchttp/AsyncHttpClientProxy$1;)V

    .line 98
    .local v1, "interceptor":Lcom/msec/net/asynchttp/AsyncHttpClientProxy$HttpInterceptor;
    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->addRequestInterceptor(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V

    .line 99
    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->addResponseInterceptor(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)V

    .line 100
    return-void
.end method

.method private makeRequestWithRetries()V
    .locals 2

    .line 75
    const-string v0, "AsyncHttpClientProxy.makeRequestWithRetries"

    invoke-static {v0}, Lcom/msec/MLog;->logd(Ljava/lang/String;)V

    .line 77
    :try_start_0
    sget-object v0, Lcom/msec/net/asynchttp/AsyncHttpClientProxy;->fClient:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 78
    const-class v0, Lcom/loopj/android/http/AsyncHttpRequest;

    const-string v1, "client"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/msec/net/asynchttp/AsyncHttpClientProxy;->fClient:Ljava/lang/reflect/Field;

    .line 80
    :cond_0
    sget-object v0, Lcom/msec/net/asynchttp/AsyncHttpClientProxy;->fClient:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 81
    sget-object v0, Lcom/msec/net/asynchttp/AsyncHttpClientProxy;->fClient:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;

    .line 82
    .local v0, "client":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    invoke-static {v0}, Lcom/msec/net/asynchttp/AsyncHttpClientProxy;->injectInterceptor(Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v0    # "client":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/msec/MLog;->loge(Ljava/lang/String;)V

    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-direct {p0}, Lcom/msec/net/asynchttp/AsyncHttpClientProxy;->makeRequestWithRetries()V

    .line 87
    return-void
.end method
