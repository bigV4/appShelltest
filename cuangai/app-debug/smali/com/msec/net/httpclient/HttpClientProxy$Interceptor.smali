.class public Lcom/msec/net/httpclient/HttpClientProxy$Interceptor;
.super Ljava/lang/Object;
.source "HttpClientProxy.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;
.implements Lorg/apache/http/HttpResponseInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/msec/net/httpclient/HttpClientProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Interceptor"
.end annotation


# instance fields
.field private mClient:Lcom/msec/MSecClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isInvokedFromWrapper()Z
    .locals 8

    .line 100
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 102
    .local v1, "elements":[Ljava/lang/StackTraceElement;
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 103
    .local v5, "element":Ljava/lang/StackTraceElement;
    const-class v6, Lcom/msec/net/httpclient/AbstractHttpClient;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 104
    const/4 v2, 0x1

    return v2

    .line 102
    .end local v5    # "element":Ljava/lang/StackTraceElement;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 107
    :cond_1
    return v3
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 3
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    :try_start_0
    invoke-static {}, Lcom/msec/net/httpclient/HttpClientProxy$Interceptor;->isInvokedFromWrapper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "HttpClientProxy.Interceptor.processRequest: from wrapper"

    invoke-static {v0}, Lcom/msec/MLog;->logd(Ljava/lang/String;)V

    .line 74
    return-void

    .line 76
    :cond_0
    const-string v0, "HttpClientProxy.Interceptor.processRequest: from interceptor"

    invoke-static {v0}, Lcom/msec/MLog;->logd(Ljava/lang/String;)V

    .line 77
    sget v0, Lcom/msec/MLog;->LOG_CODE_WRAPPER_HTTPCLIENT_WORK:I

    invoke-static {v0}, Lcom/msec/MLog;->printDetail(I)V

    .line 78
    move-object v0, p1

    .line 79
    .local v0, "req":Lorg/apache/http/HttpRequest;
    instance-of v1, p1, Lorg/apache/http/impl/client/RequestWrapper;

    if-eqz v1, :cond_1

    .line 80
    move-object v1, p1

    check-cast v1, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/RequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object v1

    move-object v0, v1

    .line 82
    :cond_1
    new-instance v1, Lcom/msec/net/URL;

    invoke-interface {v0}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/msec/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/msec/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Lcom/msec/MSecClient;->getClient(Ljava/lang/String;)Lcom/msec/MSecClient;

    move-result-object v2

    iput-object v2, p0, Lcom/msec/net/httpclient/HttpClientProxy$Interceptor;->mClient:Lcom/msec/MSecClient;

    .line 84
    iget-object v2, p0, Lcom/msec/net/httpclient/HttpClientProxy$Interceptor;->mClient:Lcom/msec/MSecClient;

    invoke-static {v2, p1}, Lcom/msec/net/httpclient/AbstractHttpClient;->encryptRequest(Lcom/msec/MSecClient;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v0    # "req":Lorg/apache/http/HttpRequest;
    .end local v1    # "url":Ljava/lang/String;
    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/msec/MLog;->loge(Ljava/lang/String;)V

    .line 88
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 1
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-static {}, Lcom/msec/net/httpclient/HttpClientProxy$Interceptor;->isInvokedFromWrapper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "HttpClientProxy.Interceptor.processResponse: from wrapper"

    invoke-static {v0}, Lcom/msec/MLog;->logd(Ljava/lang/String;)V

    .line 93
    return-void

    .line 95
    :cond_0
    const-string v0, "HttpClientProxy.Interceptor.processResponse: from interceptor"

    invoke-static {v0}, Lcom/msec/MLog;->logd(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/msec/net/httpclient/HttpClientProxy$Interceptor;->mClient:Lcom/msec/MSecClient;

    invoke-static {p1, v0}, Lcom/msec/net/httpclient/AbstractHttpClient;->handleResponse(Lorg/apache/http/HttpResponse;Lcom/msec/MSecClient;)Lorg/apache/http/HttpResponse;

    .line 97
    return-void
.end method
