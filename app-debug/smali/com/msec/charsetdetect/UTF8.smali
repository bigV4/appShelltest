.class public Lcom/msec/charsetdetect/UTF8;
.super Lcom/msec/charsetdetect/Detector;
.source "UTF8.java"


# instance fields
.field private bytePos:I

.field private bytes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    const-string v0, "UTF-8"

    invoke-direct {p0, v0}, Lcom/msec/charsetdetect/Detector;-><init>(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/msec/charsetdetect/UTF8;->bytePos:I

    .line 12
    iput v0, p0, Lcom/msec/charsetdetect/UTF8;->bytes:I

    .line 16
    return-void
.end method


# virtual methods
.method public finish()Z
    .locals 2

    .line 71
    iget-boolean v0, p0, Lcom/msec/charsetdetect/UTF8;->invalid:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 72
    return v1

    .line 74
    :cond_0
    iget v0, p0, Lcom/msec/charsetdetect/UTF8;->bytePos:I

    if-lez v0, :cond_1

    .line 75
    return v1

    .line 77
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isValidBOM(III)Z
    .locals 1
    .param p1, "b0"    # I
    .param p2, "b1"    # I
    .param p3, "b2"    # I

    .line 20
    const/16 v0, 0xef

    if-ne p1, v0, :cond_0

    const/16 v0, 0xbb

    if-ne p2, v0, :cond_0

    const/16 v0, 0xbf

    if-ne p3, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public update(I)Z
    .locals 4
    .param p1, "ch"    # I

    .line 25
    iget-boolean v0, p0, Lcom/msec/charsetdetect/UTF8;->invalid:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 26
    return v1

    .line 28
    :cond_0
    iget v0, p0, Lcom/msec/charsetdetect/UTF8;->bytePos:I

    const/16 v2, 0x80

    const/4 v3, 0x1

    if-nez v0, :cond_6

    .line 29
    if-ge p1, v2, :cond_1

    .line 31
    return v3

    .line 33
    :cond_1
    and-int/lit16 v0, p1, 0xe0

    const/16 v2, 0xc0

    if-ne v0, v2, :cond_3

    .line 35
    and-int/lit8 v0, p1, 0x1f

    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    .line 36
    iput-boolean v3, p0, Lcom/msec/charsetdetect/UTF8;->invalid:Z

    .line 37
    return v1

    .line 39
    :cond_2
    iput v2, p0, Lcom/msec/charsetdetect/UTF8;->bytes:I

    .line 40
    iput v3, p0, Lcom/msec/charsetdetect/UTF8;->bytePos:I

    goto :goto_0

    .line 41
    :cond_3
    and-int/lit16 v0, p1, 0xf0

    const/16 v2, 0xe0

    if-ne v0, v2, :cond_4

    .line 43
    const/4 v0, 0x3

    iput v0, p0, Lcom/msec/charsetdetect/UTF8;->bytes:I

    .line 44
    iput v3, p0, Lcom/msec/charsetdetect/UTF8;->bytePos:I

    goto :goto_0

    .line 45
    :cond_4
    and-int/lit16 v0, p1, 0xf8

    const/16 v2, 0xf0

    if-ne v0, v2, :cond_5

    .line 47
    const/4 v0, 0x4

    iput v0, p0, Lcom/msec/charsetdetect/UTF8;->bytes:I

    .line 48
    iput v3, p0, Lcom/msec/charsetdetect/UTF8;->bytePos:I

    goto :goto_0

    .line 50
    :cond_5
    iput-boolean v3, p0, Lcom/msec/charsetdetect/UTF8;->invalid:Z

    .line 51
    return v1

    .line 55
    :cond_6
    and-int/lit16 v0, p1, 0xc0

    if-ne v0, v2, :cond_8

    .line 56
    iget v0, p0, Lcom/msec/charsetdetect/UTF8;->bytePos:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/msec/charsetdetect/UTF8;->bytePos:I

    .line 57
    iget v0, p0, Lcom/msec/charsetdetect/UTF8;->bytePos:I

    iget v2, p0, Lcom/msec/charsetdetect/UTF8;->bytes:I

    if-ne v0, v2, :cond_7

    .line 58
    iput v1, p0, Lcom/msec/charsetdetect/UTF8;->bytePos:I

    .line 66
    :cond_7
    :goto_0
    return v3

    .line 61
    :cond_8
    iput-boolean v3, p0, Lcom/msec/charsetdetect/UTF8;->invalid:Z

    .line 62
    return v1
.end method
