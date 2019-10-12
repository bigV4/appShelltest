.class final Lcom/msec/DataCollection$1;
.super Ljava/util/ArrayList;
.source "DataCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/msec/DataCollection;->fetchSysInfo()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/msec/SysInfoCollection;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 198
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    new-instance v0, Lcom/msec/SensorsCollection;

    invoke-direct {v0}, Lcom/msec/SensorsCollection;-><init>()V

    invoke-virtual {p0, v0}, Lcom/msec/DataCollection$1;->add(Ljava/lang/Object;)Z

    .line 201
    new-instance v0, Lcom/msec/GpsCollection;

    invoke-direct {v0}, Lcom/msec/GpsCollection;-><init>()V

    invoke-virtual {p0, v0}, Lcom/msec/DataCollection$1;->add(Ljava/lang/Object;)Z

    .line 202
    new-instance v0, Lcom/msec/WifiCollection;

    invoke-direct {v0}, Lcom/msec/WifiCollection;-><init>()V

    invoke-virtual {p0, v0}, Lcom/msec/DataCollection$1;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v0, Lcom/msec/TelephonyCollection;

    invoke-direct {v0}, Lcom/msec/TelephonyCollection;-><init>()V

    invoke-virtual {p0, v0}, Lcom/msec/DataCollection$1;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance v0, Lcom/msec/HealthCollection;

    invoke-direct {v0}, Lcom/msec/HealthCollection;-><init>()V

    invoke-virtual {p0, v0}, Lcom/msec/DataCollection$1;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v0, Lcom/msec/PermissionCollection;

    invoke-direct {v0}, Lcom/msec/PermissionCollection;-><init>()V

    invoke-virtual {p0, v0}, Lcom/msec/DataCollection$1;->add(Ljava/lang/Object;)Z

    .line 206
    return-void
.end method
