.class public Lcom/msec/charsetdetect/CharsetDetect;
.super Ljava/lang/Object;
.source "CharsetDetect.java"


# static fields
.field private static defaultCharset:Ljava/lang/String;


# instance fields
.field private detectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/msec/charsetdetect/Detector;",
            ">;"
        }
    .end annotation
.end field

.field private stream:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-string v0, "UTF-8"

    sput-object v0, Lcom/msec/charsetdetect/CharsetDetect;->defaultCharset:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/InputStream;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/msec/charsetdetect/CharsetDetect;->stream:Ljava/io/InputStream;

    .line 21
    return-void
.end method

.method private getCharset()Ljava/lang/String;
    .locals 5

    .line 59
    const/16 v0, 0x20

    :try_start_0
    new-array v0, v0, [B

    .line 60
    .local v0, "bom":[B
    iget-object v1, p0, Lcom/msec/charsetdetect/CharsetDetect;->stream:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 61
    .local v1, "bomSize":I
    invoke-direct {p0, v0, v1}, Lcom/msec/charsetdetect/CharsetDetect;->getCharsetByBOM([BI)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "charset":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 63
    return-object v2

    .line 66
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/msec/charsetdetect/CharsetDetect;->getCharsetByContent([BI)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 67
    if-eqz v2, :cond_1

    .line 68
    return-object v2

    .line 71
    :cond_1
    invoke-direct {p0}, Lcom/msec/charsetdetect/CharsetDetect;->getCharsetByUtf16Possibility()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 72
    if-eqz v2, :cond_2

    .line 73
    return-object v2

    .line 77
    :cond_2
    iget-object v3, p0, Lcom/msec/charsetdetect/CharsetDetect;->detectors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 78
    iget-object v3, p0, Lcom/msec/charsetdetect/CharsetDetect;->detectors:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/msec/charsetdetect/Detector;

    invoke-virtual {v3}, Lcom/msec/charsetdetect/Detector;->getCharsetName()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 84
    .end local v0    # "bom":[B
    .end local v1    # "bomSize":I
    .end local v2    # "charset":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 82
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_0
    sget-object v0, Lcom/msec/charsetdetect/CharsetDetect;->defaultCharset:Ljava/lang/String;

    return-object v0
.end method

.method public static getCharset(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .line 28
    const/4 v0, 0x0

    .line 30
    .local v0, "stream":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    .line 31
    invoke-static {v0}, Lcom/msec/charsetdetect/CharsetDetect;->getCharset(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    nop

    .line 39
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 41
    goto :goto_0

    .line 40
    :catch_0
    move-exception v2

    .line 31
    :goto_0
    return-object v1

    .line 37
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 32
    :catch_1
    move-exception v1

    .line 33
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    sget-boolean v2, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 34
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    if-eqz v0, :cond_1

    .line 39
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 41
    :goto_1
    goto :goto_2

    .line 40
    :catch_2
    move-exception v1

    goto :goto_1

    .line 44
    :cond_1
    :goto_2
    sget-object v1, Lcom/msec/charsetdetect/CharsetDetect;->defaultCharset:Ljava/lang/String;

    return-object v1

    .line 37
    :goto_3
    if-eqz v0, :cond_2

    .line 39
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 41
    goto :goto_4

    .line 40
    :catch_3
    move-exception v2

    .line 41
    :cond_2
    :goto_4
    throw v1
.end method

.method public static getCharset(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;

    .line 53
    new-instance v0, Lcom/msec/charsetdetect/CharsetDetect;

    invoke-direct {v0, p0}, Lcom/msec/charsetdetect/CharsetDetect;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0}, Lcom/msec/charsetdetect/CharsetDetect;->getCharset()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/msec/charsetdetect/CharsetDetect;->getCharset(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCharset([B)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B

    .line 48
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 49
    .local v0, "stream":Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Lcom/msec/charsetdetect/CharsetDetect;->getCharset(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getCharsetByBOM([BI)Ljava/lang/String;
    .locals 11
    .param p1, "bom"    # [B
    .param p2, "bomSize"    # I

    .line 90
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    .line 91
    .local v1, "b0":I
    const/4 v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    .line 92
    .local v2, "b1":I
    const/4 v3, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 93
    .local v3, "b2":I
    new-instance v4, Lcom/msec/charsetdetect/UTF8;

    invoke-direct {v4}, Lcom/msec/charsetdetect/UTF8;-><init>()V

    .line 94
    .local v4, "utf8":Lcom/msec/charsetdetect/UTF8;
    invoke-virtual {v4, v1, v2, v3}, Lcom/msec/charsetdetect/UTF8;->isValidBOM(III)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 95
    invoke-virtual {v4}, Lcom/msec/charsetdetect/UTF8;->getCharsetName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 97
    :cond_0
    new-instance v5, Lcom/msec/charsetdetect/UTF16LE;

    invoke-direct {v5}, Lcom/msec/charsetdetect/UTF16LE;-><init>()V

    .line 98
    .local v5, "utf16le":Lcom/msec/charsetdetect/UTF16LE;
    invoke-virtual {v5, v1, v2, v3}, Lcom/msec/charsetdetect/UTF16LE;->isValidBOM(III)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 99
    invoke-virtual {v5}, Lcom/msec/charsetdetect/UTF16LE;->getCharsetName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 101
    :cond_1
    new-instance v6, Lcom/msec/charsetdetect/UTF16BE;

    invoke-direct {v6}, Lcom/msec/charsetdetect/UTF16BE;-><init>()V

    .line 102
    .local v6, "utf16be":Lcom/msec/charsetdetect/UTF16BE;
    invoke-virtual {v6, v1, v2, v3}, Lcom/msec/charsetdetect/UTF16BE;->isValidBOM(III)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 103
    invoke-virtual {v6}, Lcom/msec/charsetdetect/UTF16BE;->getCharsetName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 106
    :cond_2
    const/4 v7, 0x0

    .line 107
    .local v7, "leZeroCount":I
    const/4 v8, 0x0

    .line 108
    .local v8, "beZeroCount":I
    nop

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_5

    const/16 v9, 0x14

    if-ge v0, v9, :cond_5

    .line 109
    aget-byte v9, p1, v0

    const/16 v10, 0x7f

    if-nez v9, :cond_3

    .line 110
    add-int/lit8 v9, v0, 0x1

    if-ge v9, p2, :cond_3

    add-int/lit8 v9, v0, 0x1

    aget-byte v9, p1, v9

    if-lez v9, :cond_3

    add-int/lit8 v9, v0, 0x1

    aget-byte v9, p1, v9

    if-ge v9, v10, :cond_3

    .line 111
    add-int/lit8 v8, v8, 0x1

    .line 114
    :cond_3
    add-int/lit8 v9, v0, 0x1

    if-ge v9, p2, :cond_4

    add-int/lit8 v9, v0, 0x1

    aget-byte v9, p1, v9

    if-nez v9, :cond_4

    .line 115
    aget-byte v9, p1, v0

    if-lez v9, :cond_4

    aget-byte v9, p1, v0

    if-ge v9, v10, :cond_4

    .line 116
    add-int/lit8 v7, v7, 0x1

    .line 108
    :cond_4
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 120
    .end local v0    # "i":I
    :cond_5
    const/4 v0, 0x6

    if-lt v7, v0, :cond_6

    .line 121
    invoke-virtual {v5}, Lcom/msec/charsetdetect/UTF16LE;->getCharsetName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 123
    :cond_6
    if-lt v8, v0, :cond_7

    .line 124
    invoke-virtual {v6}, Lcom/msec/charsetdetect/UTF16BE;->getCharsetName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 128
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/msec/charsetdetect/CharsetDetect;->detectors:Ljava/util/List;

    .line 129
    iget-object v0, p0, Lcom/msec/charsetdetect/CharsetDetect;->detectors:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lcom/msec/charsetdetect/CharsetDetect;->detectors:Ljava/util/List;

    new-instance v9, Lcom/msec/charsetdetect/GBK;

    invoke-direct {v9}, Lcom/msec/charsetdetect/GBK;-><init>()V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p0, Lcom/msec/charsetdetect/CharsetDetect;->detectors:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcom/msec/charsetdetect/CharsetDetect;->detectors:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lcom/msec/charsetdetect/CharsetDetect;->detectors:Ljava/util/List;

    new-instance v9, Lcom/msec/charsetdetect/BIG5;

    invoke-direct {v9}, Lcom/msec/charsetdetect/BIG5;-><init>()V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCharsetByContent([BI)Ljava/lang/String;
    .locals 6
    .param p1, "bom"    # [B
    .param p2, "bomSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, "m":I
    :goto_0
    const/4 v2, 0x1

    if-ge v1, p2, :cond_2

    .line 141
    iget-object v3, p0, Lcom/msec/charsetdetect/CharsetDetect;->detectors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_1

    .line 142
    iget-object v4, p0, Lcom/msec/charsetdetect/CharsetDetect;->detectors:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/msec/charsetdetect/Detector;

    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Lcom/msec/charsetdetect/Detector;->update(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 143
    iget-object v4, p0, Lcom/msec/charsetdetect/CharsetDetect;->detectors:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 144
    iget-object v4, p0, Lcom/msec/charsetdetect/CharsetDetect;->detectors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/msec/charsetdetect/CharsetDetect;->detectors:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/msec/charsetdetect/Detector;

    invoke-virtual {v0}, Lcom/msec/charsetdetect/Detector;->getCharsetName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 141
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 140
    .end local v3    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    .end local v1    # "m":I
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/msec/charsetdetect/CharsetDetect;->stream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 154
    .local v1, "ch":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_6

    .line 155
    nop

    .line 168
    .end local v1    # "ch":I
    iget-object v1, p0, Lcom/msec/charsetdetect/CharsetDetect;->detectors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_3
    if-ltz v1, :cond_4

    .line 169
    iget-object v3, p0, Lcom/msec/charsetdetect/CharsetDetect;->detectors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/msec/charsetdetect/Detector;

    invoke-virtual {v3}, Lcom/msec/charsetdetect/Detector;->finish()Z

    move-result v3

    if-nez v3, :cond_3

    .line 170
    iget-object v3, p0, Lcom/msec/charsetdetect/CharsetDetect;->detectors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 168
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 173
    .end local v1    # "i":I
    :cond_4
    iget-object v1, p0, Lcom/msec/charsetdetect/CharsetDetect;->detectors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_5

    .line 174
    iget-object v1, p0, Lcom/msec/charsetdetect/CharsetDetect;->detectors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/msec/charsetdetect/Detector;

    invoke-virtual {v0}, Lcom/msec/charsetdetect/Detector;->getCharsetName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 177
    :cond_5
    const/4 v0, 0x0

    return-object v0

    .line 157
    .local v1, "ch":I
    :cond_6
    iget-object v3, p0, Lcom/msec/charsetdetect/CharsetDetect;->detectors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .restart local v3    # "i":I
    :goto_4
    if-ltz v3, :cond_8

    .line 158
    iget-object v4, p0, Lcom/msec/charsetdetect/CharsetDetect;->detectors:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/msec/charsetdetect/Detector;

    invoke-virtual {v4, v1}, Lcom/msec/charsetdetect/Detector;->update(I)Z

    move-result v4

    if-nez v4, :cond_7

    .line 159
    iget-object v4, p0, Lcom/msec/charsetdetect/CharsetDetect;->detectors:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 160
    iget-object v4, p0, Lcom/msec/charsetdetect/CharsetDetect;->detectors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v2, :cond_7

    .line 161
    iget-object v2, p0, Lcom/msec/charsetdetect/CharsetDetect;->detectors:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/msec/charsetdetect/Detector;

    invoke-virtual {v0}, Lcom/msec/charsetdetect/Detector;->getCharsetName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 157
    :cond_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 165
    .end local v1    # "ch":I
    .end local v3    # "i":I
    :cond_8
    goto :goto_2
.end method

.method private getCharsetByUtf16Possibility()Ljava/lang/String;
    .locals 5

    .line 182
    const/4 v0, 0x4

    .line 183
    .local v0, "possibility":I
    const/4 v1, 0x0

    .line 184
    .local v1, "topmostDetector":Lcom/msec/charsetdetect/Detector;
    iget-object v2, p0, Lcom/msec/charsetdetect/CharsetDetect;->detectors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 185
    iget-object v3, p0, Lcom/msec/charsetdetect/CharsetDetect;->detectors:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/msec/charsetdetect/Detector;

    .line 186
    .local v3, "detector":Lcom/msec/charsetdetect/Detector;
    invoke-virtual {v3}, Lcom/msec/charsetdetect/Detector;->utf16Possibility()I

    move-result v4

    if-le v4, v0, :cond_0

    .line 187
    iget v0, v3, Lcom/msec/charsetdetect/Detector;->utf16Possibility:I

    .line 188
    move-object v1, v3

    .line 184
    .end local v3    # "detector":Lcom/msec/charsetdetect/Detector;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 191
    .end local v2    # "i":I
    :cond_1
    if-eqz v1, :cond_2

    .line 192
    invoke-virtual {v1}, Lcom/msec/charsetdetect/Detector;->getCharsetName()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 195
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method
