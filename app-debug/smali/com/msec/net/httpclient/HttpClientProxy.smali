.class public Lcom/msec/net/httpclient/HttpClientProxy;
.super Ljava/lang/Object;
.source "HttpClientProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/msec/net/httpclient/HttpClientProxy$Interceptor;
    }
.end annotation


# static fields
.field private static inited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/msec/net/httpclient/HttpClientProxy;->inited:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
    .locals 2

    .line 55
    const-string v0, "HttpClientProxy.createHttpProcessor"

    invoke-static {v0}, Lcom/msec/MLog;->logd(Ljava/lang/String;)V

    .line 57
    :try_start_0
    new-instance v0, Lcom/msec/net/httpclient/HttpClientProxy$Interceptor;

    invoke-direct {v0}, Lcom/msec/net/httpclient/HttpClientProxy$Interceptor;-><init>()V

    .line 58
    .local v0, "interceptor":Lcom/msec/net/httpclient/HttpClientProxy$Interceptor;
    invoke-direct {p0}, Lcom/msec/net/httpclient/HttpClientProxy;->createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v1

    .line 59
    .local v1, "processor":Lorg/apache/http/protocol/BasicHttpProcessor;
    invoke-virtual {v1, v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 60
    invoke-virtual {v1, v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    return-object v1

    .line 62
    .end local v0    # "interceptor":Lcom/msec/net/httpclient/HttpClientProxy$Interceptor;
    .end local v1    # "processor":Lorg/apache/http/protocol/BasicHttpProcessor;
    :catch_0
    move-exception v0

    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 26
    const-string v0, "HttpClientProxy.init"

    invoke-static {v0}, Lcom/msec/MLog;->logd(Ljava/lang/String;)V

    .line 27
    sget-boolean v0, Lcom/msec/net/httpclient/HttpClientProxy;->inited:Z

    if-eqz v0, :cond_0

    .line 28
    return-void

    .line 30
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/msec/net/httpclient/HttpClientProxy;->inited:Z

    .line 33
    :try_start_0
    invoke-static {}, Lcom/msec/MSecClient;->isDalvikMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 34
    const-class v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    const-string v1, "createHttpProcessor"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 35
    .local v0, "tgtMethod":Ljava/lang/reflect/Method;
    const-class v1, Lcom/msec/net/httpclient/HttpClientProxy;

    const-string v3, "createHttpProcessor"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 36
    .local v1, "hookMethod":Ljava/lang/reflect/Method;
    invoke-static {v0, v1}, Lcom/msec/MSecClient;->hookDalvikMethod(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 37
    .end local v0    # "tgtMethod":Ljava/lang/reflect/Method;
    .end local v1    # "hookMethod":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 38
    :cond_1
    invoke-static {p0}, Lcom/msec/Helper;->loadPatch(Landroid/content/Context;)Ljava/lang/ClassLoader;

    move-result-object v1

    .line 39
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    const-string v3, "com.msec.patch.HttpClientPatch"

    invoke-virtual {v1, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 40
    .local v3, "clsPatch":Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 41
    const-class v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    const-string v5, "createHttpProcessor"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 42
    .local v4, "tgtMethod":Ljava/lang/reflect/Method;
    const-string v5, "new_createHttpProcessor"

    new-array v6, v0, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v2

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 43
    .local v5, "hookMethod":Ljava/lang/reflect/Method;
    const-string v6, "old_createHttpProcessor"

    new-array v0, v0, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v0, v2

    invoke-virtual {v3, v6, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 44
    .local v0, "backupMethod":Ljava/lang/reflect/Method;
    invoke-static {v4, v5, v0}, Lcom/msec/MSecClient;->hookArtMethod(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 45
    invoke-static {v3}, Lcom/msec/MSecClient;->createGlobalRef(Ljava/lang/Object;)V

    .line 47
    .end local v0    # "backupMethod":Ljava/lang/reflect/Method;
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    .end local v3    # "clsPatch":Ljava/lang/Class;
    .end local v4    # "tgtMethod":Ljava/lang/reflect/Method;
    .end local v5    # "hookMethod":Ljava/lang/reflect/Method;
    :goto_0
    const-class v0, Lcom/msec/net/httpclient/HttpClientProxy;

    invoke-static {v0}, Lcom/msec/MSecClient;->createGlobalRef(Ljava/lang/Object;)V

    .line 48
    const-class v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-static {v0}, Lcom/msec/MSecClient;->createGlobalRef(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_1

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/msec/MLog;->loge(Ljava/lang/String;)V

    .line 52
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method
