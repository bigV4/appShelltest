.class public Lcom/msec/charsetdetect/UTF16LE;
.super Lcom/msec/charsetdetect/Detector;
.source "UTF16LE.java"


# instance fields
.field private firstByte:I

.field private processingSecondByte:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    const-string v0, "UTF-16LE"

    invoke-direct {p0, v0}, Lcom/msec/charsetdetect/Detector;-><init>(Ljava/lang/String;)V

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/msec/charsetdetect/UTF16LE;->processingSecondByte:Z

    .line 8
    iput v0, p0, Lcom/msec/charsetdetect/UTF16LE;->firstByte:I

    .line 12
    return-void
.end method

.method static isInvalid(II)Z
    .locals 4
    .param p0, "b0"    # I
    .param p1, "b1"    # I

    .line 53
    const/16 v0, 0x9f

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_11

    const/16 v0, 0xd7

    if-eq p1, v0, :cond_f

    const/16 v0, 0xfa

    if-eq p1, v0, :cond_d

    const/16 v0, 0xa0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 107
    return v2

    .line 103
    :pswitch_0
    const/16 v0, 0x20

    if-lt p0, v0, :cond_1

    const/16 v0, 0x64

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1

    .line 101
    :pswitch_1
    const/16 v0, 0x90

    if-lt p0, v0, :cond_4

    const/16 v0, 0x96

    if-le p0, v0, :cond_2

    const/16 v0, 0xf0

    if-lt p0, v0, :cond_4

    :cond_2
    const/16 v0, 0xf3

    if-le p0, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    nop

    :cond_4
    :goto_1
    return v1

    .line 97
    :pswitch_2
    const/16 v0, 0x30

    if-lt p0, v0, :cond_5

    const/16 v0, 0x70

    if-lt p0, v0, :cond_6

    :cond_5
    const/16 v0, 0xc0

    if-lt p0, v0, :cond_7

    :cond_6
    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    :goto_2
    return v1

    .line 95
    :pswitch_3
    const/16 v3, 0x93

    if-le p0, v3, :cond_8

    if-lt p0, v0, :cond_9

    :cond_8
    const/16 v0, 0xaa

    if-le p0, v0, :cond_a

    :cond_9
    goto :goto_3

    :cond_a
    const/4 v1, 0x0

    :goto_3
    return v1

    .line 93
    :pswitch_4
    const/16 v3, 0x40

    if-lt p0, v3, :cond_c

    if-lt p0, v0, :cond_b

    goto :goto_4

    :cond_b
    const/4 v1, 0x0

    nop

    :cond_c
    :goto_4
    return v1

    .line 91
    :pswitch_5
    return v1

    .line 105
    :cond_d
    const/16 v0, 0x6d

    if-le p0, v0, :cond_e

    goto :goto_5

    :cond_e
    const/4 v1, 0x0

    :goto_5
    return v1

    .line 99
    :cond_f
    const/16 v0, 0xa3

    if-le p0, v0, :cond_10

    goto :goto_6

    :cond_10
    const/4 v1, 0x0

    :goto_6
    return v1

    .line 55
    :cond_11
    const/16 v0, 0xd0

    if-lt p0, v0, :cond_12

    goto :goto_7

    :cond_12
    const/4 v1, 0x0

    :goto_7
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xa5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public finish()Z
    .locals 2

    .line 42
    iget-boolean v0, p0, Lcom/msec/charsetdetect/UTF16LE;->invalid:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 43
    return v1

    .line 45
    :cond_0
    iget-boolean v0, p0, Lcom/msec/charsetdetect/UTF16LE;->processingSecondByte:Z

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
    const/16 v0, 0xff

    if-ne p1, v0, :cond_0

    const/16 v0, 0xfe

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
    iget-boolean v0, p0, Lcom/msec/charsetdetect/UTF16LE;->invalid:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 22
    return v1

    .line 24
    :cond_0
    iget-boolean v0, p0, Lcom/msec/charsetdetect/UTF16LE;->processingSecondByte:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 25
    iget v0, p0, Lcom/msec/charsetdetect/UTF16LE;->firstByte:I

    invoke-static {v0, p1}, Lcom/msec/charsetdetect/UTF16LE;->isInvalid(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    iput-boolean v2, p0, Lcom/msec/charsetdetect/UTF16LE;->invalid:Z

    .line 27
    return v1

    .line 29
    :cond_1
    iput-boolean v1, p0, Lcom/msec/charsetdetect/UTF16LE;->processingSecondByte:Z

    .line 30
    if-nez p1, :cond_3

    iget v0, p0, Lcom/msec/charsetdetect/UTF16LE;->firstByte:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/msec/charsetdetect/UTF16LE;->firstByte:I

    const/16 v1, 0x7f

    if-ge v0, v1, :cond_3

    .line 31
    iget v0, p0, Lcom/msec/charsetdetect/UTF16LE;->utf16Possibility:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/msec/charsetdetect/UTF16LE;->utf16Possibility:I

    goto :goto_0

    .line 34
    :cond_2
    iput-boolean v2, p0, Lcom/msec/charsetdetect/UTF16LE;->processingSecondByte:Z

    .line 35
    iput p1, p0, Lcom/msec/charsetdetect/UTF16LE;->firstByte:I

    .line 37
    :cond_3
    :goto_0
    return v2
.end method
