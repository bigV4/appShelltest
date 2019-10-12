.class Lcom/msec/net/WebKit/WebViewClient$tsWebResourceRequest;
.super Ljava/lang/Object;
.source "WebViewClient.java"

# interfaces
.implements Landroid/webkit/WebResourceRequest;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    api = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/msec/net/WebKit/WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "tsWebResourceRequest"
.end annotation


# instance fields
.field mRequest:Landroid/webkit/WebResourceRequest;

.field final synthetic this$0:Lcom/msec/net/WebKit/WebViewClient;


# direct methods
.method constructor <init>(Lcom/msec/net/WebKit/WebViewClient;Landroid/webkit/WebResourceRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/msec/net/WebKit/WebViewClient;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;

    .line 515
    iput-object p1, p0, Lcom/msec/net/WebKit/WebViewClient$tsWebResourceRequest;->this$0:Lcom/msec/net/WebKit/WebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    iput-object p2, p0, Lcom/msec/net/WebKit/WebViewClient$tsWebResourceRequest;->mRequest:Landroid/webkit/WebResourceRequest;

    .line 517
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient$tsWebResourceRequest;->mRequest:Landroid/webkit/WebResourceRequest;

    invoke-interface {v0}, Landroid/webkit/WebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 547
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient$tsWebResourceRequest;->mRequest:Landroid/webkit/WebResourceRequest;

    invoke-interface {v0}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Landroid/net/Uri;
    .locals 3

    .line 521
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient$tsWebResourceRequest;->this$0:Lcom/msec/net/WebKit/WebViewClient;

    iget-object v1, p0, Lcom/msec/net/WebKit/WebViewClient$tsWebResourceRequest;->this$0:Lcom/msec/net/WebKit/WebViewClient;

    iget-object v2, p0, Lcom/msec/net/WebKit/WebViewClient$tsWebResourceRequest;->mRequest:Landroid/webkit/WebResourceRequest;

    invoke-interface {v2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/msec/net/WebKit/WebViewClient;->access$000(Lcom/msec/net/WebKit/WebViewClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/msec/net/WebKit/WebViewClient;->access$100(Lcom/msec/net/WebKit/WebViewClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public hasGesture()Z
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient$tsWebResourceRequest;->mRequest:Landroid/webkit/WebResourceRequest;

    invoke-interface {v0}, Landroid/webkit/WebResourceRequest;->hasGesture()Z

    move-result v0

    return v0
.end method

.method public isForMainFrame()Z
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient$tsWebResourceRequest;->mRequest:Landroid/webkit/WebResourceRequest;

    invoke-interface {v0}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v0

    return v0
.end method

.method public isRedirect()Z
    .locals 1
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .line 532
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient$tsWebResourceRequest;->mRequest:Landroid/webkit/WebResourceRequest;

    invoke-interface {v0}, Landroid/webkit/WebResourceRequest;->isRedirect()Z

    move-result v0

    return v0
.end method
