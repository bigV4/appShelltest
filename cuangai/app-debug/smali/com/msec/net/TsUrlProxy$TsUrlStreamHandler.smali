.class Lcom/msec/net/TsUrlProxy$TsUrlStreamHandler;
.super Ljava/net/URLStreamHandler;
.source "TsUrlProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/msec/net/TsUrlProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TsUrlStreamHandler"
.end annotation


# static fields
.field private static methodOpenConnection:Ljava/lang/reflect/Method;

.field private static methodOpenConnectionWithProxy:Ljava/lang/reflect/Method;


# instance fields
.field private handler:Ljava/net/URLStreamHandler;


# direct methods
.method public constructor <init>(Ljava/net/URLStreamHandler;)V
    .locals 6
    .param p1, "handler"    # Ljava/net/URLStreamHandler;

    .line 64
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/msec/net/TsUrlProxy$TsUrlStreamHandler;->handler:Ljava/net/URLStreamHandler;

    .line 66
    sget-object v0, Lcom/msec/net/TsUrlProxy$TsUrlStreamHandler;->methodOpenConnection:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 68
    :try_start_0
    const-class v0, Ljava/net/URLStreamHandler;

    const-string v1, "openConnection"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/net/URL;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/msec/net/TsUrlProxy$TsUrlStreamHandler;->methodOpenConnection:Ljava/lang/reflect/Method;

    .line 69
    const-class v0, Ljava/net/URLStreamHandler;

    const-string v1, "openConnection"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/net/URL;

    aput-object v4, v3, v5

    const-class v4, Ljava/net/Proxy;

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/msec/net/TsUrlProxy$TsUrlStreamHandler;->methodOpenConnectionWithProxy:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/msec/MLog;->loge(Ljava/lang/String;)V

    .line 74
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_0
    return-void
.end method

.method private getConnection(Ljava/net/URL;Ljava/net/URLConnection;)Ljava/net/URLConnection;
    .locals 4
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "connection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "protocol":Ljava/lang/String;
    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    new-instance v1, Lcom/msec/net/TSHttpURLConnection;

    move-object v2, p2

    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-direct {v1, v2}, Lcom/msec/net/TSHttpURLConnection;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v1

    .line 112
    :cond_0
    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    new-instance v1, Lcom/msec/net/TSHttpsURLConnection;

    move-object v2, p2

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v1, v2}, Lcom/msec/net/TSHttpsURLConnection;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    return-object v1

    .line 115
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown protocol: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 4
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    sget-boolean v0, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TsUrlStreamHandler.openConnection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/msec/MLog;->logd(Ljava/lang/String;)V

    .line 82
    :cond_0
    :try_start_0
    sget-object v0, Lcom/msec/net/TsUrlProxy$TsUrlStreamHandler;->methodOpenConnection:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 83
    sget-object v0, Lcom/msec/net/TsUrlProxy$TsUrlStreamHandler;->methodOpenConnection:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/msec/net/TsUrlProxy$TsUrlStreamHandler;->handler:Ljava/net/URLStreamHandler;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLConnection;

    .line 84
    .local v0, "connection":Ljava/net/URLConnection;
    invoke-direct {p0, p1, v0}, Lcom/msec/net/TsUrlProxy$TsUrlStreamHandler;->getConnection(Ljava/net/URL;Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 86
    .end local v0    # "connection":Ljava/net/URLConnection;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 85
    :catch_1
    move-exception v0

    .line 87
    nop

    .line 88
    :goto_0
    const-string v0, "Failed to open connection"

    invoke-static {v0}, Lcom/msec/MLog;->loge(Ljava/lang/String;)V

    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method protected openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 5
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxy"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    sget-boolean v0, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TsUrlStreamHandler.openConnection(proxy): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/msec/MLog;->logd(Ljava/lang/String;)V

    .line 98
    :cond_0
    :try_start_0
    sget-object v0, Lcom/msec/net/TsUrlProxy$TsUrlStreamHandler;->methodOpenConnectionWithProxy:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 99
    sget-object v0, Lcom/msec/net/TsUrlProxy$TsUrlStreamHandler;->methodOpenConnectionWithProxy:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/msec/net/TsUrlProxy$TsUrlStreamHandler;->handler:Ljava/net/URLStreamHandler;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object p2, v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLConnection;

    .line 100
    .local v0, "connection":Ljava/net/URLConnection;
    invoke-direct {p0, p1, v0}, Lcom/msec/net/TsUrlProxy$TsUrlStreamHandler;->getConnection(Ljava/net/URL;Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 102
    .end local v0    # "connection":Ljava/net/URLConnection;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 101
    :catch_1
    move-exception v0

    .line 103
    nop

    .line 104
    :goto_0
    const-string v0, "Failed to open connection(proxy)"

    invoke-static {v0}, Lcom/msec/MLog;->loge(Ljava/lang/String;)V

    .line 105
    const/4 v0, 0x0

    return-object v0
.end method
