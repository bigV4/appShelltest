.class public Lcom/msec/net/asynchttp/SyncHttpClient;
.super Lcom/msec/net/asynchttp/AsyncHttpClient;
.source "SyncHttpClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/msec/net/asynchttp/AsyncHttpClient;-><init>()V

    return-void
.end method


# virtual methods
.method protected sendRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;
    .locals 2
    .param p1, "client"    # Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;
    .param p2, "httpContext"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .param p3, "uriRequest"    # Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "responseHandler"    # Lcom/loopj/android/http/ResponseHandlerInterface;
    .param p6, "context"    # Landroid/content/Context;

    .line 21
    if-eqz p4, :cond_0

    .line 22
    const-string v0, "Content-Type"

    invoke-interface {p3, v0, p4}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_0
    const/4 v0, 0x1

    invoke-interface {p5, v0}, Lcom/loopj/android/http/ResponseHandlerInterface;->setUseSynchronousMode(Z)V

    .line 30
    invoke-virtual/range {p0 .. p6}, Lcom/msec/net/asynchttp/SyncHttpClient;->newAsyncHttpRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/AsyncHttpRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loopj/android/http/AsyncHttpRequest;->run()V

    .line 34
    new-instance v0, Lcom/loopj/android/http/RequestHandle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/loopj/android/http/RequestHandle;-><init>(Lcom/loopj/android/http/AsyncHttpRequest;)V

    return-object v0
.end method
