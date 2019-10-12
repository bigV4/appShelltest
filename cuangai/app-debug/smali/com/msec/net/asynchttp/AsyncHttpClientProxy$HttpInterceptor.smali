.class Lcom/msec/net/asynchttp/AsyncHttpClientProxy$HttpInterceptor;
.super Ljava/lang/Object;
.source "AsyncHttpClientProxy.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpRequestInterceptor;
.implements Lcz/msebera/android/httpclient/HttpResponseInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/msec/net/asynchttp/AsyncHttpClientProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HttpInterceptor"
.end annotation


# instance fields
.field private mClient:Lcom/msec/MSecClient;

.field private mHeaderKey:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/msec/net/asynchttp/AsyncHttpClientProxy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/msec/net/asynchttp/AsyncHttpClientProxy$1;

    .line 102
    invoke-direct {p0}, Lcom/msec/net/asynchttp/AsyncHttpClientProxy$HttpInterceptor;-><init>()V

    return-void
.end method

.method private static isInvokedFromWrapper()Z
    .locals 8

    .line 137
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 139
    .local v1, "elements":[Ljava/lang/StackTraceElement;
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 140
    .local v5, "element":Ljava/lang/StackTraceElement;
    const-class v6, Lcom/msec/net/asynchttp/PDefaultHttpClient;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 141
    const/4 v2, 0x1

    return v2

    .line 139
    .end local v5    # "element":Ljava/lang/StackTraceElement;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 144
    :cond_1
    return v3
.end method


# virtual methods
.method public process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 3
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p2, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-static {}, Lcom/msec/net/asynchttp/AsyncHttpClientProxy$HttpInterceptor;->isInvokedFromWrapper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const-string v0, "AsyncHttpClientProxy.HttpInterceptor.process request from wrapper"

    invoke-static {v0}, Lcom/msec/MLog;->logd(Ljava/lang/String;)V

    .line 110
    return-void

    .line 112
    :cond_0
    const-string v0, "AsyncHttpClientProxy.HttpInterceptor.process request from interceptor"

    invoke-static {v0}, Lcom/msec/MLog;->logd(Ljava/lang/String;)V

    .line 113
    sget v0, Lcom/msec/MLog;->LOG_CODE_WRAPPER_ASY_CLIENT_WORK:I

    invoke-static {v0}, Lcom/msec/MLog;->printDetail(I)V

    .line 114
    iget-object v0, p0, Lcom/msec/net/asynchttp/AsyncHttpClientProxy$HttpInterceptor;->mClient:Lcom/msec/MSecClient;

    if-nez v0, :cond_1

    .line 116
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->getOriginal()Lcz/msebera/android/httpclient/HttpRequest;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "uri":Ljava/lang/String;
    new-instance v1, Lcom/msec/net/URL;

    invoke-direct {v1, v0}, Lcom/msec/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/msec/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/msec/MSecClient;->getClient(Ljava/lang/String;)Lcom/msec/MSecClient;

    move-result-object v1

    iput-object v1, p0, Lcom/msec/net/asynchttp/AsyncHttpClientProxy$HttpInterceptor;->mClient:Lcom/msec/MSecClient;

    .line 118
    move-object v1, p1

    check-cast v1, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    iget-object v2, p0, Lcom/msec/net/asynchttp/AsyncHttpClientProxy$HttpInterceptor;->mClient:Lcom/msec/MSecClient;

    invoke-static {v1, v2}, Lcom/msec/net/asynchttp/PDefaultHttpClient;->encryptRequest(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Lcom/msec/MSecClient;)Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v0    # "uri":Ljava/lang/String;
    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/msec/MLog;->loge(Ljava/lang/String;)V

    .line 123
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public process(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 1
    .param p1, "response"    # Lcz/msebera/android/httpclient/HttpResponse;
    .param p2, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    invoke-static {}, Lcom/msec/net/asynchttp/AsyncHttpClientProxy$HttpInterceptor;->isInvokedFromWrapper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const-string v0, "AsyncHttpClientProxy.HttpInterceptor.process response from wrapper"

    invoke-static {v0}, Lcom/msec/MLog;->logd(Ljava/lang/String;)V

    .line 129
    return-void

    .line 131
    :cond_0
    const-string v0, "AsyncHttpClientProxy.HttpInterceptor.process response from interceptor"

    invoke-static {v0}, Lcom/msec/MLog;->logd(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/msec/net/asynchttp/AsyncHttpClientProxy$HttpInterceptor;->mClient:Lcom/msec/MSecClient;

    invoke-static {p1, v0}, Lcom/msec/net/asynchttp/PDefaultHttpClient;->handleResponse(Lcz/msebera/android/httpclient/HttpResponse;Lcom/msec/MSecClient;)Lcz/msebera/android/httpclient/HttpResponse;

    .line 134
    return-void
.end method
