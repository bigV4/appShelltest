.class Lcom/msec/SmartEscape;
.super Ljava/lang/Object;
.source "SmartEscape.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "input"    # Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 6
    .local v0, "in":[B
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 7
    .local v1, "out":[B
    const/4 v2, 0x0

    .line 9
    .local v2, "i":I
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v2

    const/4 v2, 0x0

    .end local v2    # "i":I
    .local v5, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-byte v6, v0, v2

    .line 10
    .local v6, "x":B
    const/16 v7, 0x28

    if-gt v7, v6, :cond_0

    const/16 v7, 0x7e

    if-gt v6, v7, :cond_0

    const/16 v7, 0x3a

    if-eq v6, v7, :cond_0

    const/16 v7, 0x5c

    if-eq v6, v7, :cond_0

    .line 11
    add-int/lit8 v7, v5, 0x1

    .local v7, "i":I
    aput-byte v6, v1, v5

    .line 9
    move v5, v7

    goto :goto_2

    .line 13
    .end local v7    # "i":I
    :cond_0
    add-int/lit8 v7, v5, 0x1

    .restart local v7    # "i":I
    and-int/lit16 v8, v6, 0xff

    shr-int/lit8 v8, v8, 0x6

    add-int/lit8 v8, v8, 0x23

    int-to-byte v8, v8

    aput-byte v8, v1, v5

    .line 14
    .end local v5    # "i":I
    and-int/lit8 v5, v6, 0x3f

    int-to-byte v5, v5

    .line 15
    .end local v6    # "x":B
    .local v5, "x":B
    const/16 v6, 0xc

    if-ge v5, v6, :cond_1

    .line 16
    add-int/lit8 v6, v7, 0x1

    .local v6, "i":I
    add-int/lit8 v8, v5, 0x2e

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    .line 9
    .end local v6    # "i":I
    .end local v7    # "i":I
    .local v5, "i":I
    :goto_1
    move v5, v6

    goto :goto_2

    .line 17
    .local v5, "x":B
    .restart local v7    # "i":I
    :cond_1
    const/16 v6, 0x26

    if-ge v5, v6, :cond_2

    .line 18
    add-int/lit8 v6, v7, 0x1

    .restart local v6    # "i":I
    add-int/lit8 v8, v5, 0x35

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    goto :goto_1

    .line 20
    .end local v6    # "i":I
    :cond_2
    add-int/lit8 v6, v7, 0x1

    .restart local v6    # "i":I
    add-int/lit8 v8, v5, 0x3b

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    goto :goto_1

    .line 9
    .end local v6    # "i":I
    .end local v7    # "i":I
    .local v5, "i":I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25
    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v4, v5}, Ljava/lang/String;-><init>([BII)V

    return-object v2
.end method
