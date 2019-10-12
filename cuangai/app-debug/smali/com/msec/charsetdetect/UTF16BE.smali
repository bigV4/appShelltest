.class public Lcom/msec/charsetdetect/UTF16BE;
.super Lcom/msec/charsetdetect/Detector;
.source "UTF16BE.java"


# instance fields
.field private firstByte:I

.field private processingSecondByte:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    const-string v0, "UTF-16BE"

    invoke-direct {p0, v0}, Lcom/msec/charsetdetect/Detector;-><init>(Ljava/lang/String;)V

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/msec/charsetdetect/UTF16BE;->processingSecondByte:Z

    .line 8
    iput v0, p0, Lcom/msec/charsetdetect/UTF16BE;->firstByte:I

    .line 12
    return-void
.end method


# virtual methods
.method public finish()Z
    .locals 2

    .line 42
    iget-boolean v0, p0, Lcom/msec/charsetdetect/UTF16BE;->invalid:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 43
    return v1

    .line 45
    :cond_0
    iget-boolean v0, p0, Lcom/msec/charsetdetect/UTF16BE;->processingSecondByte:Z

    if-eqz v0, :cond_1

    .line 46
    return v1

    .line 49
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isValidBOM(III)Z
    .locals 1
    .param p1, "b0"    # I
    .param p2, "b1"    # I
    .param p3, "b2"    # I

    .line 16
    const/16 v0, 0xfe

    if-ne p1, v0, :cond_0

    const/16 v0, 0xff

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public update(I)Z
    .locals 3
    .param p1, "ch"    # I

    .line 21
    iget-boolean v0, p0, Lcom/msec/charsetdetect/UTF16BE;->invalid:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 22
    return v1

    .line 24
    :cond_0
    iget-boolean v0, p0, Lcom/msec/charsetdetect/UTF16BE;->processingSecondByte:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 25
    iget v0, p0, Lcom/msec/charsetdetect/UTF16BE;->firstByte:I

    invoke-static {p1, v0}, Lcom/msec/charsetdetect/UTF16LE;->isInvalid(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    iput-boolean v2, p0, Lcom/msec/charsetdetect/UTF16BE;->invalid:Z

    .line 27
    return v1

    .line 29
    :cond_1
    iput-boolean v1, p0, Lcom/msec/charsetdetect/UTF16BE;->processingSecondByte:Z

    .line 30
    iget v0, p0, Lcom/msec/charsetdetect/UTF16BE;->firstByte:I

    if-nez v0, :cond_3

    if-lez p1, :cond_3

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_3

    .line 31
    iget v0, p0, Lcom/msec/charsetdetect/UTF16BE;->utf16Possibility:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/msec/charsetdetect/UTF16BE;->utf16Possibility:I

    goto :goto_0

    .line 34
    :cond_2
    iput-boolean v2, p0, Lcom/msec/charsetdetect/UTF16BE;->processingSecondByte:Z

    .line 35
    iput p1, p0, Lcom/msec/charsetdetect/UTF16BE;->firstByte:I

    .line 37
    :cond_3
    :goto_0
    return v2
.end method
