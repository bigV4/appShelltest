.class public Lcom/msec/net/asynchttp/MySSLSocketFactory;
.super Lcom/loopj/android/http/MySSLSocketFactory;
.source "MySSLSocketFactory.java"


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 0
    .param p1, "truststore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Lcom/loopj/android/http/MySSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 30
    return-void
.end method

.method public static getNewHttpClient(Ljava/security/KeyStore;)Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;
    .locals 6
    .param p0, "keyStore"    # Ljava/security/KeyStore;

    .line 41
    :try_start_0
    new-instance v0, Lcom/msec/net/asynchttp/MySSLSocketFactory;

    invoke-direct {v0, p0}, Lcom/msec/net/asynchttp/MySSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 42
    .local v0, "sf":Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;
    new-instance v1, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;-><init>()V

    .line 43
    .local v1, "registry":Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    new-instance v2, Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;->getSocketFactory()Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->register(Lcz/msebera/android/httpclient/conn/scheme/Scheme;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    .line 44
    new-instance v2, Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    const-string v3, "https"

    const/16 v4, 0x1bb

    invoke-direct {v2, v3, v0, v4}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->register(Lcz/msebera/android/httpclient/conn/scheme/Scheme;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    .line 46
    new-instance v2, Lcz/msebera/android/httpclient/params/BasicHttpParams;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/params/BasicHttpParams;-><init>()V

    .line 47
    .local v2, "params":Lcz/msebera/android/httpclient/params/HttpParams;
    sget-object v3, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/params/HttpProtocolParams;->setVersion(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/ProtocolVersion;)V

    .line 48
    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/params/HttpProtocolParams;->setContentCharset(Lcz/msebera/android/httpclient/params/HttpParams;Ljava/lang/String;)V

    .line 50
    new-instance v3, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v3, v2, v1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V

    .line 52
    .local v3, "ccm":Lcz/msebera/android/httpclient/conn/ClientConnectionManager;
    new-instance v4, Lcom/msec/net/asynchttp/PDefaultHttpClient;

    invoke-direct {v4, v3, v2}, Lcom/msec/net/asynchttp/PDefaultHttpClient;-><init>(Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 53
    .end local v0    # "sf":Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;
    .end local v1    # "registry":Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    .end local v2    # "params":Lcz/msebera/android/httpclient/params/HttpParams;
    .end local v3    # "ccm":Lcz/msebera/android/httpclient/conn/ClientConnectionManager;
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;-><init>()V

    return-object v1
.end method
