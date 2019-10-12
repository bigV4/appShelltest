.class public Lcom/msec/net/volley/Volley;
.super Ljava/lang/Object;
.source "Volley.java"


# static fields
.field private static final DEFAULT_CACHE_DIR:Ljava/lang/String; = "volley"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 121
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/msec/net/volley/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    return-object v0
.end method

.method public static newRequestQueue(Landroid/content/Context;I)Lcom/android/volley/RequestQueue;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "maxDiskCacheBytes"    # I

    .line 99
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/msec/net/volley/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;I)Lcom/android/volley/RequestQueue;

    move-result-object v0

    return-object v0
.end method

.method public static newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stack"    # Lcom/android/volley/toolbox/HttpStack;

    .line 111
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/msec/net/volley/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;I)Lcom/android/volley/RequestQueue;

    move-result-object v0

    return-object v0
.end method

.method public static newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;I)Lcom/android/volley/RequestQueue;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stack"    # Lcom/android/volley/toolbox/HttpStack;
    .param p2, "maxDiskCacheBytes"    # I

    .line 53
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "volley"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    .local v0, "cacheDir":Ljava/io/File;
    const-string v1, "volley/0"

    .line 57
    .local v1, "userAgent":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 59
    .local v3, "info":Landroid/content/pm/PackageInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    .line 61
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 60
    :catch_0
    move-exception v2

    .line 63
    :goto_0
    if-nez p1, :cond_1

    .line 64
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_0

    .line 65
    new-instance v2, Lcom/msec/net/volley/HurlStack;

    invoke-direct {v2}, Lcom/msec/net/volley/HurlStack;-><init>()V

    move-object p1, v2

    goto :goto_1

    .line 67
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "MSecurity: unsupport version lower 2.3"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_1
    :goto_1
    new-instance v2, Lcom/android/volley/toolbox/BasicNetwork;

    invoke-direct {v2, p1}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    .line 74
    .local v2, "network":Lcom/android/volley/Network;
    const/4 v3, -0x1

    if-gt p2, v3, :cond_2

    .line 77
    new-instance v3, Lcom/android/volley/RequestQueue;

    new-instance v4, Lcom/android/volley/toolbox/DiskBasedCache;

    invoke-direct {v4, v0}, Lcom/android/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4, v2}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;)V

    goto :goto_2

    .line 82
    :cond_2
    new-instance v3, Lcom/android/volley/RequestQueue;

    new-instance v4, Lcom/android/volley/toolbox/DiskBasedCache;

    invoke-direct {v4, v0, p2}, Lcom/android/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;I)V

    invoke-direct {v3, v4, v2}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;)V

    .line 85
    .local v3, "queue":Lcom/android/volley/RequestQueue;
    :goto_2
    invoke-virtual {v3}, Lcom/android/volley/RequestQueue;->start()V

    .line 87
    return-object v3
.end method
