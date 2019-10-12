.class Lcom/msec/net/asynchttp/TSEntity;
.super Ljava/lang/Object;
.source "TSEntity.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpEntity;


# instance fields
.field private mClient:Lcom/msec/MSecClient;

.field private mEntity:Lcz/msebera/android/httpclient/HttpEntity;


# direct methods
.method constructor <init>(Lcom/msec/MSecClient;Lcz/msebera/android/httpclient/HttpEntity;)V
    .locals 0
    .param p1, "client"    # Lcom/msec/MSecClient;
    .param p2, "entity"    # Lcz/msebera/android/httpclient/HttpEntity;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/msec/net/asynchttp/TSEntity;->mClient:Lcom/msec/MSecClient;

    .line 24
    iput-object p2, p0, Lcom/msec/net/asynchttp/TSEntity;->mEntity:Lcz/msebera/android/httpclient/HttpEntity;

    .line 25
    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/msec/net/asynchttp/TSEntity;->mEntity:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->consumeContent()V

    .line 74
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/msec/net/asynchttp/TSEntity;->mEntity:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Lcz/msebera/android/httpclient/Header;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/msec/net/asynchttp/TSEntity;->mEntity:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentEncoding()Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .locals 9

    .line 36
    iget-object v0, p0, Lcom/msec/net/asynchttp/TSEntity;->mEntity:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v0

    .line 37
    .local v0, "len":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 38
    const-wide/16 v4, 0x2000

    div-long v6, v0, v4

    .line 39
    .local v6, "mb":J
    rem-long v4, v0, v4

    cmp-long v8, v4, v2

    if-eqz v8, :cond_0

    .line 40
    const-wide/16 v2, 0x1

    add-long/2addr v6, v2

    .line 43
    :cond_0
    const-wide/16 v2, 0x2e

    mul-long v2, v2, v6

    add-long/2addr v2, v0

    return-wide v2

    .line 45
    .end local v6    # "mb":J
    :cond_1
    return-wide v0
.end method

.method public getContentType()Lcz/msebera/android/httpclient/Header;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/msec/net/asynchttp/TSEntity;->mEntity:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentType()Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/msec/net/asynchttp/TSEntity;->mEntity:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->isChunked()Z

    move-result v0

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/msec/net/asynchttp/TSEntity;->mEntity:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->isRepeatable()Z

    move-result v0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/msec/net/asynchttp/TSEntity;->mEntity:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->isStreaming()Z

    move-result v0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/msec/net/asynchttp/TSEntity;->mClient:Lcom/msec/MSecClient;

    invoke-virtual {v0, p1}, Lcom/msec/MSecClient;->encryptRequestBody(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 62
    .local v0, "secOut":Ljava/io/OutputStream;
    iget-object v1, p0, Lcom/msec/net/asynchttp/TSEntity;->mEntity:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v1, v0}, Lcz/msebera/android/httpclient/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 63
    instance-of v1, v0, Lcom/msec/TSOutputStream;

    if-eqz v1, :cond_0

    .line 64
    move-object v1, v0

    check-cast v1, Lcom/msec/TSOutputStream;

    invoke-virtual {v1}, Lcom/msec/TSOutputStream;->endOfStream()V

    .line 66
    :cond_0
    return-void
.end method
