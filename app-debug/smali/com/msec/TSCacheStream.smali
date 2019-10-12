.class Lcom/msec/TSCacheStream;
.super Ljava/lang/Object;
.source "TSCacheStream.java"


# instance fields
.field protected endOfStream:Z

.field protected volatile inData:[B

.field protected inDataOffset:I

.field private inSize:I

.field intf:Lcom/msec/TSCacheStreamIntf;

.field protected volatile outData:[B

.field protected outDataOffset:I

.field private outSize:I


# direct methods
.method public constructor <init>(IILcom/msec/TSCacheStreamIntf;)V
    .locals 2
    .param p1, "inSize"    # I
    .param p2, "outSize"    # I
    .param p3, "intf"    # Lcom/msec/TSCacheStreamIntf;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/msec/TSCacheStream;->endOfStream:Z

    .line 7
    iput p1, p0, Lcom/msec/TSCacheStream;->inSize:I

    .line 8
    iput p2, p0, Lcom/msec/TSCacheStream;->outSize:I

    .line 10
    iput-object p3, p0, Lcom/msec/TSCacheStream;->intf:Lcom/msec/TSCacheStreamIntf;

    .line 12
    new-array v1, p1, [B

    iput-object v1, p0, Lcom/msec/TSCacheStream;->inData:[B

    .line 13
    iput v0, p0, Lcom/msec/TSCacheStream;->inDataOffset:I

    .line 14
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/msec/TSCacheStream;->outData:[B

    .line 15
    iput p2, p0, Lcom/msec/TSCacheStream;->outDataOffset:I

    .line 16
    return-void
.end method


# virtual methods
.method protected fillBuffer()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 22
    .local v1, "ret":I
    :goto_0
    iget v2, p0, Lcom/msec/TSCacheStream;->inDataOffset:I

    iget v3, p0, Lcom/msec/TSCacheStream;->inSize:I

    if-ge v2, v3, :cond_3

    .line 23
    iget-boolean v2, p0, Lcom/msec/TSCacheStream;->endOfStream:Z

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    .line 24
    return v3

    .line 27
    :cond_0
    iget-object v2, p0, Lcom/msec/TSCacheStream;->intf:Lcom/msec/TSCacheStreamIntf;

    iget-object v4, p0, Lcom/msec/TSCacheStream;->inData:[B

    iget v5, p0, Lcom/msec/TSCacheStream;->inDataOffset:I

    iget v6, p0, Lcom/msec/TSCacheStream;->inSize:I

    iget v7, p0, Lcom/msec/TSCacheStream;->inDataOffset:I

    sub-int/2addr v6, v7

    invoke-interface {v2, v4, v5, v6}, Lcom/msec/TSCacheStreamIntf;->getData([BII)I

    move-result v1

    .line 28
    if-gtz v1, :cond_2

    .line 29
    if-ne v1, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/msec/TSCacheStream;->endOfStream:Z

    .line 30
    goto :goto_2

    .line 33
    :cond_2
    iget v2, p0, Lcom/msec/TSCacheStream;->inDataOffset:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/msec/TSCacheStream;->inDataOffset:I

    goto :goto_0

    .line 37
    :cond_3
    :goto_2
    if-eqz v1, :cond_5

    iget v2, p0, Lcom/msec/TSCacheStream;->inDataOffset:I

    if-lez v2, :cond_5

    .line 38
    iget v2, p0, Lcom/msec/TSCacheStream;->inDataOffset:I

    new-array v2, v2, [B

    .line 39
    .local v2, "inDataBytes":[B
    iget-object v3, p0, Lcom/msec/TSCacheStream;->inData:[B

    iget v4, p0, Lcom/msec/TSCacheStream;->inDataOffset:I

    invoke-static {v3, v0, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    iget-object v3, p0, Lcom/msec/TSCacheStream;->intf:Lcom/msec/TSCacheStreamIntf;

    invoke-interface {v3, v2}, Lcom/msec/TSCacheStreamIntf;->convertData([B)[B

    move-result-object v3

    iput-object v3, p0, Lcom/msec/TSCacheStream;->outData:[B

    .line 41
    iput v0, p0, Lcom/msec/TSCacheStream;->outDataOffset:I

    .line 42
    iget-object v0, p0, Lcom/msec/TSCacheStream;->outData:[B

    if-eqz v0, :cond_4

    .end local v2    # "inDataBytes":[B
    goto :goto_3

    .line 43
    .restart local v2    # "inDataBytes":[B
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Data Secure/Recover Failed!"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    .end local v2    # "inDataBytes":[B
    :cond_5
    :goto_3
    return v1
.end method

.method public handle(I)I
    .locals 8
    .param p1, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "totalByteCount":I
    const/4 v1, 0x0

    move v2, v0

    move v0, p1

    const/4 p1, 0x0

    .line 61
    .local v0, "byteCount":I
    .local v2, "totalByteCount":I
    .local p1, "ret":I
    :cond_0
    if-lez v0, :cond_3

    .line 62
    invoke-virtual {p0}, Lcom/msec/TSCacheStream;->fillBuffer()I

    move-result p1

    .line 63
    iget-object v3, p0, Lcom/msec/TSCacheStream;->outData:[B

    array-length v3, v3

    iget v4, p0, Lcom/msec/TSCacheStream;->outDataOffset:I

    sub-int/2addr v3, v4

    .line 64
    .local v3, "remainder":I
    if-le v3, v0, :cond_1

    move v4, v0

    goto :goto_0

    :cond_1
    move v4, v3

    .line 65
    .local v4, "byteCopy":I
    :goto_0
    if-lez v4, :cond_2

    .line 66
    iget-object v5, p0, Lcom/msec/TSCacheStream;->intf:Lcom/msec/TSCacheStreamIntf;

    iget-object v6, p0, Lcom/msec/TSCacheStream;->outData:[B

    iget v7, p0, Lcom/msec/TSCacheStream;->outDataOffset:I

    invoke-interface {v5, v6, v7, v4}, Lcom/msec/TSCacheStreamIntf;->setData([BII)V

    .line 67
    iget v5, p0, Lcom/msec/TSCacheStream;->outDataOffset:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/msec/TSCacheStream;->outDataOffset:I

    .line 68
    sub-int/2addr v0, v4

    .line 69
    add-int/2addr v2, v4

    .line 71
    iget v5, p0, Lcom/msec/TSCacheStream;->outDataOffset:I

    iget-object v6, p0, Lcom/msec/TSCacheStream;->outData:[B

    array-length v6, v6

    if-lt v5, v6, :cond_2

    .line 73
    iput v1, p0, Lcom/msec/TSCacheStream;->inDataOffset:I

    .line 77
    :cond_2
    if-gtz p1, :cond_0

    .line 78
    nop

    .line 82
    .end local v3    # "remainder":I
    .end local v4    # "byteCopy":I
    :cond_3
    if-gtz v2, :cond_4

    move v1, p1

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1
.end method
