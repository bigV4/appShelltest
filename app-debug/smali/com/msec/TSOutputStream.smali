.class public Lcom/msec/TSOutputStream;
.super Ljava/io/BufferedOutputStream;
.source "TSOutputStream.java"

# interfaces
.implements Lcom/msec/TSCacheStreamIntf;


# static fields
.field private static BLOCK_SIZE:I

.field private static OVERHEAD_SIZE:I


# instance fields
.field protected cache:Lcom/msec/TSCacheStream;

.field protected isLast:Z

.field private mClient:Lcom/msec/MSecClient;

.field private originalStream:Ljava/io/OutputStream;

.field protected rawData:[B

.field protected rawDataLength:I

.field protected rawDataOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 91
    const/16 v0, 0x2000

    sput v0, Lcom/msec/TSOutputStream;->BLOCK_SIZE:I

    .line 92
    const/16 v0, 0x2e

    sput v0, Lcom/msec/TSOutputStream;->OVERHEAD_SIZE:I

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lcom/msec/MSecClient;)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "client"    # Lcom/msec/MSecClient;

    .line 31
    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 32
    iput-object p1, p0, Lcom/msec/TSOutputStream;->originalStream:Ljava/io/OutputStream;

    .line 33
    iput-object p2, p0, Lcom/msec/TSOutputStream;->mClient:Lcom/msec/MSecClient;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/msec/TSOutputStream;->isLast:Z

    .line 35
    new-instance v0, Lcom/msec/TSCacheStream;

    sget v1, Lcom/msec/TSOutputStream;->BLOCK_SIZE:I

    sget v2, Lcom/msec/TSOutputStream;->BLOCK_SIZE:I

    sget v3, Lcom/msec/TSOutputStream;->OVERHEAD_SIZE:I

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2, p0}, Lcom/msec/TSCacheStream;-><init>(IILcom/msec/TSCacheStreamIntf;)V

    iput-object v0, p0, Lcom/msec/TSOutputStream;->cache:Lcom/msec/TSCacheStream;

    .line 36
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lcom/msec/TSOutputStream;->endOfStream()V

    .line 66
    invoke-super {p0}, Ljava/io/BufferedOutputStream;->close()V

    .line 67
    return-void
.end method

.method public convertData([B)[B
    .locals 1
    .param p1, "data"    # [B

    .line 56
    iget-object v0, p0, Lcom/msec/TSOutputStream;->mClient:Lcom/msec/MSecClient;

    invoke-virtual {v0, p1}, Lcom/msec/MSecClient;->encryptRequestBody([B)[B

    move-result-object v0

    return-object v0
.end method

.method public endOfStream()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/msec/TSOutputStream;->isLast:Z

    .line 18
    iget-object v0, p0, Lcom/msec/TSOutputStream;->cache:Lcom/msec/TSCacheStream;

    sget v1, Lcom/msec/TSOutputStream;->BLOCK_SIZE:I

    sget v2, Lcom/msec/TSOutputStream;->OVERHEAD_SIZE:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/msec/TSCacheStream;->handle(I)I

    .line 19
    invoke-super {p0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 20
    return-void
.end method

.method public getData([BII)I
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget-boolean v0, p0, Lcom/msec/TSOutputStream;->isLast:Z

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, -0x1

    return v0

    .line 43
    :cond_0
    iget v0, p0, Lcom/msec/TSOutputStream;->rawDataLength:I

    if-gtz v0, :cond_1

    .line 44
    const/4 v0, 0x0

    return v0

    .line 47
    :cond_1
    iget v0, p0, Lcom/msec/TSOutputStream;->rawDataLength:I

    if-le p3, v0, :cond_2

    iget v0, p0, Lcom/msec/TSOutputStream;->rawDataLength:I

    goto :goto_0

    :cond_2
    move v0, p3

    .line 48
    .local v0, "byteCopy":I
    :goto_0
    iget-object v1, p0, Lcom/msec/TSOutputStream;->rawData:[B

    iget v2, p0, Lcom/msec/TSOutputStream;->rawDataOffset:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    iget v1, p0, Lcom/msec/TSOutputStream;->rawDataLength:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/msec/TSOutputStream;->rawDataLength:I

    .line 50
    iget v1, p0, Lcom/msec/TSOutputStream;->rawDataOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/msec/TSOutputStream;->rawDataOffset:I

    .line 52
    return v0
.end method

.method public getOriginalStream()Ljava/io/OutputStream;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/msec/TSOutputStream;->originalStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public setData([BII)V
    .locals 0
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 61
    return-void
.end method

.method public write(I)V
    .locals 4
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 82
    .local v1, "data":[B
    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 83
    invoke-virtual {p0, v1, v3, v0}, Lcom/msec/TSOutputStream;->write([BII)V

    .line 84
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/msec/TSOutputStream;->write([BII)V

    .line 89
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/msec/TSOutputStream;->rawData:[B

    .line 73
    iput p2, p0, Lcom/msec/TSOutputStream;->rawDataOffset:I

    .line 74
    iput p3, p0, Lcom/msec/TSOutputStream;->rawDataLength:I

    .line 76
    iget-object v0, p0, Lcom/msec/TSOutputStream;->cache:Lcom/msec/TSCacheStream;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/msec/TSCacheStream;->handle(I)I

    .line 77
    return-void
.end method
