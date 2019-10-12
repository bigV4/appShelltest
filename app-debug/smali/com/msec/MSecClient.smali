.class public final Lcom/msec/MSecClient;
.super Ljava/lang/Object;
.source "MSecClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/msec/MSecClient$BatteryBroadcastReciver;,
        Lcom/msec/MSecClient$A;
    }
.end annotation


# static fields
.field private static AppInstalledTimestamp:J = 0x0L

.field public static final MSEC_FLAG_CORDOVA_PLUGIN:I = 0x10

.field public static final MSEC_FLAG_ENCRYPTED:I = 0x2

.field public static final MSEC_FLAG_LOCAL_WEBVIEW:I = 0x8

.field public static final MSEC_FLAG_NATIVE:I = 0x0

.field public static final MSEC_FLAG_URL:I = 0x20

.field public static final MSEC_FLAG_WEBVIEW:I = 0x1

.field public static final MSEC_USE_NET_LIB_ALL:I = 0xffff

.field public static final MSEC_USE_NET_LIB_ASYNC_HTTP_CLIENT:I = 0x8

.field public static final MSEC_USE_NET_LIB_DEFAULT_HTTP_CLIENT:I = 0x10

.field public static final MSEC_USE_NET_LIB_OK_HTTP3:I = 0x4

.field public static final MSEC_USE_NET_LIB_URL_OPEN_CONNECTION:I = 0x2

.field public static final MSEC_USE_NET_LIB_WEB_VIEW:I = 0x1

.field private static UserDataCreatedTimestamp:J

.field private static appDataDir:Ljava/lang/String;

.field private static initializedAllInOneStep:Z

.field private static isAllowDataCollection:Z

.field static mAppName:Ljava/lang/String;

.field static mBatteryCapacity:I

.field static mBatteryPlugged:I

.field static mBatteryStatus:I

.field private static mHeaderKey:Ljava/lang/String;

.field private static mIsProtectBody:Z

.field private static mIsProtectLocalHtml:Z

.field static mWifiBssid:Ljava/lang/String;

.field private static processLockStream:Ljava/io/FileOutputStream;

.field public static sAppCtx:Landroid/content/Context;

.field private static sCrashHandler:Lcom/msec/CrashHandler;

.field private static sDataServerUrl:Ljava/lang/String;


# instance fields
.field private mHandle:I

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 85
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/msec/MSecClient;->AppInstalledTimestamp:J

    .line 86
    sput-wide v0, Lcom/msec/MSecClient;->UserDataCreatedTimestamp:J

    .line 88
    const/4 v0, 0x0

    sput-object v0, Lcom/msec/MSecClient;->appDataDir:Ljava/lang/String;

    .line 89
    sput-object v0, Lcom/msec/MSecClient;->sAppCtx:Landroid/content/Context;

    .line 91
    sput-object v0, Lcom/msec/MSecClient;->sCrashHandler:Lcom/msec/CrashHandler;

    .line 92
    const/4 v1, 0x0

    sput-boolean v1, Lcom/msec/MSecClient;->isAllowDataCollection:Z

    .line 94
    sput-object v0, Lcom/msec/MSecClient;->mHeaderKey:Ljava/lang/String;

    .line 99
    const/4 v2, 0x1

    sput-boolean v2, Lcom/msec/MSecClient;->mIsProtectLocalHtml:Z

    .line 102
    sput-object v0, Lcom/msec/MSecClient;->processLockStream:Ljava/io/FileOutputStream;

    .line 103
    sput-boolean v1, Lcom/msec/MSecClient;->mIsProtectBody:Z

    .line 106
    sput v1, Lcom/msec/MSecClient;->mBatteryCapacity:I

    .line 107
    const/4 v0, -0x1

    sput v0, Lcom/msec/MSecClient;->mBatteryPlugged:I

    .line 108
    sput v0, Lcom/msec/MSecClient;->mBatteryStatus:I

    .line 109
    const-string v0, ""

    sput-object v0, Lcom/msec/MSecClient;->mWifiBssid:Ljava/lang/String;

    .line 110
    const-string v0, ""

    sput-object v0, Lcom/msec/MSecClient;->mAppName:Ljava/lang/String;

    .line 172
    sput-boolean v1, Lcom/msec/MSecClient;->initializedAllInOneStep:Z

    .line 666
    const-string v0, "msec"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 667
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    sget-object v0, Lcom/msec/MSecClient;->sAppCtx:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 117
    if-nez p1, :cond_0

    .line 118
    sget v0, Lcom/msec/MLog;->LOG_CODE_GETCLIENT_URL_ERROR:I

    invoke-static {v0}, Lcom/msec/MLog;->print(I)V

    .line 119
    const-string p1, ""

    goto :goto_0

    .line 122
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/net/MalformedURLException;
    sget v1, Lcom/msec/MLog;->LOG_CODE_GETCLIENT_URL_ERROR:I

    invoke-static {v1}, Lcom/msec/MLog;->print(I)V

    .line 125
    const-string p1, ""

    .line 129
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :goto_0
    invoke-direct {p0, p1}, Lcom/msec/MSecClient;->_ts_getNormalizeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/msec/MSecClient;->mUrl:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/msec/MSecClient;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/msec/MSecClient;->_ts_getClientHandle(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/msec/MSecClient;->mHandle:I

    .line 131
    return-void

    .line 114
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "MSec: Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native _ts_allowDataCollection()Z
.end method

.method private static native _ts_createGlobalRef(Ljava/lang/Object;)V
.end method

.method private static native _ts_getAuthenticateToken(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native _ts_getClientHandle(Ljava/lang/String;)I
.end method

.method static native _ts_getCollectionPath()Ljava/lang/String;
.end method

.method static native _ts_getCrashPath()Ljava/lang/String;
.end method

.method static native _ts_getData(Ljava/lang/String;)Ljava/lang/String;
.end method

.method static native _ts_getFingerPrint()Ljava/lang/String;
.end method

.method static native _ts_getHeaderKey()Ljava/lang/String;
.end method

.method static native _ts_getMobileBaseData()Ljava/lang/String;
.end method

.method private native _ts_getNormalizeURL(Ljava/lang/String;)Ljava/lang/String;
.end method

.method static native _ts_getProctedURL(Ljava/lang/String;)Ljava/lang/String;
.end method

.method static native _ts_getProtectHosts()Ljava/lang/String;
.end method

.method private native _ts_getRequestHeader(IILjava/lang/String;)Ljava/lang/String;
.end method

.method private static native _ts_hookArtMethod(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
.end method

.method private static native _ts_hookDalvikMethod(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
.end method

.method private static native _ts_initialize()Z
.end method

.method private static native _ts_isBodyEncryptActive(Ljava/lang/String;)Z
.end method

.method private static native _ts_isDalvikMode()Z
.end method

.method private static native _ts_isProxyOnline(Ljava/lang/String;)Z
.end method

.method private static native _ts_isSpecialFile([B)Z
.end method

.method private native _ts_onResponseHeader(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method private static native _ts_protectHtml([B)[B
.end method

.method private native _ts_recoverBody(ILjava/lang/String;[B)[B
.end method

.method private native _ts_recoverData(ILjava/lang/String;[B)[B
.end method

.method static native _ts_saveData(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native _ts_secureBody(ILjava/lang/String;[B)[B
.end method

.method private native _ts_secureData(ILjava/lang/String;[B)[B
.end method

.method static native _ts_secureFixedData([B)[B
.end method

.method static addBatteryInfo(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "sp"    # Ljava/lang/String;

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/msec/MSecClient;->mBatteryStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    sget v0, Lcom/msec/MSecClient;->mBatteryStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/msec/MSecClient;->mBatteryPlugged:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 605
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/msec/MSecClient;->mBatteryCapacity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    return-void
.end method

.method public static connectWebView(Landroid/webkit/WebView;)I
    .locals 1
    .param p0, "webView"    # Landroid/webkit/WebView;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 338
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/msec/MSecClient;->connectWebView(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)I

    move-result v0

    return v0
.end method

.method public static connectWebView(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)I
    .locals 2
    .param p0, "webView"    # Landroid/webkit/WebView;
    .param p1, "webViewClient"    # Landroid/webkit/WebViewClient;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 343
    sget-object v0, Lcom/msec/MSecClient;->sAppCtx:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 346
    if-nez p0, :cond_0

    .line 347
    sget v0, Lcom/msec/MLog;->LOG_CODE_CONNECT_WEBVIEW_FAIL:I

    invoke-static {v0}, Lcom/msec/MLog;->print(I)V

    .line 348
    const/4 v0, -0x1

    return v0

    .line 350
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 351
    new-instance v0, Lcom/msec/Helper;

    invoke-direct {v0}, Lcom/msec/Helper;-><init>()V

    const-string v1, "Z8XHJJY"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    .line 354
    .local v0, "origJsEnabled":Z
    if-nez v0, :cond_1

    .line 356
    const-string v1, "searchBoxJavaBridge_"

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 357
    const-string v1, "accessibility"

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 358
    const-string v1, "accessibilityTraversal"

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 361
    :cond_1
    sget v1, Lcom/msec/MLog;->LOG_CODE_CONNECT_WEBVIEW_SUCCESS:I

    invoke-static {v1}, Lcom/msec/MLog;->print(I)V

    .line 363
    const/4 v1, 0x0

    return v1

    .line 344
    .end local v0    # "origJsEnabled":Z
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "MSec: Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createGlobalRef(Ljava/lang/Object;)V
    .locals 0
    .param p0, "obj"    # Ljava/lang/Object;

    .line 219
    invoke-static {p0}, Lcom/msec/MSecClient;->_ts_createGlobalRef(Ljava/lang/Object;)V

    .line 220
    return-void
.end method

.method private static getAppDataDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .line 242
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 243
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 244
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 245
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 247
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 250
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static getAppName(Landroid/content/Context;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .line 555
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 556
    .local v0, "packManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 557
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lcom/msec/MSecClient;->mAppName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    .end local v0    # "packManager":Landroid/content/pm/PackageManager;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 558
    :catch_0
    move-exception v0

    .line 560
    :goto_0
    return-void
.end method

.method private static getAppTimestamp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "appDataDir"    # Ljava/lang/String;

    .line 290
    const/4 v0, 0x0

    .line 292
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 293
    .local v1, "pm":Landroid/content/pm/PackageManager;
    sget-object v2, Lcom/msec/MSecClient;->sAppCtx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 294
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 295
    .local v3, "appFile":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".035ed2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 296
    .local v4, "dataFile":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    sput-wide v5, Lcom/msec/MSecClient;->AppInstalledTimestamp:J

    .line 297
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 298
    .local v5, "dFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 299
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sput-wide v6, Lcom/msec/MSecClient;->UserDataCreatedTimestamp:J

    goto :goto_0

    .line 301
    :cond_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    .line 302
    const-string v6, "-"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 303
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 304
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sput-wide v6, Lcom/msec/MSecClient;->UserDataCreatedTimestamp:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "appFile":Ljava/lang/String;
    .end local v4    # "dataFile":Ljava/lang/String;
    .end local v5    # "dFile":Ljava/io/File;
    :goto_0
    if-eqz v0, :cond_3

    .line 313
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 318
    :cond_1
    :goto_1
    goto :goto_3

    .line 314
    :catch_0
    move-exception v1

    .line 315
    .local v1, "e":Ljava/io/IOException;
    sget-boolean v2, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 316
    :goto_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 311
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 306
    :catch_1
    move-exception v1

    .line 307
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    sget-boolean v2, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 308
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 311
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    if-eqz v0, :cond_3

    .line 313
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 314
    :catch_2
    move-exception v1

    .line 315
    .local v1, "e":Ljava/io/IOException;
    sget-boolean v2, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v2, :cond_1

    goto :goto_2

    .line 321
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    :goto_3
    return-void

    .line 311
    :goto_4
    if-eqz v0, :cond_4

    .line 313
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 318
    goto :goto_5

    .line 314
    :catch_3
    move-exception v2

    .line 315
    .local v2, "e":Ljava/io/IOException;
    sget-boolean v3, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 316
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 318
    .end local v2    # "e":Ljava/io/IOException;
    :cond_4
    :goto_5
    throw v1
.end method

.method public static getAuthenticateToken()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x9
    .end annotation

    .line 488
    sget v0, Lcom/msec/MLog;->LOG_CODE_CALLED_GET_AU_TOKEN:I

    invoke-static {v0}, Lcom/msec/MLog;->printDetail(I)V

    .line 489
    const/4 v0, 0x0

    .line 490
    .local v0, "token":Ljava/lang/String;
    sget-object v1, Lcom/msec/MSecClient;->sDataServerUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/msec/MSecClient;->sDataServerUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 491
    sget-object v1, Lcom/msec/MSecClient;->sDataServerUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/msec/MSecClient;->_ts_getAuthenticateToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 493
    :cond_0
    return-object v0
.end method

.method public static getClient(Ljava/lang/String;)Lcom/msec/MSecClient;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .line 367
    new-instance v0, Lcom/msec/MSecClient;

    invoke-direct {v0, p0}, Lcom/msec/MSecClient;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static getCollectionPath()Ljava/lang/String;
    .locals 1

    .line 517
    invoke-static {}, Lcom/msec/MSecClient;->_ts_getCollectionPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getCrashPath()Ljava/lang/String;
    .locals 1

    .line 521
    invoke-static {}, Lcom/msec/MSecClient;->_ts_getCrashPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getProcessLock(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 255
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/msec/MSecClient;->getAppDataDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "dataFile":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 257
    .local v1, "lockFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 259
    .local v2, "lock":Ljava/nio/channels/FileLock;
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sput-object v3, Lcom/msec/MSecClient;->processLockStream:Ljava/io/FileOutputStream;

    .line 260
    sget-object v3, Lcom/msec/MSecClient;->processLockStream:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    .local v3, "channel":Ljava/nio/channels/FileChannel;
    :try_start_2
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v4

    .line 263
    if-eqz v2, :cond_0

    .line 264
    const/4 v4, 0x1

    return v4

    .line 271
    :cond_0
    goto :goto_0

    .line 267
    :catch_0
    move-exception v4

    .line 268
    .local v4, "e":Ljava/io/IOException;
    :try_start_3
    sget-boolean v5, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 269
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 276
    .end local v3    # "channel":Ljava/nio/channels/FileChannel;
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 272
    :catch_1
    move-exception v3

    .line 273
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    sget-boolean v4, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 274
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 279
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_0
    nop

    .line 284
    .end local v0    # "dataFile":Ljava/lang/String;
    .end local v1    # "lockFile":Ljava/io/File;
    .end local v2    # "lock":Ljava/nio/channels/FileLock;
    goto :goto_2

    .line 276
    .restart local v0    # "dataFile":Ljava/lang/String;
    .restart local v1    # "lockFile":Ljava/io/File;
    .restart local v2    # "lock":Ljava/nio/channels/FileLock;
    :goto_1
    :try_start_5
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 280
    .end local v0    # "dataFile":Ljava/lang/String;
    .end local v1    # "lockFile":Ljava/io/File;
    .end local v2    # "lock":Ljava/nio/channels/FileLock;
    :catch_2
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 282
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 286
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method public static getUrlWithToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "url"    # Ljava/lang/String;

    .line 394
    invoke-static {p0}, Lcom/msec/MSecClient;->getClient(Ljava/lang/String;)Lcom/msec/MSecClient;

    move-result-object v0

    .line 395
    .local v0, "client":Lcom/msec/MSecClient;
    invoke-virtual {v0}, Lcom/msec/MSecClient;->getHeaderKey()Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, "headerKey":Ljava/lang/String;
    if-eqz v1, :cond_4

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 398
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 399
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 400
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 401
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 402
    .local v4, "index":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 403
    .local v5, "exToken":Ljava/lang/String;
    add-int/lit8 v6, v4, -0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3f

    if-ne v6, v7, :cond_0

    .line 404
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v4

    if-le v6, v7, :cond_0

    .line 405
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x26

    if-ne v6, v7, :cond_0

    .line 406
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 408
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 410
    :goto_0
    invoke-static {p0}, Lcom/msec/MSecClient;->getClient(Ljava/lang/String;)Lcom/msec/MSecClient;

    move-result-object v0

    .line 413
    .end local v4    # "index":I
    .end local v5    # "exToken":Ljava/lang/String;
    :cond_1
    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Lcom/msec/MSecClient;->getRequestHeader(I)Ljava/lang/String;

    move-result-object v4

    .line 414
    .local v4, "headerValue":Ljava/lang/String;
    if-eqz v4, :cond_4

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 415
    const-string v5, "?"

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "&"

    goto :goto_1

    :cond_2
    const-string v5, "?"

    .line 416
    .local v5, "opt":Ljava/lang/String;
    :goto_1
    const-string v6, "#"

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 417
    .local v6, "index":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    .line 418
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 420
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 424
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "headerValue":Ljava/lang/String;
    .end local v5    # "opt":Ljava/lang/String;
    .end local v6    # "index":I
    :cond_4
    :goto_2
    return-object p0
.end method

.method public static hookArtMethod(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0
    .param p0, "tgtMethod"    # Ljava/lang/reflect/Method;
    .param p1, "hookMethod"    # Ljava/lang/reflect/Method;
    .param p2, "backupMethod"    # Ljava/lang/reflect/Method;

    .line 227
    invoke-static {p0, p1, p2}, Lcom/msec/MSecClient;->_ts_hookArtMethod(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 228
    return-void
.end method

.method public static hookDalvikMethod(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0
    .param p0, "tgtMethod"    # Ljava/lang/reflect/Method;
    .param p1, "hookMethod"    # Ljava/lang/reflect/Method;

    .line 223
    invoke-static {p0, p1}, Lcom/msec/MSecClient;->_ts_hookDalvikMethod(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 224
    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .line 169
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/msec/MSecClient;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "dataCollectServer"    # Ljava/lang/String;

    const-class v0, Lcom/msec/MSecClient;

    monitor-enter v0

    .line 134
    :try_start_0
    sget-object v1, Lcom/msec/MSecClient;->sAppCtx:Landroid/content/Context;

    if-nez v1, :cond_3

    .line 135
    if-nez p0, :cond_0

    .line 136
    sget v1, Lcom/msec/MLog;->LOG_CODE_INITIALIZE_SDK_ERROR:I

    invoke-static {v1}, Lcom/msec/MLog;->print(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit v0

    return-void

    .line 139
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/msec/MSecClient;->sAppCtx:Landroid/content/Context;

    .line 141
    invoke-static {p0}, Lcom/msec/MSecClient;->getAppDataDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/msec/MSecClient;->appDataDir:Ljava/lang/String;

    .line 143
    sget-object v1, Lcom/msec/MSecClient;->appDataDir:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/msec/MSecClient;->getAppTimestamp(Landroid/content/Context;Ljava/lang/String;)V

    .line 144
    invoke-static {p0}, Lcom/msec/MSecClient;->startCollectBattery(Landroid/content/Context;)V

    .line 145
    invoke-static {p0}, Lcom/msec/MSecClient;->getAppName(Landroid/content/Context;)V

    .line 146
    invoke-static {p0}, Lcom/msec/WifiCollection;->getWifiBssid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/msec/MSecClient;->mWifiBssid:Ljava/lang/String;

    .line 148
    invoke-static {}, Lcom/msec/MSecClient;->_ts_initialize()Z

    .line 150
    new-instance v1, Lcom/msec/CrashHandler;

    sget-object v2, Lcom/msec/MSecClient;->sAppCtx:Landroid/content/Context;

    sget-object v3, Lcom/msec/MSecClient;->appDataDir:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/msec/CrashHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/msec/MSecClient;->sCrashHandler:Lcom/msec/CrashHandler;

    .line 152
    const-string v1, ".tmplock"

    invoke-static {p0, v1}, Lcom/msec/MSecClient;->getProcessLock(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 153
    .local v1, "isGetProcessLock":Z
    if-eqz v1, :cond_1

    .line 154
    sget-object v2, Lcom/msec/MSecClient;->sCrashHandler:Lcom/msec/CrashHandler;

    invoke-virtual {v2}, Lcom/msec/CrashHandler;->postCrashLog()V

    .line 157
    :cond_1
    sget-object v2, Lcom/msec/MSecClient;->sAppCtx:Landroid/content/Context;

    invoke-static {v2}, Lcom/msec/DataCollection;->isRunningInForeground(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 158
    if-eqz p1, :cond_2

    .line 159
    invoke-static {p1}, Lcom/msec/DataCollection;->getDataServerURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/msec/MSecClient;->sDataServerUrl:Ljava/lang/String;

    .line 160
    :cond_2
    invoke-static {}, Lcom/msec/MSecClient;->_ts_allowDataCollection()Z

    move-result v2

    sput-boolean v2, Lcom/msec/MSecClient;->isAllowDataCollection:Z

    .line 161
    sget-boolean v2, Lcom/msec/MSecClient;->isAllowDataCollection:Z

    if-eqz v2, :cond_3

    .line 162
    sget-object v2, Lcom/msec/MSecClient;->sAppCtx:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/msec/DataCollection;->start(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    .end local v1    # "isGetProcessLock":Z
    :cond_3
    monitor-exit v0

    return-void

    .line 133
    .end local p0    # "ctx":Landroid/content/Context;
    .end local p1    # "dataCollectServer":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized initializeAllInOneStep(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "dataCollectServer"    # Ljava/lang/String;
    .param p2, "useNetLibMask"    # I

    const-class v0, Lcom/msec/MSecClient;

    monitor-enter v0

    .line 177
    :try_start_0
    const-string v1, "MSecClient.initializeAllInOneStep"

    invoke-static {v1}, Lcom/msec/MLog;->logd(Ljava/lang/String;)V

    .line 178
    sget-boolean v1, Lcom/msec/MSecClient;->initializedAllInOneStep:Z

    if-nez v1, :cond_0

    .line 179
    const/4 v1, 0x1

    sput-boolean v1, Lcom/msec/MSecClient;->initializedAllInOneStep:Z

    .line 180
    new-instance v1, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v1}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 181
    .local v1, "queue":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/msec/MSecClient$1;

    invoke-direct {v3, p2, p0, v1}, Lcom/msec/MSecClient$1;-><init>(ILandroid/content/Context;Ljava/util/concurrent/SynchronousQueue;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 208
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 210
    invoke-static {p0, p1}, Lcom/msec/MSecClient;->initialize(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :try_start_1
    invoke-virtual {v1}, Ljava/util/concurrent/SynchronousQueue;->take()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    goto :goto_0

    .line 213
    :catch_0
    move-exception v2

    .line 216
    .end local v1    # "queue":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    .line 176
    .end local p0    # "ctx":Landroid/content/Context;
    .end local p1    # "dataCollectServer":Ljava/lang/String;
    .end local p2    # "useNetLibMask":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isDalvikMode()Z
    .locals 1

    .line 231
    invoke-static {}, Lcom/msec/MSecClient;->_ts_isDalvikMode()Z

    move-result v0

    return v0
.end method

.method public static isLogDetail()Z
    .locals 1

    .line 530
    sget-boolean v0, Lcom/msec/MLog;->isLogDetail:Z

    return v0
.end method

.method public static isProctedURL(Ljava/lang/String;)Z
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .line 543
    if-nez p0, :cond_0

    .line 544
    const/4 v0, 0x0

    return v0

    .line 546
    :cond_0
    const-string v0, ""

    invoke-static {p0}, Lcom/msec/MSecClient;->_ts_getProctedURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isProtectBody()Z
    .locals 1

    .line 539
    sget-boolean v0, Lcom/msec/MSecClient;->mIsProtectBody:Z

    return v0
.end method

.method public static isProtectLocalHtml()Z
    .locals 1

    .line 505
    sget-boolean v0, Lcom/msec/MSecClient;->mIsProtectLocalHtml:Z

    return v0
.end method

.method static isProxyOnline(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .line 513
    invoke-static {p0}, Lcom/msec/MSecClient;->_ts_isProxyOnline(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSpecialFile([B)Z
    .locals 1
    .param p0, "data"    # [B

    .line 550
    invoke-static {p0}, Lcom/msec/MSecClient;->_ts_isSpecialFile([B)Z

    move-result v0

    return v0
.end method

.method public static logDetail(Z)V
    .locals 1
    .param p0, "state"    # Z

    .line 525
    sget v0, Lcom/msec/MLog;->LOG_CODE_CALLED_SET_LOG_DETAIL:I

    invoke-static {v0}, Lcom/msec/MLog;->print(I)V

    .line 526
    sput-boolean p0, Lcom/msec/MLog;->isLogDetail:Z

    .line 527
    return-void
.end method

.method public static protectBody()V
    .locals 1

    .line 534
    sget v0, Lcom/msec/MLog;->LOG_CODE_WRAPPER_ENCRYPT:I

    invoke-static {v0}, Lcom/msec/MLog;->print(I)V

    .line 535
    const/4 v0, 0x1

    sput-boolean v0, Lcom/msec/MSecClient;->mIsProtectBody:Z

    .line 536
    return-void
.end method

.method public static protectHtmlData([B)[B
    .locals 1
    .param p0, "htmlData"    # [B

    .line 497
    if-eqz p0, :cond_0

    .line 498
    invoke-static {p0}, Lcom/msec/MSecClient;->_ts_protectHtml([B)[B

    move-result-object v0

    return-object v0

    .line 500
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static protectlocalHtml()V
    .locals 1

    .line 509
    const/4 v0, 0x1

    sput-boolean v0, Lcom/msec/MSecClient;->mIsProtectLocalHtml:Z

    .line 510
    return-void
.end method

.method public static saveCrash(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "dumpFile"    # Ljava/lang/String;
    .param p1, "threadName"    # Ljava/lang/String;

    .line 332
    sget-object v0, Lcom/msec/MSecClient;->sCrashHandler:Lcom/msec/CrashHandler;

    if-eqz v0, :cond_0

    .line 333
    sget-object v0, Lcom/msec/MSecClient;->sCrashHandler:Lcom/msec/CrashHandler;

    const-string v1, "segment fault"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpFile="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\ncall stack:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/msec/MSecClient;->sCrashHandler:Lcom/msec/CrashHandler;

    invoke-virtual {v3, p1}, Lcom/msec/CrashHandler;->getThreadCallStack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/msec/CrashHandler;->writeCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_0
    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 2
    .param p0, "id"    # Ljava/lang/String;

    .line 324
    sget-object v0, Lcom/msec/MSecClient;->sAppCtx:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 327
    invoke-static {p0}, Lcom/msec/DataCollection;->setUserId(Ljava/lang/String;)V

    .line 328
    return-void

    .line 325
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "MSec: Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static startCollectBattery(Landroid/content/Context;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .line 563
    new-instance v0, Lcom/msec/MSecClient$BatteryBroadcastReciver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/msec/MSecClient$BatteryBroadcastReciver;-><init>(Lcom/msec/MSecClient$1;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 564
    return-void
.end method


# virtual methods
.method public decryptResponseBody(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1
    .param p1, "data"    # Ljava/io/InputStream;

    .line 467
    new-instance v0, Lcom/msec/TSInputStream;

    invoke-direct {v0, p1, p0}, Lcom/msec/TSInputStream;-><init>(Ljava/io/InputStream;Lcom/msec/MSecClient;)V

    .line 468
    .local v0, "decrypted":Lcom/msec/TSInputStream;
    return-object v0
.end method

.method public decryptResponseBody([B)[B
    .locals 2
    .param p1, "data"    # [B

    .line 462
    sget v0, Lcom/msec/MLog;->LOG_CODE_CALLED_DEC_RES_BODY:I

    invoke-static {v0}, Lcom/msec/MLog;->printDetail(I)V

    .line 463
    iget v0, p0, Lcom/msec/MSecClient;->mHandle:I

    iget-object v1, p0, Lcom/msec/MSecClient;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/msec/MSecClient;->_ts_recoverBody(ILjava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public encryptRequestBody(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1
    .param p1, "data"    # Ljava/io/OutputStream;

    .line 457
    new-instance v0, Lcom/msec/TSOutputStream;

    invoke-direct {v0, p1, p0}, Lcom/msec/TSOutputStream;-><init>(Ljava/io/OutputStream;Lcom/msec/MSecClient;)V

    .line 458
    .local v0, "encrypted":Lcom/msec/TSOutputStream;
    return-object v0
.end method

.method public encryptRequestBody([B)[B
    .locals 2
    .param p1, "data"    # [B

    .line 452
    sget v0, Lcom/msec/MLog;->LOG_CODE_CALLED_ENC_REQ_BODY:I

    invoke-static {v0}, Lcom/msec/MLog;->printDetail(I)V

    .line 453
    iget v0, p0, Lcom/msec/MSecClient;->mHandle:I

    iget-object v1, p0, Lcom/msec/MSecClient;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/msec/MSecClient;->_ts_secureBody(ILjava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getHeaderKey()Ljava/lang/String;
    .locals 1

    .line 384
    sget v0, Lcom/msec/MLog;->LOG_CODE_CALLED_GET_HEADER_KEY:I

    invoke-static {v0}, Lcom/msec/MLog;->printDetail(I)V

    .line 385
    sget-object v0, Lcom/msec/MSecClient;->mHeaderKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 386
    invoke-static {}, Lcom/msec/MSecClient;->_ts_getHeaderKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/msec/MSecClient;->mHeaderKey:Ljava/lang/String;

    .line 389
    :cond_0
    sget-object v0, Lcom/msec/MSecClient;->mHeaderKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestHeader()Ljava/lang/String;
    .locals 1

    .line 380
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/msec/MSecClient;->getRequestHeader(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestHeader(I)Ljava/lang/String;
    .locals 3
    .param p1, "flag"    # I

    .line 371
    sget v0, Lcom/msec/MLog;->LOG_CODE_CALLED_GET_REQ_HEADER:I

    invoke-static {v0}, Lcom/msec/MLog;->printDetail(I)V

    .line 372
    iget v0, p0, Lcom/msec/MSecClient;->mHandle:I

    iget-object v1, p0, Lcom/msec/MSecClient;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lcom/msec/MSecClient;->_ts_getRequestHeader(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "header":Ljava/lang/String;
    sget-boolean v1, Lcom/msec/MSecClient;->isAllowDataCollection:Z

    if-eqz v1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 374
    iget-object v1, p0, Lcom/msec/MSecClient;->mUrl:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/msec/DataCollection;->setDataCollectionServerFromClient(Ljava/lang/String;Z)V

    .line 376
    :cond_0
    return-object v0
.end method

.method public isBodyEncryptActive()Z
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/msec/MSecClient;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/msec/MSecClient;->_ts_isBodyEncryptActive(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNeedBodyEncrypt()Z
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/msec/MSecClient;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/msec/MSecClient;->_ts_isBodyEncryptActive(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onResponseHeader(Ljava/lang/String;)I
    .locals 3
    .param p1, "header"    # Ljava/lang/String;

    .line 428
    sget v0, Lcom/msec/MLog;->LOG_CODE_CALLED_ON_RES_HEADER:I

    invoke-static {v0}, Lcom/msec/MLog;->printDetail(I)V

    .line 429
    if-nez p1, :cond_0

    .line 430
    const-string p1, ""

    .line 432
    :cond_0
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    sget v0, Lcom/msec/MLog;->LOG_CODE_NONE_RESPONSE_HEADER:I

    invoke-static {v0}, Lcom/msec/MLog;->print(I)V

    .line 436
    :cond_1
    iget v0, p0, Lcom/msec/MSecClient;->mHandle:I

    iget-object v1, p0, Lcom/msec/MSecClient;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lcom/msec/MSecClient;->_ts_onResponseHeader(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 437
    .local v0, "ret":I
    if-eqz v0, :cond_2

    .line 438
    return v0

    .line 441
    :cond_2
    sget-boolean v1, Lcom/msec/MSecClient;->isAllowDataCollection:Z

    if-eqz v1, :cond_3

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 442
    iget-object v1, p0, Lcom/msec/MSecClient;->mUrl:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/msec/DataCollection;->setDataCollectionServerFromClient(Ljava/lang/String;Z)V

    .line 445
    :cond_3
    const-string v1, ""

    invoke-static {}, Lcom/msec/CrashHandler;->getCrashURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 446
    iget-object v1, p0, Lcom/msec/MSecClient;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/msec/CrashHandler;->saveCrashURL(Ljava/lang/String;)V

    .line 448
    :cond_4
    return v0
.end method

.method recoverData([B)[B
    .locals 2
    .param p1, "data"    # [B

    .line 475
    iget v0, p0, Lcom/msec/MSecClient;->mHandle:I

    iget-object v1, p0, Lcom/msec/MSecClient;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/msec/MSecClient;->_ts_recoverData(ILjava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method secureData([B)[B
    .locals 2
    .param p1, "data"    # [B

    .line 472
    iget v0, p0, Lcom/msec/MSecClient;->mHandle:I

    iget-object v1, p0, Lcom/msec/MSecClient;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/msec/MSecClient;->_ts_secureData(ILjava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method
