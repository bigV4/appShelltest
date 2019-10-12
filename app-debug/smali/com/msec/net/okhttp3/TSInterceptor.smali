.class public Lcom/msec/net/okhttp3/TSInterceptor;
.super Ljava/lang/Object;
.source "TSInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 26
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x9
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    sget v0, Lcom/msec/MLog;->LOG_CODE_WRAPPER_OKHTTP_WORK:I

    invoke-static {v0}, Lcom/msec/MLog;->printDetail(I)V

    .line 44
    move-object/from16 v1, p1

    check-cast v1, Lokhttp3/internal/http/RealInterceptorChain;

    .line 45
    .local v1, "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    invoke-virtual {v1}, Lokhttp3/internal/http/RealInterceptorChain;->request()Lokhttp3/Request;

    move-result-object v2

    .line 46
    .local v2, "request":Lokhttp3/Request;
    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->url()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "url":Ljava/lang/String;
    invoke-static {v3}, Lcom/msec/MSecClient;->getClient(Ljava/lang/String;)Lcom/msec/MSecClient;

    move-result-object v4

    .line 49
    .local v4, "client":Lcom/msec/MSecClient;
    invoke-virtual {v4}, Lcom/msec/MSecClient;->getHeaderKey()Ljava/lang/String;

    move-result-object v5

    .line 51
    .local v5, "headerKey":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/msec/MSecClient;->isNeedBodyEncrypt()Z

    move-result v6

    .line 52
    .local v6, "isEncryptBody":Z
    invoke-virtual {v2}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v7

    .line 54
    .local v7, "requestBody":Lokhttp3/RequestBody;
    if-eqz v6, :cond_0

    const/4 v8, 0x2

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 55
    .local v8, "Flag":I
    :goto_0
    invoke-virtual {v4, v8}, Lcom/msec/MSecClient;->getRequestHeader(I)Ljava/lang/String;

    move-result-object v9

    .line 57
    .local v9, "headerValue":Ljava/lang/String;
    const-wide/16 v10, -0x1

    if-eqz v6, :cond_1

    if-eqz v7, :cond_1

    .line 58
    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v12

    cmp-long v14, v12, v10

    if-eqz v14, :cond_2

    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v12

    const-wide/16 v14, 0x6000

    cmp-long v16, v12, v14

    if-gez v16, :cond_2

    .line 59
    new-instance v12, Lokio/Buffer;

    invoke-direct {v12}, Lokio/Buffer;-><init>()V

    .line 60
    .local v12, "buffer":Lokio/Buffer;
    invoke-virtual {v7, v12}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 61
    invoke-virtual {v12}, Lokio/Buffer;->readByteArray()[B

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/msec/MSecClient;->encryptRequestBody([B)[B

    move-result-object v13

    .line 62
    .local v13, "enBodyByte":[B
    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v14

    invoke-static {v14, v13}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v7

    .line 63
    .end local v12    # "buffer":Lokio/Buffer;
    .end local v13    # "enBodyByte":[B
    nop

    .line 97
    :cond_1
    move-object/from16 v15, p0

    goto :goto_1

    .line 64
    :cond_2
    move-object v12, v7

    .line 66
    .local v12, "finalRequestBody":Lokhttp3/RequestBody;
    new-instance v13, Lcom/msec/net/okhttp3/TSInterceptor$1;

    move-object/from16 v15, p0

    invoke-direct {v13, v15, v12, v4}, Lcom/msec/net/okhttp3/TSInterceptor$1;-><init>(Lcom/msec/net/okhttp3/TSInterceptor;Lokhttp3/RequestBody;Lcom/msec/MSecClient;)V

    move-object v7, v13

    .line 97
    .end local v12    # "finalRequestBody":Lokhttp3/RequestBody;
    :goto_1
    if-eqz v5, :cond_4

    const-string v12, ""

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    if-eqz v9, :cond_4

    const-string v12, ""

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 98
    invoke-virtual {v2}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v12

    .line 100
    .local v12, "builder":Lokhttp3/Request$Builder;
    invoke-virtual {v12, v5}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 101
    invoke-virtual {v12, v5, v9}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 103
    if-eqz v6, :cond_3

    if-eqz v7, :cond_3

    .line 104
    invoke-virtual {v2}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v7}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 105
    const-string v13, "content-Length"

    invoke-virtual {v2, v13}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 106
    const-string v13, "content-Length"

    invoke-virtual {v12, v13}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v13

    const-string v14, "content-Length"

    .line 107
    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v14, v10}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 111
    :cond_3
    invoke-virtual {v12}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 114
    .end local v12    # "builder":Lokhttp3/Request$Builder;
    :cond_4
    invoke-virtual {v1, v2}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v10

    .line 116
    .local v10, "response":Lokhttp3/Response;
    if-eqz v5, :cond_5

    const-string v11, ""

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 117
    invoke-virtual {v10, v5}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/msec/MSecClient;->onResponseHeader(Ljava/lang/String;)I

    .line 120
    :cond_5
    invoke-virtual {v10}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v11

    .line 122
    .local v11, "responseBody":Lokhttp3/ResponseBody;
    if-eqz v11, :cond_8

    if-eqz v6, :cond_8

    .line 123
    invoke-virtual {v10}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v12

    .line 124
    .local v12, "builder":Lokhttp3/Response$Builder;
    invoke-virtual {v11}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v22

    .line 125
    .local v22, "resLen":J
    const-wide/16 v13, -0x1

    cmp-long v16, v22, v13

    if-eqz v16, :cond_6

    const-wide/16 v13, 0x202e

    cmp-long v16, v22, v13

    if-gez v16, :cond_6

    const-string v13, "gzip"

    const-string v14, "Content-Encoding"

    .line 126
    invoke-virtual {v10, v14}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 128
    invoke-virtual {v11}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v13

    .line 129
    .local v13, "enResBytes":[B
    invoke-virtual {v11}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v14

    invoke-virtual {v4, v13}, Lcom/msec/MSecClient;->decryptResponseBody([B)[B

    move-result-object v0

    invoke-static {v14, v0}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/ResponseBody;

    move-result-object v0

    .line 130
    .end local v11    # "responseBody":Lokhttp3/ResponseBody;
    .end local v13    # "enResBytes":[B
    .local v0, "responseBody":Lokhttp3/ResponseBody;
    nop

    .line 171
    move-object v11, v0

    move-object/from16 v24, v1

    move-object/from16 v25, v2

    goto :goto_3

    .line 131
    .end local v0    # "responseBody":Lokhttp3/ResponseBody;
    .restart local v11    # "responseBody":Lokhttp3/ResponseBody;
    :cond_6
    invoke-virtual {v11}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    .line 133
    .local v0, "inputStream":Ljava/io/InputStream;
    const-string v13, "gzip"

    const-string v14, "Content-Encoding"

    invoke-virtual {v10, v14}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 134
    new-instance v13, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v13, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 135
    .local v13, "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    invoke-virtual {v4, v13}, Lcom/msec/MSecClient;->decryptResponseBody(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v14

    .line 136
    .local v14, "tmpInputStream":Ljava/io/InputStream;
    move-object/from16 v24, v1

    .end local v1    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    .local v24, "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    const-string v1, "Content-Encoding"

    invoke-virtual {v12, v1}, Lokhttp3/Response$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v1

    move-object/from16 v25, v2

    .end local v2    # "request":Lokhttp3/Request;
    .local v25, "request":Lokhttp3/Request;
    const-string v2, "Content-Length"

    .line 137
    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Response$Builder;

    .line 138
    .end local v13    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    goto :goto_2

    .line 139
    .end local v14    # "tmpInputStream":Ljava/io/InputStream;
    .end local v24    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    .end local v25    # "request":Lokhttp3/Request;
    .restart local v1    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    .restart local v2    # "request":Lokhttp3/Request;
    :cond_7
    move-object/from16 v24, v1

    move-object/from16 v25, v2

    .end local v1    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    .end local v2    # "request":Lokhttp3/Request;
    .restart local v24    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    .restart local v25    # "request":Lokhttp3/Request;
    invoke-virtual {v4, v0}, Lcom/msec/MSecClient;->decryptResponseBody(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v14

    .restart local v14    # "tmpInputStream":Ljava/io/InputStream;
    :goto_2
    move-object v1, v14

    .line 142
    .end local v14    # "tmpInputStream":Ljava/io/InputStream;
    .local v1, "tmpInputStream":Ljava/io/InputStream;
    move-object/from16 v19, v1

    .line 143
    .local v19, "deInputStream":Ljava/io/InputStream;
    invoke-virtual {v11}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v2

    .line 144
    .local v2, "mediaType":Lokhttp3/MediaType;
    invoke-virtual {v11}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v20

    .line 145
    .local v20, "len":J
    new-instance v13, Lcom/msec/net/okhttp3/TSInterceptor$2;

    move-object v14, v13

    move-object/from16 v15, p0

    move-object/from16 v16, v2

    move-wide/from16 v17, v20

    invoke-direct/range {v14 .. v19}, Lcom/msec/net/okhttp3/TSInterceptor$2;-><init>(Lcom/msec/net/okhttp3/TSInterceptor;Lokhttp3/MediaType;JLjava/io/InputStream;)V

    move-object v0, v13

    .line 171
    move-object v11, v0

    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local v1    # "tmpInputStream":Ljava/io/InputStream;
    .end local v2    # "mediaType":Lokhttp3/MediaType;
    .end local v19    # "deInputStream":Ljava/io/InputStream;
    .end local v20    # "len":J
    :goto_3
    invoke-virtual {v12, v11}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v10

    goto :goto_4

    .line 174
    .end local v12    # "builder":Lokhttp3/Response$Builder;
    .end local v22    # "resLen":J
    .end local v24    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    .end local v25    # "request":Lokhttp3/Request;
    .local v1, "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    .local v2, "request":Lokhttp3/Request;
    :cond_8
    move-object/from16 v24, v1

    move-object/from16 v25, v2

    .end local v1    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    .end local v2    # "request":Lokhttp3/Request;
    .restart local v24    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    .restart local v25    # "request":Lokhttp3/Request;
    :goto_4
    return-object v10
.end method
