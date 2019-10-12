.class interface abstract Lcom/msec/TSCacheStreamIntf;
.super Ljava/lang/Object;
.source "TSCacheStreamIntf.java"


# virtual methods
.method public abstract convertData([B)[B
.end method

.method public abstract getData([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setData([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
