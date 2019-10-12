.class public Lcom/msec/net/WebKit/WebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/msec/net/WebKit/WebViewClient$tsWebResourceRequest;
    }
.end annotation


# static fields
.field private static final FILESCHEME:Ljava/lang/String; = "file"

.field private static final HTML_TAGS:[Ljava/lang/String;

.field private static final IFRAMESPC:Ljava/lang/String; = "OlVfdsReqL=kdn"

.field private static final URL_REGEX:Ljava/lang/String; = ".(ico|gif|bmp|htc|jpg|jpeg|png|tiff|swf|rm|rmvb|wmv|avi|mkv|mp3|mp4|ogg|wma|zip|exe|rar|eot|woff|woff2|ttf|svg|js|css)$"

.field private static final URL_SUFS:[Ljava/lang/String;

.field private static final pattern:Ljava/util/regex/Pattern;


# instance fields
.field private mWebViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 42
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "<html"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "<script"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lcom/msec/net/WebKit/WebViewClient;->HTML_TAGS:[Ljava/lang/String;

    .line 43
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, ".html"

    aput-object v2, v1, v3

    const-string v2, ".htm"

    aput-object v2, v1, v4

    sput-object v1, Lcom/msec/net/WebKit/WebViewClient;->URL_SUFS:[Ljava/lang/String;

    .line 45
    const-string v1, ".(ico|gif|bmp|htc|jpg|jpeg|png|tiff|swf|rm|rmvb|wmv|avi|mkv|mp3|mp4|ogg|wma|zip|exe|rar|eot|woff|woff2|ttf|svg|js|css)$"

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/msec/net/WebKit/WebViewClient;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebViewClient;)V
    .locals 0
    .param p1, "client"    # Landroid/webkit/WebViewClient;

    .line 52
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/msec/net/WebKit/WebViewClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/msec/net/WebKit/WebViewClient;
    .param p1, "x1"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Lcom/msec/net/WebKit/WebViewClient;->removeIframeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/msec/net/WebKit/WebViewClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/msec/net/WebKit/WebViewClient;
    .param p1, "x1"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Lcom/msec/net/WebKit/WebViewClient;->removeUrlToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isContainTags(Ljava/lang/String;)Z
    .locals 8
    .param p1, "htmlData"    # Ljava/lang/String;

    .line 148
    sget-object v0, Lcom/msec/net/WebKit/WebViewClient;->HTML_TAGS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 149
    .local v4, "tag":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 150
    .local v5, "index":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 151
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 152
    .local v6, "next":C
    const/16 v7, 0x3e

    if-eq v6, v7, :cond_0

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 153
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 148
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "index":I
    .end local v6    # "next":C
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 157
    :cond_2
    return v2
.end method

.method private isInterceptUrl(Ljava/lang/String;)Z
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .line 162
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 163
    .local v1, "uri":Ljava/net/URI;
    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "path":Ljava/lang/String;
    sget-object v3, Lcom/msec/net/WebKit/WebViewClient;->URL_SUFS:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 165
    .local v6, "suf":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_0

    .line 166
    const/4 v0, 0x1

    return v0

    .line 164
    .end local v6    # "suf":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 173
    .end local v1    # "uri":Ljava/net/URI;
    .end local v2    # "path":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 169
    :catch_0
    move-exception v1

    .line 170
    .local v1, "e":Ljava/net/URISyntaxException;
    sget-boolean v2, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 171
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 174
    .end local v1    # "e":Ljava/net/URISyntaxException;
    :cond_2
    :goto_1
    return v0
.end method

.method private readFromStream(Ljava/io/InputStream;)[B
    .locals 6
    .param p1, "inputReader"    # Ljava/io/InputStream;

    .line 103
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 105
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x1000

    :try_start_0
    new-array v1, v1, [B

    .line 107
    .local v1, "byteArray":[B
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "len":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 108
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 111
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 123
    goto :goto_1

    .line 119
    :catch_0
    move-exception v4

    .line 120
    .local v4, "e":Ljava/io/IOException;
    sget-boolean v5, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 121
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 111
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-object v2

    .line 117
    .end local v1    # "byteArray":[B
    .end local v3    # "len":I
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 112
    :catch_1
    move-exception v1

    .line 113
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    sget-boolean v2, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 114
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 123
    goto :goto_2

    .line 119
    :catch_2
    move-exception v1

    .line 120
    .restart local v1    # "e":Ljava/io/IOException;
    sget-boolean v2, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 121
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 124
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    nop

    .line 125
    :goto_2
    const/4 v1, 0x0

    return-object v1

    .line 117
    :goto_3
    nop

    .line 118
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 123
    goto :goto_4

    .line 119
    :catch_3
    move-exception v2

    .line 120
    .local v2, "e":Ljava/io/IOException;
    sget-boolean v3, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 121
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 123
    .end local v2    # "e":Ljava/io/IOException;
    :cond_4
    :goto_4
    throw v1
.end method

.method private removeIframeTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .line 505
    if-nez p1, :cond_0

    .line 506
    const/4 v0, 0x0

    return-object v0

    .line 508
    :cond_0
    const-string v0, "?OlVfdsReqL=kdn"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&OlVfdsReqL=kdn"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private removeUrlToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "url"    # Ljava/lang/String;

    .line 61
    if-eqz p1, :cond_9

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 64
    :cond_0
    invoke-static {p1}, Lcom/msec/MSecClient;->getClient(Ljava/lang/String;)Lcom/msec/MSecClient;

    move-result-object v0

    .line 65
    .local v0, "client":Lcom/msec/MSecClient;
    invoke-virtual {v0}, Lcom/msec/MSecClient;->getHeaderKey()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_8

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 68
    .local v2, "tokenStartIndex":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_8

    .line 69
    const/4 v4, -0x1

    .line 70
    .local v4, "tokenEndIndex":I
    const/16 v5, 0x26

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 71
    .local v6, "endIndex1":I
    const/16 v7, 0x23

    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 72
    .local v7, "endIndex2":I
    if-eq v6, v3, :cond_2

    if-eq v7, v3, :cond_2

    .line 73
    if-le v7, v6, :cond_1

    move v8, v6

    goto :goto_0

    :cond_1
    move v8, v7

    :goto_0
    move v4, v8

    goto :goto_1

    .line 74
    :cond_2
    if-eq v6, v3, :cond_3

    .line 75
    move v4, v6

    goto :goto_1

    .line 76
    :cond_3
    if-eq v7, v3, :cond_4

    .line 77
    move v4, v7

    .line 80
    :cond_4
    :goto_1
    if-ne v4, v3, :cond_5

    .line 81
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 84
    :cond_5
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_6

    .line 85
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 86
    :cond_6
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v8, 0x3f

    if-ne v3, v8, :cond_7

    .line 87
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_7

    .line 89
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 92
    :cond_7
    add-int/lit8 v2, v2, -0x1

    .line 95
    :goto_2
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 99
    .end local v2    # "tokenStartIndex":I
    .end local v4    # "tokenEndIndex":I
    .end local v6    # "endIndex1":I
    .end local v7    # "endIndex2":I
    :cond_8
    return-object p1

    .line 62
    .end local v0    # "client":Lcom/msec/MSecClient;
    .end local v1    # "key":Ljava/lang/String;
    :cond_9
    :goto_3
    return-object p1
.end method

.method private tsInterceptWebResourceResponse(Landroid/webkit/WebResourceResponse;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 8
    .param p1, "webResourceResponse"    # Landroid/webkit/WebResourceResponse;
    .param p2, "url"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0xb
    .end annotation

    .line 179
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 180
    return-object v0

    .line 184
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 185
    .local v1, "uri":Ljava/net/URI;
    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "path":Ljava/lang/String;
    if-eqz v2, :cond_1

    sget-object v3, Lcom/msec/net/WebKit/WebViewClient;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v3, :cond_1

    .line 187
    return-object p1

    .line 194
    .end local v1    # "uri":Ljava/net/URI;
    .end local v2    # "path":Ljava/lang/String;
    :cond_1
    nop

    .line 197
    invoke-static {p2}, Lcom/msec/MSecClient;->isProctedURL(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 198
    return-object p1

    .line 201
    :cond_2
    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getMimeType()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "mimeType":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getEncoding()Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "encoding":Ljava/lang/String;
    if-nez v1, :cond_6

    .line 205
    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v3

    .line 206
    .local v3, "inputStream":Ljava/io/InputStream;
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 207
    .local v4, "bufferedInputStream":Ljava/io/BufferedInputStream;
    const/16 v5, 0x1e

    invoke-virtual {v4, v5}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 209
    :try_start_1
    new-array v6, v5, [B

    .line 210
    .local v6, "fHeader":[B
    invoke-virtual {v4, v6}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    if-ne v7, v5, :cond_3

    .line 211
    invoke-static {v6}, Lcom/msec/MSecClient;->isSpecialFile([B)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 212
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->reset()V

    .line 213
    return-object p1

    .line 215
    :cond_3
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 232
    .end local v6    # "fHeader":[B
    goto :goto_0

    .line 217
    :catch_0
    move-exception v5

    .line 218
    .local v5, "e":Ljava/io/IOException;
    sget-boolean v6, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v6, :cond_4

    .line 219
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 223
    :cond_4
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->reset()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 229
    nop

    .line 231
    return-object p1

    .line 224
    :catch_1
    move-exception v6

    .line 225
    .local v6, "e1":Ljava/io/IOException;
    sget-boolean v7, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v7, :cond_5

    .line 226
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 228
    :cond_5
    return-object v0

    .line 236
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "e1":Ljava/io/IOException;
    :cond_6
    :goto_0
    if-eqz v1, :cond_8

    const-string v0, "text/html"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    :cond_8
    :goto_1
    const/4 v0, 0x1

    .line 238
    .local v0, "mimeCondition":Z
    :goto_2
    if-nez v0, :cond_a

    invoke-direct {p0, p2}, Lcom/msec/net/WebKit/WebViewClient;->isInterceptUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_3

    .line 254
    :cond_9
    return-object p1

    .line 239
    :cond_a
    :goto_3
    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v3

    .line 240
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    invoke-direct {p0, v3}, Lcom/msec/net/WebKit/WebViewClient;->readFromStream(Ljava/io/InputStream;)[B

    move-result-object v4

    .line 242
    .local v4, "htmlDataByte":[B
    invoke-static {v4}, Lcom/msec/MSecClient;->protectHtmlData([B)[B

    move-result-object v5

    .line 243
    .local v5, "insertHtmlBytes":[B
    if-eqz v5, :cond_b

    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 244
    new-instance v6, Landroid/webkit/WebResourceResponse;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v6, v1, v2, v7}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v6

    .line 249
    :cond_b
    new-instance v6, Landroid/webkit/WebResourceResponse;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v6, v1, v2, v7}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v6

    .line 189
    .end local v0    # "mimeCondition":Z
    .end local v1    # "mimeType":Ljava/lang/String;
    .end local v2    # "encoding":Ljava/lang/String;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "htmlDataByte":[B
    .end local v5    # "insertHtmlBytes":[B
    :catch_2
    move-exception v0

    .line 190
    .local v0, "e":Ljava/net/URISyntaxException;
    sget-boolean v1, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_c

    .line 191
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 193
    :cond_c
    return-object p1
.end method


# virtual methods
.method protected doLoadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 290
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isReload"    # Z

    .line 497
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 498
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    goto :goto_0

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 502
    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 479
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method isIntercpt(Ljava/lang/String;)Z
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .line 129
    const-string v0, "OlVfdsReqL=kdn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 130
    return v1

    .line 133
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, "uri":Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 136
    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".htm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    .line 137
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 143
    .end local v0    # "uri":Ljava/net/URI;
    :cond_2
    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/net/URISyntaxException;
    sget-boolean v2, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 141
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 144
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :cond_3
    :goto_0
    return v1
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "dontResend"    # Landroid/os/Message;
    .param p3, "resend"    # Landroid/os/Message;

    .line 319
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 320
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 324
    :goto_0
    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 328
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 329
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 333
    :goto_0
    return-void
.end method

.method public onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 339
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 343
    :goto_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 356
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 357
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 361
    :goto_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .line 347
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 348
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 352
    :goto_0
    return-void
.end method

.method public onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/ClientCertRequest;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 367
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V

    goto :goto_0

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V

    .line 371
    :goto_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .line 456
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 457
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 461
    :goto_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "error"    # Landroid/webkit/WebResourceError;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 377
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    goto :goto_0

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 381
    :goto_0
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/HttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .line 385
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 386
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    :goto_0
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "errorResponse"    # Landroid/webkit/WebResourceResponse;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 395
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 396
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    goto :goto_0

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 400
    :goto_0
    return-void
.end method

.method public onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "account"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "args"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0xc
    .end annotation

    .line 405
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 406
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :goto_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .line 414
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 415
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    goto :goto_0

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 419
    :goto_0
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "detail"    # Landroid/webkit/RenderProcessGoneDetail;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 485
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 486
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result v0

    .line 485
    :goto_0
    return v0
.end method

.method public onSafeBrowsingHit(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;ILandroid/webkit/SafeBrowsingResponse;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "threatType"    # I
    .param p4, "callback"    # Landroid/webkit/SafeBrowsingResponse;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x1b
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 425
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onSafeBrowsingHit(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;ILandroid/webkit/SafeBrowsingResponse;)V

    goto :goto_0

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onSafeBrowsingHit(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;ILandroid/webkit/SafeBrowsingResponse;)V

    .line 429
    :goto_0
    return-void
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "oldScale"    # F
    .param p3, "newScale"    # F

    .line 433
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 434
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    goto :goto_0

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    .line 438
    :goto_0
    return-void
.end method

.method public onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "cancelMsg"    # Landroid/os/Message;
    .param p3, "continueMsg"    # Landroid/os/Message;

    .line 465
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 466
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 470
    :goto_0
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 442
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 443
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    .line 447
    :goto_0
    return-void
.end method

.method public setmWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 0
    .param p1, "client"    # Landroid/webkit/WebViewClient;

    .line 57
    iput-object p1, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 58
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 309
    new-instance v0, Lcom/msec/net/WebKit/WebViewClient$tsWebResourceRequest;

    invoke-direct {v0, p0, p2}, Lcom/msec/net/WebKit/WebViewClient$tsWebResourceRequest;-><init>(Lcom/msec/net/WebKit/WebViewClient;Landroid/webkit/WebResourceRequest;)V

    .line 311
    .local v0, "originRequest":Landroid/webkit/WebResourceRequest;
    iget-object v1, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v1, :cond_0

    invoke-super {p0, p1, v0}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 312
    invoke-virtual {v1, p1, v0}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    .line 314
    .local v1, "webResourceResponse":Landroid/webkit/WebResourceResponse;
    :goto_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/msec/net/WebKit/WebViewClient;->tsInterceptWebResourceResponse(Landroid/webkit/WebResourceResponse;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v2

    return-object v2
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0xb
    .end annotation

    .line 297
    invoke-direct {p0, p2}, Lcom/msec/net/WebKit/WebViewClient;->removeIframeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/msec/net/WebKit/WebViewClient;->removeUrlToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "originalUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v1, :cond_0

    invoke-super {p0, p1, v0}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 300
    invoke-virtual {v1, p1, v0}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    .line 302
    .local v1, "webResourceResponse":Landroid/webkit/WebResourceResponse;
    :goto_0
    invoke-direct {p0, v1, p2}, Lcom/msec/net/WebKit/WebViewClient;->tsInterceptWebResourceResponse(Landroid/webkit/WebResourceResponse;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v2

    return-object v2
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 491
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 492
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 491
    :goto_0
    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .line 260
    new-instance v0, Lcom/msec/net/WebKit/WebViewClient$tsWebResourceRequest;

    invoke-direct {v0, p0, p2}, Lcom/msec/net/WebKit/WebViewClient$tsWebResourceRequest;-><init>(Lcom/msec/net/WebKit/WebViewClient;Landroid/webkit/WebResourceRequest;)V

    .line 262
    .local v0, "originRequest":Landroid/webkit/WebResourceRequest;
    iget-object v1, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v1, :cond_0

    invoke-super {p0, p1, v0}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 263
    invoke-virtual {v1, p1, v0}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result v1

    .line 265
    .local v1, "ret":Z
    :goto_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, "url":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/msec/net/WebKit/WebViewClient;->isIntercpt(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    .line 267
    invoke-virtual {p0, p1, v2}, Lcom/msec/net/WebKit/WebViewClient;->doLoadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 268
    const/4 v3, 0x1

    return v3

    .line 271
    :cond_1
    return v1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 276
    invoke-direct {p0, p2}, Lcom/msec/net/WebKit/WebViewClient;->removeIframeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/msec/net/WebKit/WebViewClient;->removeUrlToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "originalUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v1, :cond_0

    invoke-super {p0, p1, v0}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 279
    invoke-virtual {v1, p1, v0}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    .line 281
    .local v1, "ret":Z
    :goto_0
    invoke-virtual {p0, p2}, Lcom/msec/net/WebKit/WebViewClient;->isIntercpt(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 282
    invoke-virtual {p0, p1, p2}, Lcom/msec/net/WebKit/WebViewClient;->doLoadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 283
    const/4 v2, 0x1

    return v2

    .line 286
    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/msec/net/WebKit/WebViewClient;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
