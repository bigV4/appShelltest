.class public Lcom/msec/charsetdetect/BIG5;
.super Lcom/msec/charsetdetect/Detector;
.source "BIG5.java"


# instance fields
.field private firstByte:I

.field private processingSecondByte:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    const-string v0, "BIG5"

    invoke-direct {p0, v0}, Lcom/msec/charsetdetect/Detector;-><init>(Ljava/lang/String;)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/msec/charsetdetect/BIG5;->processingSecondByte:Z

    .line 11
    iput v0, p0, Lcom/msec/charsetdetect/BIG5;->firstByte:I

    .line 15
    return-void
.end method

.method private isInvalid(II)Z
    .locals 3
    .param p1, "b0"    # I
    .param p2, "b1"    # I

    .line 60
    const/4 v0, 0x1

    const/16 v1, 0xa1

    if-ge p1, v1, :cond_0

    .line 61
    return v0

    .line 63
    :cond_0
    const/16 v1, 0xc7

    if-eq p1, v1, :cond_6

    const/16 v1, 0xc8

    if-eq p1, v1, :cond_6

    const/16 v1, 0xfa

    if-lt p1, v1, :cond_1

    goto :goto_2

    .line 66
    :cond_1
    const/16 v1, 0xa3

    const/4 v2, 0x0

    if-eq p1, v1, :cond_4

    const/16 v1, 0xc6

    if-eq p1, v1, :cond_2

    .line 72
    return v2

    .line 70
    :cond_2
    const/16 v1, 0xa0

    if-le p2, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 68
    :cond_4
    const/16 v1, 0xc0

    if-lt p2, v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 64
    :cond_6
    :goto_2
    return v0
.end method


# virtual methods
.method public finish()Z
    .locals 2

    .line 50
    iget-boolean v0, p0, Lcom/msec/charsetdetect/BIG5;->invalid:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 51
    return v1

    .line 53
    :cond_0
    iget-boolean v0, p0, Lcom/msec/charsetdetect/BIG5;->processingSecondByte:Z

    if-eqz v0, :cond_1

    .line 54
    return v1

    .line 56
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public update(I)Z
    .locals 4
    .param p1, "ch"    # I

    .line 19
    iget-boolean v0, p0, Lcom/msec/charsetdetect/BIG5;->invalid:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 20
    return v1

    .line 23
    :cond_0
    iget-boolean v0, p0, Lcom/msec/charsetdetect/BIG5;->processingSecondByte:Z

    const/16 v2, 0xfe

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    .line 24
    const/16 v0, 0x40

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7e

    if-le p1, v0, :cond_2

    :cond_1
    const/16 v0, 0xa1

    if-lt p1, v0, :cond_4

    if-gt p1, v2, :cond_4

    .line 25
    :cond_2
    iget v0, p0, Lcom/msec/charsetdetect/BIG5;->firstByte:I

    invoke-direct {p0, v0, p1}, Lcom/msec/charsetdetect/BIG5;->isInvalid(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26
    iput-boolean v3, p0, Lcom/msec/charsetdetect/BIG5;->invalid:Z

    .line 27
    return v1

    .line 29
    :cond_3
    iput-boolean v1, p0, Lcom/msec/charsetdetect/BIG5;->processingSecondByte:Z

    .line 30
    return v3

    .line 32
    :cond_4
    iput-boolean v3, p0, Lcom/msec/charsetdetect/BIG5;->invalid:Z

    .line 33
    return v1

    .line 36
    :cond_5
    const/16 v0, 0x80

    if-ge p1, v0, :cond_6

    .line 37
    return v3

    .line 39
    :cond_6
    const/16 v0, 0x81

    if-lt p1, v0, :cond_7

    if-gt p1, v2, :cond_7

    .line 40
    iput-boolean v3, p0, Lcom/msec/charsetdetect/BIG5;->processingSecondByte:Z

    .line 41
    iput p1, p0, Lcom/msec/charsetdetect/BIG5;->firstByte:I

    .line 42
    return v3

    .line 44
    :cond_7
    iput-boolean v3, p0, Lcom/msec/charsetdetect/BIG5;->invalid:Z

    .line 45
    return v1
.end method
