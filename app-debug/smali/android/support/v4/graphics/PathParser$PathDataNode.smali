.class public Landroid/support/v4/graphics/PathParser$PathDataNode;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/PathParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathDataNode"
.end annotation


# instance fields
.field public mParams:[F
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public mType:C
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(C[F)V
    .locals 0
    .param p1, "type"    # C
    .param p2, "params"    # [F

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    iput-char p1, p0, Landroid/support/v4/graphics/PathParser$PathDataNode;->mType:C

    .line 322
    iput-object p2, p0, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    .line 323
    return-void
.end method

.method constructor <init>(Landroid/support/v4/graphics/PathParser$PathDataNode;)V
    .locals 3
    .param p1, "n"    # Landroid/support/v4/graphics/PathParser$PathDataNode;

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    iget-char v0, p1, Landroid/support/v4/graphics/PathParser$PathDataNode;->mType:C

    iput-char v0, p0, Landroid/support/v4/graphics/PathParser$PathDataNode;->mType:C

    .line 327
    iget-object v0, p1, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    iget-object v1, p1, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/support/v4/graphics/PathParser;->copyOfRange([FII)[F

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    .line 328
    return-void
.end method

.method private static addCommand(Landroid/graphics/Path;[FCC[F)V
    .locals 28
    .param p0, "path"    # Landroid/graphics/Path;
    .param p1, "current"    # [F
    .param p2, "previousCmd"    # C
    .param p3, "cmd"    # C
    .param p4, "val"    # [F

    .line 365
    move-object/from16 v10, p0

    move-object/from16 v13, p4

    const/4 v0, 0x2

    .line 366
    .local v0, "incr":I
    const/4 v14, 0x0

    aget v1, p1, v14

    .line 367
    .local v1, "currentX":F
    const/4 v15, 0x1

    aget v2, p1, v15

    .line 368
    .local v2, "currentY":F
    const/16 v16, 0x2

    aget v3, p1, v16

    .line 369
    .local v3, "ctrlPointX":F
    const/16 v17, 0x3

    aget v4, p1, v17

    .line 370
    .local v4, "ctrlPointY":F
    const/16 v18, 0x4

    aget v5, p1, v18

    .line 371
    .local v5, "currentSegmentStartX":F
    const/16 v19, 0x5

    aget v6, p1, v19

    .line 375
    .local v6, "currentSegmentStartY":F
    sparse-switch p3, :sswitch_data_0

    .line 418
    .end local v0    # "incr":I
    .local v20, "incr":I
    :goto_0
    move/from16 v20, v0

    goto :goto_1

    .line 378
    .end local v20    # "incr":I
    .restart local v0    # "incr":I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->close()V

    .line 382
    move v1, v5

    .line 383
    move v2, v6

    .line 384
    move v3, v5

    .line 385
    move v4, v6

    .line 386
    invoke-virtual {v10, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 387
    goto :goto_0

    .line 410
    :sswitch_1
    const/4 v0, 0x4

    .line 411
    goto :goto_0

    .line 394
    :sswitch_2
    const/4 v0, 0x2

    .line 395
    goto :goto_0

    .line 400
    :sswitch_3
    const/4 v0, 0x1

    .line 401
    goto :goto_0

    .line 404
    :sswitch_4
    const/4 v0, 0x6

    .line 405
    goto :goto_0

    .line 414
    :sswitch_5
    const/4 v0, 0x7

    goto :goto_0

    .line 418
    .end local v0    # "incr":I
    .restart local v20    # "incr":I
    :goto_1
    move/from16 v7, p2

    move v9, v1

    move v8, v2

    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    move/from16 v24, v6

    const/4 v0, 0x0

    .end local v1    # "currentX":F
    .end local v2    # "currentY":F
    .end local v3    # "ctrlPointX":F
    .end local v4    # "ctrlPointY":F
    .end local v5    # "currentSegmentStartX":F
    .end local v6    # "currentSegmentStartY":F
    .end local p2    # "previousCmd":C
    .local v0, "k":I
    .local v7, "previousCmd":C
    .local v8, "currentY":F
    .local v9, "currentX":F
    .local v21, "ctrlPointX":F
    .local v22, "ctrlPointY":F
    .local v23, "currentSegmentStartX":F
    .local v24, "currentSegmentStartY":F
    :goto_2
    move v6, v0

    .end local v0    # "k":I
    .local v6, "k":I
    array-length v0, v13

    if-ge v6, v0, :cond_e

    .line 419
    const/16 v0, 0x51

    const/16 v1, 0x43

    const/16 v2, 0x74

    const/16 v3, 0x73

    const/16 v4, 0x71

    const/16 v5, 0x63

    const/high16 v25, 0x40000000    # 2.0f

    const/4 v15, 0x0

    sparse-switch p3, :sswitch_data_1

    .line 602
    move/from16 v27, v6

    move v14, v7

    move v12, v8

    move v11, v9

    .end local v6    # "k":I
    .end local v7    # "previousCmd":C
    .end local v8    # "currentY":F
    .end local v9    # "currentX":F
    .local v11, "currentX":F
    .local v12, "currentY":F
    .local v14, "previousCmd":C
    .local v27, "k":I
    goto/16 :goto_f

    .line 467
    .end local v11    # "currentX":F
    .end local v12    # "currentY":F
    .end local v14    # "previousCmd":C
    .end local v27    # "k":I
    .restart local v6    # "k":I
    .restart local v7    # "previousCmd":C
    .restart local v8    # "currentY":F
    .restart local v9    # "currentX":F
    :sswitch_6
    add-int/lit8 v0, v6, 0x0

    aget v0, v13, v0

    invoke-virtual {v10, v15, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 468
    add-int/lit8 v0, v6, 0x0

    aget v0, v13, v0

    add-float/2addr v8, v0

    .line 469
    nop

    .line 602
    .end local v6    # "k":I
    .end local v7    # "previousCmd":C
    .restart local v14    # "previousCmd":C
    .restart local v27    # "k":I
    :goto_3
    move/from16 v27, v6

    goto/16 :goto_7

    .line 539
    .end local v14    # "previousCmd":C
    .end local v27    # "k":I
    .restart local v6    # "k":I
    .restart local v7    # "previousCmd":C
    :sswitch_7
    const/4 v1, 0x0

    .line 540
    .local v1, "reflectiveCtrlPointX":F
    const/4 v3, 0x0

    .line 541
    .local v3, "reflectiveCtrlPointY":F
    if-eq v7, v4, :cond_0

    if-eq v7, v2, :cond_0

    if-eq v7, v0, :cond_0

    const/16 v0, 0x54

    if-ne v7, v0, :cond_1

    .line 543
    :cond_0
    sub-float v1, v9, v21

    .line 544
    sub-float v3, v8, v22

    .line 546
    :cond_1
    add-int/lit8 v0, v6, 0x0

    aget v0, v13, v0

    add-int/lit8 v2, v6, 0x1

    aget v2, v13, v2

    invoke-virtual {v10, v1, v3, v0, v2}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 548
    add-float v0, v9, v1

    .line 549
    .end local v21    # "ctrlPointX":F
    .local v0, "ctrlPointX":F
    add-float v2, v8, v3

    .line 550
    .end local v22    # "ctrlPointY":F
    .local v2, "ctrlPointY":F
    add-int/lit8 v4, v6, 0x0

    aget v4, v13, v4

    add-float/2addr v9, v4

    .line 551
    add-int/lit8 v4, v6, 0x1

    aget v4, v13, v4

    add-float/2addr v8, v4

    .line 552
    nop

    .line 602
    move/from16 v21, v0

    move/from16 v22, v2

    goto :goto_3

    .line 493
    .end local v0    # "ctrlPointX":F
    .end local v1    # "reflectiveCtrlPointX":F
    .end local v2    # "ctrlPointY":F
    .end local v3    # "reflectiveCtrlPointY":F
    .restart local v21    # "ctrlPointX":F
    .restart local v22    # "ctrlPointY":F
    :sswitch_8
    const/4 v0, 0x0

    .line 494
    .local v0, "reflectiveCtrlPointX":F
    const/4 v2, 0x0

    .line 495
    .local v2, "reflectiveCtrlPointY":F
    if-eq v7, v5, :cond_3

    if-eq v7, v3, :cond_3

    if-eq v7, v1, :cond_3

    const/16 v1, 0x53

    if-ne v7, v1, :cond_2

    goto :goto_4

    .line 500
    :cond_2
    move v15, v0

    move/from16 v25, v2

    goto :goto_5

    .line 497
    :cond_3
    :goto_4
    sub-float v0, v9, v21

    .line 498
    sub-float v1, v8, v22

    .line 500
    move v15, v0

    move/from16 v25, v1

    .end local v0    # "reflectiveCtrlPointX":F
    .end local v2    # "reflectiveCtrlPointY":F
    .local v15, "reflectiveCtrlPointX":F
    .local v25, "reflectiveCtrlPointY":F
    :goto_5
    add-int/lit8 v0, v6, 0x0

    aget v3, v13, v0

    add-int/lit8 v0, v6, 0x1

    aget v4, v13, v0

    add-int/lit8 v0, v6, 0x2

    aget v5, v13, v0

    add-int/lit8 v0, v6, 0x3

    aget v26, v13, v0

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v25

    move/from16 v27, v6

    .end local v6    # "k":I
    .restart local v27    # "k":I
    move/from16 v6, v26

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 504
    add-int/lit8 v6, v27, 0x0

    aget v0, v13, v6

    add-float/2addr v0, v9

    .line 505
    .end local v21    # "ctrlPointX":F
    .local v0, "ctrlPointX":F
    add-int/lit8 v6, v27, 0x1

    aget v1, v13, v6

    add-float/2addr v1, v8

    .line 506
    .end local v22    # "ctrlPointY":F
    .local v1, "ctrlPointY":F
    add-int/lit8 v6, v27, 0x2

    aget v2, v13, v6

    add-float/2addr v9, v2

    .line 507
    add-int/lit8 v6, v27, 0x3

    aget v2, v13, v6

    add-float/2addr v8, v2

    .line 508
    goto/16 :goto_6

    .line 525
    .end local v0    # "ctrlPointX":F
    .end local v1    # "ctrlPointY":F
    .end local v15    # "reflectiveCtrlPointX":F
    .end local v25    # "reflectiveCtrlPointY":F
    .end local v27    # "k":I
    .restart local v6    # "k":I
    .restart local v21    # "ctrlPointX":F
    .restart local v22    # "ctrlPointY":F
    :sswitch_9
    move/from16 v27, v6

    .end local v6    # "k":I
    .restart local v27    # "k":I
    add-int/lit8 v6, v27, 0x0

    aget v0, v13, v6

    add-int/lit8 v6, v27, 0x1

    aget v1, v13, v6

    add-int/lit8 v6, v27, 0x2

    aget v2, v13, v6

    add-int/lit8 v6, v27, 0x3

    aget v3, v13, v6

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 526
    add-int/lit8 v6, v27, 0x0

    aget v0, v13, v6

    add-float/2addr v0, v9

    .line 527
    .end local v21    # "ctrlPointX":F
    .restart local v0    # "ctrlPointX":F
    add-int/lit8 v6, v27, 0x1

    aget v1, v13, v6

    add-float/2addr v1, v8

    .line 528
    .end local v22    # "ctrlPointY":F
    .restart local v1    # "ctrlPointY":F
    add-int/lit8 v6, v27, 0x2

    aget v2, v13, v6

    add-float/2addr v9, v2

    .line 529
    add-int/lit8 v6, v27, 0x3

    aget v2, v13, v6

    add-float/2addr v8, v2

    .line 530
    goto/16 :goto_6

    .line 421
    .end local v0    # "ctrlPointX":F
    .end local v1    # "ctrlPointY":F
    .end local v27    # "k":I
    .restart local v6    # "k":I
    .restart local v21    # "ctrlPointX":F
    .restart local v22    # "ctrlPointY":F
    :sswitch_a
    move/from16 v27, v6

    .end local v6    # "k":I
    .restart local v27    # "k":I
    add-int/lit8 v6, v27, 0x0

    aget v0, v13, v6

    add-float/2addr v9, v0

    .line 422
    add-int/lit8 v6, v27, 0x1

    aget v0, v13, v6

    add-float/2addr v8, v0

    .line 423
    if-lez v27, :cond_4

    .line 427
    add-int/lit8 v6, v27, 0x0

    aget v0, v13, v6

    add-int/lit8 v6, v27, 0x1

    aget v1, v13, v6

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    goto/16 :goto_7

    .line 429
    :cond_4
    add-int/lit8 v6, v27, 0x0

    aget v0, v13, v6

    add-int/lit8 v6, v27, 0x1

    aget v1, v13, v6

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 430
    move v0, v9

    .line 431
    .end local v23    # "currentSegmentStartX":F
    .local v0, "currentSegmentStartX":F
    move v1, v8

    .line 433
    .end local v24    # "currentSegmentStartY":F
    .local v1, "currentSegmentStartY":F
    nop

    .line 602
    move/from16 v23, v0

    move/from16 v24, v1

    goto :goto_7

    .line 449
    .end local v0    # "currentSegmentStartX":F
    .end local v1    # "currentSegmentStartY":F
    .end local v27    # "k":I
    .restart local v6    # "k":I
    .restart local v23    # "currentSegmentStartX":F
    .restart local v24    # "currentSegmentStartY":F
    :sswitch_b
    move/from16 v27, v6

    .end local v6    # "k":I
    .restart local v27    # "k":I
    add-int/lit8 v6, v27, 0x0

    aget v0, v13, v6

    add-int/lit8 v6, v27, 0x1

    aget v1, v13, v6

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 450
    add-int/lit8 v6, v27, 0x0

    aget v0, v13, v6

    add-float/2addr v9, v0

    .line 451
    add-int/lit8 v6, v27, 0x1

    aget v0, v13, v6

    add-float/2addr v8, v0

    .line 452
    goto :goto_7

    .line 459
    .end local v27    # "k":I
    .restart local v6    # "k":I
    :sswitch_c
    move/from16 v27, v6

    .end local v6    # "k":I
    .restart local v27    # "k":I
    add-int/lit8 v6, v27, 0x0

    aget v0, v13, v6

    invoke-virtual {v10, v0, v15}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 460
    add-int/lit8 v6, v27, 0x0

    aget v0, v13, v6

    add-float/2addr v9, v0

    .line 461
    goto :goto_7

    .line 475
    .end local v27    # "k":I
    .restart local v6    # "k":I
    :sswitch_d
    move/from16 v27, v6

    .end local v6    # "k":I
    .restart local v27    # "k":I
    add-int/lit8 v6, v27, 0x0

    aget v1, v13, v6

    add-int/lit8 v6, v27, 0x1

    aget v2, v13, v6

    add-int/lit8 v6, v27, 0x2

    aget v3, v13, v6

    add-int/lit8 v6, v27, 0x3

    aget v4, v13, v6

    add-int/lit8 v6, v27, 0x4

    aget v5, v13, v6

    add-int/lit8 v6, v27, 0x5

    aget v6, v13, v6

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 478
    add-int/lit8 v6, v27, 0x2

    aget v0, v13, v6

    add-float/2addr v0, v9

    .line 479
    .end local v21    # "ctrlPointX":F
    .local v0, "ctrlPointX":F
    add-int/lit8 v6, v27, 0x3

    aget v1, v13, v6

    add-float/2addr v1, v8

    .line 480
    .end local v22    # "ctrlPointY":F
    .local v1, "ctrlPointY":F
    add-int/lit8 v6, v27, 0x4

    aget v2, v13, v6

    add-float/2addr v9, v2

    .line 481
    add-int/lit8 v6, v27, 0x5

    aget v2, v13, v6

    add-float/2addr v8, v2

    .line 483
    nop

    .line 602
    .end local v0    # "ctrlPointX":F
    .end local v1    # "ctrlPointY":F
    .end local v7    # "previousCmd":C
    .restart local v14    # "previousCmd":C
    .restart local v21    # "ctrlPointX":F
    .restart local v22    # "ctrlPointY":F
    :goto_6
    move/from16 v21, v0

    move/from16 v22, v1

    :goto_7
    move v14, v7

    goto/16 :goto_f

    .line 570
    .end local v14    # "previousCmd":C
    .end local v27    # "k":I
    .restart local v6    # "k":I
    .restart local v7    # "previousCmd":C
    :sswitch_e
    move/from16 v27, v6

    .end local v6    # "k":I
    .restart local v27    # "k":I
    add-int/lit8 v6, v27, 0x5

    aget v0, v13, v6

    add-float v3, v0, v9

    add-int/lit8 v6, v27, 0x6

    aget v0, v13, v6

    add-float v4, v0, v8

    add-int/lit8 v6, v27, 0x0

    aget v5, v13, v6

    add-int/lit8 v6, v27, 0x1

    aget v6, v13, v6

    add-int/lit8 v0, v27, 0x2

    aget v25, v13, v0

    add-int/lit8 v0, v27, 0x3

    aget v0, v13, v0

    cmpl-float v0, v0, v15

    if-eqz v0, :cond_5

    const/16 v26, 0x1

    goto :goto_8

    :cond_5
    const/16 v26, 0x0

    :goto_8
    add-int/lit8 v0, v27, 0x4

    aget v0, v13, v0

    cmpl-float v0, v0, v15

    if-eqz v0, :cond_6

    const/4 v15, 0x1

    goto :goto_9

    :cond_6
    const/4 v15, 0x0

    :goto_9
    move-object/from16 v0, p0

    move v1, v9

    move v2, v8

    move v14, v7

    .end local v7    # "previousCmd":C
    .restart local v14    # "previousCmd":C
    move/from16 v7, v25

    move v12, v8

    .end local v8    # "currentY":F
    .restart local v12    # "currentY":F
    move/from16 v8, v26

    move v11, v9

    .end local v9    # "currentX":F
    .restart local v11    # "currentX":F
    move v9, v15

    invoke-static/range {v0 .. v9}, Landroid/support/v4/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 580
    add-int/lit8 v6, v27, 0x5

    aget v0, v13, v6

    add-float v9, v11, v0

    .line 581
    .end local v11    # "currentX":F
    .restart local v9    # "currentX":F
    add-int/lit8 v6, v27, 0x6

    aget v0, v13, v6

    add-float v8, v12, v0

    .line 582
    .end local v12    # "currentY":F
    .restart local v8    # "currentY":F
    move v0, v9

    .line 583
    .end local v21    # "ctrlPointX":F
    .restart local v0    # "ctrlPointX":F
    move v1, v8

    .line 584
    .end local v22    # "ctrlPointY":F
    .restart local v1    # "ctrlPointY":F
    goto/16 :goto_c

    .line 471
    .end local v0    # "ctrlPointX":F
    .end local v1    # "ctrlPointY":F
    .end local v14    # "previousCmd":C
    .end local v27    # "k":I
    .restart local v6    # "k":I
    .restart local v7    # "previousCmd":C
    .restart local v21    # "ctrlPointX":F
    .restart local v22    # "ctrlPointY":F
    :sswitch_f
    move/from16 v27, v6

    move v14, v7

    move v12, v8

    move v11, v9

    .end local v6    # "k":I
    .end local v7    # "previousCmd":C
    .end local v8    # "currentY":F
    .end local v9    # "currentX":F
    .restart local v11    # "currentX":F
    .restart local v12    # "currentY":F
    .restart local v14    # "previousCmd":C
    .restart local v27    # "k":I
    add-int/lit8 v6, v27, 0x0

    aget v0, v13, v6

    invoke-virtual {v10, v11, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 472
    add-int/lit8 v6, v27, 0x0

    aget v8, v13, v6

    .line 473
    .end local v12    # "currentY":F
    .restart local v8    # "currentY":F
    goto/16 :goto_f

    .line 554
    .end local v11    # "currentX":F
    .end local v14    # "previousCmd":C
    .end local v27    # "k":I
    .restart local v6    # "k":I
    .restart local v7    # "previousCmd":C
    .restart local v9    # "currentX":F
    :sswitch_10
    move/from16 v27, v6

    move v14, v7

    move v12, v8

    move v11, v9

    .end local v6    # "k":I
    .end local v7    # "previousCmd":C
    .end local v8    # "currentY":F
    .end local v9    # "currentX":F
    .restart local v11    # "currentX":F
    .restart local v12    # "currentY":F
    .restart local v14    # "previousCmd":C
    .restart local v27    # "k":I
    move v1, v11

    .line 555
    .local v1, "reflectiveCtrlPointX":F
    move v3, v12

    .line 556
    .restart local v3    # "reflectiveCtrlPointY":F
    if-eq v14, v4, :cond_7

    if-eq v14, v2, :cond_7

    if-eq v14, v0, :cond_7

    const/16 v0, 0x54

    if-ne v14, v0, :cond_8

    .line 558
    :cond_7
    mul-float v9, v11, v25

    sub-float v1, v9, v21

    .line 559
    mul-float v8, v12, v25

    sub-float v3, v8, v22

    .line 561
    :cond_8
    add-int/lit8 v6, v27, 0x0

    aget v0, v13, v6

    add-int/lit8 v6, v27, 0x1

    aget v2, v13, v6

    invoke-virtual {v10, v1, v3, v0, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 563
    move v0, v1

    .line 564
    .end local v21    # "ctrlPointX":F
    .restart local v0    # "ctrlPointX":F
    move v2, v3

    .line 565
    .end local v22    # "ctrlPointY":F
    .local v2, "ctrlPointY":F
    add-int/lit8 v6, v27, 0x0

    aget v9, v13, v6

    .line 566
    .end local v11    # "currentX":F
    .restart local v9    # "currentX":F
    add-int/lit8 v6, v27, 0x1

    aget v8, v13, v6

    .line 567
    .end local v12    # "currentY":F
    .restart local v8    # "currentY":F
    nop

    .line 602
    move/from16 v21, v0

    move/from16 v22, v2

    goto/16 :goto_f

    .line 510
    .end local v0    # "ctrlPointX":F
    .end local v1    # "reflectiveCtrlPointX":F
    .end local v2    # "ctrlPointY":F
    .end local v3    # "reflectiveCtrlPointY":F
    .end local v14    # "previousCmd":C
    .end local v27    # "k":I
    .restart local v6    # "k":I
    .restart local v7    # "previousCmd":C
    .restart local v21    # "ctrlPointX":F
    .restart local v22    # "ctrlPointY":F
    :sswitch_11
    move/from16 v27, v6

    move v14, v7

    move v12, v8

    move v11, v9

    .end local v6    # "k":I
    .end local v7    # "previousCmd":C
    .end local v8    # "currentY":F
    .end local v9    # "currentX":F
    .restart local v11    # "currentX":F
    .restart local v12    # "currentY":F
    .restart local v14    # "previousCmd":C
    .restart local v27    # "k":I
    move v0, v11

    .line 511
    .local v0, "reflectiveCtrlPointX":F
    move v2, v12

    .line 512
    .local v2, "reflectiveCtrlPointY":F
    if-eq v14, v5, :cond_a

    if-eq v14, v3, :cond_a

    if-eq v14, v1, :cond_a

    const/16 v1, 0x53

    if-ne v14, v1, :cond_9

    goto :goto_a

    .line 517
    :cond_9
    move v9, v0

    move v8, v2

    goto :goto_b

    .line 514
    :cond_a
    :goto_a
    mul-float v9, v11, v25

    sub-float v9, v9, v21

    .line 515
    .end local v0    # "reflectiveCtrlPointX":F
    .local v9, "reflectiveCtrlPointX":F
    mul-float v8, v12, v25

    sub-float v8, v8, v22

    .line 517
    .end local v2    # "reflectiveCtrlPointY":F
    .local v8, "reflectiveCtrlPointY":F
    :goto_b
    add-int/lit8 v6, v27, 0x0

    aget v3, v13, v6

    add-int/lit8 v6, v27, 0x1

    aget v4, v13, v6

    add-int/lit8 v6, v27, 0x2

    aget v5, v13, v6

    add-int/lit8 v6, v27, 0x3

    aget v6, v13, v6

    move-object/from16 v0, p0

    move v1, v9

    move v2, v8

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 519
    add-int/lit8 v6, v27, 0x0

    aget v0, v13, v6

    .line 520
    .end local v21    # "ctrlPointX":F
    .local v0, "ctrlPointX":F
    add-int/lit8 v6, v27, 0x1

    aget v1, v13, v6

    .line 521
    .end local v22    # "ctrlPointY":F
    .local v1, "ctrlPointY":F
    add-int/lit8 v6, v27, 0x2

    aget v2, v13, v6

    .line 522
    .end local v11    # "currentX":F
    .local v2, "currentX":F
    add-int/lit8 v6, v27, 0x3

    aget v3, v13, v6

    .line 523
    .end local v12    # "currentY":F
    .local v3, "currentY":F
    nop

    .line 602
    move/from16 v21, v0

    move/from16 v22, v1

    move v9, v2

    move v8, v3

    goto/16 :goto_f

    .line 532
    .end local v0    # "ctrlPointX":F
    .end local v1    # "ctrlPointY":F
    .end local v2    # "currentX":F
    .end local v3    # "currentY":F
    .end local v14    # "previousCmd":C
    .end local v27    # "k":I
    .restart local v6    # "k":I
    .restart local v7    # "previousCmd":C
    .local v8, "currentY":F
    .local v9, "currentX":F
    .restart local v21    # "ctrlPointX":F
    .restart local v22    # "ctrlPointY":F
    :sswitch_12
    move/from16 v27, v6

    move v14, v7

    move v12, v8

    move v11, v9

    .end local v6    # "k":I
    .end local v7    # "previousCmd":C
    .end local v8    # "currentY":F
    .end local v9    # "currentX":F
    .restart local v11    # "currentX":F
    .restart local v12    # "currentY":F
    .restart local v14    # "previousCmd":C
    .restart local v27    # "k":I
    add-int/lit8 v6, v27, 0x0

    aget v0, v13, v6

    add-int/lit8 v6, v27, 0x1

    aget v1, v13, v6

    add-int/lit8 v6, v27, 0x2

    aget v2, v13, v6

    add-int/lit8 v6, v27, 0x3

    aget v3, v13, v6

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 533
    add-int/lit8 v6, v27, 0x0

    aget v0, v13, v6

    .line 534
    .end local v21    # "ctrlPointX":F
    .restart local v0    # "ctrlPointX":F
    add-int/lit8 v6, v27, 0x1

    aget v1, v13, v6

    .line 535
    .end local v22    # "ctrlPointY":F
    .restart local v1    # "ctrlPointY":F
    add-int/lit8 v6, v27, 0x2

    aget v9, v13, v6

    .line 536
    .end local v11    # "currentX":F
    .restart local v9    # "currentX":F
    add-int/lit8 v6, v27, 0x3

    aget v8, v13, v6

    .line 537
    .end local v12    # "currentY":F
    .restart local v8    # "currentY":F
    goto/16 :goto_c

    .line 435
    .end local v0    # "ctrlPointX":F
    .end local v1    # "ctrlPointY":F
    .end local v14    # "previousCmd":C
    .end local v27    # "k":I
    .restart local v6    # "k":I
    .restart local v7    # "previousCmd":C
    .restart local v21    # "ctrlPointX":F
    .restart local v22    # "ctrlPointY":F
    :sswitch_13
    move/from16 v27, v6

    move v14, v7

    move v12, v8

    move v11, v9

    .end local v6    # "k":I
    .end local v7    # "previousCmd":C
    .end local v8    # "currentY":F
    .end local v9    # "currentX":F
    .restart local v11    # "currentX":F
    .restart local v12    # "currentY":F
    .restart local v14    # "previousCmd":C
    .restart local v27    # "k":I
    add-int/lit8 v6, v27, 0x0

    aget v9, v13, v6

    .line 436
    .end local v11    # "currentX":F
    .restart local v9    # "currentX":F
    add-int/lit8 v6, v27, 0x1

    aget v8, v13, v6

    .line 437
    .end local v12    # "currentY":F
    .restart local v8    # "currentY":F
    if-lez v27, :cond_b

    .line 441
    add-int/lit8 v6, v27, 0x0

    aget v0, v13, v6

    add-int/lit8 v6, v27, 0x1

    aget v1, v13, v6

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_f

    .line 443
    :cond_b
    add-int/lit8 v6, v27, 0x0

    aget v0, v13, v6

    add-int/lit8 v6, v27, 0x1

    aget v1, v13, v6

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 444
    move v0, v9

    .line 445
    .end local v23    # "currentSegmentStartX":F
    .local v0, "currentSegmentStartX":F
    move v1, v8

    .line 447
    .end local v24    # "currentSegmentStartY":F
    .local v1, "currentSegmentStartY":F
    nop

    .line 602
    move/from16 v23, v0

    move/from16 v24, v1

    goto/16 :goto_f

    .line 454
    .end local v0    # "currentSegmentStartX":F
    .end local v1    # "currentSegmentStartY":F
    .end local v14    # "previousCmd":C
    .end local v27    # "k":I
    .restart local v6    # "k":I
    .restart local v7    # "previousCmd":C
    .restart local v23    # "currentSegmentStartX":F
    .restart local v24    # "currentSegmentStartY":F
    :sswitch_14
    move/from16 v27, v6

    move v14, v7

    move v12, v8

    move v11, v9

    .end local v6    # "k":I
    .end local v7    # "previousCmd":C
    .end local v8    # "currentY":F
    .end local v9    # "currentX":F
    .restart local v11    # "currentX":F
    .restart local v12    # "currentY":F
    .restart local v14    # "previousCmd":C
    .restart local v27    # "k":I
    add-int/lit8 v6, v27, 0x0

    aget v0, v13, v6

    add-int/lit8 v6, v27, 0x1

    aget v1, v13, v6

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 455
    add-int/lit8 v6, v27, 0x0

    aget v9, v13, v6

    .line 456
    .end local v11    # "currentX":F
    .restart local v9    # "currentX":F
    add-int/lit8 v6, v27, 0x1

    aget v8, v13, v6

    .line 457
    .end local v12    # "currentY":F
    .restart local v8    # "currentY":F
    goto/16 :goto_f

    .line 463
    .end local v14    # "previousCmd":C
    .end local v27    # "k":I
    .restart local v6    # "k":I
    .restart local v7    # "previousCmd":C
    :sswitch_15
    move/from16 v27, v6

    move v14, v7

    move v12, v8

    move v11, v9

    .end local v6    # "k":I
    .end local v7    # "previousCmd":C
    .end local v8    # "currentY":F
    .end local v9    # "currentX":F
    .restart local v11    # "currentX":F
    .restart local v12    # "currentY":F
    .restart local v14    # "previousCmd":C
    .restart local v27    # "k":I
    add-int/lit8 v6, v27, 0x0

    aget v0, v13, v6

    invoke-virtual {v10, v0, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 464
    add-int/lit8 v6, v27, 0x0

    aget v9, v13, v6

    .line 465
    .end local v11    # "currentX":F
    .restart local v9    # "currentX":F
    goto/16 :goto_f

    .line 485
    .end local v12    # "currentY":F
    .end local v14    # "previousCmd":C
    .end local v27    # "k":I
    .restart local v6    # "k":I
    .restart local v7    # "previousCmd":C
    .restart local v8    # "currentY":F
    :sswitch_16
    move/from16 v27, v6

    move v14, v7

    move v12, v8

    move v11, v9

    .end local v6    # "k":I
    .end local v7    # "previousCmd":C
    .end local v8    # "currentY":F
    .end local v9    # "currentX":F
    .restart local v11    # "currentX":F
    .restart local v12    # "currentY":F
    .restart local v14    # "previousCmd":C
    .restart local v27    # "k":I
    add-int/lit8 v6, v27, 0x0

    aget v1, v13, v6

    add-int/lit8 v6, v27, 0x1

    aget v2, v13, v6

    add-int/lit8 v6, v27, 0x2

    aget v3, v13, v6

    add-int/lit8 v6, v27, 0x3

    aget v4, v13, v6

    add-int/lit8 v6, v27, 0x4

    aget v5, v13, v6

    add-int/lit8 v6, v27, 0x5

    aget v6, v13, v6

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 487
    add-int/lit8 v6, v27, 0x4

    aget v9, v13, v6

    .line 488
    .end local v11    # "currentX":F
    .restart local v9    # "currentX":F
    add-int/lit8 v6, v27, 0x5

    aget v8, v13, v6

    .line 489
    .end local v12    # "currentY":F
    .restart local v8    # "currentY":F
    add-int/lit8 v6, v27, 0x2

    aget v0, v13, v6

    .line 490
    .end local v21    # "ctrlPointX":F
    .local v0, "ctrlPointX":F
    add-int/lit8 v6, v27, 0x3

    aget v1, v13, v6

    .line 491
    .end local v22    # "ctrlPointY":F
    .local v1, "ctrlPointY":F
    nop

    .line 602
    .end local v0    # "ctrlPointX":F
    .end local v1    # "ctrlPointY":F
    .restart local v21    # "ctrlPointX":F
    .restart local v22    # "ctrlPointY":F
    :goto_c
    move/from16 v21, v0

    move/from16 v22, v1

    goto :goto_f

    .line 586
    .end local v14    # "previousCmd":C
    .end local v27    # "k":I
    .restart local v6    # "k":I
    .restart local v7    # "previousCmd":C
    :sswitch_17
    move/from16 v27, v6

    move v14, v7

    move v12, v8

    move v11, v9

    .end local v6    # "k":I
    .end local v7    # "previousCmd":C
    .end local v8    # "currentY":F
    .end local v9    # "currentX":F
    .restart local v11    # "currentX":F
    .restart local v12    # "currentY":F
    .restart local v14    # "previousCmd":C
    .restart local v27    # "k":I
    add-int/lit8 v6, v27, 0x5

    aget v3, v13, v6

    add-int/lit8 v6, v27, 0x6

    aget v4, v13, v6

    add-int/lit8 v6, v27, 0x0

    aget v5, v13, v6

    add-int/lit8 v6, v27, 0x1

    aget v6, v13, v6

    add-int/lit8 v0, v27, 0x2

    aget v7, v13, v0

    add-int/lit8 v0, v27, 0x3

    aget v0, v13, v0

    cmpl-float v0, v0, v15

    if-eqz v0, :cond_c

    const/4 v8, 0x1

    goto :goto_d

    :cond_c
    const/4 v8, 0x0

    :goto_d
    add-int/lit8 v0, v27, 0x4

    aget v0, v13, v0

    cmpl-float v0, v0, v15

    if-eqz v0, :cond_d

    const/4 v9, 0x1

    goto :goto_e

    :cond_d
    const/4 v9, 0x0

    :goto_e
    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    invoke-static/range {v0 .. v9}, Landroid/support/v4/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 596
    add-int/lit8 v6, v27, 0x5

    aget v9, v13, v6

    .line 597
    .end local v11    # "currentX":F
    .restart local v9    # "currentX":F
    add-int/lit8 v6, v27, 0x6

    aget v8, v13, v6

    .line 598
    .end local v12    # "currentY":F
    .restart local v8    # "currentY":F
    move v0, v9

    .line 599
    .end local v21    # "ctrlPointX":F
    .restart local v0    # "ctrlPointX":F
    move v1, v8

    goto :goto_c

    .line 602
    .end local v0    # "ctrlPointX":F
    .restart local v21    # "ctrlPointX":F
    :goto_f
    move/from16 v7, p3

    .line 418
    .end local v14    # "previousCmd":C
    .restart local v7    # "previousCmd":C
    add-int v0, v27, v20

    const/4 v14, 0x0

    const/4 v15, 0x1

    goto/16 :goto_2

    .line 604
    .end local v27    # "k":I
    :cond_e
    move v14, v7

    move v12, v8

    move v11, v9

    .end local v7    # "previousCmd":C
    .end local v8    # "currentY":F
    .end local v9    # "currentX":F
    .restart local v11    # "currentX":F
    .restart local v12    # "currentY":F
    .restart local v14    # "previousCmd":C
    move v1, v11

    const/4 v2, 0x0

    .end local v11    # "currentX":F
    .local v1, "currentX":F
    aput v1, p1, v2

    .line 605
    const/4 v2, 0x1

    aput v12, p1, v2

    .line 606
    aput v21, p1, v16

    .line 607
    aput v22, p1, v17

    .line 608
    aput v23, p1, v18

    .line 609
    aput v24, p1, v19

    .line 610
    return-void

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_5
        0x43 -> :sswitch_4
        0x48 -> :sswitch_3
        0x4c -> :sswitch_2
        0x4d -> :sswitch_2
        0x51 -> :sswitch_1
        0x53 -> :sswitch_1
        0x54 -> :sswitch_2
        0x56 -> :sswitch_3
        0x5a -> :sswitch_0
        0x61 -> :sswitch_5
        0x63 -> :sswitch_4
        0x68 -> :sswitch_3
        0x6c -> :sswitch_2
        0x6d -> :sswitch_2
        0x71 -> :sswitch_1
        0x73 -> :sswitch_1
        0x74 -> :sswitch_2
        0x76 -> :sswitch_3
        0x7a -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x41 -> :sswitch_17
        0x43 -> :sswitch_16
        0x48 -> :sswitch_15
        0x4c -> :sswitch_14
        0x4d -> :sswitch_13
        0x51 -> :sswitch_12
        0x53 -> :sswitch_11
        0x54 -> :sswitch_10
        0x56 -> :sswitch_f
        0x61 -> :sswitch_e
        0x63 -> :sswitch_d
        0x68 -> :sswitch_c
        0x6c -> :sswitch_b
        0x6d -> :sswitch_a
        0x71 -> :sswitch_9
        0x73 -> :sswitch_8
        0x74 -> :sswitch_7
        0x76 -> :sswitch_6
    .end sparse-switch
.end method

.method private static arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V
    .locals 77
    .param p0, "p"    # Landroid/graphics/Path;
    .param p1, "cx"    # D
    .param p3, "cy"    # D
    .param p5, "a"    # D
    .param p7, "b"    # D
    .param p9, "e1x"    # D
    .param p11, "e1y"    # D
    .param p13, "theta"    # D
    .param p15, "start"    # D
    .param p17, "sweep"    # D

    .line 717
    move-wide/from16 v0, p5

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    mul-double v8, p17, v6

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    .line 719
    .local v8, "numSegments":I
    move-wide/from16 v9, p15

    .line 720
    .local v9, "eta1":D
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    .line 721
    .local v11, "cosTheta":D
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    .line 722
    .local v13, "sinTheta":D
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    .line 723
    .local v15, "cosEta1":D
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    .line 724
    .local v17, "sinEta1":D
    neg-double v6, v0

    mul-double v6, v6, v11

    mul-double v6, v6, v17

    mul-double v21, p7, v13

    mul-double v21, v21, v15

    sub-double v6, v6, v21

    .line 725
    .local v6, "ep1x":D
    move-wide/from16 v23, v6

    .end local v6    # "ep1x":D
    .local v23, "ep1x":D
    neg-double v6, v0

    mul-double v6, v6, v13

    mul-double v6, v6, v17

    mul-double v21, p7, v11

    mul-double v21, v21, v15

    add-double v6, v6, v21

    .line 727
    .local v6, "ep1y":D
    move-wide/from16 v25, v6

    .end local v6    # "ep1y":D
    .local v25, "ep1y":D
    int-to-double v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double v6, p17, v6

    .line 728
    .local v6, "anglePerSegment":D
    const/16 v21, 0x0

    move-wide/from16 v28, v25

    move-wide/from16 v26, p11

    move-wide/from16 v24, v23

    move-wide/from16 v22, p9

    .end local v23    # "ep1x":D
    .end local v25    # "ep1y":D
    .end local p9    # "e1x":D
    .end local p11    # "e1y":D
    .local v21, "i":I
    .local v22, "e1x":D
    .local v24, "ep1x":D
    .local v26, "e1y":D
    .local v28, "ep1y":D
    :goto_0
    move/from16 v30, v21

    move/from16 v4, v30

    .end local v21    # "i":I
    .local v4, "i":I
    if-ge v4, v8, :cond_0

    .line 729
    add-double v30, v9, v6

    .line 730
    .local v30, "eta2":D
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sin(D)D

    move-result-wide v32

    .line 731
    .local v32, "sinEta2":D
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->cos(D)D

    move-result-wide v34

    .line 732
    .local v34, "cosEta2":D
    mul-double v36, v0, v11

    mul-double v36, v36, v34

    add-double v36, p1, v36

    mul-double v38, p7, v13

    mul-double v38, v38, v32

    move-wide/from16 v40, v6

    .end local v6    # "anglePerSegment":D
    .local v40, "anglePerSegment":D
    sub-double v5, v36, v38

    .line 733
    .local v5, "e2x":D
    mul-double v36, v0, v13

    mul-double v36, v36, v34

    add-double v36, p3, v36

    mul-double v42, p7, v11

    mul-double v42, v42, v32

    move/from16 v44, v8

    .end local v8    # "numSegments":I
    .local v44, "numSegments":I
    add-double v7, v36, v42

    .line 734
    .local v7, "e2y":D
    move-wide/from16 v45, v7

    .end local v7    # "e2y":D
    .local v45, "e2y":D
    neg-double v7, v0

    mul-double v7, v7, v11

    mul-double v7, v7, v32

    mul-double v36, p7, v13

    mul-double v36, v36, v34

    sub-double v7, v7, v36

    .line 735
    .local v7, "ep2x":D
    move/from16 v47, v4

    move-wide/from16 v48, v5

    .end local v4    # "i":I
    .end local v5    # "e2x":D
    .local v47, "i":I
    .local v48, "e2x":D
    neg-double v4, v0

    mul-double v4, v4, v13

    mul-double v4, v4, v32

    mul-double v36, p7, v11

    mul-double v36, v36, v34

    add-double v4, v4, v36

    .line 736
    .local v4, "ep2y":D
    sub-double v36, v30, v9

    const-wide/high16 v42, 0x4000000000000000L    # 2.0

    div-double v36, v36, v42

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->tan(D)D

    move-result-wide v36

    .line 737
    .local v36, "tanDiff2":D
    sub-double v42, v30, v9

    .line 738
    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->sin(D)D

    move-result-wide v42

    const-wide/high16 v50, 0x4008000000000000L    # 3.0

    mul-double v52, v36, v50

    mul-double v52, v52, v36

    const-wide/high16 v19, 0x4010000000000000L    # 4.0

    add-double v52, v52, v19

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v52

    const-wide/high16 v54, 0x3ff0000000000000L    # 1.0

    sub-double v52, v52, v54

    mul-double v42, v42, v52

    div-double v42, v42, v50

    .line 739
    .local v42, "alpha":D
    mul-double v50, v42, v24

    add-double v0, v22, v50

    .line 740
    .local v0, "q1x":D
    mul-double v50, v42, v28

    add-double v2, v26, v50

    .line 741
    .local v2, "q1y":D
    mul-double v50, v42, v7

    move-wide/from16 v56, v9

    .end local v9    # "eta1":D
    .local v56, "eta1":D
    sub-double v9, v48, v50

    .line 742
    .local v9, "q2x":D
    mul-double v50, v42, v4

    move-wide/from16 v58, v11

    .end local v11    # "cosTheta":D
    .local v58, "cosTheta":D
    sub-double v11, v45, v50

    .line 745
    .local v11, "q2y":D
    const/4 v6, 0x0

    move-wide/from16 v67, v13

    move-object/from16 v13, p0

    .end local v13    # "sinTheta":D
    .local v67, "sinTheta":D
    invoke-virtual {v13, v6, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 747
    double-to-float v6, v0

    double-to-float v14, v2

    move-wide/from16 v69, v0

    .end local v0    # "q1x":D
    .local v69, "q1x":D
    double-to-float v0, v9

    double-to-float v1, v11

    move-wide/from16 v71, v2

    move-wide/from16 v73, v9

    move-wide/from16 v2, v48

    .end local v9    # "q2x":D
    .end local v48    # "e2x":D
    .local v2, "e2x":D
    .local v71, "q1y":D
    .local v73, "q2x":D
    double-to-float v9, v2

    move-wide/from16 v75, v11

    move-wide/from16 v10, v45

    .end local v11    # "q2y":D
    .end local v45    # "e2y":D
    .local v10, "e2y":D
    .local v75, "q2y":D
    double-to-float v12, v10

    move-object/from16 v60, p0

    move/from16 v61, v6

    move/from16 v62, v14

    move/from16 v63, v0

    move/from16 v64, v1

    move/from16 v65, v9

    move/from16 v66, v12

    invoke-virtual/range {v60 .. v66}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 753
    move-wide/from16 v0, v30

    .line 754
    .end local v56    # "eta1":D
    .local v0, "eta1":D
    move-wide/from16 v22, v2

    .line 755
    move-wide/from16 v26, v10

    .line 756
    move-wide/from16 v24, v7

    .line 757
    move-wide/from16 v28, v4

    .line 728
    .end local v2    # "e2x":D
    .end local v4    # "ep2y":D
    .end local v7    # "ep2x":D
    .end local v10    # "e2y":D
    .end local v30    # "eta2":D
    .end local v32    # "sinEta2":D
    .end local v34    # "cosEta2":D
    .end local v36    # "tanDiff2":D
    .end local v42    # "alpha":D
    .end local v69    # "q1x":D
    .end local v71    # "q1y":D
    .end local v73    # "q2x":D
    .end local v75    # "q2y":D
    add-int/lit8 v21, v47, 0x1

    move-wide v9, v0

    move-wide/from16 v6, v40

    move/from16 v8, v44

    move-wide/from16 v11, v58

    move-wide/from16 v13, v67

    move-wide/from16 v0, p5

    goto/16 :goto_0

    .line 759
    .end local v0    # "eta1":D
    .end local v40    # "anglePerSegment":D
    .end local v44    # "numSegments":I
    .end local v47    # "i":I
    .end local v58    # "cosTheta":D
    .end local v67    # "sinTheta":D
    .restart local v6    # "anglePerSegment":D
    .restart local v8    # "numSegments":I
    .local v9, "eta1":D
    .local v11, "cosTheta":D
    .restart local v13    # "sinTheta":D
    :cond_0
    move-wide/from16 v40, v6

    move/from16 v44, v8

    move-wide/from16 v56, v9

    move-wide/from16 v58, v11

    move-wide/from16 v67, v13

    move-object/from16 v13, p0

    .end local v6    # "anglePerSegment":D
    .end local v8    # "numSegments":I
    .end local v9    # "eta1":D
    .end local v11    # "cosTheta":D
    .end local v13    # "sinTheta":D
    .restart local v40    # "anglePerSegment":D
    .restart local v44    # "numSegments":I
    .restart local v56    # "eta1":D
    .restart local v58    # "cosTheta":D
    .restart local v67    # "sinTheta":D
    return-void
.end method

.method private static drawArc(Landroid/graphics/Path;FFFFFFFZZ)V
    .locals 73
    .param p0, "p"    # Landroid/graphics/Path;
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .param p5, "a"    # F
    .param p6, "b"    # F
    .param p7, "theta"    # F
    .param p8, "isMoreThanHalf"    # Z
    .param p9, "isPositiveArc"    # Z

    .line 624
    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p6

    move/from16 v9, p9

    move/from16 v8, p7

    float-to-double v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v35

    .line 626
    .local v35, "thetaD":D
    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->cos(D)D

    move-result-wide v37

    .line 627
    .local v37, "cosTheta":D
    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->sin(D)D

    move-result-wide v39

    .line 630
    .local v39, "sinTheta":D
    float-to-double v0, v10

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v37

    float-to-double v2, v11

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v39

    add-double/2addr v0, v2

    float-to-double v2, v14

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double v41, v0, v2

    .line 631
    .local v41, "x0p":D
    neg-float v0, v10

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v39

    float-to-double v2, v11

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v37

    add-double/2addr v0, v2

    float-to-double v2, v15

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double v43, v0, v2

    .line 632
    .local v43, "y0p":D
    float-to-double v0, v12

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v37

    float-to-double v2, v13

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v39

    add-double/2addr v0, v2

    float-to-double v2, v14

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double v45, v0, v2

    .line 633
    .local v45, "x1p":D
    neg-float v0, v12

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v39

    float-to-double v2, v13

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v37

    add-double/2addr v0, v2

    float-to-double v2, v15

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double v47, v0, v2

    .line 636
    .local v47, "y1p":D
    sub-double v49, v41, v45

    .line 637
    .local v49, "dx":D
    sub-double v51, v43, v47

    .line 638
    .local v51, "dy":D
    add-double v0, v41, v45

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v53, v0, v2

    .line 639
    .local v53, "xm":D
    add-double v0, v43, v47

    div-double v55, v0, v2

    .line 641
    .local v55, "ym":D
    mul-double v0, v49, v49

    mul-double v2, v51, v51

    add-double v6, v0, v2

    .line 642
    .local v6, "dsq":D
    const-wide/16 v0, 0x0

    cmpl-double v2, v6, v0

    if-nez v2, :cond_0

    .line 643
    const-string v0, "PathParser"

    const-string v1, " Points are coincident"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    return-void

    .line 646
    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v6

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    sub-double v57, v2, v4

    .line 647
    .local v57, "disc":D
    cmpg-double v2, v57, v0

    if-gez v2, :cond_1

    .line 648
    const-string v0, "PathParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Points are too far apart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x3ffffff583a53b8eL    # 1.99999

    div-double/2addr v0, v2

    double-to-float v5, v0

    .line 650
    .local v5, "adjust":F
    mul-float v16, v14, v5

    mul-float v17, v15, v5

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v18, v5

    .end local v5    # "adjust":F
    .local v18, "adjust":F
    move/from16 v5, v16

    move-wide/from16 v59, v6

    .end local v6    # "dsq":D
    .local v59, "dsq":D
    move/from16 v6, v17

    move/from16 v7, p7

    move/from16 v8, p8

    move v12, v9

    move/from16 v9, p9

    invoke-static/range {v0 .. v9}, Landroid/support/v4/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 652
    return-void

    .line 654
    .end local v18    # "adjust":F
    .end local v59    # "dsq":D
    .restart local v6    # "dsq":D
    :cond_1
    move-wide/from16 v59, v6

    move v12, v9

    .end local v6    # "dsq":D
    .restart local v59    # "dsq":D
    invoke-static/range {v57 .. v58}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 655
    .local v2, "s":D
    mul-double v4, v2, v49

    .line 656
    .local v4, "sdx":D
    mul-double v6, v2, v51

    .line 659
    .local v6, "sdy":D
    move/from16 v8, p8

    if-ne v8, v12, :cond_2

    .line 660
    sub-double v16, v53, v6

    .line 661
    .local v16, "cx":D
    add-double v18, v55, v4

    goto :goto_0

    .line 663
    .end local v16    # "cx":D
    :cond_2
    const/4 v9, 0x0

    add-double v16, v53, v6

    .line 664
    .restart local v16    # "cx":D
    sub-double v18, v55, v4

    .line 667
    .local v18, "cy":D
    :goto_0
    const/4 v9, 0x0

    sub-double v0, v43, v18

    move-wide/from16 v63, v2

    .end local v2    # "s":D
    .local v63, "s":D
    sub-double v2, v41, v16

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 669
    .local v0, "eta0":D
    sub-double v2, v47, v18

    move-wide/from16 v65, v4

    .end local v4    # "sdx":D
    .local v65, "sdx":D
    sub-double v4, v45, v16

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    .line 671
    .local v2, "eta1":D
    sub-double v4, v2, v0

    .line 672
    .local v4, "sweep":D
    const-wide/16 v20, 0x0

    cmpl-double v9, v4, v20

    if-ltz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    if-eq v12, v9, :cond_5

    .line 673
    cmpl-double v9, v4, v20

    const-wide v20, 0x401921fb54442d18L    # 6.283185307179586

    if-lez v9, :cond_4

    .line 674
    sub-double v4, v4, v20

    goto :goto_2

    .line 676
    :cond_4
    const/4 v9, 0x0

    add-double v4, v4, v20

    .line 680
    :cond_5
    :goto_2
    move-wide/from16 v67, v2

    .end local v2    # "eta1":D
    .local v67, "eta1":D
    float-to-double v2, v14

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v16, v16, v2

    .line 681
    float-to-double v2, v15

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v18

    .line 682
    .end local v18    # "cy":D
    .local v2, "cy":D
    move-wide/from16 v61, v16

    .line 683
    .local v61, "tcx":D
    mul-double v18, v16, v37

    mul-double v20, v2, v39

    sub-double v69, v18, v20

    .end local v16    # "cx":D
    .local v69, "cx":D
    move-wide/from16 v17, v69

    .line 684
    mul-double v19, v61, v39

    mul-double v21, v2, v37

    add-double v2, v19, v21

    move-wide/from16 v19, v2

    .line 686
    move-wide/from16 v71, v2

    .end local v2    # "cy":D
    .local v71, "cy":D
    float-to-double v2, v14

    move-wide/from16 v21, v2

    float-to-double v2, v15

    move-wide/from16 v23, v2

    float-to-double v2, v10

    move-wide/from16 v25, v2

    float-to-double v2, v11

    move-wide/from16 v27, v2

    move-object/from16 v16, p0

    move-wide/from16 v29, v35

    move-wide/from16 v31, v0

    move-wide/from16 v33, v4

    invoke-static/range {v16 .. v34}, Landroid/support/v4/graphics/PathParser$PathDataNode;->arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V

    .line 687
    return-void
.end method

.method public static nodesToPath([Landroid/support/v4/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V
    .locals 5
    .param p0, "node"    # [Landroid/support/v4/graphics/PathParser$PathDataNode;
    .param p1, "path"    # Landroid/graphics/Path;

    .line 337
    const/4 v0, 0x6

    new-array v0, v0, [F

    .line 338
    .local v0, "current":[F
    const/16 v1, 0x6d

    .line 339
    .local v1, "previousCommand":C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 340
    aget-object v3, p0, v2

    iget-char v3, v3, Landroid/support/v4/graphics/PathParser$PathDataNode;->mType:C

    aget-object v4, p0, v2

    iget-object v4, v4, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    invoke-static {p1, v0, v1, v3, v4}, Landroid/support/v4/graphics/PathParser$PathDataNode;->addCommand(Landroid/graphics/Path;[FCC[F)V

    .line 341
    aget-object v3, p0, v2

    iget-char v1, v3, Landroid/support/v4/graphics/PathParser$PathDataNode;->mType:C

    .line 339
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 343
    .end local v2    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public interpolatePathDataNode(Landroid/support/v4/graphics/PathParser$PathDataNode;Landroid/support/v4/graphics/PathParser$PathDataNode;F)V
    .locals 4
    .param p1, "nodeFrom"    # Landroid/support/v4/graphics/PathParser$PathDataNode;
    .param p2, "nodeTo"    # Landroid/support/v4/graphics/PathParser$PathDataNode;
    .param p3, "fraction"    # F

    .line 356
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 357
    iget-object v1, p0, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    iget-object v2, p1, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    aget v2, v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p3

    mul-float v2, v2, v3

    iget-object v3, p2, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    aget v3, v3, v0

    mul-float v3, v3, p3

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 360
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
