.class Lcom/msec/net/asynchttp/AsyncHttpClient$1;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/msec/net/asynchttp/AsyncHttpClient;->setWrappedHttpClient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/msec/net/asynchttp/AsyncHttpClient;


# direct methods
.method constructor <init>(Lcom/msec/net/asynchttp/AsyncHttpClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/msec/net/asynchttp/AsyncHttpClient;

    .line 64
    iput-object p1, p0, Lcom/msec/net/asynchttp/AsyncHttpClient$1;->this$0:Lcom/msec/net/asynchttp/AsyncHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 3
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p2, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 67
    iget-object v0, p0, Lcom/msec/net/asynchttp/AsyncHttpClient$1;->this$0:Lcom/msec/net/asynchttp/AsyncHttpClient;

    iget-object v0, v0, Lcom/msec/net/asynchttp/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 68
    .local v1, "header":Ljava/lang/String;
    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v2

    .line 71
    .local v2, "overwritten":Lcz/msebera/android/httpclient/Header;
    invoke-interface {p1, v2}, Lcz/msebera/android/httpclient/HttpRequest;->removeHeader(Lcz/msebera/android/httpclient/Header;)V

    .line 73
    .end local v2    # "overwritten":Lcz/msebera/android/httpclient/Header;
    :cond_0
    iget-object v2, p0, Lcom/msec/net/asynchttp/AsyncHttpClient$1;->this$0:Lcom/msec/net/asynchttp/AsyncHttpClient;

    iget-object v2, v2, Lcom/msec/net/asynchttp/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lcz/msebera/android/httpclient/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .end local v1    # "header":Ljava/lang/String;
    goto :goto_0

    .line 75
    :cond_1
    return-void
.end method
