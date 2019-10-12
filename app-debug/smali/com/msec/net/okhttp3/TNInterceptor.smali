.class public Lcom/msec/net/okhttp3/TNInterceptor;
.super Ljava/lang/Object;
.source "TNInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 7
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    sget v0, Lcom/msec/MLog;->LOG_CODE_WRAPPER_OKHTTP_WORK:I

    invoke-static {v0}, Lcom/msec/MLog;->printDetail(I)V

    .line 22
    move-object v0, p1

    check-cast v0, Lokhttp3/internal/http/RealInterceptorChain;

    .line 23
    .local v0, "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    invoke-virtual {v0}, Lokhttp3/internal/http/RealInterceptorChain;->request()Lokhttp3/Request;

    move-result-object v1

    .line 24
    .local v1, "request":Lokhttp3/Request;
    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->url()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/msec/MSecClient;->getClient(Ljava/lang/String;)Lcom/msec/MSecClient;

    move-result-object v2

    .line 25
    .local v2, "client":Lcom/msec/MSecClient;
    invoke-virtual {v2}, Lcom/msec/MSecClient;->getHeaderKey()Ljava/lang/String;

    move-result-object v3

    .line 26
    .local v3, "headerKey":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/msec/MSecClient;->getRequestHeader()Ljava/lang/String;

    move-result-object v4

    .line 27
    .local v4, "headerValue":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v5, ""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v4, :cond_0

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 28
    invoke-virtual {v1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 31
    :cond_0
    invoke-virtual {v0, v1}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v5

    .line 32
    .local v5, "response":Lokhttp3/Response;
    if-eqz v3, :cond_1

    const-string v6, ""

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 33
    invoke-virtual {v5, v3}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/msec/MSecClient;->onResponseHeader(Ljava/lang/String;)I

    .line 36
    :cond_1
    return-object v5
.end method
