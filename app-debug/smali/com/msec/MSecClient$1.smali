.class final Lcom/msec/MSecClient$1;
.super Ljava/lang/Object;
.source "MSecClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/msec/MSecClient;->initializeAllInOneStep(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$queue:Ljava/util/concurrent/SynchronousQueue;

.field final synthetic val$useNetLibMask:I


# direct methods
.method constructor <init>(ILandroid/content/Context;Ljava/util/concurrent/SynchronousQueue;)V
    .locals 0

    .line 181
    iput p1, p0, Lcom/msec/MSecClient$1;->val$useNetLibMask:I

    iput-object p2, p0, Lcom/msec/MSecClient$1;->val$ctx:Landroid/content/Context;

    iput-object p3, p0, Lcom/msec/MSecClient$1;->val$queue:Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 185
    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lcom/msec/MSecClient$1;->val$useNetLibMask:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 186
    invoke-static {}, Lcom/msec/net/TsUrlProxy;->init()V

    .line 188
    :cond_0
    iget v1, p0, Lcom/msec/MSecClient$1;->val$useNetLibMask:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    .line 189
    iget-object v1, p0, Lcom/msec/MSecClient$1;->val$ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/msec/net/httpclient/HttpClientProxy;->init(Landroid/content/Context;)V

    .line 191
    :cond_1
    iget v1, p0, Lcom/msec/MSecClient$1;->val$useNetLibMask:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 192
    iget-object v1, p0, Lcom/msec/MSecClient$1;->val$ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/msec/net/okhttp3/TsOkHttp3Proxy;->init(Landroid/content/Context;)V

    .line 194
    :cond_2
    iget v1, p0, Lcom/msec/MSecClient$1;->val$useNetLibMask:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 195
    iget-object v1, p0, Lcom/msec/MSecClient$1;->val$ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/msec/net/asynchttp/AsyncHttpClientProxy;->init(Landroid/content/Context;)V

    .line 197
    :cond_3
    iget v1, p0, Lcom/msec/MSecClient$1;->val$useNetLibMask:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 198
    iget-object v1, p0, Lcom/msec/MSecClient$1;->val$ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/msec/net/WebKit/WebViewProxy;->hookWebView(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/msec/MSecClient$1;->val$queue:Ljava/util/concurrent/SynchronousQueue;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/SynchronousQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 202
    :catchall_0
    move-exception v1

    .line 203
    :try_start_2
    iget-object v2, p0, Lcom/msec/MSecClient$1;->val$queue:Ljava/util/concurrent/SynchronousQueue;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/SynchronousQueue;->put(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 205
    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    :goto_0
    throw v1

    .line 200
    :catch_1
    move-exception v1

    .line 203
    :try_start_3
    iget-object v1, p0, Lcom/msec/MSecClient$1;->val$queue:Ljava/util/concurrent/SynchronousQueue;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/SynchronousQueue;->put(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 205
    :goto_1
    goto :goto_2

    .line 204
    :catch_2
    move-exception v0

    .line 206
    nop

    .line 207
    :goto_2
    return-void
.end method
