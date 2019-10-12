.class Lcom/msec/WifiCollection;
.super Ljava/lang/Object;
.source "WifiCollection.java"

# interfaces
.implements Lcom/msec/SysInfoCollection;


# instance fields
.field private mCanUse:Z

.field private mContext:Landroid/content/Context;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private sp:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/msec/WifiCollection;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 21
    iput-object v0, p0, Lcom/msec/WifiCollection;->mWifiList:Ljava/util/List;

    .line 22
    iput-object v0, p0, Lcom/msec/WifiCollection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 24
    const-string v0, ":"

    iput-object v0, p0, Lcom/msec/WifiCollection;->sp:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/msec/WifiCollection;->mCanUse:Z

    return-void
.end method

.method private getChannelAndFrequency(Ljava/lang/StringBuilder;I)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "freq"    # I

    .line 203
    const/16 v0, 0x960

    if-le p2, v0, :cond_0

    const/16 v0, 0x9c3

    if-ge p2, v0, :cond_0

    .line 204
    const-string v0, "2.4G"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/msec/WifiCollection;->sp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 205
    :cond_0
    const/16 v0, 0x1388

    if-le p2, v0, :cond_1

    const/16 v0, 0x176f

    if-ge p2, v0, :cond_1

    .line 206
    const-string v0, "5G"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/msec/WifiCollection;->sp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 208
    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/msec/WifiCollection;->sp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :goto_0
    invoke-direct {p0, p2}, Lcom/msec/WifiCollection;->getChannelByFrequency(I)I

    move-result v0

    .line 211
    .local v0, "chan":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 212
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/msec/WifiCollection;->sp:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 214
    :cond_2
    const-string v1, ""

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/msec/WifiCollection;->sp:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :goto_1
    return-void
.end method

.method private getChannelByFrequency(I)I
    .locals 1
    .param p1, "frequency"    # I

    .line 225
    const/4 v0, -0x1

    .line 226
    .local v0, "channel":I
    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 402
    :sswitch_0
    const/16 v0, 0xa5

    goto/16 :goto_0

    .line 399
    :sswitch_1
    const/16 v0, 0xa1

    .line 400
    goto/16 :goto_0

    .line 396
    :sswitch_2
    const/16 v0, 0x9f

    .line 397
    goto/16 :goto_0

    .line 393
    :sswitch_3
    const/16 v0, 0x9d

    .line 394
    goto/16 :goto_0

    .line 390
    :sswitch_4
    const/16 v0, 0x9b

    .line 391
    goto/16 :goto_0

    .line 387
    :sswitch_5
    const/16 v0, 0x99

    .line 388
    goto/16 :goto_0

    .line 384
    :sswitch_6
    const/16 v0, 0x97

    .line 385
    goto/16 :goto_0

    .line 381
    :sswitch_7
    const/16 v0, 0x95

    .line 382
    goto/16 :goto_0

    .line 378
    :sswitch_8
    const/16 v0, 0x90

    .line 379
    goto/16 :goto_0

    .line 375
    :sswitch_9
    const/16 v0, 0x8e

    .line 376
    goto/16 :goto_0

    .line 372
    :sswitch_a
    const/16 v0, 0x8c

    .line 373
    goto/16 :goto_0

    .line 369
    :sswitch_b
    const/16 v0, 0x8a

    .line 370
    goto/16 :goto_0

    .line 366
    :sswitch_c
    const/16 v0, 0x88

    .line 367
    goto/16 :goto_0

    .line 363
    :sswitch_d
    const/16 v0, 0x86

    .line 364
    goto/16 :goto_0

    .line 360
    :sswitch_e
    const/16 v0, 0x84

    .line 361
    goto/16 :goto_0

    .line 357
    :sswitch_f
    const/16 v0, 0x80

    .line 358
    goto/16 :goto_0

    .line 354
    :sswitch_10
    const/16 v0, 0x7e

    .line 355
    goto/16 :goto_0

    .line 351
    :sswitch_11
    const/16 v0, 0x7c

    .line 352
    goto/16 :goto_0

    .line 348
    :sswitch_12
    const/16 v0, 0x7a

    .line 349
    goto/16 :goto_0

    .line 345
    :sswitch_13
    const/16 v0, 0x78

    .line 346
    goto/16 :goto_0

    .line 342
    :sswitch_14
    const/16 v0, 0x76

    .line 343
    goto/16 :goto_0

    .line 339
    :sswitch_15
    const/16 v0, 0x74

    .line 340
    goto/16 :goto_0

    .line 336
    :sswitch_16
    const/16 v0, 0x72

    .line 337
    goto/16 :goto_0

    .line 333
    :sswitch_17
    const/16 v0, 0x70

    .line 334
    goto/16 :goto_0

    .line 330
    :sswitch_18
    const/16 v0, 0x6e

    .line 331
    goto/16 :goto_0

    .line 327
    :sswitch_19
    const/16 v0, 0x6c

    .line 328
    goto/16 :goto_0

    .line 324
    :sswitch_1a
    const/16 v0, 0x6a

    .line 325
    goto/16 :goto_0

    .line 321
    :sswitch_1b
    const/16 v0, 0x68

    .line 322
    goto/16 :goto_0

    .line 318
    :sswitch_1c
    const/16 v0, 0x66

    .line 319
    goto/16 :goto_0

    .line 315
    :sswitch_1d
    const/16 v0, 0x64

    .line 316
    goto/16 :goto_0

    .line 312
    :sswitch_1e
    const/16 v0, 0x40

    .line 313
    goto/16 :goto_0

    .line 309
    :sswitch_1f
    const/16 v0, 0x3e

    .line 310
    goto/16 :goto_0

    .line 306
    :sswitch_20
    const/16 v0, 0x3c

    .line 307
    goto :goto_0

    .line 303
    :sswitch_21
    const/16 v0, 0x3a

    .line 304
    goto :goto_0

    .line 300
    :sswitch_22
    const/16 v0, 0x38

    .line 301
    goto :goto_0

    .line 297
    :sswitch_23
    const/16 v0, 0x36

    .line 298
    goto :goto_0

    .line 294
    :sswitch_24
    const/16 v0, 0x34

    .line 295
    goto :goto_0

    .line 291
    :sswitch_25
    const/16 v0, 0x32

    .line 292
    goto :goto_0

    .line 288
    :sswitch_26
    const/16 v0, 0x30

    .line 289
    goto :goto_0

    .line 285
    :sswitch_27
    const/16 v0, 0x2e

    .line 286
    goto :goto_0

    .line 282
    :sswitch_28
    const/16 v0, 0x2c

    .line 283
    goto :goto_0

    .line 279
    :sswitch_29
    const/16 v0, 0x2a

    .line 280
    goto :goto_0

    .line 276
    :sswitch_2a
    const/16 v0, 0x28

    .line 277
    goto :goto_0

    .line 273
    :sswitch_2b
    const/16 v0, 0x26

    .line 274
    goto :goto_0

    .line 270
    :sswitch_2c
    const/16 v0, 0x24

    .line 271
    goto :goto_0

    .line 267
    :sswitch_2d
    const/16 v0, 0xe

    .line 268
    goto :goto_0

    .line 264
    :sswitch_2e
    const/16 v0, 0xd

    .line 265
    goto :goto_0

    .line 261
    :sswitch_2f
    const/16 v0, 0xc

    .line 262
    goto :goto_0

    .line 258
    :sswitch_30
    const/16 v0, 0xb

    .line 259
    goto :goto_0

    .line 255
    :sswitch_31
    const/16 v0, 0xa

    .line 256
    goto :goto_0

    .line 252
    :sswitch_32
    const/16 v0, 0x9

    .line 253
    goto :goto_0

    .line 249
    :sswitch_33
    const/16 v0, 0x8

    .line 250
    goto :goto_0

    .line 246
    :sswitch_34
    const/4 v0, 0x7

    .line 247
    goto :goto_0

    .line 243
    :sswitch_35
    const/4 v0, 0x6

    .line 244
    goto :goto_0

    .line 240
    :sswitch_36
    const/4 v0, 0x5

    .line 241
    goto :goto_0

    .line 237
    :sswitch_37
    const/4 v0, 0x4

    .line 238
    goto :goto_0

    .line 234
    :sswitch_38
    const/4 v0, 0x3

    .line 235
    goto :goto_0

    .line 231
    :sswitch_39
    const/4 v0, 0x2

    .line 232
    goto :goto_0

    .line 228
    :sswitch_3a
    const/4 v0, 0x1

    .line 229
    nop

    .line 405
    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x96c -> :sswitch_3a
        0x971 -> :sswitch_39
        0x976 -> :sswitch_38
        0x97b -> :sswitch_37
        0x980 -> :sswitch_36
        0x985 -> :sswitch_35
        0x98a -> :sswitch_34
        0x98f -> :sswitch_33
        0x994 -> :sswitch_32
        0x999 -> :sswitch_31
        0x99e -> :sswitch_30
        0x9a3 -> :sswitch_2f
        0x9a8 -> :sswitch_2e
        0x9b4 -> :sswitch_2d
        0x143c -> :sswitch_2c
        0x1446 -> :sswitch_2b
        0x1450 -> :sswitch_2a
        0x145a -> :sswitch_29
        0x1464 -> :sswitch_28
        0x146e -> :sswitch_27
        0x1478 -> :sswitch_26
        0x1482 -> :sswitch_25
        0x148c -> :sswitch_24
        0x1496 -> :sswitch_23
        0x14a0 -> :sswitch_22
        0x14aa -> :sswitch_21
        0x14b4 -> :sswitch_20
        0x14be -> :sswitch_1f
        0x14c8 -> :sswitch_1e
        0x157c -> :sswitch_1d
        0x1586 -> :sswitch_1c
        0x1590 -> :sswitch_1b
        0x159a -> :sswitch_1a
        0x15a4 -> :sswitch_19
        0x15ae -> :sswitch_18
        0x15b8 -> :sswitch_17
        0x15c2 -> :sswitch_16
        0x15cc -> :sswitch_15
        0x15d6 -> :sswitch_14
        0x15e0 -> :sswitch_13
        0x15ea -> :sswitch_12
        0x15f4 -> :sswitch_11
        0x15fe -> :sswitch_10
        0x1608 -> :sswitch_f
        0x161c -> :sswitch_e
        0x1626 -> :sswitch_d
        0x1630 -> :sswitch_c
        0x163a -> :sswitch_b
        0x1644 -> :sswitch_a
        0x164e -> :sswitch_9
        0x1658 -> :sswitch_8
        0x1671 -> :sswitch_7
        0x167b -> :sswitch_6
        0x1685 -> :sswitch_5
        0x168f -> :sswitch_4
        0x1699 -> :sswitch_3
        0x16a3 -> :sswitch_2
        0x16ad -> :sswitch_1
        0x16c1 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getWifiBssid(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 30
    const/4 v0, 0x0

    .line 31
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-le v1, v2, :cond_0

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 33
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, "pkgName":Ljava/lang/String;
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    const-string v3, ""

    return-object v3

    .line 38
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_0
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    move-object v0, v1

    .line 39
    if-nez v0, :cond_1

    .line 40
    const-string v1, ""

    return-object v1

    .line 42
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 44
    .end local v0    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v0

    .line 47
    const-string v0, ""

    return-object v0
.end method

.method private isWifiConnected()Z
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/msec/WifiCollection;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 184
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 185
    return v1

    .line 188
    :cond_0
    const/4 v2, 0x0

    .line 189
    .local v2, "wifiNetworkInfo":Landroid/net/NetworkInfo;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    const/4 v5, 0x1

    if-lt v3, v4, :cond_1

    .line 190
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 194
    :goto_0
    if-eqz v2, :cond_2

    .line 195
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 196
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 197
    return v5

    .line 199
    :cond_2
    return v1
.end method


# virtual methods
.method public end()Ljava/lang/String;
    .locals 16
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 86
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/msec/WifiCollection;->mCanUse:Z

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/msec/WifiCollection;->sp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/msec/WifiCollection;->sp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/msec/WifiCollection;->sp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/msec/WifiCollection;->sp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/msec/WifiCollection;->sp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/msec/WifiCollection;->sp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 90
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .local v1, "sb":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .local v2, "wifiListSb":Ljava/lang/StringBuilder;
    const-string v3, ""

    .line 93
    .local v3, "oriSsid":Ljava/lang/String;
    const-string v4, ""

    .line 94
    .local v4, "bssid":Ljava/lang/String;
    const/4 v5, 0x0

    .line 95
    .local v5, "hasSetFrequency":Z
    const/4 v6, 0x0

    .line 97
    .local v6, "ip":I
    iget-object v7, v0, Lcom/msec/WifiCollection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v7, :cond_1

    .line 98
    iget-object v7, v0, Lcom/msec/WifiCollection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v6

    .line 101
    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_7

    .line 102
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v10, v6, 0xff

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v10, 0x2e

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v11, v6, 0x8

    and-int/lit16 v11, v11, 0xff

    .line 103
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v11, v6, 0x10

    and-int/lit16 v11, v11, 0xff

    .line 104
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v10, v6, 0x18

    and-int/lit16 v10, v10, 0xff

    .line 105
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 102
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/msec/WifiCollection;->sp:Ljava/lang/String;

    .line 106
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-object v9, v0, Lcom/msec/WifiCollection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 109
    if-nez v3, :cond_2

    .line 110
    const-string v3, ""

    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    if-lt v9, v10, :cond_4

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v11, 0x22

    if-ne v9, v11, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v8

    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v11, :cond_4

    .line 112
    iget-object v9, v0, Lcom/msec/WifiCollection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->toString()Ljava/lang/String;

    move-result-object v9

    .line 113
    .local v9, "str":Ljava/lang/String;
    const-string v11, "SSID"

    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 114
    .local v11, "be":I
    const-string v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 115
    .local v12, "end":I
    const/4 v13, -0x1

    if-eq v11, v13, :cond_3

    if-eq v12, v13, :cond_3

    add-int/lit8 v13, v11, 0x6

    if-ge v13, v12, :cond_3

    .line 116
    add-int/lit8 v10, v11, 0x6

    invoke-virtual {v9, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 118
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v13, v10

    invoke-virtual {v3, v8, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 121
    .end local v9    # "str":Ljava/lang/String;
    .end local v11    # "be":I
    .end local v12    # "end":I
    :cond_4
    :goto_0
    invoke-static {v3}, Lcom/msec/SmartEscape;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/msec/WifiCollection;->sp:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object v9, v0, Lcom/msec/WifiCollection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    .line 124
    if-eqz v4, :cond_5

    const-string v9, "00:00:00:00:00:00"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 125
    :cond_5
    const-string v4, ""

    .line 127
    :cond_6
    iget-object v9, v0, Lcom/msec/WifiCollection;->sp:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/msec/WifiCollection;->sp:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-object v9, v0, Lcom/msec/WifiCollection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/msec/WifiCollection;->sp:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-lt v9, v10, :cond_8

    .line 132
    iget-object v9, v0, Lcom/msec/WifiCollection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v9

    .line 133
    .local v9, "freq":I
    invoke-direct {v0, v1, v9}, Lcom/msec/WifiCollection;->getChannelAndFrequency(Ljava/lang/StringBuilder;I)V

    .line 134
    const/4 v5, 0x1

    .line 135
    .end local v9    # "freq":I
    goto :goto_1

    .line 137
    :cond_7
    iget-object v9, v0, Lcom/msec/WifiCollection;->sp:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/msec/WifiCollection;->sp:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/msec/WifiCollection;->sp:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/msec/WifiCollection;->sp:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_8
    :goto_1
    const/16 v9, 0xa

    .line 141
    .local v9, "maxCount":I
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 142
    .local v10, "ssidCapabilitiesVec":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .local v7, "j":I
    .local v11, "i":I
    :goto_2
    iget-object v12, v0, Lcom/msec/WifiCollection;->mWifiList:Ljava/util/List;

    if-eqz v12, :cond_f

    iget-object v12, v0, Lcom/msec/WifiCollection;->mWifiList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_f

    .line 143
    iget-object v12, v0, Lcom/msec/WifiCollection;->mWifiList:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/ScanResult;

    .line 144
    .local v12, "sr":Landroid/net/wifi/ScanResult;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v12, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v12, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 145
    .local v13, "ssidCapabilities":Ljava/lang/String;
    invoke-virtual {v10, v13}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 146
    goto :goto_3

    .line 147
    :cond_9
    invoke-virtual {v10, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v14, v12, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    const/16 v15, 0xa

    if-nez v14, :cond_c

    iget-object v14, v12, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v8, "00:00:00:00:00:00"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 150
    if-ge v7, v15, :cond_a

    .line 151
    iget-object v8, v12, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 152
    add-int/lit8 v7, v7, 0x1

    .line 155
    :cond_a
    if-nez v5, :cond_c

    if-eqz v6, :cond_c

    .line 156
    iget-object v8, v12, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, v12, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 157
    :cond_b
    iget v8, v12, Landroid/net/wifi/ScanResult;->frequency:I

    .line 158
    .local v8, "freq":I
    invoke-direct {v0, v1, v8}, Lcom/msec/WifiCollection;->getChannelAndFrequency(Ljava/lang/StringBuilder;I)V

    .line 159
    const/4 v5, 0x1

    .line 164
    .end local v8    # "freq":I
    :cond_c
    if-nez v5, :cond_d

    if-nez v6, :cond_e

    :cond_d
    if-lt v7, v15, :cond_e

    .line 165
    goto :goto_4

    .line 142
    .end local v12    # "sr":Landroid/net/wifi/ScanResult;
    .end local v13    # "ssidCapabilities":Ljava/lang/String;
    :cond_e
    :goto_3
    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x1

    goto :goto_2

    .line 169
    .end local v7    # "j":I
    .end local v11    # "i":I
    :cond_f
    :goto_4
    if-nez v5, :cond_10

    .line 170
    iget-object v7, v0, Lcom/msec/WifiCollection;->sp:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/msec/WifiCollection;->sp:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :cond_10
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_11

    .line 174
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/msec/SmartEscape;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    :cond_11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public start(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    iput-object p1, p0, Lcom/msec/WifiCollection;->mContext:Landroid/content/Context;

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/msec/WifiCollection;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 54
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Lcom/msec/WifiCollection;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/msec/WifiCollection;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/msec/WifiCollection;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 57
    iget-object v2, p0, Lcom/msec/WifiCollection;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_0

    .line 58
    return-void

    .line 61
    :cond_0
    iget-object v2, p0, Lcom/msec/WifiCollection;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/msec/WifiCollection;->mCanUse:Z

    .line 63
    iget-boolean v2, p0, Lcom/msec/WifiCollection;->mCanUse:Z

    if-nez v2, :cond_1

    .line 64
    return-void

    .line 66
    :cond_1
    invoke-direct {p0}, Lcom/msec/WifiCollection;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 67
    iget-object v2, p0, Lcom/msec/WifiCollection;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/msec/WifiCollection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 70
    :cond_2
    iget-object v2, p0, Lcom/msec/WifiCollection;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 71
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 73
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    .line 74
    :cond_3
    iget-object v2, p0, Lcom/msec/WifiCollection;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/msec/WifiCollection;->mWifiList:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/msec/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_5

    .line 79
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_0
    return-void
.end method
