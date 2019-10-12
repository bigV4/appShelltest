.class final Lcom/msec/DataCollection$2;
.super Ljava/lang/Object;
.source "DataCollection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/msec/DataCollection;->startThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 373
    const-wide/32 v0, 0x493e0

    .line 374
    .local v0, "interval":J
    neg-long v2, v0

    .line 375
    .local v2, "lastFetch":J
    const/4 v4, 0x0

    .line 376
    .local v4, "isMobileBaseSend":Z
    invoke-static {}, Lcom/msec/MSecClient;->_ts_getMobileBaseData()Ljava/lang/String;

    move-result-object v5

    .line 377
    .local v5, "invariantData":Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 378
    .local v6, "sendMobileStateData":Lorg/json/JSONObject;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 380
    .local v7, "sendMobileBasicData":Lorg/json/JSONObject;
    :try_start_0
    const-string v8, "B"

    invoke-virtual {v7, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    .end local v5    # "invariantData":Ljava/lang/String;
    goto :goto_0

    .line 381
    :catch_0
    move-exception v5

    .line 382
    .local v5, "e":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 387
    .end local v5    # "e":Lorg/json/JSONException;
    :goto_0
    const-wide/16 v8, 0x1f4

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 388
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 390
    .local v8, "now":J
    const/4 v5, 0x0

    add-long v10, v2, v0

    cmp-long v5, v8, v10

    if-ltz v5, :cond_0

    invoke-static {}, Lcom/msec/DataCollection;->access$000()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/msec/DataCollection;->access$100()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/msec/DataCollection;->isRunningInForeground(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 391
    :cond_0
    invoke-static {}, Lcom/msec/DataCollection;->access$200()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 393
    :cond_1
    invoke-static {}, Lcom/msec/DataCollection;->access$300()V

    .line 394
    move-wide v2, v8

    .line 395
    const-wide/32 v0, 0x493e0

    .line 397
    invoke-static {}, Lcom/msec/DataCollection;->access$400()Ljava/lang/String;

    move-result-object v5

    const-string v10, ""

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 398
    const-wide/16 v0, 0x5

    .line 399
    goto :goto_0

    .line 402
    :cond_2
    if-nez v4, :cond_4

    .line 403
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/msec/DataCollection;->access$500(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_3

    .line 404
    const/4 v4, 0x1

    goto :goto_1

    .line 406
    :cond_3
    sget v5, Lcom/msec/MLog;->LOG_CODE_LITE_SEND_SERVER_FAIL:I

    invoke-static {v5}, Lcom/msec/MLog;->print(I)V

    .line 407
    goto :goto_0

    .line 411
    :cond_4
    :goto_1
    invoke-static {}, Lcom/msec/DataCollection;->access$600()Ljava/lang/String;

    move-result-object v5

    .line 412
    .local v5, "sys_info":Ljava/lang/String;
    const-string v10, ";"

    invoke-static {}, Lcom/msec/DataCollection;->access$800()Ljava/util/List;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/msec/DataCollection;->access$702(Ljava/lang/String;)Ljava/lang/String;

    .line 414
    invoke-static {}, Lcom/msec/DataCollection;->access$700()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x3fc

    if-le v10, v11, :cond_5

    .line 415
    invoke-static {}, Lcom/msec/DataCollection;->access$700()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual {v10, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/msec/DataCollection;->access$702(Ljava/lang/String;)Ljava/lang/String;

    .line 416
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/msec/DataCollection;->access$700()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/msec/DataCollection;->access$702(Ljava/lang/String;)Ljava/lang/String;

    .line 418
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/msec/DataCollection;->access$900()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-static {}, Lcom/msec/DataCollection;->access$700()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-static {}, Lcom/msec/DataCollection;->access$1000()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 422
    .local v10, "send_sys_info":Ljava/lang/String;
    invoke-static {}, Lcom/msec/DataCollection;->access$300()V

    .line 426
    const-string v11, "S"

    invoke-virtual {v6, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 427
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/msec/DataCollection;->access$500(Ljava/lang/String;)I

    move-result v11

    .line 428
    .local v11, "ret":I
    if-lez v11, :cond_6

    .line 429
    mul-int/lit16 v12, v11, 0x3e8

    int-to-long v0, v12

    .line 430
    invoke-static {}, Lcom/msec/DataCollection;->access$800()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->clear()V

    goto :goto_2

    .line 432
    :cond_6
    sget v12, Lcom/msec/MLog;->LOG_CODE_LITE_SEND_SERVER_FAIL:I

    invoke-static {v12}, Lcom/msec/MLog;->print(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 435
    .end local v5    # "sys_info":Ljava/lang/String;
    .end local v8    # "now":J
    .end local v10    # "send_sys_info":Ljava/lang/String;
    .end local v11    # "ret":I
    :catch_1
    move-exception v5

    .line 436
    .local v5, "e":Ljava/lang/Throwable;
    sget v8, Lcom/msec/MLog;->LOG_CODE_LITE_WORKER_PROCESS_TERMINATED:I

    invoke-static {v8}, Lcom/msec/MLog;->print(I)V

    .line 437
    sget-boolean v8, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v8, :cond_7

    .line 438
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 440
    .end local v5    # "e":Ljava/lang/Throwable;
    :cond_7
    :goto_2
    goto/16 :goto_0
.end method
