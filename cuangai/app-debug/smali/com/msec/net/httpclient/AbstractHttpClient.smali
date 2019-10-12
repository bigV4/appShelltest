.class public abstract Lcom/msec/net/httpclient/AbstractHttpClient;
.super Ljava/lang/Object;
.source "AbstractHttpClient.java"

# interfaces
.implements Lorg/apache/http/client/HttpClient;


# static fields
.field private static GZIP_HEADER_SIZE:I


# instance fields
.field protected final mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const/4 v0, 0x2

    sput v0, Lcom/msec/net/httpclient/AbstractHttpClient;->GZIP_HEADER_SIZE:I

    return-void
.end method

.method protected constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;)V
    .locals 1
    .param p1, "httpClient"    # Lorg/apache/http/impl/client/AbstractHttpClient;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    .line 54
    sget v0, Lcom/msec/MLog;->LOG_CODE_WRAPPER_HTTPCLIENT_WORK:I

    invoke-static {v0}, Lcom/msec/MLog;->printDetail(I)V

    .line 55
    return-void
.end method

.method static encryptRequest(Lcom/msec/MSecClient;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpRequest;
    .locals 11
    .param p0, "client"    # Lcom/msec/MSecClient;
    .param p1, "request"    # Lorg/apache/http/HttpRequest;

    .line 329
    invoke-virtual {p0}, Lcom/msec/MSecClient;->isNeedBodyEncrypt()Z

    move-result v0

    .line 330
    .local v0, "isEncryptBody":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 331
    .local v1, "flag":I
    :goto_0
    invoke-virtual {p0}, Lcom/msec/MSecClient;->getHeaderKey()Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, "headerKey":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/msec/MSecClient;->getRequestHeader(I)Ljava/lang/String;

    move-result-object v3

    .line 334
    .local v3, "headerValue":Ljava/lang/String;
    if-eqz v2, :cond_4

    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v3, :cond_4

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 335
    invoke-interface {p1, v2, v3}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    if-eqz v0, :cond_4

    instance-of v4, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v4, :cond_4

    .line 338
    move-object v4, p1

    check-cast v4, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {v4}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 339
    .local v4, "entity":Lorg/apache/http/HttpEntity;
    if-nez v4, :cond_1

    .line 340
    return-object p1

    .line 343
    :cond_1
    const-string v5, "Content-Type"

    invoke-interface {p1, v5}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    .line 344
    .local v5, "content_type":Lorg/apache/http/Header;
    if-nez v5, :cond_2

    .line 345
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v6

    .line 346
    .local v6, "entity_type":Lorg/apache/http/Header;
    invoke-interface {p1, v6}, Lorg/apache/http/HttpRequest;->setHeader(Lorg/apache/http/Header;)V

    .line 349
    .end local v6    # "entity_type":Lorg/apache/http/Header;
    :cond_2
    instance-of v6, p1, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    if-eqz v6, :cond_3

    .line 351
    :try_start_0
    move-object v6, p1

    check-cast v6, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v6

    .line 354
    goto :goto_1

    .line 352
    :catch_0
    move-exception v6

    .line 357
    :cond_3
    :goto_1
    instance-of v6, v4, Lcom/msec/net/httpclient/TSEntity;

    if-nez v6, :cond_4

    .line 358
    new-instance v6, Lcom/msec/net/httpclient/TSEntity;

    invoke-direct {v6, p0, v4}, Lcom/msec/net/httpclient/TSEntity;-><init>(Lcom/msec/MSecClient;Lorg/apache/http/HttpEntity;)V

    move-object v4, v6

    .line 359
    move-object v6, p1

    check-cast v6, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {v6, v4}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 360
    instance-of v6, p1, Lorg/apache/http/impl/client/RequestWrapper;

    if-eqz v6, :cond_4

    .line 361
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    .line 362
    .local v6, "contentLength":J
    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_4

    .line 363
    const-string v8, "Content-Length"

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v8, v9}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    .end local v4    # "entity":Lorg/apache/http/HttpEntity;
    .end local v5    # "content_type":Lorg/apache/http/Header;
    .end local v6    # "contentLength":J
    :cond_4
    return-object p1
.end method

.method static handleResponse(Lorg/apache/http/HttpResponse;Lcom/msec/MSecClient;)Lorg/apache/http/HttpResponse;
    .locals 3
    .param p0, "response"    # Lorg/apache/http/HttpResponse;
    .param p1, "client"    # Lcom/msec/MSecClient;

    .line 313
    invoke-virtual {p1}, Lcom/msec/MSecClient;->getHeaderKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 314
    .local v0, "header":Lorg/apache/http/Header;
    const-string v1, ""

    .line 315
    .local v1, "resHeader":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 316
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 319
    :cond_0
    invoke-virtual {p1, v1}, Lcom/msec/MSecClient;->onResponseHeader(Ljava/lang/String;)I

    .line 321
    invoke-virtual {p1}, Lcom/msec/MSecClient;->isNeedBodyEncrypt()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 322
    invoke-static {p0, p1}, Lcom/msec/net/httpclient/AbstractHttpClient;->recoverResponse(Lorg/apache/http/HttpResponse;Lcom/msec/MSecClient;)V

    .line 325
    :cond_1
    return-object p0
.end method

.method private static recoverResponse(Lorg/apache/http/HttpResponse;Lcom/msec/MSecClient;)V
    .locals 9
    .param p0, "response"    # Lorg/apache/http/HttpResponse;
    .param p1, "client"    # Lcom/msec/MSecClient;

    .line 262
    const/4 v0, 0x0

    .line 263
    .local v0, "content":Ljava/io/InputStream;
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 265
    .local v1, "resEntity":Lorg/apache/http/HttpEntity;
    :try_start_0
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v2

    .line 271
    nop

    .line 273
    const/4 v2, 0x0

    .line 274
    .local v2, "gzipContent":Ljava/io/InputStream;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    .line 275
    .local v3, "length":J
    const-string v5, "Content-Encoding"

    invoke-interface {p0, v5}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    .line 276
    .local v5, "contentEncoding":Lorg/apache/http/Header;
    const-wide/16 v6, -0x1

    cmp-long v8, v3, v6

    if-nez v8, :cond_1

    if-eqz v5, :cond_1

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    const-string v7, "gzip"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 277
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v6

    .line 278
    sget v6, Lcom/msec/net/httpclient/AbstractHttpClient;->GZIP_HEADER_SIZE:I

    new-array v6, v6, [B

    .line 279
    .local v6, "gHeader":[B
    sget v7, Lcom/msec/net/httpclient/AbstractHttpClient;->GZIP_HEADER_SIZE:I

    invoke-virtual {v0, v7}, Ljava/io/InputStream;->mark(I)V

    .line 281
    :try_start_1
    invoke-virtual {v0, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    sget v8, Lcom/msec/net/httpclient/AbstractHttpClient;->GZIP_HEADER_SIZE:I

    if-ne v7, v8, :cond_0

    const/4 v7, 0x0

    aget-byte v7, v6, v7

    const/16 v8, 0x1f

    if-ne v7, v8, :cond_0

    const/4 v7, 0x1

    aget-byte v7, v6, v7

    const/16 v8, -0x75

    if-ne v7, v8, :cond_0

    .line 284
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 285
    new-instance v7, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v7, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v7

    .line 286
    const-string v7, "Content-Encoding"

    invoke-interface {p0, v7}, Lorg/apache/http/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    goto :goto_0

    .line 288
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 295
    :goto_0
    goto :goto_1

    .line 290
    :catch_0
    move-exception v7

    .line 294
    .local v7, "e":Ljava/io/IOException;
    return-void

    .line 298
    .end local v6    # "gHeader":[B
    .end local v7    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    if-nez v2, :cond_2

    move-object v6, v0

    goto :goto_2

    :cond_2
    move-object v6, v2

    .line 299
    .local v6, "in":Ljava/io/InputStream;
    :goto_2
    invoke-virtual {p1}, Lcom/msec/MSecClient;->isNeedBodyEncrypt()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 300
    invoke-virtual {p1, v6}, Lcom/msec/MSecClient;->decryptResponseBody(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v6

    .line 303
    :cond_3
    new-instance v7, Lorg/apache/http/entity/InputStreamEntity;

    invoke-direct {v7, v6, v3, v4}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 304
    .local v7, "entity":Lorg/apache/http/entity/InputStreamEntity;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/http/entity/InputStreamEntity;->setContentEncoding(Lorg/apache/http/Header;)V

    .line 305
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v8

    invoke-virtual {v7, v8}, Lorg/apache/http/entity/InputStreamEntity;->setChunked(Z)V

    .line 306
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Lorg/apache/http/Header;)V

    .line 308
    invoke-interface {p0, v7}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 309
    return-void

    .line 266
    .end local v2    # "gzipContent":Ljava/io/InputStream;
    .end local v3    # "length":J
    .end local v5    # "contentEncoding":Lorg/apache/http/Header;
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v7    # "entity":Lorg/apache/http/entity/InputStreamEntity;
    :catch_1
    move-exception v2

    .line 270
    .local v2, "e":Ljava/io/IOException;
    return-void
.end method


# virtual methods
.method public declared-synchronized addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V
    .locals 1
    .param p1, "itcp"    # Lorg/apache/http/HttpRequestInterceptor;

    monitor-enter p0

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/AbstractHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    .line 232
    .end local p1    # "itcp":Lorg/apache/http/HttpRequestInterceptor;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;I)V
    .locals 1
    .param p1, "itcp"    # Lorg/apache/http/HttpRequestInterceptor;
    .param p2, "index"    # I

    monitor-enter p0

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/client/AbstractHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    monitor-exit p0

    return-void

    .line 237
    .end local p1    # "itcp":Lorg/apache/http/HttpRequestInterceptor;
    .end local p2    # "index":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V
    .locals 1
    .param p1, "itcp"    # Lorg/apache/http/HttpResponseInterceptor;

    monitor-enter p0

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/AbstractHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    monitor-exit p0

    return-void

    .line 202
    .end local p1    # "itcp":Lorg/apache/http/HttpResponseInterceptor;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;I)V
    .locals 1
    .param p1, "itcp"    # Lorg/apache/http/HttpResponseInterceptor;
    .param p2, "index"    # I

    monitor-enter p0

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/client/AbstractHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    monitor-exit p0

    return-void

    .line 207
    .end local p1    # "itcp":Lorg/apache/http/HttpResponseInterceptor;
    .end local p2    # "index":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clearRequestInterceptors()V
    .locals 1

    monitor-enter p0

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->clearRequestInterceptors()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    monitor-exit p0

    return-void

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearResponseInterceptors()V
    .locals 1

    monitor-enter p0

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->clearResponseInterceptors()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit p0

    return-void

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 4
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 451
    .local p3, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/msec/MSecClient;->getClient(Ljava/lang/String;)Lcom/msec/MSecClient;

    move-result-object v0

    .line 452
    .local v0, "mSecClient":Lcom/msec/MSecClient;
    invoke-static {v0, p2}, Lcom/msec/net/httpclient/AbstractHttpClient;->encryptRequest(Lcom/msec/MSecClient;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpRequest;

    move-result-object v1

    .line 453
    .local v1, "encryptRequest":Lorg/apache/http/HttpRequest;
    iget-object v2, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v2, p1, v1}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 454
    .local v2, "resp":Lorg/apache/http/HttpResponse;
    invoke-static {v2, v0}, Lcom/msec/net/httpclient/AbstractHttpClient;->handleResponse(Lorg/apache/http/HttpResponse;Lcom/msec/MSecClient;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    invoke-interface {p3, v3}, Lorg/apache/http/client/ResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 4
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p4, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 465
    .local p3, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/msec/MSecClient;->getClient(Ljava/lang/String;)Lcom/msec/MSecClient;

    move-result-object v0

    .line 466
    .local v0, "mSecClient":Lcom/msec/MSecClient;
    invoke-static {v0, p2}, Lcom/msec/net/httpclient/AbstractHttpClient;->encryptRequest(Lcom/msec/MSecClient;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpRequest;

    move-result-object v1

    .line 467
    .local v1, "encryptRequest":Lorg/apache/http/HttpRequest;
    iget-object v2, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v2, p1, v1, p4}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 468
    .local v2, "resp":Lorg/apache/http/HttpResponse;
    invoke-static {v2, v0}, Lcom/msec/net/httpclient/AbstractHttpClient;->handleResponse(Lorg/apache/http/HttpResponse;Lcom/msec/MSecClient;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    invoke-interface {p3, v3}, Lorg/apache/http/client/ResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 5
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 423
    .local p2, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 424
    .local v0, "requestURI":Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/msec/MSecClient;->getClient(Ljava/lang/String;)Lcom/msec/MSecClient;

    move-result-object v1

    .line 425
    .local v1, "mSecClient":Lcom/msec/MSecClient;
    invoke-static {v1, p1}, Lcom/msec/net/httpclient/AbstractHttpClient;->encryptRequest(Lcom/msec/MSecClient;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpRequest;

    move-result-object v2

    check-cast v2, Lorg/apache/http/client/methods/HttpUriRequest;

    .line 426
    .local v2, "encryptRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    iget-object v3, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v3, v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 427
    .local v3, "resp":Lorg/apache/http/HttpResponse;
    invoke-static {v3, v1}, Lcom/msec/net/httpclient/AbstractHttpClient;->handleResponse(Lorg/apache/http/HttpResponse;Lcom/msec/MSecClient;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    invoke-interface {p2, v4}, Lorg/apache/http/client/ResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 5
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 437
    .local p2, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 438
    .local v0, "requestURI":Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/msec/MSecClient;->getClient(Ljava/lang/String;)Lcom/msec/MSecClient;

    move-result-object v1

    .line 439
    .local v1, "mSecClient":Lcom/msec/MSecClient;
    invoke-static {v1, p1}, Lcom/msec/net/httpclient/AbstractHttpClient;->encryptRequest(Lcom/msec/MSecClient;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpRequest;

    move-result-object v2

    check-cast v2, Lorg/apache/http/client/methods/HttpUriRequest;

    .line 440
    .local v2, "encryptRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    iget-object v3, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v3, v2, p3}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 441
    .local v3, "resp":Lorg/apache/http/HttpResponse;
    invoke-static {v3, v1}, Lcom/msec/net/httpclient/AbstractHttpClient;->handleResponse(Lorg/apache/http/HttpResponse;Lcom/msec/MSecClient;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    invoke-interface {p2, v4}, Lorg/apache/http/client/ResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .locals 3
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/msec/MSecClient;->getClient(Ljava/lang/String;)Lcom/msec/MSecClient;

    move-result-object v0

    .line 401
    .local v0, "mSecClient":Lcom/msec/MSecClient;
    invoke-static {v0, p2}, Lcom/msec/net/httpclient/AbstractHttpClient;->encryptRequest(Lcom/msec/MSecClient;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpRequest;

    move-result-object p2

    .line 402
    iget-object v1, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v1, p1, p2}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 403
    .local v1, "resp":Lorg/apache/http/HttpResponse;
    invoke-static {v1, v0}, Lcom/msec/net/httpclient/AbstractHttpClient;->handleResponse(Lorg/apache/http/HttpResponse;Lcom/msec/MSecClient;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    return-object v2
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 3
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 411
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/msec/MSecClient;->getClient(Ljava/lang/String;)Lcom/msec/MSecClient;

    move-result-object v0

    .line 412
    .local v0, "mSecClient":Lcom/msec/MSecClient;
    invoke-static {v0, p2}, Lcom/msec/net/httpclient/AbstractHttpClient;->encryptRequest(Lcom/msec/MSecClient;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpRequest;

    move-result-object p2

    .line 413
    iget-object v1, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 414
    .local v1, "resp":Lorg/apache/http/HttpResponse;
    invoke-static {v1, v0}, Lcom/msec/net/httpclient/AbstractHttpClient;->handleResponse(Lorg/apache/http/HttpResponse;Lcom/msec/MSecClient;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    return-object v2
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 4
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 378
    .local v0, "requestURI":Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/msec/MSecClient;->getClient(Ljava/lang/String;)Lcom/msec/MSecClient;

    move-result-object v1

    .line 379
    .local v1, "mSecClient":Lcom/msec/MSecClient;
    invoke-static {v1, p1}, Lcom/msec/net/httpclient/AbstractHttpClient;->encryptRequest(Lcom/msec/MSecClient;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpRequest;

    move-result-object v2

    move-object p1, v2

    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    .line 380
    iget-object v2, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v2, p1}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 381
    .local v2, "resp":Lorg/apache/http/HttpResponse;
    invoke-static {v2, v1}, Lcom/msec/net/httpclient/AbstractHttpClient;->handleResponse(Lorg/apache/http/HttpResponse;Lcom/msec/MSecClient;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    return-object v3
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 4
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 390
    .local v0, "requestURI":Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/msec/MSecClient;->getClient(Ljava/lang/String;)Lcom/msec/MSecClient;

    move-result-object v1

    .line 391
    .local v1, "mSecClient":Lcom/msec/MSecClient;
    invoke-static {v1, p1}, Lcom/msec/net/httpclient/AbstractHttpClient;->encryptRequest(Lcom/msec/MSecClient;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpRequest;

    move-result-object v2

    move-object p1, v2

    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    .line 392
    iget-object v2, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v2, p1, p2}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 393
    .local v2, "resp":Lorg/apache/http/HttpResponse;
    invoke-static {v2, v1}, Lcom/msec/net/httpclient/AbstractHttpClient;->handleResponse(Lorg/apache/http/HttpResponse;Lcom/msec/MSecClient;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    return-object v3
.end method

.method public getAuthSchemes()Lorg/apache/http/auth/AuthSchemeRegistry;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getAuthSchemes()Lorg/apache/http/auth/AuthSchemeRegistry;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getConnectionKeepAliveStrategy()Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
    .locals 1

    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getConnectionKeepAliveStrategy()Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionReuseStrategy()Lorg/apache/http/ConnectionReuseStrategy;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getConnectionReuseStrategy()Lorg/apache/http/ConnectionReuseStrategy;

    move-result-object v0

    return-object v0
.end method

.method public getCookieSpecs()Lorg/apache/http/cookie/CookieSpecRegistry;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getCookieSpecs()Lorg/apache/http/cookie/CookieSpecRegistry;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getCookieStore()Lorg/apache/http/client/CookieStore;
    .locals 1

    monitor-enter p0

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;
    .locals 1

    monitor-enter p0

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;
    .locals 1

    monitor-enter p0

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    monitor-enter p0

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProxyAuthenticationHandler()Lorg/apache/http/client/AuthenticationHandler;
    .locals 1

    monitor-enter p0

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getProxyAuthenticationHandler()Lorg/apache/http/client/AuthenticationHandler;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRedirectHandler()Lorg/apache/http/client/RedirectHandler;
    .locals 1

    monitor-enter p0

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getRedirectHandler()Lorg/apache/http/client/RedirectHandler;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRequestExecutor()Lorg/apache/http/protocol/HttpRequestExecutor;
    .locals 1

    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getRequestExecutor()Lorg/apache/http/protocol/HttpRequestExecutor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRequestInterceptor(I)Lorg/apache/http/HttpRequestInterceptor;
    .locals 1
    .param p1, "index"    # I

    monitor-enter p0

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/AbstractHttpClient;->getRequestInterceptor(I)Lorg/apache/http/HttpRequestInterceptor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p1    # "index":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getRequestInterceptorCount()I
    .locals 1

    monitor-enter p0

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getRequestInterceptorCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResponseInterceptor(I)Lorg/apache/http/HttpResponseInterceptor;
    .locals 1
    .param p1, "index"    # I

    monitor-enter p0

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/AbstractHttpClient;->getResponseInterceptor(I)Lorg/apache/http/HttpResponseInterceptor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p1    # "index":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getResponseInterceptorCount()I
    .locals 1

    monitor-enter p0

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getResponseInterceptorCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRoutePlanner()Lorg/apache/http/conn/routing/HttpRoutePlanner;
    .locals 1

    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getRoutePlanner()Lorg/apache/http/conn/routing/HttpRoutePlanner;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTargetAuthenticationHandler()Lorg/apache/http/client/AuthenticationHandler;
    .locals 1

    monitor-enter p0

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getTargetAuthenticationHandler()Lorg/apache/http/client/AuthenticationHandler;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserTokenHandler()Lorg/apache/http/client/UserTokenHandler;
    .locals 1

    monitor-enter p0

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getUserTokenHandler()Lorg/apache/http/client/UserTokenHandler;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeRequestInterceptorByClass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/http/HttpRequestInterceptor;",
            ">;)V"
        }
    .end annotation

    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/http/HttpRequestInterceptor;>;"
    monitor-enter p0

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/AbstractHttpClient;->removeRequestInterceptorByClass(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    monitor-exit p0

    return-void

    .line 257
    .end local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/http/HttpRequestInterceptor;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeResponseInterceptorByClass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/http/HttpResponseInterceptor;",
            ">;)V"
        }
    .end annotation

    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/http/HttpResponseInterceptor;>;"
    monitor-enter p0

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/AbstractHttpClient;->removeResponseInterceptorByClass(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    monitor-exit p0

    return-void

    .line 227
    .end local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/http/HttpResponseInterceptor;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setAuthSchemes(Lorg/apache/http/auth/AuthSchemeRegistry;)V
    .locals 1
    .param p1, "authSchemeRegistry"    # Lorg/apache/http/auth/AuthSchemeRegistry;

    .line 85
    iget-object v0, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/AbstractHttpClient;->setAuthSchemes(Lorg/apache/http/auth/AuthSchemeRegistry;)V

    .line 86
    return-void
.end method

.method public setCookieSpecs(Lorg/apache/http/cookie/CookieSpecRegistry;)V
    .locals 1
    .param p1, "cookieSpecRegistry"    # Lorg/apache/http/cookie/CookieSpecRegistry;

    .line 95
    iget-object v0, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/AbstractHttpClient;->setCookieSpecs(Lorg/apache/http/cookie/CookieSpecRegistry;)V

    .line 96
    return-void
.end method

.method public declared-synchronized setCookieStore(Lorg/apache/http/client/CookieStore;)V
    .locals 1
    .param p1, "cookieStore"    # Lorg/apache/http/client/CookieStore;

    monitor-enter p0

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/AbstractHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    monitor-exit p0

    return-void

    .line 167
    .end local p1    # "cookieStore":Lorg/apache/http/client/CookieStore;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCredentialsProvider(Lorg/apache/http/client/CredentialsProvider;)V
    .locals 1
    .param p1, "credsProvider"    # Lorg/apache/http/client/CredentialsProvider;

    monitor-enter p0

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/AbstractHttpClient;->setCredentialsProvider(Lorg/apache/http/client/CredentialsProvider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    .line 177
    .end local p1    # "credsProvider":Lorg/apache/http/client/CredentialsProvider;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V
    .locals 1
    .param p1, "retryHandler"    # Lorg/apache/http/client/HttpRequestRetryHandler;

    monitor-enter p0

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/AbstractHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    .line 125
    .end local p1    # "retryHandler":Lorg/apache/http/client/HttpRequestRetryHandler;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setKeepAliveStrategy(Lorg/apache/http/conn/ConnectionKeepAliveStrategy;)V
    .locals 1
    .param p1, "keepAliveStrategy"    # Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    monitor-enter p0

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/AbstractHttpClient;->setKeepAliveStrategy(Lorg/apache/http/conn/ConnectionKeepAliveStrategy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    .line 114
    .end local p1    # "keepAliveStrategy":Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setParams(Lorg/apache/http/params/HttpParams;)V
    .locals 1
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    .line 65
    iget-object v0, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/AbstractHttpClient;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 66
    return-void
.end method

.method public declared-synchronized setProxyAuthenticationHandler(Lorg/apache/http/client/AuthenticationHandler;)V
    .locals 1
    .param p1, "proxyAuthHandler"    # Lorg/apache/http/client/AuthenticationHandler;

    monitor-enter p0

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/AbstractHttpClient;->setProxyAuthenticationHandler(Lorg/apache/http/client/AuthenticationHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    .line 157
    .end local p1    # "proxyAuthHandler":Lorg/apache/http/client/AuthenticationHandler;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V
    .locals 1
    .param p1, "redirectHandler"    # Lorg/apache/http/client/RedirectHandler;

    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/AbstractHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    .line 135
    .end local p1    # "redirectHandler":Lorg/apache/http/client/RedirectHandler;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setReuseStrategy(Lorg/apache/http/ConnectionReuseStrategy;)V
    .locals 1
    .param p1, "reuseStrategy"    # Lorg/apache/http/ConnectionReuseStrategy;

    .line 105
    iget-object v0, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/AbstractHttpClient;->setReuseStrategy(Lorg/apache/http/ConnectionReuseStrategy;)V

    .line 106
    return-void
.end method

.method public declared-synchronized setRoutePlanner(Lorg/apache/http/conn/routing/HttpRoutePlanner;)V
    .locals 1
    .param p1, "routePlanner"    # Lorg/apache/http/conn/routing/HttpRoutePlanner;

    monitor-enter p0

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/AbstractHttpClient;->setRoutePlanner(Lorg/apache/http/conn/routing/HttpRoutePlanner;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit p0

    return-void

    .line 187
    .end local p1    # "routePlanner":Lorg/apache/http/conn/routing/HttpRoutePlanner;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTargetAuthenticationHandler(Lorg/apache/http/client/AuthenticationHandler;)V
    .locals 1
    .param p1, "targetAuthHandler"    # Lorg/apache/http/client/AuthenticationHandler;

    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/AbstractHttpClient;->setTargetAuthenticationHandler(Lorg/apache/http/client/AuthenticationHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit p0

    return-void

    .line 146
    .end local p1    # "targetAuthHandler":Lorg/apache/http/client/AuthenticationHandler;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUserTokenHandler(Lorg/apache/http/client/UserTokenHandler;)V
    .locals 1
    .param p1, "userTokenHandler"    # Lorg/apache/http/client/UserTokenHandler;

    monitor-enter p0

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/msec/net/httpclient/AbstractHttpClient;->mAbstractHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/AbstractHttpClient;->setUserTokenHandler(Lorg/apache/http/client/UserTokenHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit p0

    return-void

    .line 197
    .end local p1    # "userTokenHandler":Lorg/apache/http/client/UserTokenHandler;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
