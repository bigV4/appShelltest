.class Lcom/msec/GpsCollection;
.super Ljava/lang/Object;
.source "GpsCollection.java"

# interfaces
.implements Lcom/msec/SysInfoCollection;


# instance fields
.field private bGet:Z

.field private mAltitude:F

.field private mContext:Landroid/content/Context;

.field private mLatitude:F

.field private mLongitude:F

.field private reverse:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/msec/GpsCollection;->mLatitude:F

    .line 15
    iput v0, p0, Lcom/msec/GpsCollection;->mLongitude:F

    .line 16
    iput v0, p0, Lcom/msec/GpsCollection;->mAltitude:F

    .line 17
    const/4 v0, 0x6

    iput v0, p0, Lcom/msec/GpsCollection;->reverse:I

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/msec/GpsCollection;->bGet:Z

    return-void
.end method


# virtual methods
.method public end()Ljava/lang/String;
    .locals 3

    .line 52
    const-string v0, ":"

    .line 53
    .local v0, "sp":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/msec/GpsCollection;->bGet:Z

    if-eqz v1, :cond_0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/msec/GpsCollection;->mLongitude:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/msec/GpsCollection;->mLatitude:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/msec/GpsCollection;->mAltitude:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 56
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public start(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/msec/GpsCollection;->mContext:Landroid/content/Context;

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/msec/GpsCollection;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 25
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Lcom/msec/GpsCollection;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, "pkgName":Ljava/lang/String;
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 28
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 29
    .local v2, "isPermission":Z
    :goto_1
    if-nez v2, :cond_2

    .line 30
    return-void

    .line 33
    :cond_2
    iget-object v4, p0, Lcom/msec/GpsCollection;->mContext:Landroid/content/Context;

    const-string v5, "location"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationManager;

    .line 34
    .local v4, "mLocationManager":Landroid/location/LocationManager;
    const-string v5, "gps"

    invoke-virtual {v4, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v5

    .line 35
    .local v5, "location":Landroid/location/Location;
    if-nez v5, :cond_3

    .line 36
    const-string v6, "network"

    invoke-virtual {v4, v6}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    move-object v5, v6

    .line 38
    :cond_3
    if-eqz v5, :cond_4

    .line 39
    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    double-to-float v6, v6

    iget v7, p0, Lcom/msec/GpsCollection;->reverse:I

    invoke-static {v6, v7}, Lcom/msec/Helper;->reserveAccu(FI)F

    move-result v6

    iput v6, p0, Lcom/msec/GpsCollection;->mLatitude:F

    .line 40
    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    double-to-float v6, v6

    iget v7, p0, Lcom/msec/GpsCollection;->reverse:I

    invoke-static {v6, v7}, Lcom/msec/Helper;->reserveAccu(FI)F

    move-result v6

    iput v6, p0, Lcom/msec/GpsCollection;->mLongitude:F

    .line 41
    invoke-virtual {v5}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    double-to-float v6, v6

    iget v7, p0, Lcom/msec/GpsCollection;->reverse:I

    invoke-static {v6, v7}, Lcom/msec/Helper;->reserveAccu(FI)F

    move-result v6

    iput v6, p0, Lcom/msec/GpsCollection;->mAltitude:F

    .line 42
    iput-boolean v3, p0, Lcom/msec/GpsCollection;->bGet:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "isPermission":Z
    .end local v4    # "mLocationManager":Landroid/location/LocationManager;
    .end local v5    # "location":Landroid/location/Location;
    :cond_4
    goto :goto_2

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_5

    .line 46
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_2
    return-void
.end method
