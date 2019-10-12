.class public Lcom/msec/net/WebKit/WebView;
.super Landroid/webkit/WebView;
.source "WebView.java"

# interfaces
.implements Lcom/msec/net/WebKit/WebViewLoader;


# static fields
.field private static final ASSETSDIR:Ljava/lang/String; = "android_asset"

.field private static final CHARSET_REGEX:Ljava/lang/String; = "<meta\\b.*\\bcharset\\s*=\\s*([\"\']?)((?<=[\"\'])([\\w -]+)|([\\w-]+))\\1"

.field static final FILEPROTOCOL:Ljava/lang/String; = "file://"

.field static final FILE_HEADER_SIZE:I = 0x1e

.field static final HTMLMIMETYPE:Ljava/lang/String; = "text/html"

.field static final HTMLSUF:Ljava/lang/String; = ".html"

.field static final HTMSUF:Ljava/lang/String; = ".htm"

.field private static final pattern:Ljava/util/regex/Pattern;


# instance fields
.field private isSetWebViewClient:Z

.field private mWebViewClient:Lcom/msec/net/WebKit/WebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    const-string v0, "<meta\\b.*\\bcharset\\s*=\\s*([\"\']?)((?<=[\"\'])([\\w -]+)|([\\w-]+))\\1"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/msec/net/WebKit/WebView;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0xb
    .end annotation

    .line 49
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Lcom/msec/net/WebKit/WebViewClient;

    invoke-direct {v0}, Lcom/msec/net/WebKit/WebViewClient;-><init>()V

    iput-object v0, p0, Lcom/msec/net/WebKit/WebView;->mWebViewClient:Lcom/msec/net/WebKit/WebViewClient;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/msec/net/WebKit/WebView;->isSetWebViewClient:Z

    .line 50
    invoke-virtual {p0}, Lcom/msec/net/WebKit/WebView;->initWrapperEnv()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0xb
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Lcom/msec/net/WebKit/WebViewClient;

    invoke-direct {v0}, Lcom/msec/net/WebKit/WebViewClient;-><init>()V

    iput-object v0, p0, Lcom/msec/net/WebKit/WebView;->mWebViewClient:Lcom/msec/net/WebKit/WebViewClient;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/msec/net/WebKit/WebView;->isSetWebViewClient:Z

    .line 56
    invoke-virtual {p0}, Lcom/msec/net/WebKit/WebView;->initWrapperEnv()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0xb
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance v0, Lcom/msec/net/WebKit/WebViewClient;

    invoke-direct {v0}, Lcom/msec/net/WebKit/WebViewClient;-><init>()V

    iput-object v0, p0, Lcom/msec/net/WebKit/WebView;->mWebViewClient:Lcom/msec/net/WebKit/WebViewClient;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/msec/net/WebKit/WebView;->isSetWebViewClient:Z

    .line 62
    invoke-virtual {p0}, Lcom/msec/net/WebKit/WebView;->initWrapperEnv()V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    new-instance v0, Lcom/msec/net/WebKit/WebViewClient;

    invoke-direct {v0}, Lcom/msec/net/WebKit/WebViewClient;-><init>()V

    iput-object v0, p0, Lcom/msec/net/WebKit/WebView;->mWebViewClient:Lcom/msec/net/WebKit/WebViewClient;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/msec/net/WebKit/WebView;->isSetWebViewClient:Z

    .line 68
    invoke-virtual {p0}, Lcom/msec/net/WebKit/WebView;->initWrapperEnv()V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "privateBrowsing"    # Z
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0xb
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 44
    new-instance v0, Lcom/msec/net/WebKit/WebViewClient;

    invoke-direct {v0}, Lcom/msec/net/WebKit/WebViewClient;-><init>()V

    iput-object v0, p0, Lcom/msec/net/WebKit/WebView;->mWebViewClient:Lcom/msec/net/WebKit/WebViewClient;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/msec/net/WebKit/WebView;->isSetWebViewClient:Z

    .line 74
    invoke-virtual {p0}, Lcom/msec/net/WebKit/WebView;->initWrapperEnv()V

    .line 75
    return-void
.end method

.method private static getDataEncoding([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 78
    invoke-static {p0}, Lcom/msec/charsetdetect/CharsetDetect;->getCharset([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static initWrapperEnv(Landroid/webkit/WebView;)V
    .locals 2
    .param p0, "webView"    # Landroid/webkit/WebView;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AddJavascriptInterface"
        }
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0xb
    .end annotation

    .line 110
    sget v0, Lcom/msec/MLog;->LOG_CODE_WRAPPER_WEBVIEW_WORK:I

    invoke-static {v0}, Lcom/msec/MLog;->printDetail(I)V

    .line 111
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 112
    new-instance v0, Lcom/msec/net/WebKit/WVBridge;

    invoke-direct {v0}, Lcom/msec/net/WebKit/WVBridge;-><init>()V

    const-string v1, "ighsdfkjhghiure"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    .line 114
    .local v0, "origJsEnabled":Z
    if-nez v0, :cond_0

    .line 116
    const-string v1, "searchBoxJavaBridge_"

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 117
    const-string v1, "accessibility"

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 118
    const-string v1, "accessibilityTraversal"

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 120
    :cond_0
    return-void
.end method

.method private static isFileExists(Ljava/lang/String;)Z
    .locals 2
    .param p0, "file"    # Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method static isHtmlPath(Ljava/lang/String;)Z
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .line 88
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "uri":Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "path":Ljava/lang/String;
    const-string v2, ".html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ".htm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    goto :goto_0

    .line 97
    .end local v0    # "uri":Ljava/net/URI;
    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 91
    .restart local v0    # "uri":Ljava/net/URI;
    .restart local v1    # "path":Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 93
    .end local v0    # "uri":Ljava/net/URI;
    .end local v1    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/net/URISyntaxException;
    sget-boolean v1, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 95
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 99
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method static loadWithJs(Ljava/lang/String;Lcom/msec/net/WebKit/WebViewLoader;)V
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "loader"    # Lcom/msec/net/WebKit/WebViewLoader;

    .line 201
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 208
    .local v0, "uri":Ljava/net/URI;
    nop

    .line 207
    nop

    .line 210
    instance-of v1, p1, Lcom/msec/net/WebKit/WebView;

    if-eqz v1, :cond_0

    .line 211
    move-object v1, p1

    check-cast v1, Lcom/msec/net/WebKit/WebView;

    invoke-direct {v1}, Lcom/msec/net/WebKit/WebView;->setTSWebViewClient()V

    .line 213
    :cond_0
    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "filePath":Ljava/lang/String;
    :cond_1
    const-string v2, "android_asset"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 217
    const-string v2, "android_asset"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v4, "android_asset"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 219
    :try_start_1
    sget-object v2, Lcom/msec/MSecClient;->sAppCtx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/msec/net/WebKit/WebView;->readFromStream(Ljava/io/InputStream;)Landroid/util/Pair;

    move-result-object v2

    .line 220
    .local v2, "htmlData":Landroid/util/Pair;, "Landroid/util/Pair<[BLjava/lang/String;>;"
    invoke-static {p0, v2, p1}, Lcom/msec/net/WebKit/WebView;->tsLoad(Ljava/lang/String;Landroid/util/Pair;Lcom/msec/net/WebKit/WebViewLoader;)Z

    move-result v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_2

    .line 221
    return-void

    .line 223
    :cond_2
    goto :goto_0

    .line 225
    .end local v2    # "htmlData":Landroid/util/Pair;, "Landroid/util/Pair<[BLjava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 226
    .local v2, "e":Ljava/io/IOException;
    sget-boolean v3, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 227
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 229
    :cond_3
    goto :goto_0

    .line 232
    .end local v2    # "e":Ljava/io/IOException;
    :cond_4
    invoke-static {v1}, Lcom/msec/net/WebKit/WebView;->isFileExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 233
    invoke-static {v1}, Lcom/msec/net/WebKit/WebView;->readFromFile(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    .line 234
    .local v2, "htmlData":Landroid/util/Pair;, "Landroid/util/Pair<[BLjava/lang/String;>;"
    invoke-static {p0, v2, p1}, Lcom/msec/net/WebKit/WebView;->tsLoad(Ljava/lang/String;Landroid/util/Pair;Lcom/msec/net/WebKit/WebViewLoader;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 235
    return-void

    .line 240
    .end local v2    # "htmlData":Landroid/util/Pair;, "Landroid/util/Pair<[BLjava/lang/String;>;"
    :cond_5
    move-object v2, v1

    .line 241
    .local v2, "loop":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 242
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 244
    .end local v2    # "loop":Ljava/lang/String;
    :cond_6
    :goto_0
    invoke-interface {p1, p0}, Lcom/msec/net/WebKit/WebViewLoader;->doLoadUrl(Ljava/lang/String;)V

    .line 245
    return-void

    .line 202
    .end local v0    # "uri":Ljava/net/URI;
    .end local v1    # "filePath":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 203
    .local v0, "e":Ljava/net/URISyntaxException;
    sget-boolean v1, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_7

    .line 204
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 206
    :cond_7
    invoke-interface {p1, p0}, Lcom/msec/net/WebKit/WebViewLoader;->doLoadUrl(Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method private static readFromFile(Ljava/lang/String;)Landroid/util/Pair;
    .locals 10
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "[B",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, "data":Landroid/util/Pair;, "Landroid/util/Pair<[BLjava/lang/String;>;"
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 320
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 321
    return-object v3

    .line 323
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v2, v4

    int-to-long v4, v2

    .line 324
    .local v4, "length":J
    long-to-int v2, v4

    .line 325
    .local v2, "len":I
    if-lez v2, :cond_4

    int-to-long v6, v2

    cmp-long v8, v6, v4

    if-nez v8, :cond_4

    .line 326
    new-array v6, v2, [B

    .line 327
    .local v6, "content":[B
    nop

    .line 330
    .local v3, "in":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v7

    .line 331
    invoke-static {v3}, Lcom/msec/net/WebKit/WebView;->readFromStream(Ljava/io/InputStream;)Landroid/util/Pair;

    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v7

    .line 337
    nop

    .line 339
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 344
    :cond_1
    :goto_0
    goto :goto_4

    .line 340
    :catch_0
    move-exception v7

    .line 341
    .local v7, "e":Ljava/io/IOException;
    sget-boolean v8, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v8, :cond_1

    .line 342
    :goto_1
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 337
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    goto :goto_2

    .line 332
    :catch_1
    move-exception v7

    .line 333
    .restart local v7    # "e":Ljava/io/IOException;
    :try_start_2
    sget-boolean v8, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v8, :cond_2

    .line 334
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 337
    .end local v7    # "e":Ljava/io/IOException;
    :cond_2
    if-eqz v3, :cond_4

    .line 339
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 340
    :catch_2
    move-exception v7

    .line 341
    .restart local v7    # "e":Ljava/io/IOException;
    sget-boolean v8, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v8, :cond_1

    goto :goto_1

    .line 337
    .end local v7    # "e":Ljava/io/IOException;
    :goto_2
    if-eqz v3, :cond_3

    .line 339
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 344
    goto :goto_3

    .line 340
    :catch_3
    move-exception v8

    .line 341
    .local v8, "e":Ljava/io/IOException;
    sget-boolean v9, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v9, :cond_3

    .line 342
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 344
    .end local v8    # "e":Ljava/io/IOException;
    :cond_3
    :goto_3
    throw v7

    .line 348
    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v6    # "content":[B
    :cond_4
    :goto_4
    return-object v0
.end method

.method private static readFromStream(Ljava/io/InputStream;)Landroid/util/Pair;
    .locals 8
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Landroid/util/Pair<",
            "[B",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, "data":Landroid/util/Pair;, "Landroid/util/Pair<[BLjava/lang/String;>;"
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 257
    .local v1, "buf":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 260
    .local v2, "inputReader":Ljava/io/BufferedInputStream;
    const/4 v3, 0x0

    const/16 v4, 0x1e

    :try_start_0
    new-array v5, v4, [B

    .line 261
    .local v5, "fHeader":[B
    invoke-virtual {v2, v4}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 262
    invoke-virtual {v2, v5}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    if-ne v6, v4, :cond_0

    .line 263
    invoke-static {v5}, Lcom/msec/MSecClient;->isSpecialFile([B)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 264
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->reset()V

    .line 265
    return-object v3

    .line 267
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    .line 281
    .end local v5    # "fHeader":[B
    nop

    .line 284
    const/16 v3, 0x1000

    :try_start_1
    new-array v3, v3, [B

    .line 286
    .local v3, "byteArray":[B
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "len":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 287
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 289
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 290
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 291
    .local v4, "htmlData":[B
    invoke-static {v4}, Lcom/msec/net/WebKit/WebView;->getDataEncoding([B)Ljava/lang/String;

    move-result-object v6

    .line 292
    .local v6, "encoding":Ljava/lang/String;
    new-instance v7, Landroid/util/Pair;

    invoke-direct {v7, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v7

    .line 299
    .end local v3    # "byteArray":[B
    .end local v4    # "htmlData":[B
    .end local v5    # "len":I
    .end local v6    # "encoding":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 304
    goto :goto_1

    .line 300
    :catch_0
    move-exception v3

    .line 301
    .local v3, "e":Ljava/io/IOException;
    sget-boolean v4, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 302
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 306
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 311
    :goto_2
    goto :goto_5

    .line 307
    :catch_1
    move-exception v3

    .line 308
    .restart local v3    # "e":Ljava/io/IOException;
    sget-boolean v4, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 309
    :goto_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 313
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3
    goto :goto_5

    .line 298
    :catchall_0
    move-exception v3

    goto :goto_6

    .line 293
    :catch_2
    move-exception v3

    .line 294
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_4
    sget-boolean v4, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v4, :cond_4

    .line 295
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 299
    .end local v3    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 304
    goto :goto_4

    .line 300
    :catch_3
    move-exception v3

    .line 301
    .restart local v3    # "e":Ljava/io/IOException;
    sget-boolean v4, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v4, :cond_5

    .line 302
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 306
    .end local v3    # "e":Ljava/io/IOException;
    :cond_5
    :goto_4
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 307
    :catch_4
    move-exception v3

    .line 308
    .restart local v3    # "e":Ljava/io/IOException;
    sget-boolean v4, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v4, :cond_3

    goto :goto_3

    .line 314
    .end local v3    # "e":Ljava/io/IOException;
    :goto_5
    return-object v0

    .line 298
    :goto_6
    nop

    .line 299
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 304
    goto :goto_7

    .line 300
    :catch_5
    move-exception v4

    .line 301
    .local v4, "e":Ljava/io/IOException;
    sget-boolean v5, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v5, :cond_6

    .line 302
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 306
    .end local v4    # "e":Ljava/io/IOException;
    :cond_6
    :goto_7
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 311
    goto :goto_8

    .line 307
    :catch_6
    move-exception v4

    .line 308
    .restart local v4    # "e":Ljava/io/IOException;
    sget-boolean v5, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v5, :cond_7

    .line 309
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 311
    .end local v4    # "e":Ljava/io/IOException;
    :cond_7
    :goto_8
    throw v3

    .line 269
    :catch_7
    move-exception v4

    .line 270
    .restart local v4    # "e":Ljava/io/IOException;
    sget-boolean v5, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v5, :cond_8

    .line 271
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 274
    :cond_8
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->reset()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 279
    goto :goto_9

    .line 275
    :catch_8
    move-exception v5

    .line 276
    .local v5, "e1":Ljava/io/IOException;
    sget-boolean v6, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v6, :cond_9

    .line 277
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 280
    .end local v5    # "e1":Ljava/io/IOException;
    :cond_9
    :goto_9
    return-object v3
.end method

.method private setTSWebViewClient()V
    .locals 1

    .line 248
    iget-boolean v0, p0, Lcom/msec/net/WebKit/WebView;->isSetWebViewClient:Z

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/msec/net/WebKit/WebView;->mWebViewClient:Lcom/msec/net/WebKit/WebViewClient;

    invoke-super {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/msec/net/WebKit/WebView;->isSetWebViewClient:Z

    .line 252
    :cond_0
    return-void
.end method

.method private static tsLoad(Ljava/lang/String;Landroid/util/Pair;Lcom/msec/net/WebKit/WebViewLoader;)Z
    .locals 9
    .param p0, "url"    # Ljava/lang/String;
    .param p2, "loader"    # Lcom/msec/net/WebKit/WebViewLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "[B",
            "Ljava/lang/String;",
            ">;",
            "Lcom/msec/net/WebKit/WebViewLoader;",
            ")Z"
        }
    .end annotation

    .line 178
    .local p1, "htmlData":Landroid/util/Pair;, "Landroid/util/Pair<[BLjava/lang/String;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 179
    return v0

    .line 181
    :cond_0
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [B

    invoke-static {v1}, Lcom/msec/MSecClient;->protectHtmlData([B)[B

    move-result-object v1

    .line 183
    .local v1, "insertData":[B
    const/4 v2, 0x0

    .line 185
    .local v2, "insertHtml":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/lang/String;

    iget-object v3, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v5, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v2    # "insertHtml":Ljava/lang/String;
    .local v5, "insertHtml":Ljava/lang/String;
    nop

    .line 193
    const-string v6, "text/html"

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    move-object v3, p2

    move-object v4, p0

    move-object v8, p0

    invoke-interface/range {v3 .. v8}, Lcom/msec/net/WebKit/WebViewLoader;->doLoadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const/4 v0, 0x1

    return v0

    .line 186
    .end local v5    # "insertHtml":Ljava/lang/String;
    .restart local v2    # "insertHtml":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 187
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    sget-boolean v4, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 188
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 190
    :cond_1
    return v0
.end method


# virtual methods
.method public doLoadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "historyUrl"    # Ljava/lang/String;

    .line 358
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method public doLoadUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 353
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method initWrapperEnv()V
    .locals 0
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0xb
    .end annotation

    .line 104
    invoke-static {p0}, Lcom/msec/net/WebKit/WebView;->initWrapperEnv(Landroid/webkit/WebView;)V

    .line 105
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "baseUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "encoding"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "historyUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 150
    if-eqz p3, :cond_0

    const-string v0, "text/html"

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    :cond_0
    invoke-static {}, Lcom/msec/MSecClient;->isProtectLocalHtml()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    invoke-direct {p0}, Lcom/msec/net/WebKit/WebView;->setTSWebViewClient()V

    .line 154
    :try_start_0
    const-string v0, "utf-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/msec/MSecClient;->protectHtmlData([B)[B

    move-result-object v0

    .line 155
    .local v0, "protectBytes":[B
    new-instance v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v1

    .line 160
    .end local v0    # "protectBytes":[B
    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-boolean v1, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 158
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 162
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    :goto_0
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-super/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 124
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {p1}, Lcom/msec/net/WebKit/WebView;->isHtmlPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-static {}, Lcom/msec/MSecClient;->isProtectLocalHtml()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-static {p1, p0}, Lcom/msec/net/WebKit/WebView;->loadWithJs(Ljava/lang/String;Lcom/msec/net/WebKit/WebViewLoader;)V

    .line 129
    return-void

    .line 132
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 137
    .local p2, "additionalHttpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-static {p1}, Lcom/msec/net/WebKit/WebView;->isHtmlPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-static {}, Lcom/msec/MSecClient;->isProtectLocalHtml()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-static {p1, p0}, Lcom/msec/net/WebKit/WebView;->loadWithJs(Ljava/lang/String;Lcom/msec/net/WebKit/WebViewLoader;)V

    .line 142
    return-void

    .line 145
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 146
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1
    .param p1, "client"    # Landroid/webkit/WebViewClient;

    .line 167
    invoke-static {}, Lcom/msec/MSecClient;->isProtectLocalHtml()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/msec/net/WebKit/WebView;->mWebViewClient:Lcom/msec/net/WebKit/WebViewClient;

    invoke-virtual {v0, p1}, Lcom/msec/net/WebKit/WebViewClient;->setmWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 169
    iget-object v0, p0, Lcom/msec/net/WebKit/WebView;->mWebViewClient:Lcom/msec/net/WebKit/WebViewClient;

    invoke-super {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_0

    .line 171
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 174
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/msec/net/WebKit/WebView;->isSetWebViewClient:Z

    .line 175
    return-void
.end method
