.class Lcom/msec/SensorsCollection$SensorStepInfo;
.super Lcom/msec/SensorsCollection$SensorInfo;
.source "SensorsCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/msec/SensorsCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorStepInfo"
.end annotation


# instance fields
.field startCount:J

.field final synthetic this$0:Lcom/msec/SensorsCollection;


# direct methods
.method private constructor <init>(Lcom/msec/SensorsCollection;)V
    .locals 2

    .line 35
    iput-object p1, p0, Lcom/msec/SensorsCollection$SensorStepInfo;->this$0:Lcom/msec/SensorsCollection;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/msec/SensorsCollection$SensorInfo;-><init>(Lcom/msec/SensorsCollection;Lcom/msec/SensorsCollection$1;)V

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/msec/SensorsCollection$SensorStepInfo;->startCount:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/msec/SensorsCollection;Lcom/msec/SensorsCollection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/msec/SensorsCollection;
    .param p2, "x1"    # Lcom/msec/SensorsCollection$1;

    .line 35
    invoke-direct {p0, p1}, Lcom/msec/SensorsCollection$SensorStepInfo;-><init>(Lcom/msec/SensorsCollection;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 39
    iget-boolean v0, p0, Lcom/msec/SensorsCollection$SensorStepInfo;->hasSetValue:Z

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/msec/SensorsCollection$SensorStepInfo;->value:F

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 42
    :cond_0
    const-string v0, ":"

    return-object v0
.end method
