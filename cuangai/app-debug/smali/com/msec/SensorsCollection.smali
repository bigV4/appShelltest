.class Lcom/msec/SensorsCollection;
.super Ljava/lang/Object;
.source "SensorsCollection.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/msec/SysInfoCollection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/msec/SensorsCollection$SensorXYZInfo;,
        Lcom/msec/SensorsCollection$SensorStepInfo;,
        Lcom/msec/SensorsCollection$SensorInfo;,
        Lcom/msec/SensorsCollection$AcceleratorTpye;
    }
.end annotation


# instance fields
.field private acceleratorTpye:Ljava/lang/String;

.field private infoHashMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/msec/SensorsCollection$SensorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private final sp:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/msec/SensorsCollection;->mSensorManager:Landroid/hardware/SensorManager;

    .line 14
    const-string v0, ":"

    iput-object v0, p0, Lcom/msec/SensorsCollection;->sp:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/msec/SensorsCollection;->acceleratorTpye:Ljava/lang/String;

    .line 67
    new-instance v0, Lcom/msec/SensorsCollection$1;

    invoke-direct {v0, p0}, Lcom/msec/SensorsCollection$1;-><init>(Lcom/msec/SensorsCollection;)V

    iput-object v0, p0, Lcom/msec/SensorsCollection;->infoHashMap:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private calChange(Lcom/msec/SensorsCollection$SensorInfo;[F)V
    .locals 11
    .param p1, "sensorInfo"    # Lcom/msec/SensorsCollection$SensorInfo;
    .param p2, "xyz"    # [F

    .line 138
    move-object v0, p1

    check-cast v0, Lcom/msec/SensorsCollection$SensorXYZInfo;

    .line 140
    .local v0, "info":Lcom/msec/SensorsCollection$SensorXYZInfo;
    const/4 v1, 0x0

    aget v2, p2, v1

    .line 141
    .local v2, "x":F
    const/4 v3, 0x1

    aget v4, p2, v3

    .line 142
    .local v4, "y":F
    const/4 v5, 0x2

    aget v5, p2, v5

    .line 144
    .local v5, "z":F
    iget-boolean v6, v0, Lcom/msec/SensorsCollection$SensorXYZInfo;->first:Z

    if-eqz v6, :cond_0

    .line 145
    iput-boolean v1, v0, Lcom/msec/SensorsCollection$SensorXYZInfo;->first:Z

    .line 146
    iput v2, v0, Lcom/msec/SensorsCollection$SensorXYZInfo;->x:F

    .line 147
    iput v4, v0, Lcom/msec/SensorsCollection$SensorXYZInfo;->y:F

    .line 148
    iput v5, v0, Lcom/msec/SensorsCollection$SensorXYZInfo;->z:F

    .line 151
    :cond_0
    iget v1, v0, Lcom/msec/SensorsCollection$SensorXYZInfo;->x:F

    sub-float/2addr v1, v2

    iget v6, v0, Lcom/msec/SensorsCollection$SensorXYZInfo;->x:F

    sub-float/2addr v6, v2

    mul-float v1, v1, v6

    iget v6, v0, Lcom/msec/SensorsCollection$SensorXYZInfo;->y:F

    sub-float/2addr v6, v4

    iget v7, v0, Lcom/msec/SensorsCollection$SensorXYZInfo;->y:F

    sub-float/2addr v7, v4

    mul-float v6, v6, v7

    add-float/2addr v1, v6

    iget v6, v0, Lcom/msec/SensorsCollection$SensorXYZInfo;->z:F

    sub-float/2addr v6, v5

    iget v7, v0, Lcom/msec/SensorsCollection$SensorXYZInfo;->z:F

    sub-float/2addr v7, v5

    mul-float v6, v6, v7

    add-float/2addr v1, v6

    .line 153
    .local v1, "delta":F
    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    iget v8, v0, Lcom/msec/SensorsCollection$SensorXYZInfo;->threshold:F

    float-to-double v8, v8

    cmpl-double v10, v6, v8

    if-lez v10, :cond_1

    .line 154
    iget v6, v0, Lcom/msec/SensorsCollection$SensorXYZInfo;->chengedCount:I

    add-int/2addr v6, v3

    iput v6, v0, Lcom/msec/SensorsCollection$SensorXYZInfo;->chengedCount:I

    .line 157
    :cond_1
    iget v3, v0, Lcom/msec/SensorsCollection$SensorXYZInfo;->max_delta:F

    cmpl-float v3, v1, v3

    if-lez v3, :cond_2

    .line 158
    iput v1, v0, Lcom/msec/SensorsCollection$SensorXYZInfo;->max_delta:F

    .line 159
    iget v3, v0, Lcom/msec/SensorsCollection$SensorXYZInfo;->x:F

    sub-float/2addr v3, v2

    iput v3, v0, Lcom/msec/SensorsCollection$SensorXYZInfo;->dx:F

    .line 160
    iget v3, v0, Lcom/msec/SensorsCollection$SensorXYZInfo;->y:F

    sub-float/2addr v3, v4

    iput v3, v0, Lcom/msec/SensorsCollection$SensorXYZInfo;->dy:F

    .line 161
    iget v3, v0, Lcom/msec/SensorsCollection$SensorXYZInfo;->z:F

    sub-float/2addr v3, v5

    iput v3, v0, Lcom/msec/SensorsCollection$SensorXYZInfo;->dz:F

    .line 164
    :cond_2
    iput v2, v0, Lcom/msec/SensorsCollection$SensorXYZInfo;->x:F

    .line 165
    iput v4, v0, Lcom/msec/SensorsCollection$SensorXYZInfo;->y:F

    .line 166
    iput v5, v0, Lcom/msec/SensorsCollection$SensorXYZInfo;->z:F

    .line 167
    return-void
.end method

.method private getSensorInfo()Ljava/lang/String;
    .locals 4

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/msec/SensorsCollection;->acceleratorTpye:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    iget-object v1, p0, Lcom/msec/SensorsCollection;->infoHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/msec/SensorsCollection$SensorInfo;

    .line 239
    .local v2, "info":Lcom/msec/SensorsCollection$SensorInfo;
    invoke-virtual {v2}, Lcom/msec/SensorsCollection$SensorInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .end local v2    # "info":Lcom/msec/SensorsCollection$SensorInfo;
    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public end()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/msec/SensorsCollection;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/msec/SensorsCollection;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/msec/SensorsCollection;->mSensorManager:Landroid/hardware/SensorManager;

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/msec/SensorsCollection;->getSensorInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "i"    # I

    .line 233
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .line 172
    if-eqz p1, :cond_e

    :try_start_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_e

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 176
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 177
    .local v0, "values":[F
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    .line 179
    .local v1, "sensorType":I
    iget-object v2, p0, Lcom/msec/SensorsCollection;->infoHashMap:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/msec/SensorsCollection$SensorInfo;

    .line 180
    .local v2, "sensorInfo":Lcom/msec/SensorsCollection$SensorInfo;
    const/4 v3, 0x1

    if-nez v2, :cond_1

    if-ne v3, v1, :cond_1

    .line 181
    iget-object v4, p0, Lcom/msec/SensorsCollection;->infoHashMap:Ljava/util/LinkedHashMap;

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/msec/SensorsCollection$SensorInfo;

    move-object v2, v4

    .line 183
    :cond_1
    if-nez v2, :cond_2

    .line 184
    return-void

    .line 187
    :cond_2
    const/4 v4, 0x5

    const/4 v5, 0x0

    if-eq v4, v1, :cond_b

    const/16 v4, 0xd

    if-eq v4, v1, :cond_b

    const/4 v4, 0x6

    if-eq v4, v1, :cond_b

    const/16 v4, 0x8

    if-eq v4, v1, :cond_b

    const/16 v4, 0xc

    if-ne v4, v1, :cond_3

    goto :goto_3

    .line 198
    :cond_3
    const/16 v4, 0x13

    const/4 v6, 0x0

    if-ne v4, v1, :cond_6

    .line 199
    move-object v4, v2

    check-cast v4, Lcom/msec/SensorsCollection$SensorStepInfo;

    .line 200
    .local v4, "info":Lcom/msec/SensorsCollection$SensorStepInfo;
    const-wide/16 v7, 0x0

    iget-wide v9, v4, Lcom/msec/SensorsCollection$SensorStepInfo;->startCount:J

    cmp-long v11, v7, v9

    if-nez v11, :cond_4

    aget v7, v0, v5

    cmpl-float v7, v7, v6

    if-lez v7, :cond_4

    .line 201
    aget v5, v0, v5

    float-to-long v5, v5

    iput-wide v5, v4, Lcom/msec/SensorsCollection$SensorStepInfo;->startCount:J

    goto :goto_0

    .line 202
    :cond_4
    aget v7, v0, v5

    cmpl-float v6, v7, v6

    if-lez v6, :cond_5

    aget v6, v0, v5

    iget-wide v7, v4, Lcom/msec/SensorsCollection$SensorStepInfo;->startCount:J

    long-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    .line 203
    aget v5, v0, v5

    float-to-long v5, v5

    iget-wide v7, v4, Lcom/msec/SensorsCollection$SensorStepInfo;->startCount:J

    const/4 v9, 0x0

    sub-long/2addr v5, v7

    long-to-float v5, v5

    iput v5, v4, Lcom/msec/SensorsCollection$SensorStepInfo;->value:F

    .line 205
    .end local v4    # "info":Lcom/msec/SensorsCollection$SensorStepInfo;
    :cond_5
    :goto_0
    goto :goto_4

    .line 206
    :cond_6
    const/4 v4, 0x0

    .line 207
    .local v4, "zero_count":I
    nop

    .local v5, "i":I
    :goto_1
    array-length v7, v0

    if-ge v5, v7, :cond_8

    .line 208
    aget v7, v0, v5

    cmpl-float v7, v7, v6

    if-nez v7, :cond_7

    .line 209
    add-int/lit8 v4, v4, 0x1

    .line 207
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 213
    .end local v5    # "i":I
    :cond_8
    array-length v5, v0

    const/4 v6, 0x3

    if-lt v5, v6, :cond_a

    if-lt v4, v6, :cond_9

    const/4 v5, 0x4

    if-eq v1, v5, :cond_9

    goto :goto_2

    .line 217
    :cond_9
    invoke-direct {p0, v2, v0}, Lcom/msec/SensorsCollection;->calChange(Lcom/msec/SensorsCollection$SensorInfo;[F)V

    goto :goto_4

    .line 214
    :cond_a
    :goto_2
    return-void

    .line 193
    .end local v4    # "zero_count":I
    :cond_b
    :goto_3
    aget v4, v0, v5

    iput v4, v2, Lcom/msec/SensorsCollection$SensorInfo;->value:F

    .line 194
    iget-object v4, p0, Lcom/msec/SensorsCollection;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v4, :cond_c

    .line 195
    iget-object v4, p0, Lcom/msec/SensorsCollection;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v5, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4, p0, v5}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 220
    :cond_c
    :goto_4
    iput-boolean v3, v2, Lcom/msec/SensorsCollection$SensorInfo;->hasSetValue:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .end local v0    # "values":[F
    .end local v1    # "sensorType":I
    .end local v2    # "sensorInfo":Lcom/msec/SensorsCollection$SensorInfo;
    goto :goto_5

    .line 221
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v1, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_d

    .line 225
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 228
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_d
    :goto_5
    return-void

    .line 173
    :cond_e
    :goto_6
    return-void
.end method

.method public start(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 85
    if-nez p1, :cond_0

    .line 86
    return-void

    .line 91
    :cond_0
    :try_start_0
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/msec/SensorsCollection;->mSensorManager:Landroid/hardware/SensorManager;

    .line 92
    iget-object v0, p0, Lcom/msec/SensorsCollection;->mSensorManager:Landroid/hardware/SensorManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_1

    .line 93
    return-void

    .line 100
    :cond_1
    nop

    .line 102
    iget-object v0, p0, Lcom/msec/SensorsCollection;->infoHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 104
    .local v1, "sensorType":I
    :try_start_1
    iget-object v2, p0, Lcom/msec/SensorsCollection;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 106
    .local v2, "sensor":Landroid/hardware/Sensor;
    const/16 v3, 0xa

    if-ne v3, v1, :cond_3

    .line 107
    if-eqz v2, :cond_2

    .line 108
    const-string v3, "0"

    iput-object v3, p0, Lcom/msec/SensorsCollection;->acceleratorTpye:Ljava/lang/String;

    goto :goto_1

    .line 110
    :cond_2
    iget-object v3, p0, Lcom/msec/SensorsCollection;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    move-object v2, v3

    .line 111
    if-eqz v2, :cond_3

    .line 112
    const-string v3, "1"

    iput-object v3, p0, Lcom/msec/SensorsCollection;->acceleratorTpye:Ljava/lang/String;

    .line 117
    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    .line 118
    iget-object v3, p0, Lcom/msec/SensorsCollection;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x2

    invoke-virtual {v3, p0, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 124
    :cond_4
    goto :goto_2

    .line 120
    .end local v2    # "sensor":Landroid/hardware/Sensor;
    :catch_0
    move-exception v2

    .line 121
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 122
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    .end local v1    # "sensorType":I
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_2
    goto :goto_0

    .line 127
    :cond_6
    return-void

    .line 95
    :catch_1
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_7

    .line 97
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    :cond_7
    return-void
.end method
