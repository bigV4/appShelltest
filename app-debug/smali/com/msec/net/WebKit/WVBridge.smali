.class public Lcom/msec/net/WebKit/WVBridge;
.super Ljava/lang/Object;
.source "WVBridge.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nvdhiuherosdjf(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 18
    invoke-static {p1}, Lcom/msec/MSecClient;->getClient(Ljava/lang/String;)Lcom/msec/MSecClient;

    move-result-object v0

    .line 19
    .local v0, "client":Lcom/msec/MSecClient;
    invoke-virtual {v0}, Lcom/msec/MSecClient;->getHeaderKey()Ljava/lang/String;

    move-result-object v1

    .line 20
    .local v1, "headerKey":Ljava/lang/String;
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/msec/MSecClient;->getRequestHeader(I)Ljava/lang/String;

    move-result-object v2

    .line 21
    .local v2, "headerValue":Ljava/lang/String;
    const-string v3, ""

    .line 22
    .local v3, "token":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v2, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 25
    :cond_0
    return-object v3
.end method
