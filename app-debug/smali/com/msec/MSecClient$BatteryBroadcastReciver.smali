.class Lcom/msec/MSecClient$BatteryBroadcastReciver;
.super Landroid/content/BroadcastReceiver;
.source "MSecClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/msec/MSecClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BatteryBroadcastReciver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 566
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/msec/MSecClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/msec/MSecClient$1;

    .line 566
    invoke-direct {p0}, Lcom/msec/MSecClient$BatteryBroadcastReciver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 570
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    const-string v0, "level"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 572
    .local v0, "level":I
    const-string v1, "scale"

    const/16 v2, 0x64

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 573
    .local v1, "total":I
    mul-int/lit8 v2, v0, 0x64

    div-int/2addr v2, v1

    sput v2, Lcom/msec/MSecClient;->mBatteryCapacity:I

    .line 575
    const-string v2, "plugged"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/msec/MSecClient;->mBatteryPlugged:I

    .line 576
    sget v2, Lcom/msec/MSecClient;->mBatteryPlugged:I

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x2

    if-eq v2, v4, :cond_0

    sget v2, Lcom/msec/MSecClient;->mBatteryPlugged:I

    if-eq v2, v6, :cond_0

    sget v2, Lcom/msec/MSecClient;->mBatteryPlugged:I

    if-eq v2, v5, :cond_0

    .line 579
    sput v3, Lcom/msec/MSecClient;->mBatteryPlugged:I

    .line 582
    :cond_0
    const-string v2, "status"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/msec/MSecClient;->mBatteryStatus:I

    .line 583
    sget v2, Lcom/msec/MSecClient;->mBatteryStatus:I

    if-eq v2, v6, :cond_1

    sget v2, Lcom/msec/MSecClient;->mBatteryStatus:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    sget v2, Lcom/msec/MSecClient;->mBatteryStatus:I

    if-eq v2, v5, :cond_1

    sget v2, Lcom/msec/MSecClient;->mBatteryStatus:I

    const/4 v4, 0x5

    if-eq v2, v4, :cond_1

    .line 587
    sput v3, Lcom/msec/MSecClient;->mBatteryStatus:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    .end local v0    # "level":I
    .end local v1    # "total":I
    :cond_1
    goto :goto_0

    .line 590
    :catch_0
    move-exception v0

    .line 593
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v1, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 594
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 597
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    return-void
.end method
