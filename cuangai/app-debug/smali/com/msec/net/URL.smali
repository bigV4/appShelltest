.class public Lcom/msec/net/URL;
.super Ljava/lang/Object;
.source "URL.java"


# instance fields
.field private mUrl:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "spec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/msec/net/URL;->mUrl:Ljava/net/URL;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/msec/net/URL;->mUrl:Ljava/net/URL;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V
    .locals 7
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "file"    # Ljava/lang/String;
    .param p5, "handler"    # Ljava/net/URLStreamHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v6, Ljava/net/URL;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V

    iput-object v6, p0, Lcom/msec/net/URL;->mUrl:Ljava/net/URL;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1, p2, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/msec/net/URL;->mUrl:Ljava/net/URL;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/msec/net/URL;->mUrl:Ljava/net/URL;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Ljava/net/URL;
    .param p2, "spec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1, p2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/msec/net/URL;->mUrl:Ljava/net/URL;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V
    .locals 1
    .param p1, "context"    # Ljava/net/URL;
    .param p2, "spec"    # Ljava/lang/String;
    .param p3, "handler"    # Ljava/net/URLStreamHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1, p2, p3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    iput-object v0, p0, Lcom/msec/net/URL;->mUrl:Ljava/net/URL;

    .line 40
    return-void
.end method

.method public static declared-synchronized setURLStreamHandlerFactory(Ljava/net/URLStreamHandlerFactory;)V
    .locals 1
    .param p0, "factory"    # Ljava/net/URLStreamHandlerFactory;

    const-class v0, Lcom/msec/net/URL;

    monitor-enter v0

    .line 140
    :try_start_0
    invoke-static {p0}, Lcom/msec/net/URL;->setURLStreamHandlerFactory(Ljava/net/URLStreamHandlerFactory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit v0

    return-void

    .line 139
    .end local p0    # "factory":Ljava/net/URLStreamHandlerFactory;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/msec/net/URL;->mUrl:Ljava/net/URL;

    invoke-virtual {v0, p1}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/msec/net/URL;->mUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/msec/net/URL;->mUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "types"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/msec/net/URL;->mUrl:Ljava/net/URL;

    invoke-virtual {v0, p1}, Ljava/net/URL;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPort()I
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/msec/net/URL;->mUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getDefaultPort()I

    move-result v0

    return v0
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/msec/net/URL;->mUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/msec/net/URL;->mUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/msec/net/URL;->mUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/msec/net/URL;->mUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/msec/net/URL;->mUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/msec/net/URL;->mUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRef()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/msec/net/URL;->mUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/msec/net/URL;->mUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/msec/net/URL;->mUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->hashCode()I

    move-result v0

    return v0
.end method

.method public openConnection()Ljava/net/URLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/msec/net/URL;->mUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/msec/net/URL;->openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method public openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 1
    .param p1, "proxy"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/msec/net/URL;->mUrl:Ljava/net/URL;

    invoke-virtual {v0, p1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/msec/net/URL;->openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method protected openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;
    .locals 2
    .param p1, "conn"    # Ljava/net/URLConnection;

    .line 66
    iget-object v0, p0, Lcom/msec/net/URL;->mUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Lcom/msec/net/TSHttpsURLConnection;

    move-object v1, p1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v0, v1}, Lcom/msec/net/TSHttpsURLConnection;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    return-object v0

    .line 69
    :cond_0
    new-instance v0, Lcom/msec/net/TSHttpURLConnection;

    move-object v1, p1

    check-cast v1, Ljava/net/HttpURLConnection;

    invoke-direct {v0, v1}, Lcom/msec/net/TSHttpURLConnection;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v0
.end method

.method public final openStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Lcom/msec/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public sameFile(Ljava/net/URL;)Z
    .locals 1
    .param p1, "otherURL"    # Ljava/net/URL;

    .line 135
    iget-object v0, p0, Lcom/msec/net/URL;->mUrl:Ljava/net/URL;

    invoke-virtual {v0, p1}, Ljava/net/URL;->sameFile(Ljava/net/URL;)Z

    move-result v0

    return v0
.end method

.method public toExternalForm()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/msec/net/URL;->mUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/msec/net/URL;->mUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURI()Ljava/net/URI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/msec/net/URL;->mUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method
