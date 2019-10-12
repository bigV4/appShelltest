.class Lcom/msec/net/xutils/HttpUtils$2;
.super Ljava/lang/Object;
.source "HttpUtils.java"

# interfaces
.implements Lorg/apache/http/HttpResponseInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/msec/net/xutils/HttpUtils;-><init>(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/msec/net/xutils/HttpUtils;


# direct methods
.method constructor <init>(Lcom/msec/net/xutils/HttpUtils;)V
    .locals 0
    .param p1, "this$0"    # Lcom/msec/net/xutils/HttpUtils;

    .line 119
    iput-object p1, p0, Lcom/msec/net/xutils/HttpUtils$2;->this$0:Lcom/msec/net/xutils/HttpUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 8
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "httpContext"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 123
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-nez v0, :cond_0

    .line 124
    return-void

    .line 126
    :cond_0
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v1

    .line 127
    .local v1, "encoding":Lorg/apache/http/Header;
    if-eqz v1, :cond_2

    .line 128
    invoke-interface {v1}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 129
    .local v5, "element":Lorg/apache/http/HeaderElement;
    invoke-interface {v5}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "gzip"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 130
    new-instance v2, Lcom/lidroid/xutils/http/client/entity/GZipDecompressingEntity;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/lidroid/xutils/http/client/entity/GZipDecompressingEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 131
    return-void

    .line 128
    .end local v5    # "element":Lorg/apache/http/HeaderElement;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 135
    :cond_2
    return-void
.end method
