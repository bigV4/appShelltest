.class public Lcom/msec/MLog;
.super Ljava/lang/Object;
.source "MLog.java"


# static fields
.field static LOG_CODE_CALLED_DEC_RES_BODY:I = 0x0

.field static LOG_CODE_CALLED_ENC_REQ_BODY:I = 0x0

.field static LOG_CODE_CALLED_GET_AU_TOKEN:I = 0x0

.field static LOG_CODE_CALLED_GET_HEADER_KEY:I = 0x0

.field static LOG_CODE_CALLED_GET_REQ_HEADER:I = 0x0

.field static LOG_CODE_CALLED_ON_RES_HEADER:I = 0x0

.field static LOG_CODE_CALLED_SET_LOG_DETAIL:I = 0x0

.field static LOG_CODE_CONNECT_WEBVIEW_FAIL:I = 0x0

.field static LOG_CODE_CONNECT_WEBVIEW_SUCCESS:I = 0x0

.field static LOG_CODE_GETCLIENT_URL_ERROR:I = 0x0

.field static LOG_CODE_INITIALIZE_SDK_ERROR:I = 0x0

.field static LOG_CODE_LITE_ALREADY_START:I = 0x0

.field static LOG_CODE_LITE_INITIALIZE:I = 0x0

.field static LOG_CODE_LITE_SEND_SERVER_FAIL:I = 0x0

.field static LOG_CODE_LITE_SEND_SERVER_SUCCESS:I = 0x0

.field static LOG_CODE_LITE_SERVER_FROM_CERT:I = 0x0

.field static LOG_CODE_LITE_SERVER_URL:I = 0x0

.field static LOG_CODE_LITE_SERVER_URL_ERROR:I = 0x0

.field static LOG_CODE_LITE_SET_SERVER_FROM_RES:I = 0x0

.field static LOG_CODE_LITE_SET_USERID:I = 0x0

.field static LOG_CODE_LITE_WORKER_PROCESS_TERMINATED:I = 0x0

.field static LOG_CODE_MOBILE_OFF:I = 0x0

.field static LOG_CODE_NONE_RESPONSE_HEADER:I = 0x0

.field static LOG_CODE_NOT_RAS:I = 0x0

.field static LOG_CODE_NO_ALIVE_SERVER:I = 0x0

.field public static LOG_CODE_WRAPPER_ASY_CLIENT_WORK:I = 0x0

.field public static LOG_CODE_WRAPPER_ENCRYPT:I = 0x0

.field public static LOG_CODE_WRAPPER_HTTPCLIENT_WORK:I = 0x0

.field public static LOG_CODE_WRAPPER_OKHTTP_WORK:I = 0x0

.field public static LOG_CODE_WRAPPER_URL_HTTPS_WORK:I = 0x0

.field public static LOG_CODE_WRAPPER_URL_HTTP_WORK:I = 0x0

.field public static LOG_CODE_WRAPPER_WEBVIEW_WORK:I = 0x0

.field public static final TAG:Ljava/lang/String; = "MSEC"

.field public static historyLogs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static isLogDetail:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const/16 v0, 0x3e9

    sput v0, Lcom/msec/MLog;->LOG_CODE_LITE_INITIALIZE:I

    .line 11
    const/16 v0, 0x3ea

    sput v0, Lcom/msec/MLog;->LOG_CODE_LITE_SEND_SERVER_SUCCESS:I

    .line 12
    const/16 v0, 0x3eb

    sput v0, Lcom/msec/MLog;->LOG_CODE_LITE_SEND_SERVER_FAIL:I

    .line 13
    const/16 v0, 0x3ec

    sput v0, Lcom/msec/MLog;->LOG_CODE_LITE_WORKER_PROCESS_TERMINATED:I

    .line 14
    const/16 v0, 0x3ed

    sput v0, Lcom/msec/MLog;->LOG_CODE_LITE_SERVER_URL:I

    .line 15
    const/16 v0, 0x3ee

    sput v0, Lcom/msec/MLog;->LOG_CODE_LITE_SERVER_URL_ERROR:I

    .line 16
    const/16 v0, 0x3ef

    sput v0, Lcom/msec/MLog;->LOG_CODE_INITIALIZE_SDK_ERROR:I

    .line 17
    const/16 v0, 0x3f0

    sput v0, Lcom/msec/MLog;->LOG_CODE_LITE_SERVER_FROM_CERT:I

    .line 18
    const/16 v0, 0x3f1

    sput v0, Lcom/msec/MLog;->LOG_CODE_LITE_SET_SERVER_FROM_RES:I

    .line 19
    const/16 v0, 0x3f2

    sput v0, Lcom/msec/MLog;->LOG_CODE_CALLED_SET_LOG_DETAIL:I

    .line 20
    const/16 v0, 0x3f5

    sput v0, Lcom/msec/MLog;->LOG_CODE_MOBILE_OFF:I

    .line 21
    const/16 v0, 0x3f6

    sput v0, Lcom/msec/MLog;->LOG_CODE_NOT_RAS:I

    .line 22
    const/16 v0, 0x3f7

    sput v0, Lcom/msec/MLog;->LOG_CODE_LITE_ALREADY_START:I

    .line 24
    const/16 v0, 0x7d1

    sput v0, Lcom/msec/MLog;->LOG_CODE_CONNECT_WEBVIEW_SUCCESS:I

    .line 25
    const/16 v0, 0x7d2

    sput v0, Lcom/msec/MLog;->LOG_CODE_CONNECT_WEBVIEW_FAIL:I

    .line 27
    const/16 v0, 0xbb9

    sput v0, Lcom/msec/MLog;->LOG_CODE_LITE_SET_USERID:I

    .line 29
    const/16 v0, 0xfa1

    sput v0, Lcom/msec/MLog;->LOG_CODE_GETCLIENT_URL_ERROR:I

    .line 30
    const/16 v0, 0xfa2

    sput v0, Lcom/msec/MLog;->LOG_CODE_NO_ALIVE_SERVER:I

    .line 32
    const/16 v0, 0x1389

    sput v0, Lcom/msec/MLog;->LOG_CODE_CALLED_GET_HEADER_KEY:I

    .line 33
    const/16 v0, 0x138a

    sput v0, Lcom/msec/MLog;->LOG_CODE_CALLED_GET_REQ_HEADER:I

    .line 34
    const/16 v0, 0x138b

    sput v0, Lcom/msec/MLog;->LOG_CODE_CALLED_ON_RES_HEADER:I

    .line 35
    const/16 v0, 0x138c

    sput v0, Lcom/msec/MLog;->LOG_CODE_CALLED_ENC_REQ_BODY:I

    .line 36
    const/16 v0, 0x138d

    sput v0, Lcom/msec/MLog;->LOG_CODE_CALLED_DEC_RES_BODY:I

    .line 37
    const/16 v0, 0x138e

    sput v0, Lcom/msec/MLog;->LOG_CODE_CALLED_GET_AU_TOKEN:I

    .line 39
    const/16 v0, 0x1771

    sput v0, Lcom/msec/MLog;->LOG_CODE_WRAPPER_OKHTTP_WORK:I

    .line 40
    const/16 v0, 0x1772

    sput v0, Lcom/msec/MLog;->LOG_CODE_WRAPPER_URL_HTTP_WORK:I

    .line 41
    const/16 v0, 0x1773

    sput v0, Lcom/msec/MLog;->LOG_CODE_WRAPPER_URL_HTTPS_WORK:I

    .line 42
    const/16 v0, 0x1774

    sput v0, Lcom/msec/MLog;->LOG_CODE_WRAPPER_HTTPCLIENT_WORK:I

    .line 43
    const/16 v0, 0x1775

    sput v0, Lcom/msec/MLog;->LOG_CODE_WRAPPER_WEBVIEW_WORK:I

    .line 44
    const/16 v0, 0x1776

    sput v0, Lcom/msec/MLog;->LOG_CODE_WRAPPER_ASY_CLIENT_WORK:I

    .line 46
    const/16 v0, 0x17da

    sput v0, Lcom/msec/MLog;->LOG_CODE_WRAPPER_ENCRYPT:I

    .line 48
    const/16 v0, 0x1f41

    sput v0, Lcom/msec/MLog;->LOG_CODE_NONE_RESPONSE_HEADER:I

    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/msec/MLog;->isLogDetail:Z

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/msec/MLog;->historyLogs:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 82
    sget-boolean v0, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "MSEC"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    return-void
.end method

.method public static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 94
    sget-boolean v0, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "MSEC"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    return-void
.end method

.method public static logw(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 88
    sget-boolean v0, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "MSEC"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    return-void
.end method

.method public static print(I)V
    .locals 2
    .param p0, "logCode"    # I

    .line 58
    const-string v0, "MSEC"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method

.method public static print(ILjava/lang/Throwable;)V
    .locals 2
    .param p0, "logCode"    # I
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 62
    const-string v0, "MSEC"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    return-void
.end method

.method public static printDetail(I)V
    .locals 1
    .param p0, "logCode"    # I

    .line 76
    sget-boolean v0, Lcom/msec/MLog;->isLogDetail:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-static {p0}, Lcom/msec/MLog;->print(I)V

    .line 79
    :cond_0
    return-void
.end method

.method public static printOnce(I)V
    .locals 3
    .param p0, "logCode"    # I

    .line 66
    sget-object v0, Lcom/msec/MLog;->historyLogs:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    return-void

    .line 68
    :cond_0
    sget-object v0, Lcom/msec/MLog;->historyLogs:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v0, "MSEC"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method
