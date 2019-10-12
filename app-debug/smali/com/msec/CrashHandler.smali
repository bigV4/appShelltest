.class Lcom/msec/CrashHandler;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static CRASH_URL:Ljava/lang/String; = null

.field private static final INTERVAL_TIME:J = 0xdbba00L

.field private static appCtx:Landroid/content/Context; = null

.field private static mCrashURL:Ljava/lang/String; = null

.field private static final msdkCfg:Ljava/lang/String; = "RsSdkCfg"

.field private static postCrashLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# instance fields
.field private mCrashDumpDir:Ljava/lang/String;

.field private mCrashFileName:Ljava/lang/String;

.field private mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-string v0, "C7AyTrxoWxGd"

    sput-object v0, Lcom/msec/CrashHandler;->CRASH_URL:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/msec/CrashHandler;->appCtx:Landroid/content/Context;

    .line 43
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lcom/msec/CrashHandler;->postCrashLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 44
    const-string v0, ""

    sput-object v0, Lcom/msec/CrashHandler;->mCrashURL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appDataDir"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    sput-object p1, Lcom/msec/CrashHandler;->appCtx:Landroid/content/Context;

    .line 58
    invoke-static {}, Lcom/msec/MSecClient;->getCrashPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/msec/CrashHandler;->CRASH_URL:Ljava/lang/String;

    .line 60
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/msec/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 61
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".msdk-crash-log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/msec/CrashHandler;->mCrashFileName:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "files"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/msec/CrashHandler;->mCrashDumpDir:Ljava/lang/String;

    .line 64
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 1

    .line 36
    sget-object v0, Lcom/msec/CrashHandler;->postCrashLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method

.method static synthetic access$100(Lcom/msec/CrashHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/msec/CrashHandler;

    .line 36
    iget-object v0, p0, Lcom/msec/CrashHandler;->mCrashFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/msec/CrashHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/msec/CrashHandler;

    .line 36
    invoke-direct {p0}, Lcom/msec/CrashHandler;->getCppDumpFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/msec/CrashHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/msec/CrashHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/msec/CrashHandler;->getBaseField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/msec/CrashHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/msec/CrashHandler;

    .line 36
    invoke-direct {p0}, Lcom/msec/CrashHandler;->getSaveDumpFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/msec/CrashHandler;[B)[B
    .locals 1
    .param p0, "x0"    # Lcom/msec/CrashHandler;
    .param p1, "x1"    # [B

    .line 36
    invoke-direct {p0, p1}, Lcom/msec/CrashHandler;->compress([B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Landroid/content/Context;
    .locals 1

    .line 36
    sget-object v0, Lcom/msec/CrashHandler;->appCtx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/msec/CrashHandler;Ljava/io/OutputStream;[BI)V
    .locals 0
    .param p0, "x0"    # Lcom/msec/CrashHandler;
    .param p1, "x1"    # Ljava/io/OutputStream;
    .param p2, "x2"    # [B
    .param p3, "x3"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/msec/CrashHandler;->putByteToConnOutputStream(Ljava/io/OutputStream;[BI)V

    return-void
.end method

.method static synthetic access$800(Lcom/msec/CrashHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/msec/CrashHandler;

    .line 36
    invoke-direct {p0}, Lcom/msec/CrashHandler;->deleteCppDumpFile()V

    return-void
.end method

.method static synthetic access$900()V
    .locals 0

    .line 36
    invoke-static {}, Lcom/msec/CrashHandler;->savePostTime()V

    return-void
.end method

.method private compress([B)[B
    .locals 3
    .param p1, "inBytes"    # [B

    .line 211
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 214
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 215
    .local v1, "gzip":Ljava/util/zip/GZIPOutputStream;
    invoke-virtual {v1, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 216
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    nop

    .line 218
    nop

    .line 220
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 217
    .end local v1    # "gzip":Ljava/util/zip/GZIPOutputStream;
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    return-object v2
.end method

.method private deleteCppDumpFile()V
    .locals 8

    .line 158
    const-string v0, ".dmp"

    .line 159
    .local v0, "extension":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/msec/CrashHandler;->mCrashDumpDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 160
    .local v1, "files":[Ljava/io/File;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 161
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_0

    .line 162
    goto :goto_1

    .line 163
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 164
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 160
    .end local v4    # "file":Ljava/io/File;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 167
    :cond_2
    return-void
.end method

.method static deleteCrashURL()V
    .locals 3

    .line 417
    sget-object v0, Lcom/msec/CrashHandler;->appCtx:Landroid/content/Context;

    const-string v1, "RsSdkCfg"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 418
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 419
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "crashURL"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 420
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 421
    return-void
.end method

.method private getBaseField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "crashDesc"    # Ljava/lang/String;
    .param p2, "crashStack"    # Ljava/lang/String;

    .line 93
    const-string v0, ""

    .line 94
    .local v0, "versionName":Ljava/lang/String;
    const-string v1, ""

    .line 95
    .local v1, "versionCode":Ljava/lang/String;
    const-string v2, ""

    .line 96
    .local v2, "packageName":Ljava/lang/String;
    const-string v3, ""

    .line 99
    .local v3, "fingerPrint":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 100
    invoke-static {}, Lcom/msec/MSecClient;->_ts_getFingerPrint()Ljava/lang/String;

    move-result-object v3

    .line 103
    :cond_0
    sget-object v4, Lcom/msec/CrashHandler;->appCtx:Landroid/content/Context;

    if-eqz v4, :cond_1

    .line 104
    sget-object v4, Lcom/msec/CrashHandler;->appCtx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 106
    :try_start_0
    sget-object v4, Lcom/msec/CrashHandler;->appCtx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x4000

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 107
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object v0, v5

    .line 108
    iget v5, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v5

    .line 111
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 109
    :catch_0
    move-exception v4

    .line 110
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 114
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    :goto_0
    const-string v4, ""

    .line 115
    .local v4, "crashStackBase64":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 116
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 119
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "B \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\" \"Android\" \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\" "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v6, 0x134160b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\" \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\" \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "7df941d73"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\" \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\" \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\" \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\" \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 132
    .local v5, "baseField":Ljava/lang/String;
    return-object v5
.end method

.method private getCppDumpFileName()Ljava/lang/String;
    .locals 9

    .line 136
    const-string v0, ".dmp"

    .line 137
    .local v0, "extension":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/msec/CrashHandler;->mCrashDumpDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 138
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_0

    .line 139
    const-string v2, ""

    return-object v2

    .line 142
    :cond_0
    const/4 v2, 0x0

    .line 143
    .local v2, "retFile":Ljava/io/File;
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    .line 144
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_1

    .line 145
    goto :goto_1

    .line 146
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 147
    move-object v2, v5

    .line 148
    goto :goto_2

    .line 143
    .end local v5    # "file":Ljava/io/File;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 151
    :cond_3
    :goto_2
    if-nez v2, :cond_4

    .line 152
    const-string v3, ""

    return-object v3

    .line 154
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static getCrashURL()Ljava/lang/String;
    .locals 3

    .line 408
    const-string v0, ""

    sget-object v1, Lcom/msec/CrashHandler;->mCrashURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    sget-object v0, Lcom/msec/CrashHandler;->mCrashURL:Ljava/lang/String;

    return-object v0

    .line 411
    :cond_0
    sget-object v0, Lcom/msec/CrashHandler;->appCtx:Landroid/content/Context;

    const-string v1, "RsSdkCfg"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 412
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v1, "crashURL"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/msec/CrashHandler;->mCrashURL:Ljava/lang/String;

    .line 413
    sget-object v1, Lcom/msec/CrashHandler;->mCrashURL:Ljava/lang/String;

    return-object v1
.end method

.method private getLittleEndianInt(I)[B
    .locals 3
    .param p1, "value"    # I

    .line 188
    const/4 v0, 0x4

    new-array v0, v0, [B

    shr-int/lit8 v1, p1, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    return-object v0
.end method

.method private static getPostTime()J
    .locals 4

    .line 432
    sget-object v0, Lcom/msec/CrashHandler;->appCtx:Landroid/content/Context;

    const-string v1, "RsSdkCfg"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 433
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v1, "postTime"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, "time":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 435
    const-wide/16 v2, 0x0

    return-wide v2

    .line 437
    :cond_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method

.method private getSaveDumpFileName()Ljava/lang/String;
    .locals 6

    .line 170
    const-string v0, ""

    .line 171
    .local v0, "versionName":Ljava/lang/String;
    const-string v1, ""

    .line 172
    .local v1, "packageName":Ljava/lang/String;
    sget-object v2, Lcom/msec/CrashHandler;->appCtx:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 174
    :try_start_0
    sget-object v2, Lcom/msec/CrashHandler;->appCtx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 175
    sget-object v2, Lcom/msec/CrashHandler;->appCtx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x4000

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 176
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 179
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 177
    :catch_0
    move-exception v2

    .line 178
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 181
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    .line 182
    .local v2, "time_now":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "7df941d73"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x134160b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "1413"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".dump"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 184
    .local v4, "filename":Ljava/lang/String;
    return-object v4
.end method

.method private obtainExceptionInfo(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 48
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 49
    .local v0, "mStringWriter":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 50
    .local v1, "mPrintWriter":Ljava/io/PrintWriter;
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 51
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 52
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private putByteToConnOutputStream(Ljava/io/OutputStream;[BI)V
    .locals 3
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "bytes"    # [B
    .param p3, "intlen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 198
    invoke-direct {p0, v0}, Lcom/msec/CrashHandler;->getLittleEndianInt(I)[B

    move-result-object v1

    .line 199
    .local v1, "lenBytes":[B
    invoke-virtual {p1, v1, v0, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 200
    .end local v1    # "lenBytes":[B
    goto :goto_0

    .line 202
    :cond_0
    array-length v1, p2

    .line 203
    .local v1, "length":I
    invoke-direct {p0, v1}, Lcom/msec/CrashHandler;->getLittleEndianInt(I)[B

    move-result-object v2

    .line 204
    .local v2, "lenBytes":[B
    invoke-virtual {p1, v2, v0, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 205
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 208
    .end local v1    # "length":I
    .end local v2    # "lenBytes":[B
    :goto_0
    return-void
.end method

.method static saveCrashURL(Ljava/lang/String;)V
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .line 392
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 393
    .local v0, "tmp":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, "path":Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 395
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 397
    :cond_0
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

    sget-object v3, Lcom/msec/CrashHandler;->CRASH_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/msec/CrashHandler;->mCrashURL:Ljava/lang/String;

    .line 398
    sget-object v2, Lcom/msec/CrashHandler;->appCtx:Landroid/content/Context;

    const-string v3, "RsSdkCfg"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 399
    .local v2, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 400
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "crashURL"

    sget-object v5, Lcom/msec/CrashHandler;->mCrashURL:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 401
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    .end local v0    # "tmp":Ljava/net/URL;
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "settings":Landroid/content/SharedPreferences;
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    goto :goto_0

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 405
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :goto_0
    return-void
.end method

.method private static savePostTime()V
    .locals 6

    .line 424
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 425
    .local v0, "time":J
    sget-object v2, Lcom/msec/CrashHandler;->appCtx:Landroid/content/Context;

    const-string v3, "RsSdkCfg"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 426
    .local v2, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 427
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "postTime"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 428
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 429
    return-void
.end method


# virtual methods
.method getThreadCallStack(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "threadName"    # Ljava/lang/String;

    .line 366
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    const-string v0, ""

    return-object v0

    .line 370
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 371
    .local v0, "threadSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Thread;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Thread;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Thread;

    .line 373
    .local v1, "threadArray":[Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 374
    .local v2, "theThread":Ljava/lang/Thread;
    array-length v3, v1

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v2, 0x0

    .end local v2    # "theThread":Ljava/lang/Thread;
    .local v5, "theThread":Ljava/lang/Thread;
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v6, v1, v2

    .line 375
    .local v6, "thread":Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 376
    move-object v5, v6

    .line 374
    .end local v6    # "thread":Ljava/lang/Thread;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 380
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 381
    .local v2, "ste":[Ljava/lang/StackTraceElement;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 382
    .local v3, "result":Ljava/lang/String;
    array-length v6, v2

    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v7, v2, v4

    .line 384
    .local v7, "e":Ljava/lang/StackTraceElement;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 382
    .end local v7    # "e":Ljava/lang/StackTraceElement;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 387
    :cond_3
    return-object v3
.end method

.method postCrashLog()V
    .locals 9

    .line 225
    invoke-static {}, Lcom/msec/CrashHandler;->getPostTime()J

    move-result-wide v0

    .line 226
    .local v0, "lastPostTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 227
    .local v2, "currentTime":J
    sub-long v4, v2, v0

    const-wide/32 v6, 0xdbba00

    cmp-long v8, v4, v6

    if-gez v8, :cond_0

    .line 228
    return-void

    .line 231
    :cond_0
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/msec/CrashHandler$1;

    invoke-direct {v5, p0}, Lcom/msec/CrashHandler$1;-><init>(Lcom/msec/CrashHandler;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 352
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 353
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 358
    const-string v0, "uncaught exception"

    invoke-direct {p0, p2}, Lcom/msec/CrashHandler;->obtainExceptionInfo(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {p0, v0, v1, v2}, Lcom/msec/CrashHandler;->writeCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/msec/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/msec/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 363
    :cond_0
    return-void
.end method

.method writeCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "crashDesc"    # Ljava/lang/String;
    .param p2, "crashStack"    # Ljava/lang/String;
    .param p3, "crashFileName"    # Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    .line 70
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Lcom/msec/CrashHandler;->getBaseField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "crashData":Ljava/lang/String;
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/msec/CrashHandler;->mCrashFileName:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 73
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 74
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .end local v1    # "crashData":Ljava/lang/String;
    nop

    .line 82
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 87
    :cond_0
    :goto_0
    goto :goto_2

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/io/IOException;
    sget-boolean v2, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 85
    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 80
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 75
    :catch_1
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    sget-boolean v2, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 77
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    if-eqz v0, :cond_2

    .line 82
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 83
    :catch_2
    move-exception v1

    .line 84
    .local v1, "e":Ljava/io/IOException;
    sget-boolean v2, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v2, :cond_0

    goto :goto_1

    .line 90
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    return-void

    .line 80
    :goto_3
    if-eqz v0, :cond_3

    .line 82
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 87
    goto :goto_4

    .line 83
    :catch_3
    move-exception v2

    .line 84
    .local v2, "e":Ljava/io/IOException;
    sget-boolean v3, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 85
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 87
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    :goto_4
    throw v1
.end method
