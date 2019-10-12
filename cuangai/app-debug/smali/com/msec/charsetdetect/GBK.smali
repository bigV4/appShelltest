.class public Lcom/msec/charsetdetect/GBK;
.super Lcom/msec/charsetdetect/Detector;
.source "GBK.java"


# instance fields
.field private firstByte:I

.field private processingSecondByte:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    const-string v0, "GBK"

    invoke-direct {p0, v0}, Lcom/msec/charsetdetect/Detector;-><init>(Ljava/lang/String;)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/msec/charsetdetect/GBK;->processingSecondByte:Z

    .line 11
    iput v0, p0, Lcom/msec/charsetdetect/GBK;->firstByte:I

    .line 15
    return-void
.end method

.method private isInvalid(II)Z
    .locals 6
    .param p1, "b0"    # I
    .param p2, "b1"    # I

    .line 60
    const/16 v0, 0xd7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_18

    const/16 v0, 0xef

    const/16 v3, 0xc1

    const/16 v4, 0xa0

    const/16 v5, 0xa1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 99
    return v2

    .line 94
    :pswitch_0
    if-le p2, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 79
    :pswitch_1
    const/16 v3, 0x58

    if-eq p2, v3, :cond_4

    const/16 v3, 0x5b

    if-eq p2, v3, :cond_4

    const/16 v3, 0x5c

    if-le p2, v3, :cond_1

    const/16 v3, 0x60

    if-lt p2, v3, :cond_4

    :cond_1
    const/16 v3, 0x96

    if-le p2, v3, :cond_2

    const/16 v3, 0xa4

    if-lt p2, v3, :cond_4

    :cond_2
    if-le p2, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    nop

    :cond_4
    :goto_1
    return v1

    .line 77
    :pswitch_2
    const/16 v0, 0x95

    if-le p2, v0, :cond_5

    if-lt p2, v5, :cond_7

    :cond_5
    const/16 v0, 0xc0

    if-le p2, v0, :cond_6

    const/16 v0, 0xc5

    if-lt p2, v0, :cond_7

    :cond_6
    const/16 v0, 0xe9

    if-le p2, v0, :cond_8

    :cond_7
    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    :goto_2
    return v1

    .line 75
    :pswitch_3
    if-lt p2, v5, :cond_b

    if-le p2, v3, :cond_9

    const/16 v0, 0xd1

    if-lt p2, v0, :cond_b

    :cond_9
    const/16 v0, 0xf2

    if-le p2, v0, :cond_a

    goto :goto_3

    :cond_a
    const/4 v1, 0x0

    nop

    :cond_b
    :goto_3
    return v1

    .line 73
    :pswitch_4
    if-lt p2, v5, :cond_e

    const/16 v0, 0xb8

    if-le p2, v0, :cond_c

    if-lt p2, v3, :cond_e

    :cond_c
    const/16 v0, 0xf5

    if-le p2, v0, :cond_d

    goto :goto_4

    :cond_d
    const/4 v1, 0x0

    nop

    :cond_e
    :goto_4
    return v1

    .line 71
    :pswitch_5
    if-lt p2, v5, :cond_10

    const/16 v0, 0xf6

    if-le p2, v0, :cond_f

    goto :goto_5

    :cond_f
    const/4 v1, 0x0

    nop

    :cond_10
    :goto_5
    return v1

    .line 69
    :pswitch_6
    if-lt p2, v5, :cond_12

    const/16 v0, 0xf3

    if-le p2, v0, :cond_11

    goto :goto_6

    :cond_11
    const/4 v1, 0x0

    nop

    :cond_12
    :goto_6
    return v1

    .line 67
    :pswitch_7
    if-ge p2, v4, :cond_13

    goto :goto_7

    :cond_13
    const/4 v1, 0x0

    :goto_7
    return v1

    .line 64
    :pswitch_8
    if-lt p2, v5, :cond_16

    const/16 v3, 0xaa

    if-le p2, v3, :cond_14

    const/16 v3, 0xb1

    if-lt p2, v3, :cond_16

    :cond_14
    const/16 v3, 0xe4

    if-eq p2, v3, :cond_16

    if-eq p2, v0, :cond_16

    const/16 v0, 0xf0

    if-eq p2, v0, :cond_16

    const/16 v0, 0xfd

    if-eq p2, v0, :cond_16

    const/16 v0, 0xfe

    if-ne p2, v0, :cond_15

    goto :goto_8

    :cond_15
    const/4 v1, 0x0

    nop

    :cond_16
    :goto_8
    return v1

    .line 62
    :pswitch_9
    if-ge p2, v5, :cond_17

    goto :goto_9

    :cond_17
    const/4 v1, 0x0

    :goto_9
    return v1

    .line 96
    :cond_18
    const/16 v0, 0xf9

    if-le p2, v0, :cond_19

    goto :goto_a

    :cond_19
    const/4 v1, 0x0

    :goto_a
    return v1

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public finish()Z
    .locals 2

    .line 50
    iget-boolean v0, p0, Lcom/msec/charsetdetect/GBK;->invalid:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 51
    return v1

    .line 53
    :cond_0
    iget-boolean v0, p0, Lcom/msec/charsetdetect/GBK;->processingSecondByte:Z

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
    iget-boolean v0, p0, Lcom/msec/charsetdetect/GBK;->invalid:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 20
    return v1

    .line 23
    :cond_0
    iget-boolean v0, p0, Lcom/msec/charsetdetect/GBK;->processingSecondByte:Z

    const/16 v2, 0xfe

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 24
    const/16 v0, 0x40

    if-lt p1, v0, :cond_2

    if-gt p1, v2, :cond_2

    const/16 v0, 0x7f

    if-eq p1, v0, :cond_2

    .line 25
    iget v0, p0, Lcom/msec/charsetdetect/GBK;->firstByte:I

    invoke-direct {p0, v0, p1}, Lcom/msec/charsetdetect/GBK;->isInvalid(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    iput-boolean v3, p0, Lcom/msec/charsetdetect/GBK;->invalid:Z

    .line 27
    return v1

    .line 29
    :cond_1
    iput-boolean v1, p0, Lcom/msec/charsetdetect/GBK;->processingSecondByte:Z

    .line 30
    return v3

    .line 32
    :cond_2
    iput-boolean v3, p0, Lcom/msec/charsetdetect/GBK;->invalid:Z

    .line 33
    return v1

    .line 36
    :cond_3
    const/16 v0, 0x80

    if-ge p1, v0, :cond_4

    .line 37
    return v3

    .line 39
    :cond_4
    const/16 v0, 0x81

    if-lt p1, v0, :cond_5

    if-gt p1, v2, :cond_5

    .line 40
    iput-boolean v3, p0, Lcom/msec/charsetdetect/GBK;->processingSecondByte:Z

    .line 41
    iput p1, p0, Lcom/msec/charsetdetect/GBK;->firstByte:I

    .line 42
    return v3

    .line 44
    :cond_5
    iput-boolean v3, p0, Lcom/msec/charsetdetect/GBK;->invalid:Z

    .line 45
    return v1
.end method
