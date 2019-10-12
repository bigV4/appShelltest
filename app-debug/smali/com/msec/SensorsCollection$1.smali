.class Lcom/msec/SensorsCollection$1;
.super Ljava/util/LinkedHashMap;
.source "SensorsCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/msec/SensorsCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/Integer;",
        "Lcom/msec/SensorsCollection$SensorInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/msec/SensorsCollection;


# direct methods
.method constructor <init>(Lcom/msec/SensorsCollection;)V
    .locals 4
    .param p1, "this$0"    # Lcom/msec/SensorsCollection;

    .line 67
    iput-object p1, p0, Lcom/msec/SensorsCollection$1;->this$0:Lcom/msec/SensorsCollection;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 69
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/msec/SensorsCollection$SensorXYZInfo;

    iget-object v2, p0, Lcom/msec/SensorsCollection$1;->this$0:Lcom/msec/SensorsCollection;

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {v1, v2, v3}, Lcom/msec/SensorsCollection$SensorXYZInfo;-><init>(Lcom/msec/SensorsCollection;F)V

    invoke-virtual {p0, v0, v1}, Lcom/msec/SensorsCollection$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/msec/SensorsCollection$SensorXYZInfo;

    iget-object v2, p0, Lcom/msec/SensorsCollection$1;->this$0:Lcom/msec/SensorsCollection;

    const v3, 0x3c23d70a    # 0.01f

    invoke-direct {v1, v2, v3}, Lcom/msec/SensorsCollection$SensorXYZInfo;-><init>(Lcom/msec/SensorsCollection;F)V

    invoke-virtual {p0, v0, v1}, Lcom/msec/SensorsCollection$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/msec/SensorsCollection$SensorXYZInfo;

    iget-object v2, p0, Lcom/msec/SensorsCollection$1;->this$0:Lcom/msec/SensorsCollection;

    invoke-direct {v1, v2, v3}, Lcom/msec/SensorsCollection$SensorXYZInfo;-><init>(Lcom/msec/SensorsCollection;F)V

    invoke-virtual {p0, v0, v1}, Lcom/msec/SensorsCollection$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/msec/SensorsCollection$SensorXYZInfo;

    iget-object v2, p0, Lcom/msec/SensorsCollection$1;->this$0:Lcom/msec/SensorsCollection;

    const v3, 0x38d1b717    # 1.0E-4f

    invoke-direct {v1, v2, v3}, Lcom/msec/SensorsCollection$SensorXYZInfo;-><init>(Lcom/msec/SensorsCollection;F)V

    invoke-virtual {p0, v0, v1}, Lcom/msec/SensorsCollection$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/msec/SensorsCollection$SensorInfo;

    iget-object v2, p0, Lcom/msec/SensorsCollection$1;->this$0:Lcom/msec/SensorsCollection;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/msec/SensorsCollection$SensorInfo;-><init>(Lcom/msec/SensorsCollection;Lcom/msec/SensorsCollection$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/msec/SensorsCollection$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/msec/SensorsCollection$SensorInfo;

    iget-object v2, p0, Lcom/msec/SensorsCollection$1;->this$0:Lcom/msec/SensorsCollection;

    invoke-direct {v1, v2, v3}, Lcom/msec/SensorsCollection$SensorInfo;-><init>(Lcom/msec/SensorsCollection;Lcom/msec/SensorsCollection$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/msec/SensorsCollection$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/msec/SensorsCollection$SensorInfo;

    iget-object v2, p0, Lcom/msec/SensorsCollection$1;->this$0:Lcom/msec/SensorsCollection;

    invoke-direct {v1, v2, v3}, Lcom/msec/SensorsCollection$SensorInfo;-><init>(Lcom/msec/SensorsCollection;Lcom/msec/SensorsCollection$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/msec/SensorsCollection$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/msec/SensorsCollection$SensorInfo;

    iget-object v2, p0, Lcom/msec/SensorsCollection$1;->this$0:Lcom/msec/SensorsCollection;

    invoke-direct {v1, v2, v3}, Lcom/msec/SensorsCollection$SensorInfo;-><init>(Lcom/msec/SensorsCollection;Lcom/msec/SensorsCollection$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/msec/SensorsCollection$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/msec/SensorsCollection$SensorInfo;

    iget-object v2, p0, Lcom/msec/SensorsCollection$1;->this$0:Lcom/msec/SensorsCollection;

    invoke-direct {v1, v2, v3}, Lcom/msec/SensorsCollection$SensorInfo;-><init>(Lcom/msec/SensorsCollection;Lcom/msec/SensorsCollection$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/msec/SensorsCollection$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const/16 v0, 0x13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/msec/SensorsCollection$SensorStepInfo;

    iget-object v2, p0, Lcom/msec/SensorsCollection$1;->this$0:Lcom/msec/SensorsCollection;

    invoke-direct {v1, v2, v3}, Lcom/msec/SensorsCollection$SensorStepInfo;-><init>(Lcom/msec/SensorsCollection;Lcom/msec/SensorsCollection$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/msec/SensorsCollection$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-void
.end method
