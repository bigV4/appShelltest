.class public Lcom/msec/net/xutils/SyncHttpHandler;
.super Ljava/lang/Object;
.source "SyncHttpHandler.java"


# instance fields
.field private charset:Ljava/lang/String;

.field private final client:Lcom/msec/net/httpclient/DefaultHttpClient;

.field private final context:Lorg/apache/http/protocol/HttpContext;

.field private expiry:J

.field private httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

.field private requestMethod:Ljava/lang/String;

.field private requestUrl:Ljava/lang/String;

.field private retriedTimes:I


# direct methods
.method public constructor <init>(Lcom/msec/net/httpclient/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Ljava/lang/String;)V
    .locals 2
    .param p1, "client"    # Lcom/msec/net/httpclient/DefaultHttpClient;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p3, "charset"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/msec/net/xutils/SyncHttpHandler;->retriedTimes:I

    .line 59
    invoke-static {}, Lcom/lidroid/xutils/http/HttpCache;->getDefaultExpiryTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/msec/net/xutils/SyncHttpHandler;->expiry:J

    .line 53
    iput-object p1, p0, Lcom/msec/net/xutils/SyncHttpHandler;->client:Lcom/msec/net/httpclient/DefaultHttpClient;

    .line 54
    iput-object p2, p0, Lcom/msec/net/xutils/SyncHttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    .line 55
    iput-object p3, p0, Lcom/msec/net/xutils/SyncHttpHandler;->charset:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private handleResponse(Lorg/apache/http/HttpResponse;)Lcom/lidroid/xutils/http/ResponseStream;
    .locals 9
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    if-eqz p1, :cond_6

    .line 110
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 111
    .local v0, "status":Lorg/apache/http/StatusLine;
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 112
    .local v1, "statusCode":I
    const/16 v2, 0x12c

    if-ge v1, v2, :cond_0

    .line 113
    new-instance v2, Lcom/lidroid/xutils/http/ResponseStream;

    iget-object v5, p0, Lcom/msec/net/xutils/SyncHttpHandler;->charset:Ljava/lang/String;

    iget-object v6, p0, Lcom/msec/net/xutils/SyncHttpHandler;->requestUrl:Ljava/lang/String;

    iget-wide v7, p0, Lcom/msec/net/xutils/SyncHttpHandler;->expiry:J

    move-object v3, v2

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/lidroid/xutils/http/ResponseStream;-><init>(Lorg/apache/http/HttpResponse;Ljava/lang/String;Ljava/lang/String;J)V

    .line 114
    .local v2, "responseStream":Lcom/lidroid/xutils/http/ResponseStream;
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lcom/lidroid/xutils/http/ResponseStream;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 115
    .local v4, "cls":[Ljava/lang/Class;
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/msec/net/xutils/SyncHttpHandler;->requestMethod:Ljava/lang/String;

    aput-object v5, v3, v6

    .line 116
    .local v3, "args":[Ljava/lang/Object;
    const-string v5, "setRequestMethod"

    invoke-static {v2, v5, v4, v3}, Lcom/msec/Helper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    return-object v2

    .line 118
    .end local v2    # "responseStream":Lcom/lidroid/xutils/http/ResponseStream;
    .end local v3    # "args":[Ljava/lang/Object;
    .end local v4    # "cls":[Ljava/lang/Class;
    :cond_0
    const/16 v2, 0x12d

    if-eq v1, v2, :cond_3

    const/16 v2, 0x12e

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 126
    :cond_1
    const/16 v2, 0x1a0

    if-ne v1, v2, :cond_2

    .line 127
    new-instance v2, Lcom/lidroid/xutils/exception/HttpException;

    const-string v3, "maybe the file has downloaded completely"

    invoke-direct {v2, v1, v3}, Lcom/lidroid/xutils/exception/HttpException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 129
    :cond_2
    new-instance v2, Lcom/lidroid/xutils/exception/HttpException;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/lidroid/xutils/exception/HttpException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 119
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/msec/net/xutils/SyncHttpHandler;->httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

    if-nez v2, :cond_4

    .line 120
    new-instance v2, Lcom/lidroid/xutils/http/callback/DefaultHttpRedirectHandler;

    invoke-direct {v2}, Lcom/lidroid/xutils/http/callback/DefaultHttpRedirectHandler;-><init>()V

    iput-object v2, p0, Lcom/msec/net/xutils/SyncHttpHandler;->httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

    .line 122
    :cond_4
    iget-object v2, p0, Lcom/msec/net/xutils/SyncHttpHandler;->httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

    invoke-interface {v2, p1}, Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;->getDirectRequest(Lorg/apache/http/HttpResponse;)Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v2

    .line 123
    .local v2, "request":Lorg/apache/http/client/methods/HttpRequestBase;
    if-eqz v2, :cond_5

    .line 124
    invoke-virtual {p0, v2}, Lcom/msec/net/xutils/SyncHttpHandler;->sendRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/lidroid/xutils/http/ResponseStream;

    move-result-object v3

    return-object v3

    .line 126
    .end local v2    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    :cond_5
    nop

    .line 131
    const/4 v2, 0x0

    return-object v2

    .line 108
    .end local v0    # "status":Lorg/apache/http/StatusLine;
    .end local v1    # "statusCode":I
    :cond_6
    new-instance v0, Lcom/lidroid/xutils/exception/HttpException;

    const-string v1, "response is null"

    invoke-direct {v0, v1}, Lcom/lidroid/xutils/exception/HttpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public sendRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/lidroid/xutils/http/ResponseStream;
    .locals 6
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/HttpException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/msec/net/xutils/SyncHttpHandler;->client:Lcom/msec/net/httpclient/DefaultHttpClient;

    invoke-virtual {v0}, Lcom/msec/net/httpclient/DefaultHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v0

    .line 69
    .local v0, "retryHandler":Lorg/apache/http/client/HttpRequestRetryHandler;
    :goto_0
    const/4 v1, 0x1

    .line 70
    .local v1, "retry":Z
    const/4 v2, 0x0

    .line 72
    .local v2, "exception":Ljava/io/IOException;
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/msec/net/xutils/SyncHttpHandler;->requestUrl:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/msec/net/xutils/SyncHttpHandler;->requestMethod:Ljava/lang/String;

    .line 74
    sget-object v3, Lcom/msec/net/xutils/HttpUtils;->sHttpCache:Lcom/lidroid/xutils/http/HttpCache;

    iget-object v4, p0, Lcom/msec/net/xutils/SyncHttpHandler;->requestMethod:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/lidroid/xutils/http/HttpCache;->isEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    sget-object v3, Lcom/msec/net/xutils/HttpUtils;->sHttpCache:Lcom/lidroid/xutils/http/HttpCache;

    iget-object v4, p0, Lcom/msec/net/xutils/SyncHttpHandler;->requestUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/lidroid/xutils/http/HttpCache;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, "result":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 77
    new-instance v4, Lcom/lidroid/xutils/http/ResponseStream;

    invoke-direct {v4, v3}, Lcom/lidroid/xutils/http/ResponseStream;-><init>(Ljava/lang/String;)V

    return-object v4

    .line 81
    .end local v3    # "result":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/msec/net/xutils/SyncHttpHandler;->client:Lcom/msec/net/httpclient/DefaultHttpClient;

    iget-object v4, p0, Lcom/msec/net/xutils/SyncHttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v3, p1, v4}, Lcom/msec/net/httpclient/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 82
    .local v3, "response":Lorg/apache/http/HttpResponse;
    invoke-direct {p0, v3}, Lcom/msec/net/xutils/SyncHttpHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Lcom/lidroid/xutils/http/ResponseStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/lidroid/xutils/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 95
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v3

    .line 96
    .local v3, "e":Ljava/lang/Throwable;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 97
    invoke-virtual {v2, v3}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 98
    iget v4, p0, Lcom/msec/net/xutils/SyncHttpHandler;->retriedTimes:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/msec/net/xutils/SyncHttpHandler;->retriedTimes:I

    iget-object v5, p0, Lcom/msec/net/xutils/SyncHttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, v2, v4, v5}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    goto :goto_2

    .line 93
    .end local v3    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v3

    .line 94
    .local v3, "e":Lcom/lidroid/xutils/exception/HttpException;
    throw v3

    .line 89
    .end local v3    # "e":Lcom/lidroid/xutils/exception/HttpException;
    :catch_2
    move-exception v3

    .line 90
    .local v3, "e":Ljava/lang/NullPointerException;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 91
    invoke-virtual {v2, v3}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 92
    iget v4, p0, Lcom/msec/net/xutils/SyncHttpHandler;->retriedTimes:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/msec/net/xutils/SyncHttpHandler;->retriedTimes:I

    iget-object v5, p0, Lcom/msec/net/xutils/SyncHttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, v2, v4, v5}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    .end local v3    # "e":Ljava/lang/NullPointerException;
    goto :goto_1

    .line 86
    :catch_3
    move-exception v3

    .line 87
    .local v3, "e":Ljava/io/IOException;
    move-object v2, v3

    .line 88
    iget v4, p0, Lcom/msec/net/xutils/SyncHttpHandler;->retriedTimes:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/msec/net/xutils/SyncHttpHandler;->retriedTimes:I

    iget-object v5, p0, Lcom/msec/net/xutils/SyncHttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, v2, v4, v5}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 83
    :catch_4
    move-exception v3

    .line 84
    .local v3, "e":Ljava/net/UnknownHostException;
    move-object v2, v3

    .line 85
    iget v4, p0, Lcom/msec/net/xutils/SyncHttpHandler;->retriedTimes:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/msec/net/xutils/SyncHttpHandler;->retriedTimes:I

    iget-object v5, p0, Lcom/msec/net/xutils/SyncHttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, v2, v4, v5}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    .line 99
    .end local v3    # "e":Ljava/net/UnknownHostException;
    :goto_1
    nop

    .line 100
    :goto_2
    if-eqz v1, :cond_1

    .line 103
    .end local v1    # "retry":Z
    .end local v2    # "exception":Ljava/io/IOException;
    goto/16 :goto_0

    .line 101
    .restart local v1    # "retry":Z
    .restart local v2    # "exception":Ljava/io/IOException;
    :cond_1
    new-instance v3, Lcom/lidroid/xutils/exception/HttpException;

    invoke-direct {v3, v2}, Lcom/lidroid/xutils/exception/HttpException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setExpiry(J)V
    .locals 0
    .param p1, "expiry"    # J

    .line 62
    iput-wide p1, p0, Lcom/msec/net/xutils/SyncHttpHandler;->expiry:J

    .line 63
    return-void
.end method

.method public setHttpRedirectHandler(Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;)V
    .locals 0
    .param p1, "httpRedirectHandler"    # Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

    .line 43
    iput-object p1, p0, Lcom/msec/net/xutils/SyncHttpHandler;->httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

    .line 44
    return-void
.end method
