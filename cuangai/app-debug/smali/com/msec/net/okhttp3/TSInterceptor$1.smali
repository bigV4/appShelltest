.class Lcom/msec/net/okhttp3/TSInterceptor$1;
.super Lokhttp3/RequestBody;
.source "TSInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/msec/net/okhttp3/TSInterceptor;->intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/msec/net/okhttp3/TSInterceptor;

.field final synthetic val$client:Lcom/msec/MSecClient;

.field final synthetic val$finalRequestBody:Lokhttp3/RequestBody;


# direct methods
.method constructor <init>(Lcom/msec/net/okhttp3/TSInterceptor;Lokhttp3/RequestBody;Lcom/msec/MSecClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/msec/net/okhttp3/TSInterceptor;

    .line 66
    iput-object p1, p0, Lcom/msec/net/okhttp3/TSInterceptor$1;->this$0:Lcom/msec/net/okhttp3/TSInterceptor;

    iput-object p2, p0, Lcom/msec/net/okhttp3/TSInterceptor$1;->val$finalRequestBody:Lokhttp3/RequestBody;

    iput-object p3, p0, Lcom/msec/net/okhttp3/TSInterceptor$1;->val$client:Lcom/msec/MSecClient;

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/msec/net/okhttp3/TSInterceptor$1;->val$finalRequestBody:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v0

    .line 75
    .local v0, "len":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 76
    const-wide/16 v2, 0x2000

    div-long v4, v0, v2

    .line 77
    .local v4, "mb":J
    rem-long v2, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-eqz v8, :cond_0

    .line 78
    const-wide/16 v2, 0x1

    add-long/2addr v4, v2

    .line 81
    :cond_0
    const-wide/16 v2, 0x2e

    mul-long v2, v2, v4

    add-long/2addr v2, v0

    return-wide v2

    .line 83
    .end local v4    # "mb":J
    :cond_1
    return-wide v2
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/msec/net/okhttp3/TSInterceptor$1;->val$finalRequestBody:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 3
    .param p1, "sink"    # Lokio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/msec/net/okhttp3/TSInterceptor$1;->val$client:Lcom/msec/MSecClient;

    invoke-interface {p1}, Lokio/BufferedSink;->outputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/msec/MSecClient;->encryptRequestBody(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 89
    .local v0, "out":Ljava/io/OutputStream;
    invoke-static {v0}, Lokio/Okio;->sink(Ljava/io/OutputStream;)Lokio/Sink;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v1

    .line 90
    .local v1, "encryptSink":Lokio/BufferedSink;
    iget-object v2, p0, Lcom/msec/net/okhttp3/TSInterceptor$1;->val$finalRequestBody:Lokhttp3/RequestBody;

    invoke-virtual {v2, v1}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 91
    invoke-interface {v1}, Lokio/BufferedSink;->close()V

    .line 92
    return-void
.end method
