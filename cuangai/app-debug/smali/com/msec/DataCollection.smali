.class Lcom/msec/DataCollection;
.super Ljava/lang/Object;
.source "DataCollection.java"


# static fields
.field private static DATA_COLLECTION_VARIATION_VERSION:Ljava/lang/String;

.field private static RSP_MAGIC_HEADER:Ljava/lang/String;

.field private static SERVER_KEY:Ljava/lang/String;

.field private static SYSINFO_HANDLER:Ljava/lang/String;

.field private static USERID_KEY:Ljava/lang/String;

.field private static USERID_TIME_KEY:Ljava/lang/String;

.field private static data_collect_server:Ljava/lang/String;

.field private static data_collect_server_from_init:Ljava/lang/String;

.field private static isFirstRequest:Z

.field private static isSetUserId:Z

.field private static maxUserIdLen:I

.field private static sAppCtx:Landroid/content/Context;

.field private static setUserIdTime:Ljava/lang/String;

.field private static userId:Ljava/lang/String;

.field private static waitSendIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-string v0, "A"

    sput-object v0, Lcom/msec/DataCollection;->DATA_COLLECTION_VARIATION_VERSION:Ljava/lang/String;

    .line 40
    const-string v0, ">sysinfo>:"

    sput-object v0, Lcom/msec/DataCollection;->RSP_MAGIC_HEADER:Ljava/lang/String;

    .line 41
    const-string v0, "vZmbpNXez9Wb/"

    sput-object v0, Lcom/msec/DataCollection;->SYSINFO_HANDLER:Ljava/lang/String;

    .line 42
    const-string v0, "xxxxZZAAXAA"

    sput-object v0, Lcom/msec/DataCollection;->SERVER_KEY:Ljava/lang/String;

    .line 43
    const-string v0, "ElkUFNVV"

    sput-object v0, Lcom/msec/DataCollection;->USERID_KEY:Ljava/lang/String;

    .line 44
    const-string v0, "XKJFKKDJHAF"

    sput-object v0, Lcom/msec/DataCollection;->USERID_TIME_KEY:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/msec/DataCollection;->sAppCtx:Landroid/content/Context;

    .line 46
    const-string v0, ""

    sput-object v0, Lcom/msec/DataCollection;->userId:Ljava/lang/String;

    .line 47
    const-string v0, ""

    sput-object v0, Lcom/msec/DataCollection;->setUserIdTime:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/msec/DataCollection;->waitSendIDs:Ljava/util/List;

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/msec/DataCollection;->isSetUserId:Z

    .line 50
    const-string v0, ""

    sput-object v0, Lcom/msec/DataCollection;->data_collect_server:Ljava/lang/String;

    .line 51
    const-string v0, ""

    sput-object v0, Lcom/msec/DataCollection;->data_collect_server_from_init:Ljava/lang/String;

    .line 52
    const/16 v0, 0xff

    sput v0, Lcom/msec/DataCollection;->maxUserIdLen:I

    .line 53
    const/4 v0, 0x1

    sput-boolean v0, Lcom/msec/DataCollection;->isFirstRequest:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 38
    invoke-static {}, Lcom/msec/DataCollection;->isScreenLock()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .line 38
    sget-object v0, Lcom/msec/DataCollection;->sAppCtx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/msec/DataCollection;->setUserIdTime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 38
    sget-boolean v0, Lcom/msec/DataCollection;->isSetUserId:Z

    return v0
.end method

.method static synthetic access$300()V
    .locals 0

    .line 38
    invoke-static {}, Lcom/msec/DataCollection;->clearSetIdState()V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/msec/DataCollection;->data_collect_server:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 38
    invoke-static {p0}, Lcom/msec/DataCollection;->postData(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 38
    invoke-static {}, Lcom/msec/DataCollection;->fetchSysInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/msec/DataCollection;->userId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 38
    sput-object p0, Lcom/msec/DataCollection;->userId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800()Ljava/util/List;
    .locals 1

    .line 38
    sget-object v0, Lcom/msec/DataCollection;->waitSendIDs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/msec/DataCollection;->DATA_COLLECTION_VARIATION_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method private static clearSetIdState()V
    .locals 1

    .line 163
    const/4 v0, 0x0

    sput-boolean v0, Lcom/msec/DataCollection;->isSetUserId:Z

    .line 164
    return-void
.end method

.method private static fetchSysInfo()Ljava/lang/String;
    .locals 7

    .line 198
    new-instance v0, Lcom/msec/DataCollection$1;

    invoke-direct {v0}, Lcom/msec/DataCollection$1;-><init>()V

    .line 209
    .local v0, "sysInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/msec/SysInfoCollection;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/msec/SysInfoCollection;

    .line 210
    .local v2, "sic":Lcom/msec/SysInfoCollection;
    sget-object v3, Lcom/msec/DataCollection;->sAppCtx:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/msec/SysInfoCollection;->start(Landroid/content/Context;)V

    .line 211
    .end local v2    # "sic":Lcom/msec/SysInfoCollection;
    goto :goto_0

    .line 214
    :cond_0
    const-wide/16 v1, 0x1388

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    goto :goto_1

    .line 215
    :catch_0
    move-exception v1

    .line 218
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, ":"

    .line 220
    .local v2, "sp":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/msec/SysInfoCollection;

    .line 221
    .local v4, "sic":Lcom/msec/SysInfoCollection;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Lcom/msec/SysInfoCollection;->end()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .end local v4    # "sic":Lcom/msec/SysInfoCollection;
    goto :goto_2

    .line 223
    :cond_1
    invoke-static {v1, v2}, Lcom/msec/MSecClient;->addBatteryInfo(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcom/msec/DataCollection;->getScreenOrientation()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static getDataCollectionServer()Ljava/lang/String;
    .locals 1

    .line 115
    sget-object v0, Lcom/msec/DataCollection;->data_collect_server:Ljava/lang/String;

    return-object v0
.end method

.method public static getDataServerURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .line 353
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 354
    .local v0, "tmp":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, "tmpPath":Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 358
    :cond_0
    sget-object v2, Lcom/msec/DataCollection;->SYSINFO_HANDLER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 361
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/msec/DataCollection;->SYSINFO_HANDLER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 363
    .end local v0    # "tmp":Ljava/net/URL;
    .end local v1    # "tmpPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 365
    const-string v1, ""

    return-object v1
.end method

.method private static getScreenOrientation()I
    .locals 3

    .line 191
    sget-object v0, Lcom/msec/DataCollection;->sAppCtx:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 192
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 193
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v2

    return v2
.end method

.method private static initializeUserInfo()V
    .locals 3

    .line 150
    sget-object v0, Lcom/msec/DataCollection;->USERID_KEY:Ljava/lang/String;

    invoke-static {v0}, Lcom/msec/MSecClient;->_ts_getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    sput-object v0, Lcom/msec/DataCollection;->userId:Ljava/lang/String;

    .line 153
    sget-object v1, Lcom/msec/DataCollection;->waitSendIDs:Ljava/util/List;

    sget-object v2, Lcom/msec/DataCollection;->userId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_0
    sget-object v1, Lcom/msec/DataCollection;->USERID_TIME_KEY:Ljava/lang/String;

    invoke-static {v1}, Lcom/msec/MSecClient;->_ts_getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "time":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 158
    sput-object v1, Lcom/msec/DataCollection;->setUserIdTime:Ljava/lang/String;

    .line 160
    :cond_1
    return-void
.end method

.method static isRunningInForeground(Landroid/content/Context;)Z
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;

    .line 178
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 179
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 181
    .local v1, "appProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 182
    .local v2, "pid":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 183
    .local v4, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, v6, :cond_1

    .line 184
    iget v3, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x64

    if-ne v3, v6, :cond_0

    const/4 v5, 0x1

    nop

    :cond_0
    return v5

    .line 186
    .end local v4    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    goto :goto_0

    .line 187
    :cond_2
    return v5
.end method

.method private static isScreenLock()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 168
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 169
    sget-object v0, Lcom/msec/DataCollection;->sAppCtx:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 170
    .local v0, "mKeyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    return v1

    .line 172
    .end local v0    # "mKeyguardManager":Landroid/app/KeyguardManager;
    :cond_0
    sget-object v0, Lcom/msec/DataCollection;->sAppCtx:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 173
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private static postData(Ljava/lang/String;)I
    .locals 2
    .param p0, "data"    # Ljava/lang/String;

    .line 229
    sget-object v0, Lcom/msec/DataCollection;->data_collect_server_from_init:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    sget-object v0, Lcom/msec/DataCollection;->data_collect_server_from_init:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/msec/DataCollection;->postData(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 231
    :cond_0
    sget-object v0, Lcom/msec/DataCollection;->data_collect_server:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    sget-object v0, Lcom/msec/DataCollection;->data_collect_server:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/msec/DataCollection;->postData(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 234
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private static postData(Ljava/lang/String;Ljava/lang/String;)I
    .locals 21
    .param p0, "dataServer"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;

    .line 245
    move-object/from16 v1, p0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 246
    .local v0, "url":Ljava/net/URL;
    invoke-static/range {p0 .. p0}, Lcom/msec/MSecClient;->getClient(Ljava/lang/String;)Lcom/msec/MSecClient;

    move-result-object v2

    .line 247
    .local v2, "client":Lcom/msec/MSecClient;
    invoke-static/range {p0 .. p0}, Lcom/msec/MSecClient;->isProxyOnline(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/msec/DataCollection;->isFirstRequest:Z

    if-nez v3, :cond_2

    .line 248
    invoke-static {}, Lcom/msec/MSecClient;->isLogDetail()Z

    move-result v3

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 249
    :cond_0
    const-string v3, "MSEC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is offline!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_1
    return v4

    .line 253
    :cond_2
    const/4 v3, 0x0

    sput-boolean v3, Lcom/msec/DataCollection;->isFirstRequest:Z

    .line 254
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 255
    .local v5, "conn":Ljava/net/HttpURLConnection;
    const/16 v6, 0x4e20

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 256
    invoke-virtual {v2}, Lcom/msec/MSecClient;->getHeaderKey()Ljava/lang/String;

    move-result-object v6

    .line 257
    .local v6, "headerKey":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/msec/MSecClient;->getRequestHeader()Ljava/lang/String;

    move-result-object v7

    .line 258
    .local v7, "headerValue":Ljava/lang/String;
    if-eqz v6, :cond_3

    const-string v8, ""

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    if-eqz v7, :cond_3

    const-string v8, ""

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 259
    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_3
    instance-of v8, v5, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v8, :cond_4

    .line 263
    sget-object v8, Lcom/msec/DataCollection;->sAppCtx:Landroid/content/Context;

    invoke-static {v8}, Lcom/msec/CertHelper;->getSSLSocketFactory(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v8

    .line 264
    .local v8, "sslSock":Ljavax/net/ssl/SSLSocketFactory;
    if-eqz v8, :cond_4

    .line 265
    move-object v9, v5

    check-cast v9, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v9, v8}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 269
    .end local v8    # "sslSock":Ljavax/net/ssl/SSLSocketFactory;
    :cond_4
    const-string v8, "POST"

    invoke-virtual {v5, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 270
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 271
    invoke-virtual {v5, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 272
    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 274
    sget-boolean v8, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v8, :cond_5

    .line 275
    const-string v8, "MSEC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "collect data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v10, p1

    :try_start_1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 278
    :cond_5
    move-object/from16 v10, p1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/msec/MSecClient;->secureData([B)[B

    move-result-object v8

    .line 280
    .local v8, "byteArray":[B
    new-instance v9, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 283
    .local v9, "output":Ljava/io/DataOutputStream;
    invoke-virtual {v9, v8}, Ljava/io/DataOutputStream;->write([B)V

    .line 284
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->flush()V

    .line 285
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    .line 287
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    .line 288
    .local v11, "code":I
    invoke-virtual {v2}, Lcom/msec/MSecClient;->getHeaderKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 289
    .local v12, "responseHeader":Ljava/lang/String;
    const/16 v13, 0xc8

    if-eq v11, v13, :cond_9

    .line 291
    const/16 v3, 0x1f7

    if-ne v11, v3, :cond_6

    .line 292
    sget v3, Lcom/msec/MLog;->LOG_CODE_MOBILE_OFF:I

    invoke-static {v3}, Lcom/msec/MLog;->printOnce(I)V

    goto :goto_1

    .line 293
    :cond_6
    if-lez v11, :cond_8

    if-eqz v12, :cond_7

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_8

    .line 294
    :cond_7
    sget v3, Lcom/msec/MLog;->LOG_CODE_NOT_RAS:I

    invoke-static {v3}, Lcom/msec/MLog;->printOnce(I)V

    .line 295
    sget-object v3, Lcom/msec/DataCollection;->data_collect_server_from_init:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 296
    sget-object v3, Lcom/msec/DataCollection;->SERVER_KEY:Ljava/lang/String;

    const-string v13, ""

    invoke-static {v3, v13}, Lcom/msec/MSecClient;->_ts_saveData(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const-string v3, ""

    sput-object v3, Lcom/msec/DataCollection;->data_collect_server:Ljava/lang/String;

    .line 301
    :cond_8
    :goto_1
    invoke-virtual {v2, v12}, Lcom/msec/MSecClient;->onResponseHeader(Ljava/lang/String;)I

    .line 302
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 303
    const-string v3, "MSEC"

    const-string v13, "Http response print isn\'t 200!"

    invoke-static {v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return v4

    .line 307
    :cond_9
    invoke-virtual {v2, v12}, Lcom/msec/MSecClient;->onResponseHeader(Ljava/lang/String;)I

    .line 309
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    .line 310
    .local v13, "in":Ljava/io/InputStream;
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 312
    .local v14, "buffer":Ljava/io/ByteArrayOutputStream;
    const/16 v15, 0x4000

    new-array v15, v15, [B

    .line 314
    .local v15, "databytes":[B
    :goto_2
    array-length v4, v15

    invoke-virtual {v13, v15, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    move/from16 v16, v4

    const/4 v3, -0x1

    .local v16, "nRead":I
    if-eq v4, v3, :cond_a

    .line 315
    move/from16 v3, v16

    const/4 v4, 0x0

    .end local v16    # "nRead":I
    .local v3, "nRead":I
    invoke-virtual {v14, v15, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 312
    const/4 v3, 0x0

    const/4 v4, -0x1

    goto :goto_2

    .line 317
    .end local v3    # "nRead":I
    .restart local v16    # "nRead":I
    :cond_a
    move/from16 v3, v16

    .end local v16    # "nRead":I
    .restart local v3    # "nRead":I
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 319
    const-string v4, ""

    .line 320
    .local v4, "body":Ljava/lang/String;
    move-object/from16 v17, v0

    .end local v0    # "url":Ljava/net/URL;
    .local v17, "url":Ljava/net/URL;
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/msec/MSecClient;->recoverData([B)[B

    move-result-object v0

    .line 321
    .local v0, "recoverBytes":[B
    if-eqz v0, :cond_b

    .line 322
    move-object/from16 v18, v2

    .end local v2    # "client":Lcom/msec/MSecClient;
    .local v18, "client":Lcom/msec/MSecClient;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    move-object v4, v2

    goto :goto_3

    .line 325
    .end local v18    # "client":Lcom/msec/MSecClient;
    .restart local v2    # "client":Lcom/msec/MSecClient;
    :cond_b
    move-object/from16 v18, v2

    .end local v2    # "client":Lcom/msec/MSecClient;
    .restart local v18    # "client":Lcom/msec/MSecClient;
    :goto_3
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 327
    sget-object v2, Lcom/msec/DataCollection;->RSP_MAGIC_HEADER:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 328
    const-string v2, ":"

    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 329
    .local v2, "a":[Ljava/lang/String;
    move-object/from16 v19, v0

    .end local v0    # "recoverBytes":[B
    .local v19, "recoverBytes":[B
    array-length v0, v2

    move/from16 v20, v3

    .end local v3    # "nRead":I
    .local v20, "nRead":I
    const/4 v3, 0x3

    if-lt v0, v3, :cond_c

    .line 330
    sget v0, Lcom/msec/MLog;->LOG_CODE_LITE_SEND_SERVER_SUCCESS:I

    invoke-static {v0}, Lcom/msec/MLog;->print(I)V

    .line 331
    sget-object v0, Lcom/msec/DataCollection;->SERVER_KEY:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/msec/MSecClient;->_ts_saveData(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 334
    :cond_c
    const-string v0, "MSEC"

    const-string v3, "Can not analyze response!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 337
    .end local v2    # "a":[Ljava/lang/String;
    .end local v19    # "recoverBytes":[B
    .end local v20    # "nRead":I
    .restart local v0    # "recoverBytes":[B
    .restart local v3    # "nRead":I
    :cond_d
    move-object/from16 v19, v0

    move/from16 v20, v3

    .end local v0    # "recoverBytes":[B
    .end local v3    # "nRead":I
    .restart local v19    # "recoverBytes":[B
    .restart local v20    # "nRead":I
    :goto_4
    const/4 v0, -0x1

    return v0

    .line 343
    .end local v4    # "body":Ljava/lang/String;
    .end local v5    # "conn":Ljava/net/HttpURLConnection;
    .end local v6    # "headerKey":Ljava/lang/String;
    .end local v7    # "headerValue":Ljava/lang/String;
    .end local v8    # "byteArray":[B
    .end local v9    # "output":Ljava/io/DataOutputStream;
    .end local v11    # "code":I
    .end local v12    # "responseHeader":Ljava/lang/String;
    .end local v13    # "in":Ljava/io/InputStream;
    .end local v14    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v15    # "databytes":[B
    .end local v17    # "url":Ljava/net/URL;
    .end local v18    # "client":Lcom/msec/MSecClient;
    .end local v19    # "recoverBytes":[B
    .end local v20    # "nRead":I
    :catch_0
    move-exception v0

    goto :goto_5

    .line 338
    :catch_1
    move-exception v0

    goto :goto_6

    .line 343
    :catch_2
    move-exception v0

    move-object/from16 v10, p1

    .line 344
    .local v0, "e":Ljava/io/IOException;
    :goto_5
    sget-boolean v2, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v2, :cond_e

    .line 345
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 347
    :cond_e
    const/4 v2, -0x3

    return v2

    .line 338
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    move-object/from16 v10, p1

    .line 339
    .local v0, "e":Ljava/net/SocketException;
    :goto_6
    sget-boolean v2, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v2, :cond_f

    .line 340
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    .line 342
    :cond_f
    const/4 v2, -0x2

    return v2
.end method

.method private static saveUserInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "time"    # Ljava/lang/String;

    .line 145
    sget-object v0, Lcom/msec/DataCollection;->USERID_KEY:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/msec/MSecClient;->_ts_saveData(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    sget-object v0, Lcom/msec/DataCollection;->USERID_TIME_KEY:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/msec/MSecClient;->_ts_saveData(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method

.method static setDataCollectionServer(Ljava/lang/String;Z)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "isInitialize"    # Z

    .line 93
    if-eqz p0, :cond_2

    .line 95
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, "isValid":Ljava/net/URL;
    invoke-static {p0}, Lcom/msec/MSecClient;->_ts_getProctedURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "protectUrl":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 98
    invoke-static {p0}, Lcom/msec/DataCollection;->getDataServerURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/msec/DataCollection;->data_collect_server:Ljava/lang/String;

    .line 99
    if-eqz p1, :cond_0

    .line 100
    sget-object v2, Lcom/msec/DataCollection;->data_collect_server:Ljava/lang/String;

    sput-object v2, Lcom/msec/DataCollection;->data_collect_server_from_init:Ljava/lang/String;

    .line 101
    sget v2, Lcom/msec/MLog;->LOG_CODE_LITE_SERVER_URL:I

    invoke-static {v2}, Lcom/msec/MLog;->print(I)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_0
    return-void

    .line 107
    .end local v0    # "isValid":Ljava/net/URL;
    .end local v1    # "protectUrl":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 109
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 110
    sget v0, Lcom/msec/MLog;->LOG_CODE_LITE_SERVER_URL_ERROR:I

    invoke-static {v0}, Lcom/msec/MLog;->print(I)V

    .line 112
    :cond_3
    return-void
.end method

.method static declared-synchronized setDataCollectionServerFromClient(Ljava/lang/String;Z)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "isResponse"    # Z

    const-class v0, Lcom/msec/DataCollection;

    monitor-enter v0

    .line 85
    :try_start_0
    sget-object v1, Lcom/msec/DataCollection;->data_collect_server:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 86
    monitor-exit v0

    return-void

    .line 87
    :cond_0
    if-eqz p1, :cond_1

    .line 88
    :try_start_1
    sget v1, Lcom/msec/MLog;->LOG_CODE_LITE_SET_SERVER_FROM_RES:I

    invoke-static {v1}, Lcom/msec/MLog;->print(I)V

    .line 89
    :cond_1
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/msec/DataCollection;->setDataCollectionServer(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    monitor-exit v0

    return-void

    .line 84
    .end local p0    # "url":Ljava/lang/String;
    .end local p1    # "isResponse":Z
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static setUserId(Ljava/lang/String;)V
    .locals 2
    .param p0, "id"    # Ljava/lang/String;

    .line 119
    sget v0, Lcom/msec/MLog;->LOG_CODE_LITE_SET_USERID:I

    invoke-static {v0}, Lcom/msec/MLog;->print(I)V

    .line 120
    if-nez p0, :cond_0

    .line 121
    const-string p0, ""

    .line 123
    :cond_0
    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/msec/SmartEscape;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/msec/DataCollection;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    return-void

    .line 126
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/msec/DataCollection;->maxUserIdLen:I

    if-le v0, v1, :cond_2

    .line 127
    const-string v0, "MSEC"

    const-string v1, "id length is too long"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void

    .line 131
    :cond_2
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 132
    const-string v0, ""

    sput-object v0, Lcom/msec/DataCollection;->userId:Ljava/lang/String;

    goto :goto_0

    .line 134
    :cond_3
    invoke-static {p0}, Lcom/msec/SmartEscape;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/msec/DataCollection;->userId:Ljava/lang/String;

    .line 135
    const/4 v0, 0x1

    sput-boolean v0, Lcom/msec/DataCollection;->isSetUserId:Z

    .line 138
    :goto_0
    sget-object v0, Lcom/msec/DataCollection;->waitSendIDs:Ljava/util/List;

    sget-object v1, Lcom/msec/DataCollection;->userId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/msec/DataCollection;->setUserIdTime:Ljava/lang/String;

    .line 141
    sget-object v0, Lcom/msec/DataCollection;->userId:Ljava/lang/String;

    sget-object v1, Lcom/msec/DataCollection;->setUserIdTime:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/msec/DataCollection;->saveUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method static start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .line 56
    if-eqz p0, :cond_3

    .line 60
    sput-object p0, Lcom/msec/DataCollection;->sAppCtx:Landroid/content/Context;

    .line 62
    const-string v0, ".infolock"

    invoke-static {p0, v0}, Lcom/msec/MSecClient;->getProcessLock(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    sget v0, Lcom/msec/MLog;->LOG_CODE_LITE_ALREADY_START:I

    invoke-static {v0}, Lcom/msec/MLog;->printDetail(I)V

    .line 64
    return-void

    .line 67
    :cond_0
    invoke-static {}, Lcom/msec/MSecClient;->getCollectionPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/msec/DataCollection;->SYSINFO_HANDLER:Ljava/lang/String;

    .line 69
    if-eqz p1, :cond_1

    .line 70
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/msec/DataCollection;->setDataCollectionServer(Ljava/lang/String;Z)V

    goto :goto_0

    .line 72
    :cond_1
    sget-object v0, Lcom/msec/DataCollection;->SERVER_KEY:Ljava/lang/String;

    invoke-static {v0}, Lcom/msec/MSecClient;->_ts_getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "server":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 74
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/msec/DataCollection;->setDataCollectionServer(Ljava/lang/String;Z)V

    .line 78
    .end local v0    # "server":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-static {}, Lcom/msec/DataCollection;->initializeUserInfo()V

    .line 80
    invoke-static {}, Lcom/msec/DataCollection;->startThread()V

    .line 81
    sget v0, Lcom/msec/MLog;->LOG_CODE_LITE_INITIALIZE:I

    invoke-static {v0}, Lcom/msec/MLog;->print(I)V

    .line 82
    return-void

    .line 57
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MSec: DataCollection context is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static startThread()V
    .locals 2

    .line 370
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/msec/DataCollection$2;

    invoke-direct {v1}, Lcom/msec/DataCollection$2;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 443
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 444
    return-void
.end method
