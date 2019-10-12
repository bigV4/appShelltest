.class public Lcom/msec/TSInputStream;
.super Ljava/io/BufferedInputStream;
.source "TSInputStream.java"

# interfaces
.implements Lcom/msec/TSCacheStreamIntf;


# static fields
.field private static BLOCK_SIZE:I

.field private static OVERHEAD_SIZE:I


# instance fields
.field protected cache:Lcom/msec/TSCacheStream;

.field protected decryptedData:[B

.field protected decryptedDataOffset:I

.field protected mSecClient:Lcom/msec/MSecClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const/16 v0, 0x2000

    sput v0, Lcom/msec/TSInputStream;->BLOCK_SIZE:I

    .line 55
    const/16 v0, 0x2e

    sput v0, Lcom/msec/TSInputStream;->OVERHEAD_SIZE:I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/msec/MSecClient;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "client"    # Lcom/msec/MSecClient;

    .line 10
    invoke-direct {p0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 11
    new-instance v0, Lcom/msec/TSCacheStream;

    sget v1, Lcom/msec/TSInputStream;->BLOCK_SIZE:I

    sget v2, Lcom/msec/TSInputStream;->OVERHEAD_SIZE:I

    add-int/2addr v1, v2

    sget v2, Lcom/msec/TSInputStream;->BLOCK_SIZE:I

    invoke-direct {v0, v1, v2, p0}, Lcom/msec/TSCacheStream;-><init>(IILcom/msec/TSCacheStreamIntf;)V

    iput-object v0, p0, Lcom/msec/TSInputStream;->cache:Lcom/msec/TSCacheStream;

    .line 12
    iput-object p2, p0, Lcom/msec/TSInputStream;->mSecClient:Lcom/msec/MSecClient;

    .line 13
    return-void
.end method


# virtual methods
.method public convertData([B)[B
    .locals 1
    .param p1, "data"    # [B

    .line 20
    iget-object v0, p0, Lcom/msec/TSInputStream;->mSecClient:Lcom/msec/MSecClient;

    invoke-virtual {v0, p1}, Lcom/msec/MSecClient;->decryptResponseBody([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getData([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 31
    .local v1, "data":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/msec/TSInputStream;->read([BII)I

    move-result v3

    .line 32
    .local v3, "len":I
    if-ne v3, v0, :cond_0

    .line 33
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 35
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/msec/TSInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/msec/TSInputStream;->decryptedData:[B

    .line 44
    iput p2, p0, Lcom/msec/TSInputStream;->decryptedDataOffset:I

    .line 46
    iget-object v0, p0, Lcom/msec/TSInputStream;->cache:Lcom/msec/TSCacheStream;

    invoke-virtual {v0, p3}, Lcom/msec/TSCacheStream;->handle(I)I

    move-result v0

    return v0
.end method

.method public setData([BII)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/msec/TSInputStream;->decryptedData:[B

    iget v1, p0, Lcom/msec/TSInputStream;->decryptedDataOffset:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    iget v0, p0, Lcom/msec/TSInputStream;->decryptedDataOffset:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/msec/TSInputStream;->decryptedDataOffset:I

    .line 26
    return-void
.end method
