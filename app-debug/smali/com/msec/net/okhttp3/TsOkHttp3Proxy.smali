.class public Lcom/msec/net/okhttp3/TsOkHttp3Proxy;
.super Ljava/lang/Object;
.source "TsOkHttp3Proxy.java"


# static fields
.field private static inited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/msec/net/okhttp3/TsOkHttp3Proxy;->inited:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getResponseWithInterceptorChain()Lokhttp3/Response;
    .locals 2

    .line 73
    const-string v0, "TsOkHttp3Proxy.getResponseWithInterceptorChain"

    invoke-static {v0}, Lcom/msec/MLog;->logd(Ljava/lang/String;)V

    .line 75
    move-object v0, p0

    .line 76
    .local v0, "realCall":Ljava/lang/Object;
    :try_start_0
    invoke-static {v0}, Lcom/msec/net/okhttp3/TsOkHttp3Proxy;->injectInterceptor(Ljava/lang/Object;)V

    .line 77
    invoke-direct {p0}, Lcom/msec/net/okhttp3/TsOkHttp3Proxy;->getResponseWithInterceptorChain()Lokhttp3/Response;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 78
    .end local v0    # "realCall":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .line 26
    const-string v0, "TsOkHttp3Proxy.init"

    invoke-static {v0}, Lcom/msec/MLog;->logd(Ljava/lang/String;)V

    .line 27
    sget-boolean v0, Lcom/msec/net/okhttp3/TsOkHttp3Proxy;->inited:Z

    if-eqz v0, :cond_0

    .line 28
    return-void

    .line 30
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/msec/net/okhttp3/TsOkHttp3Proxy;->inited:Z

    .line 32
    :try_start_0
    const-string v1, "okhttp3.RealCall"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 33
    .local v1, "clsRealCall":Ljava/lang/Class;
    invoke-static {}, Lcom/msec/MSecClient;->isDalvikMode()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 35
    const-string v0, "getResponseWithInterceptorChain"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 36
    .local v0, "tgtMethod":Ljava/lang/reflect/Method;
    const-class v2, Lcom/msec/net/okhttp3/TsOkHttp3Proxy;

    const-string v4, "getResponseWithInterceptorChain"

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 37
    .local v2, "hookMethod":Ljava/lang/reflect/Method;
    invoke-static {v0, v2}, Lcom/msec/MSecClient;->hookDalvikMethod(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 38
    invoke-static {v1}, Lcom/msec/MSecClient;->createGlobalRef(Ljava/lang/Object;)V

    .line 39
    .end local v0    # "tgtMethod":Ljava/lang/reflect/Method;
    .end local v2    # "hookMethod":Ljava/lang/reflect/Method;
    goto/16 :goto_1

    .line 41
    :cond_1
    invoke-static {}, Lokhttp3/internal/Version;->userAgent()Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, "userAgent":Ljava/lang/String;
    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 43
    .local v4, "pos1":I
    const-string v5, "."

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 44
    .local v5, "pos2":I
    const/4 v6, 0x0

    .line 45
    .local v6, "injected":Z
    if-le v5, v4, :cond_3

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x4

    if-lt v7, v8, :cond_3

    .line 47
    const-string v7, "okhttp34"

    const-class v8, Lokhttp3/internal/Version;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-static {p0, v7, v8}, Lcom/msec/Helper;->injectAssetJar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 48
    const-class v7, Lokhttp3/internal/http/BridgeInterceptor;

    const-string v8, "injectInterceptor"

    invoke-static {v7, v8}, Lcom/msec/Helper;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    move v6, v7

    .line 50
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TsOkHttp3Proxy.init: injected = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/msec/MLog;->logd(Ljava/lang/String;)V

    .line 51
    if-eqz v6, :cond_4

    .line 52
    const-class v0, Lokhttp3/internal/http/BridgeInterceptor;

    invoke-static {v0}, Lcom/msec/MSecClient;->createGlobalRef(Ljava/lang/Object;)V

    goto :goto_1

    .line 55
    :cond_4
    invoke-static {p0}, Lcom/msec/Helper;->loadPatch(Landroid/content/Context;)Ljava/lang/ClassLoader;

    move-result-object v7

    .line 56
    .local v7, "classLoader":Ljava/lang/ClassLoader;
    const-string v8, "com.msec.patch.Okhttp3Patch"

    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 57
    .local v8, "clsPatch":Ljava/lang/Class;
    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 58
    const-string v9, "getResponseWithInterceptorChain"

    new-array v10, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 59
    .local v9, "tgtMethod":Ljava/lang/reflect/Method;
    const-string v10, "new_getResponseWithInterceptorChain"

    new-array v11, v0, [Ljava/lang/Class;

    const-class v12, Ljava/lang/Object;

    aput-object v12, v11, v3

    invoke-virtual {v8, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 60
    .local v10, "hookMethod":Ljava/lang/reflect/Method;
    const-string v11, "old_getResponseWithInterceptorChain"

    new-array v0, v0, [Ljava/lang/Class;

    const-class v12, Ljava/lang/Object;

    aput-object v12, v0, v3

    invoke-virtual {v8, v11, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 61
    .local v0, "backupMethod":Ljava/lang/reflect/Method;
    invoke-static {v9, v10, v0}, Lcom/msec/MSecClient;->hookArtMethod(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 62
    invoke-static {v8}, Lcom/msec/MSecClient;->createGlobalRef(Ljava/lang/Object;)V

    .line 63
    invoke-static {v1}, Lcom/msec/MSecClient;->createGlobalRef(Ljava/lang/Object;)V

    .line 66
    .end local v0    # "backupMethod":Ljava/lang/reflect/Method;
    .end local v2    # "userAgent":Ljava/lang/String;
    .end local v4    # "pos1":I
    .end local v5    # "pos2":I
    .end local v6    # "injected":Z
    .end local v7    # "classLoader":Ljava/lang/ClassLoader;
    .end local v8    # "clsPatch":Ljava/lang/Class;
    .end local v9    # "tgtMethod":Ljava/lang/reflect/Method;
    .end local v10    # "hookMethod":Ljava/lang/reflect/Method;
    :goto_1
    const-class v0, Lcom/msec/net/okhttp3/TsOkHttp3Proxy;

    invoke-static {v0}, Lcom/msec/MSecClient;->createGlobalRef(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v1    # "clsRealCall":Ljava/lang/Class;
    goto :goto_2

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/msec/MLog;->loge(Ljava/lang/String;)V

    .line 70
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2
    return-void
.end method

.method public static injectInterceptor(Ljava/lang/Object;)V
    .locals 3
    .param p0, "realCall"    # Ljava/lang/Object;

    .line 85
    const-string v0, "TsOkHttp3Proxy.injectInterceptor: realCall"

    invoke-static {v0}, Lcom/msec/MLog;->logd(Ljava/lang/String;)V

    .line 87
    :try_start_0
    const-string v0, "okhttp3.RealCall"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 88
    .local v0, "clsRealCall":Ljava/lang/Class;
    const-string v1, "client"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 89
    .local v1, "fClient":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 90
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/OkHttpClient;

    .line 91
    .local v2, "client":Lokhttp3/OkHttpClient;
    invoke-static {v2}, Lcom/msec/net/okhttp3/TsOkHttp3Proxy;->injectInterceptor(Lokhttp3/OkHttpClient;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v0    # "clsRealCall":Ljava/lang/Class;
    .end local v1    # "fClient":Ljava/lang/reflect/Field;
    .end local v2    # "client":Lokhttp3/OkHttpClient;
    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/msec/MLog;->loge(Ljava/lang/String;)V

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static injectInterceptor(Lokhttp3/Interceptor$Chain;)V
    .locals 6
    .param p0, "chain"    # Lokhttp3/Interceptor$Chain;

    .line 121
    const-string v0, "TsOkHttp3Proxy.injectInterceptor: chain"

    invoke-static {v0}, Lcom/msec/MLog;->logd(Ljava/lang/String;)V

    .line 123
    :try_start_0
    const-class v0, Lokhttp3/internal/http/RealInterceptorChain;

    const-string v1, "interceptors"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 124
    .local v0, "fInterceptors":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 125
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 126
    .local v1, "interceptors":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Interceptor;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 127
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 128
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokhttp3/Interceptor;

    .line 129
    .local v4, "interceptor":Lokhttp3/Interceptor;
    instance-of v5, v4, Lcom/msec/net/okhttp3/TSInterceptor;

    if-eqz v5, :cond_0

    .line 130
    goto :goto_1

    .line 132
    :cond_0
    instance-of v5, v4, Lokhttp3/internal/http/CallServerInterceptor;

    if-eqz v5, :cond_1

    .line 133
    new-instance v5, Lcom/msec/net/okhttp3/TSInterceptor;

    invoke-direct {v5}, Lcom/msec/net/okhttp3/TSInterceptor;-><init>()V

    invoke-interface {v1, v3, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    goto :goto_1

    .line 127
    .end local v4    # "interceptor":Lokhttp3/Interceptor;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 139
    .end local v0    # "fInterceptors":Ljava/lang/reflect/Field;
    .end local v1    # "interceptors":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Interceptor;>;"
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_2
    :goto_1
    goto :goto_2

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/msec/MLog;->loge(Ljava/lang/String;)V

    .line 140
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private static injectInterceptor(Lokhttp3/OkHttpClient;)V
    .locals 6
    .param p0, "client"    # Lokhttp3/OkHttpClient;

    .line 98
    const-string v0, "TsOkHttp3Proxy.injectInterceptor: client"

    invoke-static {v0}, Lcom/msec/MLog;->logd(Ljava/lang/String;)V

    .line 100
    :try_start_0
    const-class v0, Lokhttp3/OkHttpClient;

    const-string v1, "networkInterceptors"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 101
    .local v0, "fInterceptors":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 102
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 103
    .local v1, "interceptors":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Interceptor;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 104
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 105
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokhttp3/Interceptor;

    .line 106
    .local v4, "interceptor":Lokhttp3/Interceptor;
    instance-of v5, v4, Lcom/msec/net/okhttp3/TSInterceptor;

    if-eqz v5, :cond_0

    .line 107
    return-void

    .line 104
    .end local v4    # "interceptor":Lokhttp3/Interceptor;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 110
    .end local v3    # "i":I
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lokhttp3/Interceptor;>;"
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 112
    new-instance v4, Lcom/msec/net/okhttp3/TSInterceptor;

    invoke-direct {v4}, Lcom/msec/net/okhttp3/TSInterceptor;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    move-object v1, v4

    .line 114
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v0    # "fInterceptors":Ljava/lang/reflect/Field;
    .end local v1    # "interceptors":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Interceptor;>;"
    .end local v2    # "size":I
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lokhttp3/Interceptor;>;"
    goto :goto_1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/msec/MLog;->loge(Ljava/lang/String;)V

    .line 118
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
