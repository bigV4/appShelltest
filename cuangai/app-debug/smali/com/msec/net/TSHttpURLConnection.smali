.class Lcom/msec/net/TSHttpURLConnection;
.super Ljava/net/HttpURLConnection;
.source "TSHttpURLConnection.java"


# static fields
.field private static GZIP_HEADER_SIZE:I


# instance fields
.field private mClient:Lcom/msec/MSecClient;

.field private mConn:Ljava/net/HttpURLConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const/4 v0, 0x2

    sput v0, Lcom/msec/net/TSHttpURLConnection;->GZIP_HEADER_SIZE:I

    return-void
.end method

.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 4
    .param p1, "conn"    # Ljava/net/HttpURLConnection;

    .line 28
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 30
    sget v0, Lcom/msec/MLog;->LOG_CODE_WRAPPER_URL_HTTP_WORK:I

    invoke-static {v0}, Lcom/msec/MLog;->printDetail(I)V

    .line 32
    iput-object p1, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    .line 33
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/msec/MSecClient;->getClient(Ljava/lang/String;)Lcom/msec/MSecClient;

    move-result-object v0

    iput-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mClient:Lcom/msec/MSecClient;

    .line 35
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mClient:Lcom/msec/MSecClient;

    invoke-virtual {v0}, Lcom/msec/MSecClient;->isNeedBodyEncrypt()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 36
    .local v0, "flag":I
    :goto_0
    iget-object v1, p0, Lcom/msec/net/TSHttpURLConnection;->mClient:Lcom/msec/MSecClient;

    invoke-virtual {v1}, Lcom/msec/MSecClient;->getHeaderKey()Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "headerKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/msec/net/TSHttpURLConnection;->mClient:Lcom/msec/MSecClient;

    invoke-virtual {v2, v0}, Lcom/msec/MSecClient;->getRequestHeader(I)Ljava/lang/String;

    move-result-object v2

    .line 39
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

    .line 40
    iget-object v3, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v3, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_1
    return-void
.end method

.method private getEncryptLength(J)J
    .locals 7
    .param p1, "len"    # J

    .line 87
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 88
    const-wide/16 v2, 0x2000

    div-long v4, p1, v2

    .line 89
    .local v4, "mb":J
    rem-long v2, p1, v2

    cmp-long v6, v2, v0

    if-eqz v6, :cond_0

    .line 90
    const-wide/16 v0, 0x1

    add-long/2addr v4, v0

    .line 93
    :cond_0
    const-wide/16 v0, 0x2e

    mul-long v0, v0, v4

    add-long/2addr v0, p1

    return-wide v0

    .line 95
    .end local v4    # "mb":J
    :cond_1
    return-wide p1
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 127
    return-void
.end method

.method public disconnect()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 117
    return-void
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getConnectTimeout()I

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

    .line 214
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContent()Ljava/lang/Object;

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

    .line 220
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getDoInput()Z
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public getDoOutput()Z
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getExpiration()J
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1
    .param p1, "pos"    # I

    .line 260
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 2
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 141
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 270
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "posn"    # I

    .line 275
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

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

    .line 280
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIfModifiedSince()J
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getIfModifiedSince()J

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

    .line 47
    invoke-virtual {p0}, Lcom/msec/net/TSHttpURLConnection;->getResponseCode()I

    .line 50
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 51
    .local v0, "content":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 52
    .local v1, "gzipContent":Ljava/io/InputStream;
    iget-object v2, p0, Lcom/msec/net/TSHttpURLConnection;->mClient:Lcom/msec/MSecClient;

    invoke-virtual {v2}, Lcom/msec/MSecClient;->isNeedBodyEncrypt()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 53
    const-string v2, "Content-Encoding"

    invoke-virtual {p0, v2}, Lcom/msec/net/TSHttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "contentEncoding":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v3, "gzip"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 56
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v3

    .line 57
    sget v3, Lcom/msec/net/TSHttpURLConnection;->GZIP_HEADER_SIZE:I

    new-array v3, v3, [B

    .line 58
    .local v3, "gHeader":[B
    sget v4, Lcom/msec/net/TSHttpURLConnection;->GZIP_HEADER_SIZE:I

    invoke-virtual {v0, v4}, Ljava/io/InputStream;->mark(I)V

    .line 59
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    sget v5, Lcom/msec/net/TSHttpURLConnection;->GZIP_HEADER_SIZE:I

    if-ne v4, v5, :cond_0

    const/4 v4, 0x0

    aget-byte v4, v3, v4

    const/16 v5, 0x1f

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    aget-byte v4, v3, v4

    const/16 v5, -0x75

    if-ne v4, v5, :cond_0

    .line 62
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 63
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v4

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 68
    .end local v3    # "gHeader":[B
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 69
    iget-object v3, p0, Lcom/msec/net/TSHttpURLConnection;->mClient:Lcom/msec/MSecClient;

    invoke-virtual {v3, v1}, Lcom/msec/MSecClient;->decryptResponseBody(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v3

    return-object v3

    .line 71
    :cond_2
    iget-object v3, p0, Lcom/msec/net/TSHttpURLConnection;->mClient:Lcom/msec/MSecClient;

    invoke-virtual {v3, v0}, Lcom/msec/MSecClient;->decryptResponseBody(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v3

    return-object v3

    .line 74
    .end local v2    # "contentEncoding":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    return-object v2
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public getLastModified()J
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mClient:Lcom/msec/MSecClient;

    invoke-virtual {v0}, Lcom/msec/MSecClient;->isNeedBodyEncrypt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mClient:Lcom/msec/MSecClient;

    iget-object v1, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/msec/MSecClient;->encryptRequestBody(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

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

    .line 151
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

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

    .line 300
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .line 305
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

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

    .line 161
    const/4 v0, 0x0

    .line 163
    .local v0, "ret":I
    :try_start_0
    iget-object v1, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 166
    goto :goto_0

    .line 164
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 168
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v1, p0, Lcom/msec/net/TSHttpURLConnection;->mClient:Lcom/msec/MSecClient;

    iget-object v2, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    iget-object v3, p0, Lcom/msec/net/TSHttpURLConnection;->mClient:Lcom/msec/MSecClient;

    invoke-virtual {v3}, Lcom/msec/MSecClient;->getHeaderKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/msec/MSecClient;->onResponseHeader(Ljava/lang/String;)I

    .line 169
    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .line 320
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 321
    return-void
.end method

.method public setChunkedStreamingMode(I)V
    .locals 1
    .param p1, "chunkLength"    # I

    .line 179
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 180
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 1
    .param p1, "timeoutMillis"    # I

    .line 325
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 326
    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .line 330
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    .line 331
    return-void
.end method

.method public setDoInput(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .line 335
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 336
    return-void
.end method

.method public setDoOutput(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .line 340
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 341
    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 1
    .param p1, "contentLength"    # I

    .line 184
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 185
    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 1
    .param p1, "newValue"    # J

    .line 345
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    .line 346
    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1
    .param p1, "followRedirects"    # Z

    .line 189
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 190
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 1
    .param p1, "timeoutMillis"    # I

    .line 350
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 351
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

    .line 194
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .line 101
    :try_start_0
    const-string v0, "Content-Length"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mClient:Lcom/msec/MSecClient;

    .line 102
    invoke-virtual {v0}, Lcom/msec/MSecClient;->isNeedBodyEncrypt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 104
    .local v0, "value":J
    invoke-direct {p0, v0, v1}, Lcom/msec/net/TSHttpURLConnection;->getEncryptLength(J)J

    move-result-wide v2

    move-wide v0, v2

    .line 105
    long-to-int v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v2

    .line 109
    .end local v0    # "value":J
    :cond_0
    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 111
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_0
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public setUseCaches(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .line 355
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 356
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usingProxy()Z
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/msec/net/TSHttpURLConnection;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->usingProxy()Z

    move-result v0

    return v0
.end method
