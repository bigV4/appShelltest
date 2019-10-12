.class Lcom/msec/net/TSHttpsURLConnection;
.super Ljavax/net/ssl/HttpsURLConnection;
.source "TSHttpsURLConnection.java"


# static fields
.field private static GZIP_HEADER_SIZE:I


# instance fields
.field private mClient:Lcom/msec/MSecClient;

.field private mConn:Ljavax/net/ssl/HttpsURLConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const/4 v0, 0x2

    sput v0, Lcom/msec/net/TSHttpsURLConnection;->GZIP_HEADER_SIZE:I

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 4
    .param p1, "conn"    # Ljavax/net/ssl/HttpsURLConnection;

    .line 34
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    .line 36
    sget v0, Lcom/msec/MLog;->LOG_CODE_WRAPPER_URL_HTTPS_WORK:I

    invoke-static {v0}, Lcom/msec/MLog;->printDetail(I)V

    .line 38
    iput-object p1, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    .line 39
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/msec/MSecClient;->getClient(Ljava/lang/String;)Lcom/msec/MSecClient;

    move-result-object v0

    iput-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mClient:Lcom/msec/MSecClient;

    .line 41
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mClient:Lcom/msec/MSecClient;

    invoke-virtual {v0}, Lcom/msec/MSecClient;->isNeedBodyEncrypt()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 42
    .local v0, "flag":I
    :goto_0
    iget-object v1, p0, Lcom/msec/net/TSHttpsURLConnection;->mClient:Lcom/msec/MSecClient;

    invoke-virtual {v1}, Lcom/msec/MSecClient;->getHeaderKey()Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "headerKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/msec/net/TSHttpsURLConnection;->mClient:Lcom/msec/MSecClient;

    invoke-virtual {v2, v0}, Lcom/msec/MSecClient;->getRequestHeader(I)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "headerValue":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v2, :cond_1

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 46
    iget-object v3, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v3, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_1
    return-void
.end method

.method private getEncryptLength(J)J
    .locals 7
    .param p1, "len"    # J

    .line 89
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 90
    const-wide/16 v2, 0x2000

    div-long v4, p1, v2

    .line 91
    .local v4, "mb":J
    rem-long v2, p1, v2

    cmp-long v6, v2, v0

    if-eqz v6, :cond_0

    .line 92
    const-wide/16 v0, 0x1

    add-long/2addr v4, v0

    .line 95
    :cond_0
    const-wide/16 v0, 0x2e

    mul-long v0, v0, v4

    add-long/2addr v0, p1

    return-wide v0

    .line 97
    .end local v4    # "mb":J
    :cond_1
    return-wide p1
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .line 247
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 145
    return-void
.end method

.method public disconnect()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 135
    return-void
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "types"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getDoInput()Z
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public getDoOutput()Z
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getExpiration()J
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1
    .param p1, "pos"    # I

    .line 308
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 313
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 2
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 189
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 318
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "posn"    # I

    .line 323
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    return-object v0
.end method

.method public getIfModifiedSince()J
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 53
    .local v0, "content":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 54
    .local v1, "gzipContent":Ljava/io/InputStream;
    iget-object v2, p0, Lcom/msec/net/TSHttpsURLConnection;->mClient:Lcom/msec/MSecClient;

    invoke-virtual {v2}, Lcom/msec/MSecClient;->isNeedBodyEncrypt()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 55
    const-string v2, "Content-Encoding"

    invoke-virtual {p0, v2}, Lcom/msec/net/TSHttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "contentEncoding":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v3, "gzip"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 58
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v3

    .line 59
    sget v3, Lcom/msec/net/TSHttpsURLConnection;->GZIP_HEADER_SIZE:I

    new-array v3, v3, [B

    .line 60
    .local v3, "gHeader":[B
    sget v4, Lcom/msec/net/TSHttpsURLConnection;->GZIP_HEADER_SIZE:I

    invoke-virtual {v0, v4}, Ljava/io/InputStream;->mark(I)V

    .line 61
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    sget v5, Lcom/msec/net/TSHttpsURLConnection;->GZIP_HEADER_SIZE:I

    if-ne v4, v5, :cond_0

    const/4 v4, 0x0

    aget-byte v4, v3, v4

    const/16 v5, 0x1f

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    aget-byte v4, v3, v4

    const/16 v5, -0x75

    if-ne v4, v5, :cond_0

    .line 64
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 65
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v4

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 70
    .end local v3    # "gHeader":[B
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 71
    iget-object v3, p0, Lcom/msec/net/TSHttpsURLConnection;->mClient:Lcom/msec/MSecClient;

    invoke-virtual {v3, v1}, Lcom/msec/MSecClient;->decryptResponseBody(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v3

    return-object v3

    .line 73
    :cond_2
    iget-object v3, p0, Lcom/msec/net/TSHttpsURLConnection;->mClient:Lcom/msec/MSecClient;

    invoke-virtual {v3, v0}, Lcom/msec/MSecClient;->decryptResponseBody(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v3

    return-object v3

    .line 76
    .end local v2    # "contentEncoding":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    return-object v2
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public getLastModified()J
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mClient:Lcom/msec/MSecClient;

    invoke-virtual {v0}, Lcom/msec/MSecClient;->isNeedBodyEncrypt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mClient:Lcom/msec/MSecClient;

    iget-object v1, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/msec/MSecClient;->encryptRequestBody(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .line 353
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    const/4 v0, 0x0

    .line 211
    .local v0, "ret":I
    :try_start_0
    iget-object v1, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 214
    goto :goto_0

    .line 212
    :catch_0
    move-exception v1

    .line 213
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v0

    .line 216
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v1, p0, Lcom/msec/net/TSHttpsURLConnection;->mClient:Lcom/msec/MSecClient;

    iget-object v2, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    iget-object v3, p0, Lcom/msec/net/TSHttpsURLConnection;->mClient:Lcom/msec/MSecClient;

    invoke-virtual {v3}, Lcom/msec/MSecClient;->getHeaderKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/msec/MSecClient;->onResponseHeader(Ljava/lang/String;)I

    .line 217
    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public getServerCertificates()[Ljava/security/cert/Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .line 368
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setAllowUserInteraction(Z)V

    .line 369
    return-void
.end method

.method public setChunkedStreamingMode(I)V
    .locals 1
    .param p1, "chunkLength"    # I

    .line 227
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setChunkedStreamingMode(I)V

    .line 228
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 1
    .param p1, "timeoutMillis"    # I

    .line 373
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 374
    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .line 378
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultUseCaches(Z)V

    .line 379
    return-void
.end method

.method public setDoInput(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .line 383
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 384
    return-void
.end method

.method public setDoOutput(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .line 388
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 389
    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 1
    .param p1, "contentLength"    # I

    .line 232
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setFixedLengthStreamingMode(I)V

    .line 233
    return-void
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1
    .param p1, "v"    # Ljavax/net/ssl/HostnameVerifier;

    .line 169
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 170
    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 1
    .param p1, "newValue"    # J

    .line 393
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setIfModifiedSince(J)V

    .line 394
    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1
    .param p1, "followRedirects"    # Z

    .line 237
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V

    .line 238
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 1
    .param p1, "timeoutMillis"    # I

    .line 398
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 399
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .line 103
    :try_start_0
    const-string v0, "Content-Length"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mClient:Lcom/msec/MSecClient;

    .line 104
    invoke-virtual {v0}, Lcom/msec/MSecClient;->isNeedBodyEncrypt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 106
    .local v0, "value":J
    invoke-direct {p0, v0, v1}, Lcom/msec/net/TSHttpsURLConnection;->getEncryptLength(J)J

    move-result-wide v2

    move-wide v0, v2

    .line 107
    long-to-int v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v2

    .line 111
    .end local v0    # "value":J
    :cond_0
    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 113
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_0
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 1
    .param p1, "sf"    # Ljavax/net/ssl/SSLSocketFactory;

    .line 174
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 175
    return-void
.end method

.method public setUseCaches(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .line 403
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 404
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usingProxy()Z
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/msec/net/TSHttpsURLConnection;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->usingProxy()Z

    move-result v0

    return v0
.end method
