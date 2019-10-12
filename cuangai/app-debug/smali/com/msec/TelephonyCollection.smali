.class Lcom/msec/TelephonyCollection;
.super Ljava/lang/Object;
.source "TelephonyCollection.java"

# interfaces
.implements Lcom/msec/SysInfoCollection;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getNetworkType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .line 122
    packed-switch p1, :pswitch_data_0

    .line 162
    const-string v0, "NO_MATCH"

    return-object v0

    .line 152
    :pswitch_0
    const-string v0, "IWLAN"

    return-object v0

    .line 156
    :pswitch_1
    const-string v0, "TD_SCDMA"

    return-object v0

    .line 140
    :pswitch_2
    const-string v0, "GSM"

    return-object v0

    .line 146
    :pswitch_3
    const-string v0, "HSPA+"

    return-object v0

    .line 130
    :pswitch_4
    const-string v0, "eHRPD"

    return-object v0

    .line 154
    :pswitch_5
    const-string v0, "LTE"

    return-object v0

    .line 136
    :pswitch_6
    const-string v0, "EVDO_rev.B"

    return-object v0

    .line 150
    :pswitch_7
    const-string v0, "iDen"

    return-object v0

    .line 144
    :pswitch_8
    const-string v0, "HSPA"

    return-object v0

    .line 148
    :pswitch_9
    const-string v0, "HSUPA"

    return-object v0

    .line 142
    :pswitch_a
    const-string v0, "HSDPA"

    return-object v0

    .line 124
    :pswitch_b
    const-string v0, "1xRTT"

    return-object v0

    .line 134
    :pswitch_c
    const-string v0, "EVDO_rev.A"

    return-object v0

    .line 132
    :pswitch_d
    const-string v0, "EVDO_rev.0"

    return-object v0

    .line 126
    :pswitch_e
    const-string v0, "CDMA"

    return-object v0

    .line 158
    :pswitch_f
    const-string v0, "UMTS"

    return-object v0

    .line 128
    :pswitch_10
    const-string v0, "EDGE"

    return-object v0

    .line 138
    :pswitch_11
    const-string v0, "GPRS"

    return-object v0

    .line 160
    :pswitch_12
    const-string v0, "UNKNOWN"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public end()Ljava/lang/String;
    .locals 24
    .annotation build Landroid/annotation/TargetApi;
        value = 0x16
    .end annotation

    .line 31
    move-object/from16 v1, p0

    const-string v2, ":"

    .line 32
    .local v2, "sp":Ljava/lang/String;
    const/4 v3, 0x0

    .line 33
    .local v3, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    const/4 v4, 0x0

    .line 34
    .local v4, "mcc_and_mnc":I
    const-string v0, ""

    move-object v5, v0

    .line 37
    .local v5, "networkOperator":Ljava/lang/String;
    const/4 v6, 0x1

    :try_start_0
    iget-object v0, v1, Lcom/msec/TelephonyCollection;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    move-object v3, v0

    .line 38
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 39
    .local v0, "simState":I
    if-eq v0, v6, :cond_0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 43
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v7

    .line 49
    move v4, v0

    .end local v0    # "simState":I
    :cond_0
    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v7, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 47
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 51
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const-string v7, ""

    .line 52
    .local v7, "hasDulSim":Ljava/lang/String;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x16

    if-lt v0, v8, :cond_3

    .line 54
    :try_start_1
    iget-object v0, v1, Lcom/msec/TelephonyCollection;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 55
    .local v0, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    const-string v8, "1"

    goto :goto_1

    :cond_2
    const-string v8, "0"
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move-object v7, v8

    .line 60
    .end local v0    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    goto :goto_2

    .line 56
    :catch_1
    move-exception v0

    .line 57
    .local v0, "securityException":Ljava/lang/SecurityException;
    sget-boolean v8, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v8, :cond_3

    .line 58
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 63
    .end local v0    # "securityException":Ljava/lang/SecurityException;
    :cond_3
    :goto_2
    if-eqz v4, :cond_a

    .line 65
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v8

    .line 66
    .local v8, "networkOperatorName":Ljava/lang/String;
    if-eqz v8, :cond_4

    move-object v9, v8

    goto :goto_3

    :cond_4
    const-string v9, ""

    :goto_3
    invoke-static {v9}, Lcom/msec/SmartEscape;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 69
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v9

    .line 72
    .local v9, "netWorkType":I
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v10

    .line 75
    .local v10, "roam":I
    const-string v11, ""

    .local v11, "mcc":Ljava/lang/String;
    const-string v12, ""

    .local v12, "mnc":Ljava/lang/String;
    const-string v13, ""

    .local v13, "lac":Ljava/lang/String;
    const-string v14, ""

    .local v14, "cellId":Ljava/lang/String;
    const-string v15, ""

    .local v15, "baseStationId":Ljava/lang/String;
    const-string v16, ""

    .local v16, "systemId":Ljava/lang/String;
    const-string v17, ""

    .line 77
    .local v17, "networkId":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v0, 0x3

    if-le v6, v0, :cond_5

    .line 78
    const/4 v6, 0x0

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 79
    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 82
    :cond_5
    iget-object v0, v1, Lcom/msec/TelephonyCollection;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 83
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v0, v1, Lcom/msec/TelephonyCollection;->mContext:Landroid/content/Context;

    move/from16 v19, v4

    .end local v4    # "mcc_and_mnc":I
    .local v19, "mcc_and_mnc":I
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "pkgName":Ljava/lang/String;
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v6, v0, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 86
    invoke-virtual {v6, v0, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_5

    .line 111
    .end local v16    # "systemId":Ljava/lang/String;
    .end local v17    # "networkId":Ljava/lang/String;
    .local v0, "systemId":Ljava/lang/String;
    .local v3, "networkId":Ljava/lang/String;
    .local v21, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    :cond_6
    :goto_4
    move-object/from16 v21, v3

    move-object/from16 v0, v16

    move-object/from16 v3, v17

    goto :goto_6

    .line 90
    .end local v0    # "systemId":Ljava/lang/String;
    .end local v21    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    .local v3, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    .restart local v16    # "systemId":Ljava/lang/String;
    .restart local v17    # "networkId":Ljava/lang/String;
    :cond_7
    :goto_5
    :try_start_2
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 91
    .local v0, "gsmCellLocation":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v0, :cond_8

    .line 92
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v13, v18

    .line 93
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v14, v18

    .line 108
    .end local v0    # "gsmCellLocation":Landroid/telephony/gsm/GsmCellLocation;
    :cond_8
    goto :goto_4

    .line 95
    :catch_2
    move-exception v0

    move-object/from16 v18, v0

    .line 97
    .local v18, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 98
    .local v0, "cdmaCellLocation":Landroid/telephony/cdma/CdmaCellLocation;
    if-eqz v0, :cond_9

    .line 99
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v15, v20

    .line 100
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v16, v20

    .line 101
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v0, v20

    .line 107
    move-object/from16 v17, v0

    .end local v0    # "cdmaCellLocation":Landroid/telephony/cdma/CdmaCellLocation;
    :cond_9
    goto :goto_4

    .line 103
    :catch_3
    move-exception v0

    .line 104
    .local v0, "e2":Ljava/lang/Exception;
    sget-boolean v20, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v20, :cond_6

    .line 105
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 111
    .end local v16    # "systemId":Ljava/lang/String;
    .end local v17    # "networkId":Ljava/lang/String;
    .end local v18    # "e":Ljava/lang/Exception;
    .local v0, "systemId":Ljava/lang/String;
    .local v3, "networkId":Ljava/lang/String;
    .restart local v21    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    :goto_6
    move-object/from16 v22, v4

    .end local v4    # "pkgName":Ljava/lang/String;
    .local v22, "pkgName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v5

    const/4 v5, 0x1

    .end local v5    # "networkOperator":Ljava/lang/String;
    .local v23, "networkOperator":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-direct {v1, v9}, Lcom/msec/TelephonyCollection;->getNetworkType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 111
    return-object v4

    .line 117
    .end local v0    # "systemId":Ljava/lang/String;
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v8    # "networkOperatorName":Ljava/lang/String;
    .end local v9    # "netWorkType":I
    .end local v10    # "roam":I
    .end local v11    # "mcc":Ljava/lang/String;
    .end local v12    # "mnc":Ljava/lang/String;
    .end local v13    # "lac":Ljava/lang/String;
    .end local v14    # "cellId":Ljava/lang/String;
    .end local v15    # "baseStationId":Ljava/lang/String;
    .end local v19    # "mcc_and_mnc":I
    .end local v21    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    .end local v22    # "pkgName":Ljava/lang/String;
    .end local v23    # "networkOperator":Ljava/lang/String;
    .local v3, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    .local v4, "mcc_and_mnc":I
    .restart local v5    # "networkOperator":Ljava/lang/String;
    :cond_a
    move-object/from16 v21, v3

    move/from16 v19, v4

    move-object/from16 v23, v5

    .end local v3    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    .end local v4    # "mcc_and_mnc":I
    .end local v5    # "networkOperator":Ljava/lang/String;
    .restart local v19    # "mcc_and_mnc":I
    .restart local v21    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    .restart local v23    # "networkOperator":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public start(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    iput-object p1, p0, Lcom/msec/TelephonyCollection;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method
