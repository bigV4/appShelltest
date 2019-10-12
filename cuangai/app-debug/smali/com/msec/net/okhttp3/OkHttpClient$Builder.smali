.class public final Lcom/msec/net/okhttp3/OkHttpClient$Builder;
.super Ljava/lang/Object;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/msec/net/okhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field authenticator:Lokhttp3/Authenticator;

.field cache:Lokhttp3/Cache;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field certificatePinner:Lokhttp3/CertificatePinner;

.field connectTimeout:I

.field connectionPool:Lokhttp3/ConnectionPool;

.field connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field cookieJar:Lokhttp3/CookieJar;

.field dispatcher:Lokhttp3/Dispatcher;

.field dns:Lokhttp3/Dns;

.field eventListenerFactory:Lokhttp3/EventListener$Factory;

.field followRedirects:Z

.field followSslRedirects:Z

.field hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field internalCache:Lokhttp3/internal/cache/InternalCache;
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

.field pingInterval:I

.field protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field proxy:Ljava/net/Proxy;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field proxyAuthenticator:Lokhttp3/Authenticator;

.field proxySelector:Ljava/net/ProxySelector;

.field readTimeout:I

.field retryOnConnectionFailure:Z

.field socketFactory:Ljavax/net/SocketFactory;

.field sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field writeTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    .line 445
    new-instance v0, Lokhttp3/Dispatcher;

    invoke-direct {v0}, Lokhttp3/Dispatcher;-><init>()V

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->dispatcher:Lokhttp3/Dispatcher;

    .line 446
    sget-object v0, Lcom/msec/net/okhttp3/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    .line 447
    sget-object v0, Lcom/msec/net/okhttp3/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    .line 449
    const/4 v0, 0x0

    move-object v1, v0

    .line 451
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    const-string v4, "okhttp3.EventListener"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v1, v4

    .line 452
    const-string v4, "factory"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Lokhttp3/EventListener;

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 453
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 454
    new-array v5, v3, [Ljava/lang/Object;

    sget-object v6, Lokhttp3/EventListener;->NONE:Lokhttp3/EventListener;

    aput-object v6, v5, v2

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/EventListener$Factory;

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->eventListenerFactory:Lokhttp3/EventListener$Factory;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 461
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 459
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 460
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 457
    :catch_2
    move-exception v0

    .line 458
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 455
    :catch_3
    move-exception v0

    .line 456
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 463
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    nop

    .line 465
    :goto_1
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 466
    sget-object v0, Lokhttp3/CookieJar;->NO_COOKIES:Lokhttp3/CookieJar;

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->cookieJar:Lokhttp3/CookieJar;

    .line 467
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 468
    sget-object v0, Lokhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 469
    sget-object v0, Lokhttp3/CertificatePinner;->DEFAULT:Lokhttp3/CertificatePinner;

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->certificatePinner:Lokhttp3/CertificatePinner;

    .line 470
    sget-object v0, Lokhttp3/Authenticator;->NONE:Lokhttp3/Authenticator;

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lokhttp3/Authenticator;

    .line 471
    sget-object v0, Lokhttp3/Authenticator;->NONE:Lokhttp3/Authenticator;

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->authenticator:Lokhttp3/Authenticator;

    .line 472
    new-instance v0, Lokhttp3/ConnectionPool;

    invoke-direct {v0}, Lokhttp3/ConnectionPool;-><init>()V

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->connectionPool:Lokhttp3/ConnectionPool;

    .line 473
    sget-object v0, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns;

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->dns:Lokhttp3/Dns;

    .line 474
    iput-boolean v3, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    .line 475
    iput-boolean v3, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->followRedirects:Z

    .line 476
    iput-boolean v3, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    .line 477
    const/16 v0, 0x2710

    iput v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->connectTimeout:I

    .line 478
    iput v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->readTimeout:I

    .line 479
    iput v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->writeTimeout:I

    .line 480
    iput v2, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->pingInterval:I

    .line 481
    iget-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    sget-object v1, Lcom/msec/net/okhttp3/OkHttpClient;->tsInterceptor:Lcom/msec/net/okhttp3/TSInterceptor;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    return-void
.end method

.method constructor <init>(Lcom/msec/net/okhttp3/OkHttpClient;)V
    .locals 2
    .param p1, "okHttpClient"    # Lcom/msec/net/okhttp3/OkHttpClient;

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    .line 485
    iget-object v0, p1, Lcom/msec/net/okhttp3/OkHttpClient;->dispatcher:Lokhttp3/Dispatcher;

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->dispatcher:Lokhttp3/Dispatcher;

    .line 486
    iget-object v0, p1, Lcom/msec/net/okhttp3/OkHttpClient;->proxy:Ljava/net/Proxy;

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    .line 487
    iget-object v0, p1, Lcom/msec/net/okhttp3/OkHttpClient;->protocols:Ljava/util/List;

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    .line 488
    iget-object v0, p1, Lcom/msec/net/okhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    .line 489
    iget-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    iget-object v1, p1, Lcom/msec/net/okhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 490
    iget-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    iget-object v1, p1, Lcom/msec/net/okhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 491
    iget-object v0, p1, Lcom/msec/net/okhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    sget-object v1, Lcom/msec/net/okhttp3/OkHttpClient;->tsInterceptor:Lcom/msec/net/okhttp3/TSInterceptor;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    sget-object v1, Lcom/msec/net/okhttp3/OkHttpClient;->tsInterceptor:Lcom/msec/net/okhttp3/TSInterceptor;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    :cond_0
    iget-object v0, p1, Lcom/msec/net/okhttp3/OkHttpClient;->eventListenerFactory:Lokhttp3/EventListener$Factory;

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->eventListenerFactory:Lokhttp3/EventListener$Factory;

    .line 495
    iget-object v0, p1, Lcom/msec/net/okhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 496
    iget-object v0, p1, Lcom/msec/net/okhttp3/OkHttpClient;->cookieJar:Lokhttp3/CookieJar;

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->cookieJar:Lokhttp3/CookieJar;

    .line 497
    iget-object v0, p1, Lcom/msec/net/okhttp3/OkHttpClient;->internalCache:Lokhttp3/internal/cache/InternalCache;

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->internalCache:Lokhttp3/internal/cache/InternalCache;

    .line 498
    iget-object v0, p1, Lcom/msec/net/okhttp3/OkHttpClient;->cache:Lokhttp3/Cache;

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->cache:Lokhttp3/Cache;

    .line 499
    iget-object v0, p1, Lcom/msec/net/okhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 500
    iget-object v0, p1, Lcom/msec/net/okhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 501
    iget-object v0, p1, Lcom/msec/net/okhttp3/OkHttpClient;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 502
    iget-object v0, p1, Lcom/msec/net/okhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 503
    iget-object v0, p1, Lcom/msec/net/okhttp3/OkHttpClient;->certificatePinner:Lokhttp3/CertificatePinner;

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->certificatePinner:Lokhttp3/CertificatePinner;

    .line 504
    iget-object v0, p1, Lcom/msec/net/okhttp3/OkHttpClient;->proxyAuthenticator:Lokhttp3/Authenticator;

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lokhttp3/Authenticator;

    .line 505
    iget-object v0, p1, Lcom/msec/net/okhttp3/OkHttpClient;->authenticator:Lokhttp3/Authenticator;

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->authenticator:Lokhttp3/Authenticator;

    .line 506
    iget-object v0, p1, Lcom/msec/net/okhttp3/OkHttpClient;->connectionPool:Lokhttp3/ConnectionPool;

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->connectionPool:Lokhttp3/ConnectionPool;

    .line 507
    iget-object v0, p1, Lcom/msec/net/okhttp3/OkHttpClient;->dns:Lokhttp3/Dns;

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->dns:Lokhttp3/Dns;

    .line 508
    iget-boolean v0, p1, Lcom/msec/net/okhttp3/OkHttpClient;->followSslRedirects:Z

    iput-boolean v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    .line 509
    iget-boolean v0, p1, Lcom/msec/net/okhttp3/OkHttpClient;->followRedirects:Z

    iput-boolean v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->followRedirects:Z

    .line 510
    iget-boolean v0, p1, Lcom/msec/net/okhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    iput-boolean v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    .line 511
    iget v0, p1, Lcom/msec/net/okhttp3/OkHttpClient;->connectTimeout:I

    iput v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->connectTimeout:I

    .line 512
    iget v0, p1, Lcom/msec/net/okhttp3/OkHttpClient;->readTimeout:I

    iput v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->readTimeout:I

    .line 513
    iget v0, p1, Lcom/msec/net/okhttp3/OkHttpClient;->writeTimeout:I

    iput v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->writeTimeout:I

    .line 514
    iget v0, p1, Lcom/msec/net/okhttp3/OkHttpClient;->pingInterval:I

    iput v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->pingInterval:I

    .line 515
    return-void
.end method


# virtual methods
.method public addInterceptor(Lokhttp3/Interceptor;)Lcom/msec/net/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "interceptor"    # Lokhttp3/Interceptor;

    .line 858
    if-eqz p1, :cond_0

    .line 859
    iget-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 860
    return-object p0

    .line 858
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "interceptor == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addNetworkInterceptor(Lokhttp3/Interceptor;)Lcom/msec/net/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "interceptor"    # Lokhttp3/Interceptor;

    .line 873
    if-eqz p1, :cond_0

    .line 874
    iget-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 875
    iget-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    sget-object v1, Lcom/msec/net/okhttp3/OkHttpClient;->tsInterceptor:Lcom/msec/net/okhttp3/TSInterceptor;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 876
    iget-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    sget-object v1, Lcom/msec/net/okhttp3/OkHttpClient;->tsInterceptor:Lcom/msec/net/okhttp3/TSInterceptor;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 877
    return-object p0

    .line 873
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "interceptor == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public authenticator(Lokhttp3/Authenticator;)Lcom/msec/net/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "authenticator"    # Lokhttp3/Authenticator;

    .line 716
    if-eqz p1, :cond_0

    .line 717
    iput-object p1, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->authenticator:Lokhttp3/Authenticator;

    .line 718
    return-object p0

    .line 716
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "authenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Lcom/msec/net/okhttp3/OkHttpClient;
    .locals 1

    .line 922
    new-instance v0, Lcom/msec/net/okhttp3/OkHttpClient;

    invoke-direct {v0, p0}, Lcom/msec/net/okhttp3/OkHttpClient;-><init>(Lcom/msec/net/okhttp3/OkHttpClient$Builder;)V

    return-object v0
.end method

.method public cache(Lokhttp3/Cache;)Lcom/msec/net/okhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1, "cache"    # Lokhttp3/Cache;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 601
    iput-object p1, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->cache:Lokhttp3/Cache;

    .line 602
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->internalCache:Lokhttp3/internal/cache/InternalCache;

    .line 603
    return-object p0
.end method

.method public certificatePinner(Lokhttp3/CertificatePinner;)Lcom/msec/net/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "certificatePinner"    # Lokhttp3/CertificatePinner;

    .line 704
    if-eqz p1, :cond_0

    .line 705
    iput-object p1, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->certificatePinner:Lokhttp3/CertificatePinner;

    .line 706
    return-object p0

    .line 704
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "certificatePinner == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connectTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/msec/net/okhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 523
    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lokhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->connectTimeout:I

    .line 524
    return-object p0
.end method

.method public connectionPool(Lokhttp3/ConnectionPool;)Lcom/msec/net/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "connectionPool"    # Lokhttp3/ConnectionPool;

    .line 739
    if-eqz p1, :cond_0

    .line 740
    iput-object p1, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->connectionPool:Lokhttp3/ConnectionPool;

    .line 741
    return-object p0

    .line 739
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connectionPool == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connectionSpecs(Ljava/util/List;)Lcom/msec/net/okhttp3/OkHttpClient$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/ConnectionSpec;",
            ">;)",
            "Lcom/msec/net/okhttp3/OkHttpClient$Builder;"
        }
    .end annotation

    .line 844
    .local p1, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lokhttp3/ConnectionSpec;>;"
    invoke-static {p1}, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    .line 845
    return-object p0
.end method

.method public cookieJar(Lokhttp3/CookieJar;)Lcom/msec/net/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "cookieJar"    # Lokhttp3/CookieJar;

    .line 588
    if-eqz p1, :cond_0

    .line 589
    iput-object p1, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->cookieJar:Lokhttp3/CookieJar;

    .line 590
    return-object p0

    .line 588
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cookieJar == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispatcher(Lokhttp3/Dispatcher;)Lcom/msec/net/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "dispatcher"    # Lokhttp3/Dispatcher;

    .line 788
    if-eqz p1, :cond_0

    .line 789
    iput-object p1, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->dispatcher:Lokhttp3/Dispatcher;

    .line 790
    return-object p0

    .line 788
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dispatcher == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dns(Lokhttp3/Dns;)Lcom/msec/net/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "dns"    # Lokhttp3/Dns;

    .line 612
    if-eqz p1, :cond_0

    .line 613
    iput-object p1, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->dns:Lokhttp3/Dns;

    .line 614
    return-object p0

    .line 612
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dns == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public eventListener(Lokhttp3/EventListener;)Lcom/msec/net/okhttp3/OkHttpClient$Builder;
    .locals 7
    .param p1, "eventListener"    # Lokhttp3/EventListener;

    .line 887
    if-eqz p1, :cond_0

    .line 888
    const/4 v0, 0x0

    move-object v1, v0

    .line 890
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v2, "okhttp3.EventListener"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v1, v2

    .line 891
    const-string v2, "factory"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lokhttp3/EventListener;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 892
    .local v2, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 893
    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lokhttp3/EventListener;->NONE:Lokhttp3/EventListener;

    aput-object v4, v3, v6

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/EventListener$Factory;

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->eventListenerFactory:Lokhttp3/EventListener$Factory;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 900
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 901
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 898
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 899
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 896
    :catch_2
    move-exception v0

    .line 897
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 894
    :catch_3
    move-exception v0

    .line 895
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 902
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    nop

    .line 904
    :goto_1
    return-object p0

    .line 887
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "eventListener == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public eventListenerFactory(Lokhttp3/EventListener$Factory;)Lcom/msec/net/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "eventListenerFactory"    # Lokhttp3/EventListener$Factory;

    .line 914
    if-eqz p1, :cond_0

    .line 917
    iput-object p1, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->eventListenerFactory:Lokhttp3/EventListener$Factory;

    .line 918
    return-object p0

    .line 915
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "eventListenerFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public followRedirects(Z)Lcom/msec/net/okhttp3/OkHttpClient$Builder;
    .locals 0
    .param p1, "followRedirects"    # Z

    .line 757
    iput-boolean p1, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->followRedirects:Z

    .line 758
    return-object p0
.end method

.method public followSslRedirects(Z)Lcom/msec/net/okhttp3/OkHttpClient$Builder;
    .locals 0
    .param p1, "followProtocolRedirects"    # Z

    .line 751
    iput-boolean p1, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    .line 752
    return-object p0
.end method

.method public hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/msec/net/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .line 693
    if-eqz p1, :cond_0

    .line 694
    iput-object p1, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 695
    return-object p0

    .line 693
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "hostnameVerifier == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 854
    iget-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

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

    .line 869
    iget-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public pingInterval(JLjava/util/concurrent/TimeUnit;)Lcom/msec/net/okhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1, "interval"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 554
    const-string v0, "interval"

    invoke-static {v0, p1, p2, p3}, Lokhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->pingInterval:I

    .line 555
    return-object p0
.end method

.method public protocols(Ljava/util/List;)Lcom/msec/net/okhttp3/OkHttpClient$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;)",
            "Lcom/msec/net/okhttp3/OkHttpClient$Builder;"
        }
    .end annotation

    .line 822
    .local p1, "protocols":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Protocol;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    .line 825
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 828
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 831
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 836
    sget-object v0, Lokhttp3/Protocol;->SPDY_3:Lokhttp3/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 839
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    .line 840
    return-object p0

    .line 832
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocols must not contain null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 829
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols must not contain http/1.0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 826
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols doesn\'t contain http/1.1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public proxy(Ljava/net/Proxy;)Lcom/msec/net/okhttp3/OkHttpClient$Builder;
    .locals 0
    .param p1, "proxy"    # Ljava/net/Proxy;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 564
    iput-object p1, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    .line 565
    return-object p0
.end method

.method public proxyAuthenticator(Lokhttp3/Authenticator;)Lcom/msec/net/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "proxyAuthenticator"    # Lokhttp3/Authenticator;

    .line 728
    if-eqz p1, :cond_0

    .line 729
    iput-object p1, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lokhttp3/Authenticator;

    .line 730
    return-object p0

    .line 728
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxyAuthenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public proxySelector(Ljava/net/ProxySelector;)Lcom/msec/net/okhttp3/OkHttpClient$Builder;
    .locals 0
    .param p1, "proxySelector"    # Ljava/net/ProxySelector;

    .line 577
    iput-object p1, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 578
    return-object p0
.end method

.method public readTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/msec/net/okhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 532
    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lokhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->readTimeout:I

    .line 533
    return-object p0
.end method

.method public retryOnConnectionFailure(Z)Lcom/msec/net/okhttp3/OkHttpClient$Builder;
    .locals 0
    .param p1, "retryOnConnectionFailure"    # Z

    .line 780
    iput-boolean p1, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    .line 781
    return-object p0
.end method

.method setInternalCache(Lokhttp3/internal/cache/InternalCache;)V
    .locals 1
    .param p1, "internalCache"    # Lokhttp3/internal/cache/InternalCache;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 595
    iput-object p1, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->internalCache:Lokhttp3/internal/cache/InternalCache;

    .line 596
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->cache:Lokhttp3/Cache;

    .line 597
    return-void
.end method

.method public socketFactory(Ljavax/net/SocketFactory;)Lcom/msec/net/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "socketFactory"    # Ljavax/net/SocketFactory;

    .line 626
    if-eqz p1, :cond_0

    .line 627
    iput-object p1, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 628
    return-object p0

    .line 626
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "socketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/msec/net/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .line 641
    if-eqz p1, :cond_0

    .line 642
    iput-object p1, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 643
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/internal/platform/Platform;->buildCertificateChainCleaner(Ljavax/net/ssl/SSLSocketFactory;)Lokhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v0

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 644
    return-object p0

    .line 641
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sslSocketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lcom/msec/net/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p2, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    .line 679
    if-eqz p1, :cond_1

    .line 680
    if-eqz p2, :cond_0

    .line 681
    iput-object p1, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 682
    invoke-static {p2}, Lokhttp3/internal/tls/CertificateChainCleaner;->get(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v0

    iput-object v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 683
    return-object p0

    .line 680
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "trustManager == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 679
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sslSocketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/msec/net/okhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 541
    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lokhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lcom/msec/net/okhttp3/OkHttpClient$Builder;->writeTimeout:I

    .line 542
    return-object p0
.end method
