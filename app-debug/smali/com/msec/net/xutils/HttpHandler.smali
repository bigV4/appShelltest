.class public Lcom/msec/net/xutils/HttpHandler;
.super Lcom/lidroid/xutils/task/PriorityAsyncTask;
.source "HttpHandler.java"

# interfaces
.implements Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/msec/net/xutils/HttpHandler$NotUseApacheRedirectHandler;,
        Lcom/msec/net/xutils/HttpHandler$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lidroid/xutils/task/PriorityAsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;"
    }
.end annotation


# static fields
.field private static final UPDATE_FAILURE:I = 0x3

.field private static final UPDATE_LOADING:I = 0x2

.field private static final UPDATE_START:I = 0x1

.field private static final UPDATE_SUCCESS:I = 0x4

.field private static final notUseApacheRedirectHandler:Lcom/msec/net/xutils/HttpHandler$NotUseApacheRedirectHandler;


# instance fields
.field private autoRename:Z

.field private autoResume:Z

.field private callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lidroid/xutils/http/callback/RequestCallBack<",
            "TT;>;"
        }
    .end annotation
.end field

.field private charset:Ljava/lang/String;

.field private final client:Lcom/msec/net/httpclient/DefaultHttpClient;

.field private final context:Lorg/apache/http/protocol/HttpContext;

.field private expiry:J

.field private fileSavePath:Ljava/lang/String;

.field private httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

.field private isDownloadingFile:Z

.field private isUploading:Z

.field private lastUpdateTime:J

.field private request:Lorg/apache/http/client/methods/HttpRequestBase;

.field private requestMethod:Ljava/lang/String;

.field private requestUrl:Ljava/lang/String;

.field private retriedCount:I

.field private state:Lcom/msec/net/xutils/HttpHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 352
    new-instance v0, Lcom/msec/net/xutils/HttpHandler$NotUseApacheRedirectHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/msec/net/xutils/HttpHandler$NotUseApacheRedirectHandler;-><init>(Lcom/msec/net/xutils/HttpHandler$1;)V

    sput-object v0, Lcom/msec/net/xutils/HttpHandler;->notUseApacheRedirectHandler:Lcom/msec/net/xutils/HttpHandler$NotUseApacheRedirectHandler;

    return-void
.end method

.method public constructor <init>(Lcom/msec/net/httpclient/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Ljava/lang/String;Lcom/lidroid/xutils/http/callback/RequestCallBack;)V
    .locals 2
    .param p1, "client"    # Lcom/msec/net/httpclient/DefaultHttpClient;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p3, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/msec/net/httpclient/DefaultHttpClient;",
            "Lorg/apache/http/protocol/HttpContext;",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/http/callback/RequestCallBack<",
            "TT;>;)V"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/msec/net/xutils/HttpHandler;, "Lcom/msec/net/xutils/HttpHandler<TT;>;"
    .local p4, "callback":Lcom/lidroid/xutils/http/callback/RequestCallBack;, "Lcom/lidroid/xutils/http/callback/RequestCallBack<TT;>;"
    invoke-direct {p0}, Lcom/lidroid/xutils/task/PriorityAsyncTask;-><init>()V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/msec/net/xutils/HttpHandler;->isUploading:Z

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/msec/net/xutils/HttpHandler;->retriedCount:I

    .line 68
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/msec/net/xutils/HttpHandler;->fileSavePath:Ljava/lang/String;

    .line 69
    iput-boolean v0, p0, Lcom/msec/net/xutils/HttpHandler;->isDownloadingFile:Z

    .line 70
    iput-boolean v0, p0, Lcom/msec/net/xutils/HttpHandler;->autoResume:Z

    .line 71
    iput-boolean v0, p0, Lcom/msec/net/xutils/HttpHandler;->autoRename:Z

    .line 82
    sget-object v0, Lcom/msec/net/xutils/HttpHandler$State;->WAITING:Lcom/msec/net/xutils/HttpHandler$State;

    iput-object v0, p0, Lcom/msec/net/xutils/HttpHandler;->state:Lcom/msec/net/xutils/HttpHandler$State;

    .line 88
    invoke-static {}, Lcom/lidroid/xutils/http/HttpCache;->getDefaultExpiryTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/msec/net/xutils/HttpHandler;->expiry:J

    .line 75
    iput-object p1, p0, Lcom/msec/net/xutils/HttpHandler;->client:Lcom/msec/net/httpclient/DefaultHttpClient;

    .line 76
    iput-object p2, p0, Lcom/msec/net/xutils/HttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    .line 77
    iput-object p4, p0, Lcom/msec/net/xutils/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    .line 78
    iput-object p3, p0, Lcom/msec/net/xutils/HttpHandler;->charset:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/msec/net/xutils/HttpHandler;->client:Lcom/msec/net/httpclient/DefaultHttpClient;

    sget-object v1, Lcom/msec/net/xutils/HttpHandler;->notUseApacheRedirectHandler:Lcom/msec/net/xutils/HttpHandler$NotUseApacheRedirectHandler;

    invoke-virtual {v0, v1}, Lcom/msec/net/httpclient/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 80
    return-void
.end method

.method private handleResponse(Lorg/apache/http/HttpResponse;)Lcom/lidroid/xutils/http/ResponseInfo;
    .locals 12
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            ")",
            "Lcom/lidroid/xutils/http/ResponseInfo<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    .local p0, "this":Lcom/msec/net/xutils/HttpHandler;, "Lcom/msec/net/xutils/HttpHandler<TT;>;"
    if-eqz p1, :cond_b

    .line 238
    invoke-virtual {p0}, Lcom/msec/net/xutils/HttpHandler;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 240
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 241
    .local v0, "status":Lorg/apache/http/StatusLine;
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 242
    .local v2, "statusCode":I
    const/16 v3, 0x12c

    if-ge v2, v3, :cond_5

    .line 243
    const/4 v3, 0x0

    .line 244
    .local v3, "result":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    .line 245
    .local v10, "entity":Lorg/apache/http/HttpEntity;
    const/4 v11, 0x0

    if-eqz v10, :cond_4

    .line 246
    iput-boolean v11, p0, Lcom/msec/net/xutils/HttpHandler;->isUploading:Z

    .line 247
    iget-boolean v4, p0, Lcom/msec/net/xutils/HttpHandler;->isDownloadingFile:Z

    if-eqz v4, :cond_3

    .line 248
    iget-boolean v4, p0, Lcom/msec/net/xutils/HttpHandler;->autoResume:Z

    if-eqz v4, :cond_1

    invoke-static {p1}, Lcom/lidroid/xutils/util/OtherUtils;->isSupportRange(Lorg/apache/http/HttpResponse;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, p0, Lcom/msec/net/xutils/HttpHandler;->autoResume:Z

    .line 249
    iget-boolean v4, p0, Lcom/msec/net/xutils/HttpHandler;->autoRename:Z

    if-eqz v4, :cond_2

    invoke-static {p1}, Lcom/lidroid/xutils/util/OtherUtils;->getFileNameFromHttpResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v9, v1

    goto :goto_2

    :cond_2
    goto :goto_1

    .line 250
    .local v9, "responseFileName":Ljava/lang/String;
    :goto_2
    new-instance v4, Lcom/lidroid/xutils/http/callback/FileDownloadHandler;

    invoke-direct {v4}, Lcom/lidroid/xutils/http/callback/FileDownloadHandler;-><init>()V

    .line 251
    .local v4, "downloadHandler":Lcom/lidroid/xutils/http/callback/FileDownloadHandler;
    iget-object v7, p0, Lcom/msec/net/xutils/HttpHandler;->fileSavePath:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/msec/net/xutils/HttpHandler;->autoResume:Z

    move-object v5, v10

    move-object v6, p0

    invoke-virtual/range {v4 .. v9}, Lcom/lidroid/xutils/http/callback/FileDownloadHandler;->handleEntity(Lorg/apache/http/HttpEntity;Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;Ljava/lang/String;ZLjava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 252
    .end local v4    # "downloadHandler":Lcom/lidroid/xutils/http/callback/FileDownloadHandler;
    .end local v9    # "responseFileName":Ljava/lang/String;
    goto :goto_3

    .line 253
    :cond_3
    new-instance v1, Lcom/lidroid/xutils/http/callback/StringDownloadHandler;

    invoke-direct {v1}, Lcom/lidroid/xutils/http/callback/StringDownloadHandler;-><init>()V

    .line 254
    .local v1, "downloadHandler":Lcom/lidroid/xutils/http/callback/StringDownloadHandler;
    iget-object v4, p0, Lcom/msec/net/xutils/HttpHandler;->charset:Ljava/lang/String;

    invoke-virtual {v1, v10, p0, v4}, Lcom/lidroid/xutils/http/callback/StringDownloadHandler;->handleEntity(Lorg/apache/http/HttpEntity;Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 255
    sget-object v4, Lcom/msec/net/xutils/HttpUtils;->sHttpCache:Lcom/lidroid/xutils/http/HttpCache;

    iget-object v5, p0, Lcom/msec/net/xutils/HttpHandler;->requestMethod:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/lidroid/xutils/http/HttpCache;->isEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 256
    sget-object v4, Lcom/msec/net/xutils/HttpUtils;->sHttpCache:Lcom/lidroid/xutils/http/HttpCache;

    iget-object v5, p0, Lcom/msec/net/xutils/HttpHandler;->requestUrl:Ljava/lang/String;

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    iget-wide v7, p0, Lcom/msec/net/xutils/HttpHandler;->expiry:J

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/lidroid/xutils/http/HttpCache;->put(Ljava/lang/String;Ljava/lang/String;J)V

    .line 260
    .end local v1    # "downloadHandler":Lcom/lidroid/xutils/http/callback/StringDownloadHandler;
    :cond_4
    :goto_3
    new-instance v1, Lcom/lidroid/xutils/http/ResponseInfo;

    invoke-direct {v1, p1, v3, v11}, Lcom/lidroid/xutils/http/ResponseInfo;-><init>(Lorg/apache/http/HttpResponse;Ljava/lang/Object;Z)V

    return-object v1

    .line 261
    .end local v3    # "result":Ljava/lang/Object;
    .end local v10    # "entity":Lorg/apache/http/HttpEntity;
    :cond_5
    const/16 v3, 0x12d

    if-eq v2, v3, :cond_8

    const/16 v3, 0x12e

    if-ne v2, v3, :cond_6

    goto :goto_4

    .line 269
    :cond_6
    const/16 v1, 0x1a0

    if-ne v2, v1, :cond_7

    .line 270
    new-instance v1, Lcom/lidroid/xutils/exception/HttpException;

    const-string v3, "maybe the file has downloaded completely"

    invoke-direct {v1, v2, v3}, Lcom/lidroid/xutils/exception/HttpException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 272
    :cond_7
    new-instance v1, Lcom/lidroid/xutils/exception/HttpException;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/lidroid/xutils/exception/HttpException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 262
    :cond_8
    :goto_4
    iget-object v3, p0, Lcom/msec/net/xutils/HttpHandler;->httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

    if-nez v3, :cond_9

    .line 263
    new-instance v3, Lcom/lidroid/xutils/http/callback/DefaultHttpRedirectHandler;

    invoke-direct {v3}, Lcom/lidroid/xutils/http/callback/DefaultHttpRedirectHandler;-><init>()V

    iput-object v3, p0, Lcom/msec/net/xutils/HttpHandler;->httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

    .line 265
    :cond_9
    iget-object v3, p0, Lcom/msec/net/xutils/HttpHandler;->httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

    invoke-interface {v3, p1}, Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;->getDirectRequest(Lorg/apache/http/HttpResponse;)Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v3

    .line 266
    .local v3, "request":Lorg/apache/http/client/methods/HttpRequestBase;
    if-eqz v3, :cond_a

    .line 267
    invoke-direct {p0, v3}, Lcom/msec/net/xutils/HttpHandler;->sendRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/lidroid/xutils/http/ResponseInfo;

    move-result-object v1

    return-object v1

    .line 269
    .end local v3    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    :cond_a
    nop

    .line 274
    return-object v1

    .line 236
    .end local v0    # "status":Lorg/apache/http/StatusLine;
    .end local v2    # "statusCode":I
    :cond_b
    new-instance v0, Lcom/lidroid/xutils/exception/HttpException;

    const-string v1, "response is null"

    invoke-direct {v0, v1}, Lcom/lidroid/xutils/exception/HttpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private sendRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/lidroid/xutils/http/ResponseInfo;
    .locals 7
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpRequestBase;",
            ")",
            "Lcom/lidroid/xutils/http/ResponseInfo<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/HttpException;
        }
    .end annotation

    .line 106
    .local p0, "this":Lcom/msec/net/xutils/HttpHandler;, "Lcom/msec/net/xutils/HttpHandler<TT;>;"
    iget-object v0, p0, Lcom/msec/net/xutils/HttpHandler;->client:Lcom/msec/net/httpclient/DefaultHttpClient;

    invoke-virtual {v0}, Lcom/msec/net/httpclient/DefaultHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v0

    .line 109
    .local v0, "retryHandler":Lorg/apache/http/client/HttpRequestRetryHandler;
    :goto_0
    iget-boolean v1, p0, Lcom/msec/net/xutils/HttpHandler;->autoResume:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/msec/net/xutils/HttpHandler;->isDownloadingFile:Z

    if-eqz v1, :cond_1

    .line 110
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/msec/net/xutils/HttpHandler;->fileSavePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    .local v1, "downloadFile":Ljava/io/File;
    const-wide/16 v2, 0x0

    .line 112
    .local v2, "fileLen":J
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 115
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 116
    const-string v4, "RANGE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bytes="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .end local v1    # "downloadFile":Ljava/io/File;
    .end local v2    # "fileLen":J
    :cond_1
    const/4 v1, 0x1

    .line 121
    .local v1, "retry":Z
    const/4 v2, 0x0

    move-object v3, v2

    .line 123
    .local v3, "exception":Ljava/io/IOException;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/msec/net/xutils/HttpHandler;->requestMethod:Ljava/lang/String;

    .line 124
    sget-object v5, Lcom/msec/net/xutils/HttpUtils;->sHttpCache:Lcom/lidroid/xutils/http/HttpCache;

    iget-object v6, p0, Lcom/msec/net/xutils/HttpHandler;->requestMethod:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/lidroid/xutils/http/HttpCache;->isEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 125
    sget-object v5, Lcom/msec/net/xutils/HttpUtils;->sHttpCache:Lcom/lidroid/xutils/http/HttpCache;

    iget-object v6, p0, Lcom/msec/net/xutils/HttpHandler;->requestUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/lidroid/xutils/http/HttpCache;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, "result":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 127
    new-instance v6, Lcom/lidroid/xutils/http/ResponseInfo;

    invoke-direct {v6, v2, v5, v4}, Lcom/lidroid/xutils/http/ResponseInfo;-><init>(Lorg/apache/http/HttpResponse;Ljava/lang/Object;Z)V

    return-object v6

    .line 131
    .end local v5    # "result":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    .line 132
    .local v2, "responseInfo":Lcom/lidroid/xutils/http/ResponseInfo;, "Lcom/lidroid/xutils/http/ResponseInfo<TT;>;"
    invoke-virtual {p0}, Lcom/msec/net/xutils/HttpHandler;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 133
    iget-object v5, p0, Lcom/msec/net/xutils/HttpHandler;->client:Lcom/msec/net/httpclient/DefaultHttpClient;

    iget-object v6, p0, Lcom/msec/net/xutils/HttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v5, p1, v6}, Lcom/msec/net/httpclient/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 134
    .local v5, "response":Lorg/apache/http/HttpResponse;
    invoke-direct {p0, v5}, Lcom/msec/net/xutils/HttpHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Lcom/lidroid/xutils/http/ResponseInfo;

    move-result-object v6
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/lidroid/xutils/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v6

    .line 136
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    :cond_3
    return-object v2

    .line 149
    .end local v2    # "responseInfo":Lcom/lidroid/xutils/http/ResponseInfo;, "Lcom/lidroid/xutils/http/ResponseInfo<TT;>;"
    :catch_0
    move-exception v2

    .line 150
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 151
    invoke-virtual {v3, v2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 152
    iget v5, p0, Lcom/msec/net/xutils/HttpHandler;->retriedCount:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/msec/net/xutils/HttpHandler;->retriedCount:I

    iget-object v4, p0, Lcom/msec/net/xutils/HttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, v3, v5, v4}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    goto :goto_2

    .line 147
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    .line 148
    .local v2, "e":Lcom/lidroid/xutils/exception/HttpException;
    throw v2

    .line 143
    .end local v2    # "e":Lcom/lidroid/xutils/exception/HttpException;
    :catch_2
    move-exception v2

    .line 144
    .local v2, "e":Ljava/lang/NullPointerException;
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 145
    invoke-virtual {v3, v2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 146
    iget v5, p0, Lcom/msec/net/xutils/HttpHandler;->retriedCount:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/msec/net/xutils/HttpHandler;->retriedCount:I

    iget-object v4, p0, Lcom/msec/net/xutils/HttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, v3, v5, v4}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    .end local v2    # "e":Ljava/lang/NullPointerException;
    goto :goto_1

    .line 140
    :catch_3
    move-exception v2

    .line 141
    .local v2, "e":Ljava/io/IOException;
    move-object v3, v2

    .line 142
    iget v5, p0, Lcom/msec/net/xutils/HttpHandler;->retriedCount:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/msec/net/xutils/HttpHandler;->retriedCount:I

    iget-object v4, p0, Lcom/msec/net/xutils/HttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, v3, v5, v4}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 137
    :catch_4
    move-exception v2

    .line 138
    .local v2, "e":Ljava/net/UnknownHostException;
    move-object v3, v2

    .line 139
    iget v5, p0, Lcom/msec/net/xutils/HttpHandler;->retriedCount:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/msec/net/xutils/HttpHandler;->retriedCount:I

    iget-object v4, p0, Lcom/msec/net/xutils/HttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, v3, v5, v4}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    .line 153
    .end local v2    # "e":Ljava/net/UnknownHostException;
    :goto_1
    nop

    .line 154
    :goto_2
    if-eqz v1, :cond_4

    .line 157
    .end local v1    # "retry":Z
    .end local v3    # "exception":Ljava/io/IOException;
    goto/16 :goto_0

    .line 155
    .restart local v1    # "retry":Z
    .restart local v3    # "exception":Ljava/io/IOException;
    :cond_4
    new-instance v2, Lcom/lidroid/xutils/exception/HttpException;

    invoke-direct {v2, v3}, Lcom/lidroid/xutils/exception/HttpException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 282
    .local p0, "this":Lcom/msec/net/xutils/HttpHandler;, "Lcom/msec/net/xutils/HttpHandler<TT;>;"
    sget-object v0, Lcom/msec/net/xutils/HttpHandler$State;->CANCELLED:Lcom/msec/net/xutils/HttpHandler$State;

    iput-object v0, p0, Lcom/msec/net/xutils/HttpHandler;->state:Lcom/msec/net/xutils/HttpHandler$State;

    .line 284
    iget-object v0, p0, Lcom/msec/net/xutils/HttpHandler;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/msec/net/xutils/HttpHandler;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->isAborted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/msec/net/xutils/HttpHandler;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    goto :goto_0

    .line 287
    :catch_0
    move-exception v0

    .line 290
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/msec/net/xutils/HttpHandler;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 292
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/msec/net/xutils/HttpHandler;->cancel(Z)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 294
    goto :goto_1

    .line 293
    :catch_1
    move-exception v0

    .line 297
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/msec/net/xutils/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    if-eqz v0, :cond_2

    .line 298
    iget-object v0, p0, Lcom/msec/net/xutils/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    invoke-virtual {v0}, Lcom/lidroid/xutils/http/callback/RequestCallBack;->onCancelled()V

    .line 300
    :cond_2
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 48
    .local p0, "this":Lcom/msec/net/xutils/HttpHandler;, "Lcom/msec/net/xutils/HttpHandler<TT;>;"
    invoke-virtual {p0, p1}, Lcom/msec/net/xutils/HttpHandler;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Object;

    .line 162
    .local p0, "this":Lcom/msec/net/xutils/HttpHandler;, "Lcom/msec/net/xutils/HttpHandler<TT;>;"
    iget-object v0, p0, Lcom/msec/net/xutils/HttpHandler;->state:Lcom/msec/net/xutils/HttpHandler$State;

    sget-object v1, Lcom/msec/net/xutils/HttpHandler$State;->CANCELLED:Lcom/msec/net/xutils/HttpHandler$State;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    if-eqz p1, :cond_6

    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 164
    :cond_0
    array-length v0, p1

    const/4 v1, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v0, v3, :cond_2

    .line 165
    aget-object v0, p1, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/msec/net/xutils/HttpHandler;->fileSavePath:Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/msec/net/xutils/HttpHandler;->fileSavePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/msec/net/xutils/HttpHandler;->isDownloadingFile:Z

    .line 167
    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/msec/net/xutils/HttpHandler;->autoResume:Z

    .line 168
    aget-object v0, p1, v3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/msec/net/xutils/HttpHandler;->autoRename:Z

    .line 172
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/msec/net/xutils/HttpHandler;->state:Lcom/msec/net/xutils/HttpHandler$State;

    sget-object v6, Lcom/msec/net/xutils/HttpHandler$State;->CANCELLED:Lcom/msec/net/xutils/HttpHandler$State;

    if-ne v0, v6, :cond_3

    return-object v2

    .line 174
    :cond_3
    aget-object v0, p1, v4

    check-cast v0, Lorg/apache/http/client/methods/HttpRequestBase;

    iput-object v0, p0, Lcom/msec/net/xutils/HttpHandler;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 175
    iget-object v0, p0, Lcom/msec/net/xutils/HttpHandler;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/msec/net/xutils/HttpHandler;->requestUrl:Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lcom/msec/net/xutils/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    if-eqz v0, :cond_4

    .line 177
    iget-object v0, p0, Lcom/msec/net/xutils/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    iget-object v6, p0, Lcom/msec/net/xutils/HttpHandler;->requestUrl:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/lidroid/xutils/http/callback/RequestCallBack;->setRequestUrl(Ljava/lang/String;)V

    .line 180
    :cond_4
    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v4

    invoke-virtual {p0, v0}, Lcom/msec/net/xutils/HttpHandler;->publishProgress([Ljava/lang/Object;)V

    .line 182
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/msec/net/xutils/HttpHandler;->lastUpdateTime:J

    .line 184
    iget-object v0, p0, Lcom/msec/net/xutils/HttpHandler;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-direct {p0, v0}, Lcom/msec/net/xutils/HttpHandler;->sendRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/lidroid/xutils/http/ResponseInfo;

    move-result-object v0

    .line 185
    .local v0, "responseInfo":Lcom/lidroid/xutils/http/ResponseInfo;, "Lcom/lidroid/xutils/http/ResponseInfo<TT;>;"
    if-eqz v0, :cond_5

    .line 186
    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    aput-object v0, v6, v5

    invoke-virtual {p0, v6}, Lcom/msec/net/xutils/HttpHandler;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/lidroid/xutils/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    return-object v2

    .line 191
    .end local v0    # "responseInfo":Lcom/lidroid/xutils/http/ResponseInfo;, "Lcom/lidroid/xutils/http/ResponseInfo<TT;>;"
    :cond_5
    goto :goto_1

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Lcom/lidroid/xutils/exception/HttpException;
    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v4

    aput-object v0, v6, v5

    invoke-virtual {v0}, Lcom/lidroid/xutils/exception/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v1

    invoke-virtual {p0, v6}, Lcom/msec/net/xutils/HttpHandler;->publishProgress([Ljava/lang/Object;)V

    .line 193
    .end local v0    # "e":Lcom/lidroid/xutils/exception/HttpException;
    :goto_1
    return-object v2

    .line 162
    :cond_6
    :goto_2
    return-object v2
.end method

.method public getRequestCallBack()Lcom/lidroid/xutils/http/callback/RequestCallBack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lidroid/xutils/http/callback/RequestCallBack<",
            "TT;>;"
        }
    .end annotation

    .line 99
    .local p0, "this":Lcom/msec/net/xutils/HttpHandler;, "Lcom/msec/net/xutils/HttpHandler<TT;>;"
    iget-object v0, p0, Lcom/msec/net/xutils/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    return-object v0
.end method

.method public getState()Lcom/msec/net/xutils/HttpHandler$State;
    .locals 1

    .line 85
    .local p0, "this":Lcom/msec/net/xutils/HttpHandler;, "Lcom/msec/net/xutils/HttpHandler<TT;>;"
    iget-object v0, p0, Lcom/msec/net/xutils/HttpHandler;->state:Lcom/msec/net/xutils/HttpHandler$State;

    return-object v0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 10
    .param p1, "values"    # [Ljava/lang/Object;

    .line 204
    .local p0, "this":Lcom/msec/net/xutils/HttpHandler;, "Lcom/msec/net/xutils/HttpHandler<TT;>;"
    iget-object v0, p0, Lcom/msec/net/xutils/HttpHandler;->state:Lcom/msec/net/xutils/HttpHandler$State;

    sget-object v1, Lcom/msec/net/xutils/HttpHandler$State;->CANCELLED:Lcom/msec/net/xutils/HttpHandler$State;

    if-eq v0, v1, :cond_4

    if-eqz p1, :cond_4

    array-length v0, p1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/msec/net/xutils/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    if-nez v0, :cond_0

    goto :goto_1

    .line 205
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 224
    :pswitch_0
    array-length v0, p1

    if-eq v0, v3, :cond_1

    return-void

    .line 225
    :cond_1
    sget-object v0, Lcom/msec/net/xutils/HttpHandler$State;->SUCCESS:Lcom/msec/net/xutils/HttpHandler$State;

    iput-object v0, p0, Lcom/msec/net/xutils/HttpHandler;->state:Lcom/msec/net/xutils/HttpHandler$State;

    .line 226
    iget-object v0, p0, Lcom/msec/net/xutils/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    aget-object v1, p1, v2

    check-cast v1, Lcom/lidroid/xutils/http/ResponseInfo;

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/http/callback/RequestCallBack;->onSuccess(Lcom/lidroid/xutils/http/ResponseInfo;)V

    .line 227
    goto :goto_0

    .line 219
    :pswitch_1
    array-length v0, p1

    if-eq v0, v1, :cond_2

    return-void

    .line 220
    :cond_2
    sget-object v0, Lcom/msec/net/xutils/HttpHandler$State;->FAILURE:Lcom/msec/net/xutils/HttpHandler$State;

    iput-object v0, p0, Lcom/msec/net/xutils/HttpHandler;->state:Lcom/msec/net/xutils/HttpHandler$State;

    .line 221
    iget-object v0, p0, Lcom/msec/net/xutils/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    aget-object v1, p1, v2

    check-cast v1, Lcom/lidroid/xutils/exception/HttpException;

    aget-object v2, p1, v3

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/lidroid/xutils/http/callback/RequestCallBack;->onFailure(Lcom/lidroid/xutils/exception/HttpException;Ljava/lang/String;)V

    .line 222
    goto :goto_0

    .line 211
    :pswitch_2
    array-length v0, p1

    if-eq v0, v1, :cond_3

    return-void

    .line 212
    :cond_3
    sget-object v0, Lcom/msec/net/xutils/HttpHandler$State;->LOADING:Lcom/msec/net/xutils/HttpHandler$State;

    iput-object v0, p0, Lcom/msec/net/xutils/HttpHandler;->state:Lcom/msec/net/xutils/HttpHandler$State;

    .line 213
    iget-object v4, p0, Lcom/msec/net/xutils/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    aget-object v0, p1, v2

    .line 214
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aget-object v0, p1, v3

    .line 215
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-boolean v9, p0, Lcom/msec/net/xutils/HttpHandler;->isUploading:Z

    .line 213
    invoke-virtual/range {v4 .. v9}, Lcom/lidroid/xutils/http/callback/RequestCallBack;->onLoading(JJZ)V

    .line 217
    goto :goto_0

    .line 207
    :pswitch_3
    sget-object v0, Lcom/msec/net/xutils/HttpHandler$State;->STARTED:Lcom/msec/net/xutils/HttpHandler$State;

    iput-object v0, p0, Lcom/msec/net/xutils/HttpHandler;->state:Lcom/msec/net/xutils/HttpHandler$State;

    .line 208
    iget-object v0, p0, Lcom/msec/net/xutils/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    invoke-virtual {v0}, Lcom/lidroid/xutils/http/callback/RequestCallBack;->onStart()V

    .line 209
    nop

    .line 231
    :goto_0
    return-void

    .line 204
    :cond_4
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setExpiry(J)V
    .locals 0
    .param p1, "expiry"    # J

    .line 91
    .local p0, "this":Lcom/msec/net/xutils/HttpHandler;, "Lcom/msec/net/xutils/HttpHandler<TT;>;"
    iput-wide p1, p0, Lcom/msec/net/xutils/HttpHandler;->expiry:J

    .line 92
    return-void
.end method

.method public setHttpRedirectHandler(Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;)V
    .locals 0
    .param p1, "httpRedirectHandler"    # Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

    .line 56
    .local p0, "this":Lcom/msec/net/xutils/HttpHandler;, "Lcom/msec/net/xutils/HttpHandler<TT;>;"
    if-eqz p1, :cond_0

    .line 57
    iput-object p1, p0, Lcom/msec/net/xutils/HttpHandler;->httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

    .line 59
    :cond_0
    return-void
.end method

.method public setRequestCallBack(Lcom/lidroid/xutils/http/callback/RequestCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/http/callback/RequestCallBack<",
            "TT;>;)V"
        }
    .end annotation

    .line 95
    .local p0, "this":Lcom/msec/net/xutils/HttpHandler;, "Lcom/msec/net/xutils/HttpHandler<TT;>;"
    .local p1, "callback":Lcom/lidroid/xutils/http/callback/RequestCallBack;, "Lcom/lidroid/xutils/http/callback/RequestCallBack<TT;>;"
    iput-object p1, p0, Lcom/msec/net/xutils/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    .line 96
    return-void
.end method

.method public updateProgress(JJZ)Z
    .locals 12
    .param p1, "total"    # J
    .param p3, "current"    # J
    .param p5, "forceUpdateUI"    # Z

    .line 306
    .local p0, "this":Lcom/msec/net/xutils/HttpHandler;, "Lcom/msec/net/xutils/HttpHandler<TT;>;"
    move-object v0, p0

    iget-object v1, v0, Lcom/msec/net/xutils/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/msec/net/xutils/HttpHandler;->state:Lcom/msec/net/xutils/HttpHandler$State;

    sget-object v4, Lcom/msec/net/xutils/HttpHandler$State;->CANCELLED:Lcom/msec/net/xutils/HttpHandler$State;

    if-eq v1, v4, :cond_1

    .line 307
    const/4 v1, 0x3

    const/4 v4, 0x2

    if-eqz p5, :cond_0

    .line 308
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {p0, v1}, Lcom/msec/net/xutils/HttpHandler;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0

    .line 310
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 311
    .local v5, "currTime":J
    iget-wide v7, v0, Lcom/msec/net/xutils/HttpHandler;->lastUpdateTime:J

    sub-long v7, v5, v7

    iget-object v9, v0, Lcom/msec/net/xutils/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    invoke-virtual {v9}, Lcom/lidroid/xutils/http/callback/RequestCallBack;->getRate()I

    move-result v9

    int-to-long v9, v9

    cmp-long v11, v7, v9

    if-ltz v11, :cond_1

    .line 312
    iput-wide v5, v0, Lcom/msec/net/xutils/HttpHandler;->lastUpdateTime:J

    .line 313
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v1, v3

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v1, v4

    invoke-virtual {p0, v1}, Lcom/msec/net/xutils/HttpHandler;->publishProgress([Ljava/lang/Object;)V

    .line 317
    .end local v5    # "currTime":J
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/msec/net/xutils/HttpHandler;->state:Lcom/msec/net/xutils/HttpHandler$State;

    sget-object v4, Lcom/msec/net/xutils/HttpHandler$State;->CANCELLED:Lcom/msec/net/xutils/HttpHandler$State;

    if-eq v1, v4, :cond_2

    const/4 v2, 0x1

    nop

    :cond_2
    return v2
.end method
