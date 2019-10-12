.class Lcom/msec/SensorsCollection$SensorXYZInfo;
.super Lcom/msec/SensorsCollection$SensorInfo;
.source "SensorsCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/msec/SensorsCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorXYZInfo"
.end annotation


# instance fields
.field chengedCount:I

.field dx:F

.field dy:F

.field dz:F

.field first:Z

.field max_delta:F

.field final synthetic this$0:Lcom/msec/SensorsCollection;

.field threshold:F

.field x:F

.field y:F

.field z:F


# direct methods
.method constructor <init>(Lcom/msec/SensorsCollection;F)V
    .locals 1
    .param p2, "threshold"    # F

    .line 54
    iput-object p1, p0, Lcom/msec/SensorsCollection$SensorXYZInfo;->this$0:Lcom/msec/SensorsCollection;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/msec/SensorsCollection$SensorInfo;-><init>(Lcom/msec/SensorsCollection;Lcom/msec/SensorsCollection$1;)V

    .line 48
    const/4 p1, 0x0

    iput p1, p0, Lcom/msec/SensorsCollection$SensorXYZInfo;->dx:F

    iput p1, p0, Lcom/msec/SensorsCollection$SensorXYZInfo;->dy:F

    iput p1, p0, Lcom/msec/SensorsCollection$SensorXYZInfo;->dz:F

    .line 49
    iput p1, p0, Lcom/msec/SensorsCollection$SensorXYZInfo;->max_delta:F

    .line 51
    const/4 p1, 0x0

    iput p1, p0, Lcom/msec/SensorsCollection$SensorXYZInfo;->chengedCount:I

    .line 52
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/msec/SensorsCollection$SensorXYZInfo;->first:Z

    .line 55
    iput p2, p0, Lcom/msec/SensorsCollection$SensorXYZInfo;->threshold:F

    .line 56
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 59
    iget-boolean v0, p0, Lcom/msec/SensorsCollection$SensorXYZInfo;->hasSetValue:Z

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/msec/SensorsCollection$SensorXYZInfo;->chengedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/msec/SensorsCollection$SensorXYZInfo;->dx:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/msec/SensorsCollection$SensorXYZInfo;->dy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/msec/SensorsCollection$SensorXYZInfo;->dz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/msec/SensorsCollection$SensorXYZInfo;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/msec/SensorsCollection$SensorXYZInfo;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/msec/SensorsCollection$SensorXYZInfo;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 63
    :cond_0
    const-string v0, ":::::::"

    return-object v0
.end method
