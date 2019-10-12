.class public Lcom/msec/net/asynchttp/AsyncHttpClient;
.super Lcom/loopj/android/http/AsyncHttpClient;
.source "AsyncHttpClient.java"


# instance fields
.field clientHeaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private httpClient:Lcom/msec/net/asynchttp/PDefaultHttpClient;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 25
    const/4 v0, 0x0

    const/16 v1, 0x50

    const/16 v2, 0x1bb

    invoke-direct {p0, v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;-><init>(ZII)V

    .line 26
    invoke-direct {p0}, Lcom/msec/net/asynchttp/AsyncHttpClient;->setWrappedHttpClient()V

    .line 27
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "httpPort"    # I

    .line 30
    const/4 v0, 0x0

    const/16 v1, 0x1bb

    invoke-direct {p0, v0, p1, v1}, Lcom/loopj/android/http/AsyncHttpClient;-><init>(ZII)V

    .line 31
    invoke-direct {p0}, Lcom/msec/net/asynchttp/AsyncHttpClient;->setWrappedHttpClient()V

    .line 32
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "httpPort"    # I
    .param p2, "httpsPort"    # I

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/loopj/android/http/AsyncHttpClient;-><init>(ZII)V

    .line 36
    invoke-direct {p0}, Lcom/msec/net/asynchttp/AsyncHttpClient;->setWrappedHttpClient()V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V
    .locals 0
    .param p1, "schemeRegistry"    # Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    .line 45
    invoke-direct {p0, p1}, Lcom/loopj/android/http/AsyncHttpClient;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V

    .line 46
    invoke-direct {p0}, Lcom/msec/net/asynchttp/AsyncHttpClient;->setWrappedHttpClient()V

    .line 47
    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 0
    .param p1, "fixNoHttpResponseException"    # Z
    .param p2, "httpPort"    # I
    .param p3, "httpsPort"    # I

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpClient;-><init>(ZII)V

    .line 41
    invoke-direct {p0}, Lcom/msec/net/asynchttp/AsyncHttpClient;->setWrappedHttpClient()V

    .line 42
    return-void
.end method

.method private final setWrappedHttpClient()V
    .locals 5

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/msec/net/asynchttp/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    .line 57
    :try_start_0
    const-class v0, Lcom/loopj/android/http/AsyncHttpClient;

    const-string v1, "httpClient"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 58
    .local v0, "httpClientField":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    .line 60
    .local v1, "oldhttpClient":Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;
    new-instance v2, Lcom/msec/net/asynchttp/PDefaultHttpClient;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->getConnectionManager()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    move-result-object v3

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v4

    invoke-direct {v2, v3, v4, p0}, Lcom/msec/net/asynchttp/PDefaultHttpClient;-><init>(Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/params/HttpParams;Lcom/msec/net/asynchttp/AsyncHttpClient;)V

    .line 62
    .local v2, "newHttpClient":Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    new-instance v3, Lcom/msec/net/asynchttp/AsyncHttpClient$1;

    invoke-direct {v3, p0}, Lcom/msec/net/asynchttp/AsyncHttpClient$1;-><init>(Lcom/msec/net/asynchttp/AsyncHttpClient;)V

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->addRequestInterceptor(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 87
    .end local v0    # "httpClientField":Ljava/lang/reflect/Field;
    .end local v1    # "oldhttpClient":Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;
    .end local v2    # "newHttpClient":Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 83
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :goto_0
    nop

    .line 89
    return-void

    .line 87
    :goto_1
    throw v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/msec/net/asynchttp/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method protected sendRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;
    .locals 1
    .param p1, "client"    # Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;
    .param p2, "httpContext"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .param p3, "uriRequest"    # Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "responseHandler"    # Lcom/loopj/android/http/ResponseHandlerInterface;
    .param p6, "context"    # Landroid/content/Context;

    .line 92
    invoke-super/range {p0 .. p6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method
