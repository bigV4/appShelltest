.class Lcom/msec/SensorsCollection$SensorInfo;
.super Ljava/lang/Object;
.source "SensorsCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/msec/SensorsCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorInfo"
.end annotation


# instance fields
.field hasSetValue:Z

.field final synthetic this$0:Lcom/msec/SensorsCollection;

.field value:F


# direct methods
.method private constructor <init>(Lcom/msec/SensorsCollection;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/msec/SensorsCollection$SensorInfo;->this$0:Lcom/msec/SensorsCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/msec/SensorsCollection$SensorInfo;->hasSetValue:Z

    .line 24
    const/4 p1, 0x0

    iput p1, p0, Lcom/msec/SensorsCollection$SensorInfo;->value:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/msec/SensorsCollection;Lcom/msec/SensorsCollection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/msec/SensorsCollection;
    .param p2, "x1"    # Lcom/msec/SensorsCollection$1;

    .line 22
    invoke-direct {p0, p1}, Lcom/msec/SensorsCollection$SensorInfo;-><init>(Lcom/msec/SensorsCollection;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 27
    iget-boolean v0, p0, Lcom/msec/SensorsCollection$SensorInfo;->hasSetValue:Z

    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/msec/SensorsCollection$SensorInfo;->value:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 30
    :cond_0
    const-string v0, ":"

    return-object v0
.end method
