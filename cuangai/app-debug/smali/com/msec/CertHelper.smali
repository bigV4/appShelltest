.class public Lcom/msec/CertHelper;
.super Ljava/lang/Object;
.source "CertHelper.java"


# static fields
.field private static final trustAllCerts:[Ljavax/net/ssl/TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Lcom/msec/CertHelper$1;

    invoke-direct {v1}, Lcom/msec/CertHelper$1;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/msec/CertHelper;->trustAllCerts:[Ljavax/net/ssl/TrustManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSSLSocketFactory(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 24
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "server.crt"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 25
    .local v0, "cert":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 26
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/InputStream;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/msec/CertHelper;->setCertificates([Ljava/io/InputStream;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 29
    .end local v0    # "cert":Ljava/io/InputStream;
    :cond_0
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 30
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static varargs setCertificates([Ljava/io/InputStream;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 9
    .param p0, "certificates"    # [Ljava/io/InputStream;

    .line 63
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 64
    .local v1, "certificateFactory":Ljava/security/cert/CertificateFactory;
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 65
    .local v2, "keyStore":Ljava/security/KeyStore;
    invoke-virtual {v2, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 66
    const/4 v3, 0x0

    .line 67
    .local v3, "index":I
    array-length v4, p0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, p0, v5

    .line 68
    .local v6, "certificate":Ljava/io/InputStream;
    add-int/lit8 v7, v3, 0x1

    .local v7, "index":I
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "certificateAlias":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 71
    if-eqz v6, :cond_0

    .line 72
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 73
    :catch_0
    move-exception v8

    goto :goto_2

    .line 74
    :cond_0
    :goto_1
    nop

    .line 67
    .end local v3    # "certificateAlias":Ljava/lang/String;
    .end local v6    # "certificate":Ljava/io/InputStream;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    move v3, v7

    goto :goto_0

    .line 77
    .end local v7    # "index":I
    .local v3, "index":I
    :cond_1
    :try_start_2
    const-string v4, "TLS"

    invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v4

    .line 79
    .local v4, "sslContext":Ljavax/net/ssl/SSLContext;
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v5

    .line 80
    .local v5, "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v5, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 81
    invoke-virtual {v5}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v6

    new-instance v7, Ljava/security/SecureRandom;

    invoke-direct {v7}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v4, v0, v6, v7}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 82
    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v6

    .line 84
    .end local v1    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v2    # "keyStore":Ljava/security/KeyStore;
    .end local v3    # "index":I
    .end local v4    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    :catch_1
    move-exception v1

    .line 86
    return-object v0
.end method

.method public static trustAllHosts(Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 5
    .param p0, "connection"    # Ljavax/net/ssl/HttpsURLConnection;

    .line 34
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 36
    .local v0, "oldFactory":Ljavax/net/ssl/SSLSocketFactory;
    :try_start_0
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 37
    .local v1, "sc":Ljavax/net/ssl/SSLContext;
    const/4 v2, 0x0

    sget-object v3, Lcom/msec/CertHelper;->trustAllCerts:[Ljavax/net/ssl/TrustManager;

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 38
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 39
    .local v2, "newFactory":Ljavax/net/ssl/SSLSocketFactory;
    invoke-virtual {p0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v1    # "sc":Ljavax/net/ssl/SSLContext;
    .end local v2    # "newFactory":Ljavax/net/ssl/SSLSocketFactory;
    goto :goto_0

    .line 40
    :catch_0
    move-exception v1

    .line 42
    :goto_0
    return-object v0
.end method
