.class public Lcom/msec/net/TsUrlProxy;
.super Ljava/lang/Object;
.source "TsUrlProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/msec/net/TsUrlProxy$TsUrlStreamHandler;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getHandlers(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .param p0, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/net/URLStreamHandler;",
            ">;"
        }
    .end annotation

    .line 39
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Ljava/net/URL;

    invoke-static {v1, p0}, Lcom/msec/Helper;->getHiddenField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 40
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 42
    .local v2, "handlers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/net/URLStreamHandler;>;"
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    return-object v2

    .line 44
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "handlers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/net/URLStreamHandler;>;"
    :catch_0
    move-exception v1

    .line 46
    return-object v0
.end method

.method public static init()V
    .locals 2

    .line 23
    const-string v0, "TsUrlProxy.init"

    invoke-static {v0}, Lcom/msec/MLog;->logd(Ljava/lang/String;)V

    .line 24
    const-string v0, "handlers"

    invoke-static {v0}, Lcom/msec/net/TsUrlProxy;->getHandlers(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 25
    .local v0, "handlers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/net/URLStreamHandler;>;"
    if-nez v0, :cond_0

    .line 26
    const-string v1, "streamHandlers"

    invoke-static {v1}, Lcom/msec/net/TsUrlProxy;->getHandlers(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 28
    :cond_0
    if-nez v0, :cond_1

    .line 29
    const-string v1, "Failed to get URL handlers"

    invoke-static {v1}, Lcom/msec/MLog;->loge(Ljava/lang/String;)V

    .line 30
    return-void

    .line 32
    :cond_1
    const-string v1, "http://test"

    invoke-static {v1, v0}, Lcom/msec/net/TsUrlProxy;->init(Ljava/lang/String;Ljava/util/Map;)V

    .line 33
    const-string v1, "https://test"

    invoke-static {v1, v0}, Lcom/msec/net/TsUrlProxy;->init(Ljava/lang/String;Ljava/util/Map;)V

    .line 34
    const-class v1, Ljava/net/URL;

    invoke-static {v1}, Lcom/msec/MSecClient;->createGlobalRef(Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method private static init(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p0, "strUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/net/URLStreamHandler;",
            ">;)V"
        }
    .end annotation

    .line 51
    .local p1, "handlers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/net/URLStreamHandler;>;"
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "url":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URLStreamHandler;

    .line 53
    .local v1, "handler":Ljava/net/URLStreamHandler;
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/msec/net/TsUrlProxy$TsUrlStreamHandler;

    invoke-direct {v3, v1}, Lcom/msec/net/TsUrlProxy$TsUrlStreamHandler;-><init>(Ljava/net/URLStreamHandler;)V

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v0    # "url":Ljava/net/URL;
    .end local v1    # "handler":Ljava/net/URLStreamHandler;
    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/msec/MLog;->loge(Ljava/lang/String;)V

    .line 57
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
