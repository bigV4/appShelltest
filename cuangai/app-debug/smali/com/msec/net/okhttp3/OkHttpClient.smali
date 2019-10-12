.class public Lcom/msec/net/okhttp3/OkHttpClient;
.super Ljava/lang/Object;
.source "OkHttpClient.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lokhttp3/Call$Factory;
.implements Lokhttp3/WebSocket$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/msec/net/okhttp3/OkHttpClient$Builder;
    }
.end annotation


# static fields
.field static final DEFAULT_CONNECTION_SPECS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field static final DEFAULT_PROTOCOLS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field public static final tsInterceptor:Lcom/msec/net/okhttp3/TSInterceptor;


# instance fields
.field final authenticator:Lokhttp3/Authenticator;

.field final cache:Lokhttp3/Cache;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final certificatePinner:Lokhttp3/CertificatePinner;

.field final connectTimeout:I

.field final connectionPool:Lokhttp3/ConnectionPool;

.field final connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field final cookieJar:Lokhttp3/CookieJar;

.field final dispatcher:Lokhttp3/Dispatcher;

.field final dns:Lokhttp3/Dns;

.field final eventListenerFactory:Lokhttp3/EventListener$Factory;

.field final followRedirects:Z

.field final followSslRedirects:Z

.field final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field final internalCache:Lokhttp3/internal/cache/InternalCache;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final networkInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field okclient:Lokhttp3/OkHttpClient;

.field final pingInterval:I

.field final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field final proxy:Ljava/net/Proxy;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final proxyAuthenticator:Lokhttp3/Authenticator;

.field final proxySelector:Ljava/net/ProxySelector;

.field final readTimeout:I

.field final retryOnConnectionFailure:Z

.field final socketFactory:Ljavax/net/SocketFactory;

.field final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final writeTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 140
    const/4 v0, 0x2

    new-array v1, v0, [Lokhttp3/Protocol;

    sget-object v2, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lokhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/msec/net/okhttp3/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    .line 143
    new-array v0, v0, [Lokhttp3/ConnectionSpec;

    sget-object v1, Lokhttp3/ConnectionSpec;->MODERN_TLS:Lokhttp3/ConnectionSpec;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/ConnectionSpec;->CLEARTEXT:Lokhttp3/ConnectionSpec;

    aput-object v1, v0, v4

    invoke-static {v0}, Lokhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/msec/net/okhttp3/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    .line 176
    new-instance v0, Lcom/msec/net/okhttp3/TSInterceptor;

    invoke-direct {v0}, Lcom/msec/net/okhttp3/TSInterceptor;-><init>()V

    sput-object v0, Lcom/msec/net/okhttp3/OkHttpClient;->tsInterceptor:Lcom/msec/net/okhttp3/TSInterceptor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 179
    new-instance v0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lcom/msec/net/okhttp3/OkHttpClient$Builder;-><init>()V

    invoke-direct {p0, v0}, Lcom/msec/net/okhttp3/OkHttpClient;-><init>(Lcom/msec/net/okhttp3/OkHttpClient$Builder;)V

    .line 180
    return-void
.end method

.method constructor <init>(Lcom/msec/net/okhttp3/OkHttpClient$Builder;)V
    .locals 7
    .param p1, "builder"    # Lcom/msec/net/okhttp3/OkHttpClient$Builder;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient;->okclient:Lokhttp3/OkHttpClient;

    .line 183
    iget-object v0, p1, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->dispatcher:Lokhttp3/Dispatcher;

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient;->dispatcher:Lokhttp3/Dispatcher;

    .line 184
    iget-object v0, p1, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient;->proxy:Ljava/net/Proxy;

    .line 185
    iget-object v0, p1, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient;->protocols:Ljava/util/List;

    .line 186
    iget-object v0, p1, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    .line 187
    iget-object v0, p1, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    invoke-static {v0}, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    .line 188
    iget-object v0, p1, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    invoke-static {v0}, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    .line 189
    iget-object v0, p1, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->eventListenerFactory:Lokhttp3/EventListener$Factory;

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient;->eventListenerFactory:Lokhttp3/EventListener$Factory;

    .line 190
    iget-object v0, p1, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    .line 191
    iget-object v0, p1, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->cookieJar:Lokhttp3/CookieJar;

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient;->cookieJar:Lokhttp3/CookieJar;

    .line 192
    iget-object v0, p1, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->cache:Lokhttp3/Cache;

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient;->cache:Lokhttp3/Cache;

    .line 193
    iget-object v0, p1, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->internalCache:Lokhttp3/internal/cache/InternalCache;

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient;->internalCache:Lokhttp3/internal/cache/InternalCache;

    .line 194
    iget-object v0, p1, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, "isTLS":Z
    iget-object v1, p0, Lcom/msec/net/okhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/ConnectionSpec;

    .line 198
    .local v2, "spec":Lokhttp3/ConnectionSpec;
    if-nez v0, :cond_1

    invoke-virtual {v2}, Lokhttp3/ConnectionSpec;->isTls()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, 0x1

    :goto_2
    move v0, v3

    .line 199
    .end local v2    # "spec":Lokhttp3/ConnectionSpec;
    goto :goto_0

    .line 201
    :cond_2
    iget-object v1, p1, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_4

    if-nez v0, :cond_3

    goto :goto_3

    .line 205
    :cond_3
    invoke-direct {p0}, Lcom/msec/net/okhttp3/OkHttpClient;->systemDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    .line 206
    .local v1, "trustManager":Ljavax/net/ssl/X509TrustManager;
    invoke-direct {p0, v1}, Lcom/msec/net/okhttp3/OkHttpClient;->systemDefaultSslSocketFactory(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    iput-object v2, p0, Lcom/msec/net/okhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 207
    invoke-static {v1}, Lokhttp3/internal/tls/CertificateChainCleaner;->get(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v2

    iput-object v2, p0, Lcom/msec/net/okhttp3/OkHttpClient;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    goto :goto_4

    .line 202
    .end local v1    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    :cond_4
    :goto_3
    iget-object v1, p1, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v1, p0, Lcom/msec/net/okhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 203
    iget-object v1, p1, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    iput-object v1, p0, Lcom/msec/net/okhttp3/OkHttpClient;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 210
    :goto_4
    iget-object v1, p1, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v1, p0, Lcom/msec/net/okhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 211
    iget-object v1, p1, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->certificatePinner:Lokhttp3/CertificatePinner;

    const-string v2, "withCertificateChainCleaner"

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lokhttp3/internal/tls/CertificateChainCleaner;

    aput-object v6, v5, v3

    .line 212
    invoke-static {v5}, Lcom/msec/Helper;->viClass([Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/msec/net/okhttp3/OkHttpClient;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    aput-object v6, v4, v3

    invoke-static {v4}, Lcom/msec/Helper;->viObject([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .line 211
    invoke-static {v1, v2, v5, v3}, Lcom/msec/Helper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/CertificatePinner;

    iput-object v1, p0, Lcom/msec/net/okhttp3/OkHttpClient;->certificatePinner:Lokhttp3/CertificatePinner;

    .line 213
    iget-object v1, p1, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lokhttp3/Authenticator;

    iput-object v1, p0, Lcom/msec/net/okhttp3/OkHttpClient;->proxyAuthenticator:Lokhttp3/Authenticator;

    .line 214
    iget-object v1, p1, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->authenticator:Lokhttp3/Authenticator;

    iput-object v1, p0, Lcom/msec/net/okhttp3/OkHttpClient;->authenticator:Lokhttp3/Authenticator;

    .line 215
    iget-object v1, p1, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->connectionPool:Lokhttp3/ConnectionPool;

    iput-object v1, p0, Lcom/msec/net/okhttp3/OkHttpClient;->connectionPool:Lokhttp3/ConnectionPool;

    .line 216
    iget-object v1, p1, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->dns:Lokhttp3/Dns;

    iput-object v1, p0, Lcom/msec/net/okhttp3/OkHttpClient;->dns:Lokhttp3/Dns;

    .line 217
    iget-boolean v1, p1, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    iput-boolean v1, p0, Lcom/msec/net/okhttp3/OkHttpClient;->followSslRedirects:Z

    .line 218
    iget-boolean v1, p1, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->followRedirects:Z

    iput-boolean v1, p0, Lcom/msec/net/okhttp3/OkHttpClient;->followRedirects:Z

    .line 219
    iget-boolean v1, p1, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    iput-boolean v1, p0, Lcom/msec/net/okhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    .line 220
    iget v1, p1, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->connectTimeout:I

    iput v1, p0, Lcom/msec/net/okhttp3/OkHttpClient;->connectTimeout:I

    .line 221
    iget v1, p1, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->readTimeout:I

    iput v1, p0, Lcom/msec/net/okhttp3/OkHttpClient;->readTimeout:I

    .line 222
    iget v1, p1, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->writeTimeout:I

    iput v1, p0, Lcom/msec/net/okhttp3/OkHttpClient;->writeTimeout:I

    .line 223
    iget v1, p1, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->pingInterval:I

    iput v1, p0, Lcom/msec/net/okhttp3/OkHttpClient;->pingInterval:I

    .line 225
    iget-object v1, p0, Lcom/msec/net/okhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 228
    iget-object v1, p0, Lcom/msec/net/okhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 231
    return-void

    .line 229
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null network interceptor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/msec/net/okhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null interceptor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/msec/net/okhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private systemDefaultSslSocketFactory(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 3
    .param p1, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    .line 251
    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 252
    .local v0, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 253
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 254
    .end local v0    # "sslContext":Ljavax/net/ssl/SSLContext;
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/security/GeneralSecurityException;
    const-string v1, "No System TLS"

    invoke-static {v1, v0}, Lokhttp3/internal/Util;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v1

    throw v1
.end method

.method private systemDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 5

    .line 236
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 237
    .local v0, "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v1, 0x0

    check-cast v1, Ljava/security/KeyStore;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 238
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    .line 239
    .local v1, "trustManagers":[Ljavax/net/ssl/TrustManager;
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    aget-object v3, v1, v2

    instance-of v3, v3, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_0

    .line 243
    aget-object v2, v1, v2

    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    return-object v2

    .line 240
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected default trust managers:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .end local v0    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .end local v1    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/security/GeneralSecurityException;
    const-string v1, "No System TLS"

    invoke-static {v1, v0}, Lokhttp3/internal/Util;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public authenticator()Lokhttp3/Authenticator;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient;->authenticator:Lokhttp3/Authenticator;

    return-object v0
.end method

.method public cache()Lokhttp3/Cache;
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient;->cache:Lokhttp3/Cache;

    return-object v0
.end method

.method public certificatePinner()Lokhttp3/CertificatePinner;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient;->certificatePinner:Lokhttp3/CertificatePinner;

    return-object v0
.end method

.method public connectTimeoutMillis()I
    .locals 1

    .line 261
    iget v0, p0, Lcom/msec/net/okhttp3/OkHttpClient;->connectTimeout:I

    return v0
.end method

.method public connectionPool()Lokhttp3/ConnectionPool;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient;->connectionPool:Lokhttp3/ConnectionPool;

    return-object v0
.end method

.method public connectionSpecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    return-object v0
.end method

.method public cookieJar()Lokhttp3/CookieJar;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient;->cookieJar:Lokhttp3/CookieJar;

    return-object v0
.end method

.method public dispatcher()Lokhttp3/Dispatcher;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient;->dispatcher:Lokhttp3/Dispatcher;

    return-object v0
.end method

.method public dns()Lokhttp3/Dns;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient;->dns:Lokhttp3/Dns;

    return-object v0
.end method

.method public eventListenerFactory()Lokhttp3/EventListener$Factory;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient;->eventListenerFactory:Lokhttp3/EventListener$Factory;

    return-object v0
.end method

.method public followRedirects()Z
    .locals 1

    .line 336
    iget-boolean v0, p0, Lcom/msec/net/okhttp3/OkHttpClient;->followRedirects:Z

    return v0
.end method

.method public followSslRedirects()Z
    .locals 1

    .line 332
    iget-boolean v0, p0, Lcom/msec/net/okhttp3/OkHttpClient;->followSslRedirects:Z

    return v0
.end method

.method public hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public interceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method internalCache()Lokhttp3/internal/cache/InternalCache;
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient;->cache:Lokhttp3/Cache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient;->cache:Lokhttp3/Cache;

    const-string v1, "internalCache"

    invoke-static {v0, v1}, Lcom/msec/Helper;->getMember(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/cache/InternalCache;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient;->internalCache:Lokhttp3/internal/cache/InternalCache;

    :goto_0
    return-object v0
.end method

.method public networkInterceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public newBuilder()Lcom/msec/net/okhttp3/OkHttpClient$Builder;
    .locals 1

    .line 412
    new-instance v0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;

    invoke-direct {v0, p0}, Lcom/msec/net/okhttp3/OkHttpClient$Builder;-><init>(Lcom/msec/net/okhttp3/OkHttpClient;)V

    return-object v0
.end method

.method public newCall(Lokhttp3/Request;)Lokhttp3/Call;
    .locals 9
    .param p1, "request"    # Lokhttp3/Request;

    .line 381
    const/4 v0, 0x0

    move-object v1, v0

    .line 383
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v2, "okhttp3.RealCall"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v1, v2

    .line 384
    const-string v2, "newRealCall"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lokhttp3/OkHttpClient;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Lokhttp3/Request;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 385
    .local v2, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v2, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 386
    iget-object v4, p0, Lcom/msec/net/okhttp3/OkHttpClient;->okclient:Lokhttp3/OkHttpClient;

    const-class v5, Lokhttp3/OkHttpClient$Builder;

    invoke-static {p0, v4, v5}, Lcom/msec/Helper;->syncMemberSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 387
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/msec/net/okhttp3/OkHttpClient;->okclient:Lokhttp3/OkHttpClient;

    aput-object v4, v3, v6

    aput-object p1, v3, v7

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/Call;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 394
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 395
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 392
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v2

    .line 393
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 390
    :catch_2
    move-exception v2

    .line 391
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 388
    :catch_3
    move-exception v2

    .line 389
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 396
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    nop

    .line 397
    :goto_1
    return-object v0
.end method

.method public newWebSocket(Lokhttp3/Request;Lokhttp3/WebSocketListener;)Lokhttp3/WebSocket;
    .locals 3
    .param p1, "request"    # Lokhttp3/Request;
    .param p2, "listener"    # Lokhttp3/WebSocketListener;

    .line 404
    new-instance v0, Lokhttp3/internal/ws/RealWebSocket;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-direct {v0, p1, p2, v1}, Lokhttp3/internal/ws/RealWebSocket;-><init>(Lokhttp3/Request;Lokhttp3/WebSocketListener;Ljava/util/Random;)V

    .line 405
    .local v0, "webSocket":Lokhttp3/internal/ws/RealWebSocket;
    iget-object v1, p0, Lcom/msec/net/okhttp3/OkHttpClient;->okclient:Lokhttp3/OkHttpClient;

    const-class v2, Lokhttp3/OkHttpClient$Builder;

    invoke-static {p0, v1, v2}, Lcom/msec/Helper;->syncMemberSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 406
    iget-object v1, p0, Lcom/msec/net/okhttp3/OkHttpClient;->okclient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, v1}, Lokhttp3/internal/ws/RealWebSocket;->connect(Lokhttp3/OkHttpClient;)V

    .line 408
    return-object v0
.end method

.method public pingIntervalMillis()I
    .locals 1

    .line 276
    iget v0, p0, Lcom/msec/net/okhttp3/OkHttpClient;->pingInterval:I

    return v0
.end method

.method public protocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public proxy()Ljava/net/Proxy;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public proxyAuthenticator()Lokhttp3/Authenticator;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient;->proxyAuthenticator:Lokhttp3/Authenticator;

    return-object v0
.end method

.method public proxySelector()Ljava/net/ProxySelector;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public readTimeoutMillis()I
    .locals 1

    .line 266
    iget v0, p0, Lcom/msec/net/okhttp3/OkHttpClient;->readTimeout:I

    return v0
.end method

.method public retryOnConnectionFailure()Z
    .locals 1

    .line 340
    iget-boolean v0, p0, Lcom/msec/net/okhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    return v0
.end method

.method public socketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public writeTimeoutMillis()I
    .locals 1

    .line 271
    iget v0, p0, Lcom/msec/net/okhttp3/OkHttpClient;->writeTimeout:I

    return v0
.end method
