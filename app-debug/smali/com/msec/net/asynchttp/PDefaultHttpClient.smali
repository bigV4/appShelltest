.class public Lcom/msec/net/asynchttp/PDefaultHttpClient;
.super Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;
.source "PDefaultHttpClient.java"


# static fields
.field private static GZIP_HEADER_SIZE:I


# instance fields
.field private asyncHttpClient:Lcom/msec/net/asynchttp/AsyncHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const/4 v0, 0x2

    sput v0, Lcom/msec/net/asynchttp/PDefaultHttpClient;->GZIP_HEADER_SIZE:I

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 1
    .param p1, "conman"    # Lcz/msebera/android/httpclient/conn/ClientConnectionManager;
    .param p2, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;

    .line 34
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;-><init>(Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 35
    sget v0, Lcom/msec/MLog;->LOG_CODE_WRAPPER_ASY_CLIENT_WORK:I

    invoke-static {v0}, Lcom/msec/MLog;->printDetail(I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/params/HttpParams;Lcom/msec/net/asynchttp/AsyncHttpClient;)V
    .locals 1
    .param p1, "conman"    # Lcz/msebera/android/httpclient/conn/ClientConnectionManager;
    .param p2, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;
    .param p3, "ahc"    # Lcom/msec/net/asynchttp/AsyncHttpClient;

    .line 39
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;-><init>(Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 40
    iput-object p3, p0, Lcom/msec/net/asynchttp/PDefaultHttpClient;->asyncHttpClient:Lcom/msec/net/asynchttp/AsyncHttpClient;

    .line 41
    sget v0, Lcom/msec/MLog;->LOG_CODE_WRAPPER_ASY_CLIENT_WORK:I

    invoke-static {v0}, Lcom/msec/MLog;->printDetail(I)V

    .line 42
    return-void
.end method

.method static encryptRequest(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Lcom/msec/MSecClient;)Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;
    .locals 11
    .param p0, "request"    # Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;
    .param p1, "client"    # Lcom/msec/MSecClient;

    .line 45
    invoke-virtual {p1}, Lcom/msec/MSecClient;->isNeedBodyEncrypt()Z

    move-result v0

    .line 46
    .local v0, "isEncryptBody":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 47
    .local v1, "flag":I
    :goto_0
    invoke-virtual {p1}, Lcom/msec/MSecClient;->getHeaderKey()Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "headerKey":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/msec/MSecClient;->getRequestHeader(I)Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, "headerValue":Ljava/lang/String;
    if-eqz v2, :cond_5

    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    if-eqz v3, :cond_5

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 50
    invoke-interface {p0, v2, v3}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    if-eqz v0, :cond_5

    instance-of v4, p0, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    if-eqz v4, :cond_5

    .line 53
    move-object v4, p0

    check-cast v4, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    invoke-interface {v4}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v4

    .line 54
    .local v4, "entity":Lcz/msebera/android/httpclient/HttpEntity;
    if-nez v4, :cond_1

    .line 55
    return-object p0

    .line 57
    :cond_1
    const-string v5, "Content-Type"

    invoke-interface {p0, v5}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v5

    .line 58
    .local v5, "content_type":Lcz/msebera/android/httpclient/Header;
    if-nez v5, :cond_2

    .line 59
    invoke-interface {v4}, Lcz/msebera/android/httpclient/HttpEntity;->getContentType()Lcz/msebera/android/httpclient/Header;

    move-result-object v6

    .line 60
    .local v6, "entity_type":Lcz/msebera/android/httpclient/Header;
    invoke-interface {p0, v6}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->setHeader(Lcz/msebera/android/httpclient/Header;)V

    .line 63
    .end local v6    # "entity_type":Lcz/msebera/android/httpclient/Header;
    :cond_2
    instance-of v6, p0, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;

    if-eqz v6, :cond_3

    .line 65
    :try_start_0
    move-object v6, p0

    check-cast v6, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v6

    .line 68
    goto :goto_1

    .line 66
    :catch_0
    move-exception v6

    .line 71
    :cond_3
    :goto_1
    instance-of v6, v4, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;

    if-eqz v6, :cond_4

    .line 73
    :try_start_1
    const-class v6, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;

    const-string v7, "wrappedEntity"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 74
    .local v6, "field":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 75
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcz/msebera/android/httpclient/HttpEntity;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v7

    .line 80
    .end local v6    # "field":Ljava/lang/reflect/Field;
    goto :goto_2

    .line 76
    :catch_1
    move-exception v6

    .line 77
    .local v6, "e":Ljava/lang/Exception;
    sget-boolean v7, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v7, :cond_4

    .line 78
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_2
    instance-of v6, v4, Lcom/msec/net/asynchttp/TSEntity;

    if-nez v6, :cond_5

    .line 84
    new-instance v6, Lcom/msec/net/asynchttp/TSEntity;

    invoke-direct {v6, p1, v4}, Lcom/msec/net/asynchttp/TSEntity;-><init>(Lcom/msec/MSecClient;Lcz/msebera/android/httpclient/HttpEntity;)V

    move-object v4, v6

    .line 85
    move-object v6, p0

    check-cast v6, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    invoke-interface {v6, v4}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 86
    instance-of v6, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;

    if-eqz v6, :cond_5

    .line 87
    invoke-interface {v4}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v6

    .line 88
    .local v6, "contentLength":J
    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_5

    .line 89
    const-string v8, "Content-Length"

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p0, v8, v9}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .end local v4    # "entity":Lcz/msebera/android/httpclient/HttpEntity;
    .end local v5    # "content_type":Lcz/msebera/android/httpclient/Header;
    .end local v6    # "contentLength":J
    :cond_5
    return-object p0
.end method

.method static handleResponse(Lcz/msebera/android/httpclient/HttpResponse;Lcom/msec/MSecClient;)Lcz/msebera/android/httpclient/HttpResponse;
    .locals 3
    .param p0, "response"    # Lcz/msebera/android/httpclient/HttpResponse;
    .param p1, "client"    # Lcom/msec/MSecClient;

    .line 150
    invoke-virtual {p1}, Lcom/msec/MSecClient;->getHeaderKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    .line 151
    .local v0, "header":Lcz/msebera/android/httpclient/Header;
    const-string v1, ""

    .line 152
    .local v1, "resHeader":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 153
    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 156
    :cond_0
    invoke-virtual {p1, v1}, Lcom/msec/MSecClient;->onResponseHeader(Ljava/lang/String;)I

    .line 158
    invoke-virtual {p1}, Lcom/msec/MSecClient;->isNeedBodyEncrypt()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    invoke-static {p0, p1}, Lcom/msec/net/asynchttp/PDefaultHttpClient;->recoverResponse(Lcz/msebera/android/httpclient/HttpResponse;Lcom/msec/MSecClient;)V

    .line 162
    :cond_1
    return-object p0
.end method

.method private static recoverResponse(Lcz/msebera/android/httpclient/HttpResponse;Lcom/msec/MSecClient;)V
    .locals 9
    .param p0, "resp"    # Lcz/msebera/android/httpclient/HttpResponse;
    .param p1, "client"    # Lcom/msec/MSecClient;

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "content":Ljava/io/InputStream;
    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v1

    .line 103
    .local v1, "resEntity":Lcz/msebera/android/httpclient/HttpEntity;
    :try_start_0
    invoke-interface {v1}, Lcz/msebera/android/httpclient/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v2

    .line 109
    nop

    .line 111
    const/4 v2, 0x0

    .line 112
    .local v2, "gzipContent":Ljava/io/InputStream;
    invoke-interface {v1}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v3

    .line 113
    .local v3, "length":J
    const-string v5, "Content-Encoding"

    invoke-interface {p0, v5}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v5

    .line 114
    .local v5, "contentEncoding":Lcz/msebera/android/httpclient/Header;
    const-wide/16 v6, -0x1

    cmp-long v8, v3, v6

    if-nez v8, :cond_1

    if-eqz v5, :cond_1

    invoke-interface {v5}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    const-string v7, "gzip"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 115
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v6

    .line 116
    sget v6, Lcom/msec/net/asynchttp/PDefaultHttpClient;->GZIP_HEADER_SIZE:I

    new-array v6, v6, [B

    .line 117
    .local v6, "gHeader":[B
    sget v7, Lcom/msec/net/asynchttp/PDefaultHttpClient;->GZIP_HEADER_SIZE:I

    invoke-virtual {v0, v7}, Ljava/io/InputStream;->mark(I)V

    .line 119
    :try_start_1
    invoke-virtual {v0, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    sget v8, Lcom/msec/net/asynchttp/PDefaultHttpClient;->GZIP_HEADER_SIZE:I

    if-ne v7, v8, :cond_0

    const/4 v7, 0x0

    aget-byte v7, v6, v7

    const/16 v8, 0x1f

    if-ne v7, v8, :cond_0

    const/4 v7, 0x1

    aget-byte v7, v6, v7

    const/16 v8, -0x75

    if-ne v7, v8, :cond_0

    .line 122
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 123
    new-instance v7, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v7, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v7

    .line 124
    const-string v7, "Content-Encoding"

    invoke-interface {p0, v7}, Lcz/msebera/android/httpclient/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 133
    :goto_0
    goto :goto_1

    .line 128
    :catch_0
    move-exception v7

    .line 132
    .local v7, "e":Ljava/io/IOException;
    return-void

    .line 136
    .end local v6    # "gHeader":[B
    .end local v7    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    if-nez v2, :cond_2

    move-object v6, v0

    goto :goto_2

    :cond_2
    move-object v6, v2

    .line 137
    .local v6, "in":Ljava/io/InputStream;
    :goto_2
    invoke-virtual {p1}, Lcom/msec/MSecClient;->isNeedBodyEncrypt()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 138
    invoke-virtual {p1, v6}, Lcom/msec/MSecClient;->decryptResponseBody(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v6

    .line 141
    :cond_3
    new-instance v7, Lcz/msebera/android/httpclient/entity/InputStreamEntity;

    invoke-direct {v7, v6, v3, v4}, Lcz/msebera/android/httpclient/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 142
    .local v7, "entity":Lcz/msebera/android/httpclient/entity/InputStreamEntity;
    invoke-interface {v1}, Lcz/msebera/android/httpclient/HttpEntity;->getContentEncoding()Lcz/msebera/android/httpclient/Header;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcz/msebera/android/httpclient/entity/InputStreamEntity;->setContentEncoding(Lcz/msebera/android/httpclient/Header;)V

    .line 143
    invoke-interface {v1}, Lcz/msebera/android/httpclient/HttpEntity;->isChunked()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcz/msebera/android/httpclient/entity/InputStreamEntity;->setChunked(Z)V

    .line 144
    invoke-interface {v1}, Lcz/msebera/android/httpclient/HttpEntity;->getContentType()Lcz/msebera/android/httpclient/Header;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcz/msebera/android/httpclient/entity/InputStreamEntity;->setContentType(Lcz/msebera/android/httpclient/Header;)V

    .line 146
    invoke-interface {p0, v7}, Lcz/msebera/android/httpclient/HttpResponse;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 147
    return-void

    .line 104
    .end local v2    # "gzipContent":Ljava/io/InputStream;
    .end local v3    # "length":J
    .end local v5    # "contentEncoding":Lcz/msebera/android/httpclient/Header;
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v7    # "entity":Lcz/msebera/android/httpclient/entity/InputStreamEntity;
    :catch_1
    move-exception v2

    .line 108
    .local v2, "e":Ljava/io/IOException;
    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/client/ClientProtocolException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/msec/net/asynchttp/PDefaultHttpClient;->execute(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 3
    .param p1, "request"    # Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;
    .param p2, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    invoke-interface {p1}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/msec/MSecClient;->getClient(Ljava/lang/String;)Lcom/msec/MSecClient;

    move-result-object v0

    .line 170
    .local v0, "client":Lcom/msec/MSecClient;
    invoke-static {p1, v0}, Lcom/msec/net/asynchttp/PDefaultHttpClient;->encryptRequest(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Lcom/msec/MSecClient;)Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    move-result-object p1

    .line 171
    invoke-super {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->execute(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v1

    .line 173
    .local v1, "resp":Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    invoke-static {v1, v0}, Lcom/msec/net/asynchttp/PDefaultHttpClient;->handleResponse(Lcz/msebera/android/httpclient/HttpResponse;Lcom/msec/MSecClient;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v2

    check-cast v2, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    return-object v2
.end method
