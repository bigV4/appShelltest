.class Lcom/msec/net/okhttp3/TSInterceptor$2;
.super Lokhttp3/ResponseBody;
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

.field final synthetic val$deInputStream:Ljava/io/InputStream;

.field final synthetic val$len:J

.field final synthetic val$mediaType:Lokhttp3/MediaType;


# direct methods
.method constructor <init>(Lcom/msec/net/okhttp3/TSInterceptor;Lokhttp3/MediaType;JLjava/io/InputStream;)V
    .locals 0
    .param p1, "this$0"    # Lcom/msec/net/okhttp3/TSInterceptor;

    .line 145
    iput-object p1, p0, Lcom/msec/net/okhttp3/TSInterceptor$2;->this$0:Lcom/msec/net/okhttp3/TSInterceptor;

    iput-object p2, p0, Lcom/msec/net/okhttp3/TSInterceptor$2;->val$mediaType:Lokhttp3/MediaType;

    iput-wide p3, p0, Lcom/msec/net/okhttp3/TSInterceptor$2;->val$len:J

    iput-object p5, p0, Lcom/msec/net/okhttp3/TSInterceptor$2;->val$deInputStream:Ljava/io/InputStream;

    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 8

    .line 153
    iget-wide v0, p0, Lcom/msec/net/okhttp3/TSInterceptor$2;->val$len:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 154
    const/16 v0, 0x202e

    .line 155
    .local v0, "encryptMB":I
    iget-wide v1, p0, Lcom/msec/net/okhttp3/TSInterceptor$2;->val$len:J

    int-to-long v3, v0

    div-long/2addr v1, v3

    .line 156
    .local v1, "mb":J
    iget-wide v3, p0, Lcom/msec/net/okhttp3/TSInterceptor$2;->val$len:J

    int-to-long v5, v0

    rem-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    .line 157
    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 159
    :cond_0
    iget-wide v3, p0, Lcom/msec/net/okhttp3/TSInterceptor$2;->val$len:J

    const-wide/16 v5, 0x2e

    mul-long v5, v5, v1

    sub-long/2addr v3, v5

    return-wide v3

    .line 161
    .end local v0    # "encryptMB":I
    .end local v1    # "mb":J
    :cond_1
    return-wide v2
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/msec/net/okhttp3/TSInterceptor$2;->val$mediaType:Lokhttp3/MediaType;

    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/msec/net/okhttp3/TSInterceptor$2;->val$deInputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    return-object v0
.end method
