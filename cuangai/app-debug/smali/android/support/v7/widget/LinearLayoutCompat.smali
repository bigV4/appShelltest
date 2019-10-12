.class public Landroid/support/v7/widget/LinearLayoutCompat;
.super Landroid/view/ViewGroup;
.source "LinearLayoutCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;,
        Landroid/support/v7/widget/LinearLayoutCompat$DividerMode;,
        Landroid/support/v7/widget/LinearLayoutCompat$OrientationMode;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I = 0x0

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4


# instance fields
.field private mBaselineAligned:Z

.field private mBaselineAlignedChildIndex:I

.field private mBaselineChildTop:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I

.field private mShowDividers:I

.field private mTotalLength:I

.field private mUseLargestChild:Z

.field private mWeightSum:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 153
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 109
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 116
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 120
    const v3, 0x800033

    iput v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    .line 155
    sget-object v3, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat:[I

    invoke-static {p1, p2, v3, p3, v2}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v3

    .line 158
    .local v3, "a":Landroid/support/v7/widget/TintTypedArray;
    sget v4, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_orientation:I

    invoke-virtual {v3, v4, v1}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v4

    .line 159
    .local v4, "index":I
    if-ltz v4, :cond_0

    .line 160
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->setOrientation(I)V

    .line 163
    :cond_0
    sget v5, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_gravity:I

    invoke-virtual {v3, v5, v1}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v4

    .line 164
    if-ltz v4, :cond_1

    .line 165
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->setGravity(I)V

    .line 168
    :cond_1
    sget v5, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAligned:I

    invoke-virtual {v3, v5, v0}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 169
    .local v0, "baselineAligned":Z
    if-nez v0, :cond_2

    .line 170
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->setBaselineAligned(Z)V

    .line 173
    :cond_2
    sget v5, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_weightSum:I

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v3, v5, v6}, Landroid/support/v7/widget/TintTypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    .line 175
    sget v5, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAlignedChildIndex:I

    .line 176
    invoke-virtual {v3, v5, v1}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 178
    sget v1, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_measureWithLargestChild:I

    invoke-virtual {v3, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 180
    sget v1, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_divider:I

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    sget v1, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_showDividers:I

    invoke-virtual {v3, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    .line 182
    sget v1, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_dividerPadding:I

    invoke-virtual {v3, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 184
    invoke-virtual {v3}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 185
    return-void
.end method

.method private forceUniformHeight(II)V
    .locals 11
    .param p1, "count"    # I
    .param p2, "widthMeasureSpec"    # I

    .line 1317
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1319
    .local v0, "uniformMeasureSpec":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 1320
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1321
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 1322
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 1324
    .local v9, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    iget v2, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1327
    iget v10, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1328
    .local v10, "oldWidth":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1331
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v8

    move v4, p2

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1332
    iput v10, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1319
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .end local v10    # "oldWidth":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1336
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private forceUniformWidth(II)V
    .locals 11
    .param p1, "count"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 895
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 897
    .local v0, "uniformMeasureSpec":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 898
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 899
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 900
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 902
    .local v9, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    iget v2, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 905
    iget v10, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 906
    .local v10, "oldHeight":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 909
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v8

    move v4, v0

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 910
    iput v10, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 897
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .end local v10    # "oldHeight":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 914
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 1645
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1646
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1751
    instance-of v0, p1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    return v0
.end method

.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 322
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v0

    .line 323
    .local v0, "count":I
    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    .line 324
    .local v1, "isLayoutRtl":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 325
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 327
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 328
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 329
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 331
    .local v4, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    if-eqz v1, :cond_0

    .line 332
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    iget v6, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    goto :goto_1

    .line 334
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v5, v6

    .line 336
    .local v5, "position":I
    :goto_1
    invoke-virtual {p0, p1, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 324
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .end local v5    # "position":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 341
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 342
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 344
    .local v2, "child":Landroid/view/View;
    if-nez v2, :cond_4

    .line 345
    if-eqz v1, :cond_3

    .line 346
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v3

    goto :goto_2

    .line 348
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v3, v4

    goto :goto_2

    .line 351
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 352
    .local v3, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    if-eqz v1, :cond_5

    .line 353
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v4, v5

    .line 355
    move v3, v4

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int v3, v4, v5

    .line 358
    .local v3, "position":I
    :goto_2
    invoke-virtual {p0, p1, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 360
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "position":I
    :cond_6
    return-void
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 295
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v0

    .line 296
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 297
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 299
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 300
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 301
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 302
    .local v3, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    sub-int/2addr v4, v5

    .line 303
    .local v4, "top":I
    invoke-virtual {p0, p1, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 296
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .end local v4    # "top":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 309
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 310
    .local v1, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 311
    .local v2, "bottom":I
    if-nez v1, :cond_2

    .line 312
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    sub-int/2addr v3, v4

    goto :goto_1

    .line 314
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 315
    .restart local v3    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v3, v4, v5

    .line 317
    .end local v2    # "bottom":I
    .local v3, "bottom":I
    :goto_1
    invoke-virtual {p0, p1, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 319
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "bottom":I
    :cond_3
    return-void
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "top"    # I

    .line 363
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    add-int/2addr v1, v2

    .line 364
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v3, p2

    .line 363
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 365
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 366
    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I

    .line 369
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v2, p2

    .line 370
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    sub-int/2addr v3, v4

    .line 369
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 371
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 372
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .locals 3

    .line 1734
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 1735
    new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    return-object v0

    .line 1736
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1737
    new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    return-object v0

    .line 1739
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 57
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->generateDefaultLayoutParams()Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1721
    new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1744
    new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getBaseline()I
    .locals 6

    .line 423
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-gez v0, :cond_0

    .line 424
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0

    .line 427
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-le v0, v1, :cond_6

    .line 432
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 433
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 435
    .local v1, "childBaseline":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 436
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-nez v3, :cond_1

    .line 438
    return v2

    .line 442
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 452
    :cond_2
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 454
    .local v2, "childTop":I
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 455
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v3, v3, 0x70

    .line 456
    .local v3, "majorGravity":I
    const/16 v4, 0x30

    if-eq v3, v4, :cond_5

    .line 457
    const/16 v4, 0x10

    if-eq v3, v4, :cond_4

    const/16 v4, 0x50

    if-eq v3, v4, :cond_3

    .end local v3    # "majorGravity":I
    goto :goto_0

    .line 459
    .restart local v3    # "majorGravity":I
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v2, v4, v5

    .line 460
    goto :goto_0

    .line 463
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 470
    .end local v3    # "majorGravity":I
    :cond_5
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 471
    .local v3, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    iget v4, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v4, v2

    add-int/2addr v4, v1

    return v4

    .line 428
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childBaseline":I
    .end local v2    # "childTop":I
    .end local v3    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 1

    .line 480
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    return v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 1347
    const/4 v0, 0x0

    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 221
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .locals 1

    .line 268
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 278
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .line 1700
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 1389
    const/4 v0, 0x0

    return v0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 1401
    const/4 v0, 0x0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1667
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    return v0
.end method

.method public getShowDividers()I
    .locals 1

    .line 212
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .line 505
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getVirtualChildCount()I
    .locals 1

    .line 518
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .locals 1

    .line 529
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4
    .param p1, "childIndex"    # I
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 566
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 567
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 568
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_3

    .line 569
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    nop

    :cond_2
    return v0

    .line 570
    :cond_3
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6

    .line 571
    const/4 v0, 0x0

    .line 572
    .local v0, "hasVisibleViewBefore":Z
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_5

    .line 573
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    .line 574
    const/4 v0, 0x1

    .line 575
    goto :goto_1

    .line 572
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 578
    .end local v1    # "i":I
    :cond_5
    :goto_1
    return v0

    .line 580
    .end local v0    # "hasVisibleViewBefore":Z
    :cond_6
    return v0
.end method

.method public isBaselineAligned()Z
    .locals 1

    .line 381
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    return v0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .locals 1

    .line 404
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    return v0
.end method

.method layoutHorizontal(IIII)V
    .locals 31
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1521
    move-object/from16 v6, p0

    invoke-static/range {p0 .. p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v9

    .line 1522
    .local v9, "isLayoutRtl":Z
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v10

    .line 1528
    .local v10, "paddingTop":I
    sub-int v13, p4, p2

    .line 1529
    .local v13, "height":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v0

    sub-int v14, v13, v0

    .line 1532
    .local v14, "childBottom":I
    sub-int v0, v13, v10

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v1

    sub-int v15, v0, v1

    .line 1534
    .local v15, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v5

    .line 1536
    .local v5, "count":I
    iget v0, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    const v1, 0x800007

    and-int v4, v0, v1

    .line 1537
    .local v4, "majorGravity":I
    iget v0, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v16, v0, 0x70

    .line 1539
    .local v16, "minorGravity":I
    iget-boolean v2, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 1541
    .local v2, "baselineAligned":Z
    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 1542
    .local v1, "maxAscent":[I
    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 1544
    .local v0, "maxDescent":[I
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    .line 1545
    .local v3, "layoutDirection":I
    invoke-static {v4, v3}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v11

    const/16 v17, 0x2

    const/4 v12, 0x1

    if-eq v11, v12, :cond_1

    const/4 v12, 0x5

    if-eq v11, v12, :cond_0

    .line 1558
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v11

    .end local v3    # "layoutDirection":I
    .local v11, "childLeft":I
    .local v18, "layoutDirection":I
    :goto_0
    move/from16 v18, v3

    goto :goto_1

    .line 1548
    .end local v11    # "childLeft":I
    .end local v18    # "layoutDirection":I
    .restart local v3    # "layoutDirection":I
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v11

    add-int v11, v11, p3

    sub-int v11, v11, p1

    iget v12, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v11, v12

    .line 1549
    .restart local v11    # "childLeft":I
    goto :goto_0

    .line 1553
    .end local v11    # "childLeft":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v11

    sub-int v12, p3, p1

    move/from16 v18, v3

    .end local v3    # "layoutDirection":I
    .restart local v18    # "layoutDirection":I
    iget v3, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v12, v3

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    .line 1554
    .restart local v11    # "childLeft":I
    nop

    .line 1558
    :goto_1
    move v3, v11

    .line 1562
    .end local v11    # "childLeft":I
    .local v3, "childLeft":I
    const/4 v11, 0x0

    .line 1563
    .local v11, "start":I
    const/4 v12, 0x1

    .line 1565
    .local v12, "dir":I
    if-eqz v9, :cond_2

    .line 1566
    add-int/lit8 v11, v5, -0x1

    .line 1567
    const/4 v12, -0x1

    .line 1570
    :cond_2
    const/16 v19, 0x0

    move/from16 v20, v3

    .end local v3    # "childLeft":I
    .local v19, "i":I
    .local v20, "childLeft":I
    :goto_2
    move/from16 v3, v19

    .end local v19    # "i":I
    .local v3, "i":I
    if-ge v3, v5, :cond_d

    .line 1571
    mul-int v19, v12, v3

    add-int v7, v11, v19

    .line 1572
    .local v7, "childIndex":I
    invoke-virtual {v6, v7}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1574
    .local v8, "child":Landroid/view/View;
    if-nez v8, :cond_3

    .line 1575
    invoke-virtual {v6, v7}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v19

    add-int v20, v20, v19

    .line 1570
    move-object/from16 v26, v0

    move-object/from16 v28, v1

    move/from16 v25, v2

    move/from16 v22, v4

    move/from16 v27, v5

    move/from16 v30, v9

    goto/16 :goto_5

    .line 1576
    :cond_3
    move/from16 v21, v3

    .end local v3    # "i":I
    .local v21, "i":I
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v3

    move/from16 v22, v4

    .end local v4    # "majorGravity":I
    .local v22, "majorGravity":I
    const/16 v4, 0x8

    if-eq v3, v4, :cond_c

    .line 1577
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 1578
    .local v19, "childWidth":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    .line 1579
    .local v23, "childHeight":I
    const/4 v3, -0x1

    .line 1581
    .local v3, "childBaseline":I
    nop

    .line 1582
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 1584
    .local v4, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    move/from16 v24, v3

    .end local v3    # "childBaseline":I
    .local v24, "childBaseline":I
    const/4 v3, -0x1

    if-eqz v2, :cond_4

    move/from16 v25, v2

    .end local v2    # "baselineAligned":Z
    .local v25, "baselineAligned":Z
    iget v2, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-eq v2, v3, :cond_5

    .line 1585
    invoke-virtual {v8}, Landroid/view/View;->getBaseline()I

    move-result v2

    goto :goto_3

    .line 1588
    .end local v25    # "baselineAligned":Z
    .restart local v2    # "baselineAligned":Z
    :cond_4
    move/from16 v25, v2

    .end local v2    # "baselineAligned":Z
    .restart local v25    # "baselineAligned":Z
    :cond_5
    move/from16 v2, v24

    .end local v24    # "childBaseline":I
    .local v2, "childBaseline":I
    :goto_3
    iget v3, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1589
    .local v3, "gravity":I
    if-gez v3, :cond_6

    .line 1590
    move/from16 v3, v16

    .line 1593
    .end local v3    # "gravity":I
    .local v24, "gravity":I
    :cond_6
    move/from16 v24, v3

    and-int/lit8 v3, v24, 0x70

    move/from16 v27, v5

    .end local v5    # "count":I
    .local v27, "count":I
    const/16 v5, 0x10

    if-eq v3, v5, :cond_9

    const/16 v5, 0x30

    if-eq v3, v5, :cond_8

    const/16 v5, 0x50

    if-eq v3, v5, :cond_7

    .line 1625
    move v3, v10

    goto :goto_4

    .line 1618
    :cond_7
    sub-int v3, v14, v23

    iget v5, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v5

    .line 1619
    .local v3, "childTop":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_a

    .line 1620
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v5, v2

    .line 1621
    .local v5, "descent":I
    aget v26, v0, v17

    sub-int v26, v26, v5

    sub-int v3, v3, v26

    .line 1622
    .end local v5    # "descent":I
    goto :goto_4

    .line 1595
    .end local v3    # "childTop":I
    :cond_8
    iget v3, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v3, v10

    .line 1596
    .restart local v3    # "childTop":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_a

    .line 1597
    const/4 v5, 0x1

    aget v26, v1, v5

    sub-int v26, v26, v2

    add-int v3, v3, v26

    goto :goto_4

    .line 1613
    .end local v3    # "childTop":I
    :cond_9
    sub-int v3, v15, v23

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v10

    iget v5, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v3, v5

    iget v5, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v5

    .line 1615
    .restart local v3    # "childTop":I
    nop

    .line 1625
    :cond_a
    :goto_4
    nop

    .line 1629
    invoke-virtual {v6, v7}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1630
    iget v5, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int v20, v20, v5

    .line 1633
    :cond_b
    iget v5, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int v20, v20, v5

    .line 1634
    invoke-virtual {v6, v8}, Landroid/support/v7/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int v5, v20, v5

    move-object/from16 v26, v0

    .end local v0    # "maxDescent":[I
    .local v26, "maxDescent":[I
    move-object/from16 v0, p0

    move-object/from16 v28, v1

    .end local v1    # "maxAscent":[I
    .local v28, "maxAscent":[I
    move-object v1, v8

    move/from16 v29, v2

    .end local v2    # "childBaseline":I
    .local v29, "childBaseline":I
    move v2, v5

    move-object v5, v4

    .end local v4    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .local v5, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    move/from16 v4, v19

    move/from16 v30, v9

    move-object v9, v5

    .end local v5    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .local v9, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .local v30, "isLayoutRtl":Z
    move/from16 v5, v23

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    .line 1636
    iget v0, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int v0, v19, v0

    .line 1637
    invoke-virtual {v6, v8}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int v20, v20, v0

    .line 1639
    invoke-virtual {v6, v8, v7}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int v3, v21, v0

    goto :goto_5

    .line 1570
    .end local v3    # "childTop":I
    .end local v7    # "childIndex":I
    .end local v8    # "child":Landroid/view/View;
    .end local v19    # "childWidth":I
    .end local v23    # "childHeight":I
    .end local v24    # "gravity":I
    .end local v25    # "baselineAligned":Z
    .end local v26    # "maxDescent":[I
    .end local v27    # "count":I
    .end local v28    # "maxAscent":[I
    .end local v29    # "childBaseline":I
    .end local v30    # "isLayoutRtl":Z
    .restart local v0    # "maxDescent":[I
    .restart local v1    # "maxAscent":[I
    .local v2, "baselineAligned":Z
    .local v5, "count":I
    .local v9, "isLayoutRtl":Z
    :cond_c
    move-object/from16 v26, v0

    move-object/from16 v28, v1

    move/from16 v25, v2

    move/from16 v27, v5

    move/from16 v30, v9

    move/from16 v3, v21

    .end local v0    # "maxDescent":[I
    .end local v1    # "maxAscent":[I
    .end local v2    # "baselineAligned":Z
    .end local v5    # "count":I
    .end local v9    # "isLayoutRtl":Z
    .end local v21    # "i":I
    .local v3, "i":I
    .restart local v25    # "baselineAligned":Z
    .restart local v26    # "maxDescent":[I
    .restart local v27    # "count":I
    .restart local v28    # "maxAscent":[I
    .restart local v30    # "isLayoutRtl":Z
    :goto_5
    const/4 v0, 0x1

    add-int/lit8 v19, v3, 0x1

    move/from16 v4, v22

    move/from16 v2, v25

    move-object/from16 v0, v26

    move/from16 v5, v27

    move-object/from16 v1, v28

    move/from16 v9, v30

    goto/16 :goto_2

    .line 1642
    .end local v3    # "i":I
    .end local v22    # "majorGravity":I
    .end local v25    # "baselineAligned":Z
    .end local v26    # "maxDescent":[I
    .end local v27    # "count":I
    .end local v28    # "maxAscent":[I
    .end local v30    # "isLayoutRtl":Z
    .restart local v0    # "maxDescent":[I
    .restart local v1    # "maxAscent":[I
    .restart local v2    # "baselineAligned":Z
    .local v4, "majorGravity":I
    .restart local v5    # "count":I
    .restart local v9    # "isLayoutRtl":Z
    :cond_d
    move-object/from16 v26, v0

    move-object/from16 v28, v1

    move/from16 v25, v2

    move/from16 v22, v4

    move/from16 v27, v5

    move/from16 v30, v9

    .end local v0    # "maxDescent":[I
    .end local v1    # "maxAscent":[I
    .end local v2    # "baselineAligned":Z
    .end local v4    # "majorGravity":I
    .end local v5    # "count":I
    .end local v9    # "isLayoutRtl":Z
    .restart local v22    # "majorGravity":I
    .restart local v25    # "baselineAligned":Z
    .restart local v26    # "maxDescent":[I
    .restart local v27    # "count":I
    .restart local v28    # "maxAscent":[I
    .restart local v30    # "isLayoutRtl":Z
    return-void
.end method

.method layoutVertical(IIII)V
    .locals 24
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1426
    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v9

    .line 1432
    .local v9, "paddingLeft":I
    sub-int v10, p3, p1

    .line 1433
    .local v10, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v0

    sub-int v11, v10, v0

    .line 1436
    .local v11, "childRight":I
    sub-int v0, v10, v9

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v1

    sub-int v12, v0, v1

    .line 1438
    .local v12, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v13

    .line 1440
    .local v13, "count":I
    iget v0, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v5, v0, 0x70

    .line 1441
    .local v5, "majorGravity":I
    iget v0, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    const v1, 0x800007

    and-int v14, v0, v1

    .line 1443
    .local v14, "minorGravity":I
    const/16 v0, 0x10

    if-eq v5, v0, :cond_1

    const/16 v0, 0x50

    if-eq v5, v0, :cond_0

    .line 1456
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v0

    goto :goto_0

    .line 1446
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v0

    add-int v0, v0, p4

    sub-int v0, v0, p2

    iget v1, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v0, v1

    .line 1447
    .local v0, "childTop":I
    goto :goto_0

    .line 1451
    .end local v0    # "childTop":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v0

    sub-int v1, p4, p2

    iget v2, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1452
    .restart local v0    # "childTop":I
    nop

    .line 1456
    :goto_0
    nop

    .line 1460
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    move v4, v1

    .end local v1    # "i":I
    .local v4, "i":I
    if-ge v4, v13, :cond_8

    .line 1461
    invoke-virtual {v6, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1462
    .local v3, "child":Landroid/view/View;
    if-nez v3, :cond_2

    .line 1463
    invoke-virtual {v6, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 1460
    move/from16 v20, v5

    move/from16 v23, v9

    const/16 v21, 0x1

    goto/16 :goto_3

    .line 1464
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v1, 0x8

    if-eq v2, v1, :cond_7

    .line 1465
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 1466
    .local v16, "childWidth":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    .line 1468
    .local v17, "childHeight":I
    nop

    .line 1469
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 1471
    .local v1, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    iget v2, v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1472
    .local v2, "gravity":I
    if-gez v2, :cond_3

    .line 1473
    move v2, v14

    .line 1475
    :cond_3
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v7

    .line 1476
    .local v7, "layoutDirection":I
    invoke-static {v2, v7}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v18

    .line 1478
    .local v18, "absoluteGravity":I
    move/from16 v19, v2

    .end local v2    # "gravity":I
    .local v19, "gravity":I
    and-int/lit8 v2, v18, 0x7

    move/from16 v20, v5

    const/4 v5, 0x1

    .end local v5    # "majorGravity":I
    .local v20, "majorGravity":I
    if-eq v2, v5, :cond_5

    const/4 v5, 0x5

    if-eq v2, v5, :cond_4

    .line 1490
    iget v2, v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v2, v9

    goto :goto_2

    .line 1485
    :cond_4
    sub-int v2, v11, v16

    iget v5, v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v5

    .line 1486
    .local v2, "childLeft":I
    goto :goto_2

    .line 1480
    .end local v2    # "childLeft":I
    :cond_5
    sub-int v2, v12, v16

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v9

    iget v5, v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v2, v5

    iget v5, v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v5

    .line 1482
    .restart local v2    # "childLeft":I
    nop

    .line 1490
    :goto_2
    move/from16 v15, v19

    .line 1494
    .end local v19    # "gravity":I
    .local v15, "gravity":I
    invoke-virtual {v6, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1495
    iget v5, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v0, v5

    .line 1498
    :cond_6
    iget v5, v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v19, v0, v5

    .line 1499
    .end local v0    # "childTop":I
    .local v19, "childTop":I
    invoke-virtual {v6, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int v5, v19, v0

    move-object/from16 v0, p0

    move/from16 v22, v7

    const/16 v21, 0x1

    move-object v7, v1

    .end local v1    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .local v7, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .local v22, "layoutDirection":I
    move-object v1, v3

    move-object v8, v3

    .end local v3    # "child":Landroid/view/View;
    .local v8, "child":Landroid/view/View;
    move v3, v5

    move v5, v4

    .end local v4    # "i":I
    .local v5, "i":I
    move/from16 v4, v16

    move/from16 v23, v9

    move v9, v5

    .end local v5    # "i":I
    .local v9, "i":I
    .local v23, "paddingLeft":I
    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    .line 1501
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v0, v17, v0

    invoke-virtual {v6, v8}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 1503
    invoke-virtual {v6, v8, v9}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int v4, v9, v0

    .line 1460
    move/from16 v0, v19

    goto :goto_3

    .end local v2    # "childLeft":I
    .end local v7    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .end local v8    # "child":Landroid/view/View;
    .end local v15    # "gravity":I
    .end local v16    # "childWidth":I
    .end local v17    # "childHeight":I
    .end local v18    # "absoluteGravity":I
    .end local v19    # "childTop":I
    .end local v20    # "majorGravity":I
    .end local v22    # "layoutDirection":I
    .end local v23    # "paddingLeft":I
    .restart local v0    # "childTop":I
    .restart local v4    # "i":I
    .local v5, "majorGravity":I
    .local v9, "paddingLeft":I
    :cond_7
    move/from16 v20, v5

    move/from16 v23, v9

    const/16 v21, 0x1

    move v9, v4

    .end local v5    # "majorGravity":I
    .end local v9    # "paddingLeft":I
    .restart local v20    # "majorGravity":I
    .restart local v23    # "paddingLeft":I
    :goto_3
    add-int/lit8 v1, v4, 0x1

    move/from16 v5, v20

    move/from16 v9, v23

    goto/16 :goto_1

    .line 1506
    .end local v4    # "i":I
    .end local v20    # "majorGravity":I
    .end local v23    # "paddingLeft":I
    .restart local v5    # "majorGravity":I
    .restart local v9    # "paddingLeft":I
    :cond_8
    move/from16 v20, v5

    move/from16 v23, v9

    .end local v5    # "majorGravity":I
    .end local v9    # "paddingLeft":I
    .restart local v20    # "majorGravity":I
    .restart local v23    # "paddingLeft":I
    return-void
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "totalWidth"    # I
    .param p5, "heightMeasureSpec"    # I
    .param p6, "totalHeight"    # I

    .line 1377
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1379
    return-void
.end method

.method measureHorizontal(II)V
    .locals 64
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 928
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    iput v10, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 929
    const/4 v0, 0x0

    .line 930
    .local v0, "maxHeight":I
    const/4 v1, 0x0

    .line 931
    .local v1, "childState":I
    const/4 v2, 0x0

    .line 932
    .local v2, "alternativeMaxHeight":I
    const/4 v3, 0x0

    .line 933
    .local v3, "weightedMaxHeight":I
    const/4 v4, 0x1

    .line 934
    .local v4, "allFillParent":Z
    const/4 v5, 0x0

    .line 936
    .local v5, "totalWeight":F
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v11

    .line 938
    .local v11, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 939
    .local v12, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 941
    .local v13, "heightMode":I
    const/4 v6, 0x0

    .line 942
    .local v6, "matchHeight":Z
    const/4 v14, 0x0

    .line 944
    .local v14, "skippedMeasure":Z
    iget-object v15, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxAscent:[I

    if-eqz v15, :cond_0

    iget-object v15, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxDescent:[I

    if-nez v15, :cond_1

    .line 945
    :cond_0
    const/4 v15, 0x4

    new-array v10, v15, [I

    iput-object v10, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 946
    new-array v10, v15, [I

    iput-object v10, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 949
    :cond_1
    iget-object v10, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 950
    .local v10, "maxAscent":[I
    iget-object v15, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 952
    .local v15, "maxDescent":[I
    const/16 v17, 0x3

    move/from16 v18, v6

    .end local v6    # "matchHeight":Z
    .local v18, "matchHeight":Z
    const/4 v6, -0x1

    aput v6, v10, v17

    const/16 v19, 0x2

    aput v6, v10, v19

    const/16 v20, 0x1

    aput v6, v10, v20

    const/16 v16, 0x0

    aput v6, v10, v16

    .line 953
    aput v6, v15, v17

    aput v6, v15, v19

    aput v6, v15, v20

    aput v6, v15, v16

    .line 955
    iget-boolean v6, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 956
    .local v6, "baselineAligned":Z
    move/from16 v22, v14

    .end local v14    # "skippedMeasure":Z
    .local v22, "skippedMeasure":Z
    iget-boolean v14, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 958
    .local v14, "useLargestChild":Z
    const/high16 v9, 0x40000000    # 2.0f

    if-ne v12, v9, :cond_2

    const/16 v23, 0x1

    goto :goto_0

    :cond_2
    const/16 v23, 0x0

    .line 960
    .local v23, "isExactly":Z
    :goto_0
    const/16 v24, 0x0

    .line 963
    .local v24, "largestChildWidth":I
    move/from16 v25, v1

    move/from16 v1, v24

    move/from16 v24, v18

    move/from16 v18, v4

    move v4, v0

    const/4 v0, 0x0

    move/from16 v63, v3

    move v3, v2

    move/from16 v2, v63

    .local v0, "i":I
    .local v1, "largestChildWidth":I
    .local v2, "weightedMaxHeight":I
    .local v3, "alternativeMaxHeight":I
    .local v4, "maxHeight":I
    .local v18, "allFillParent":Z
    .local v24, "matchHeight":Z
    .local v25, "childState":I
    :goto_1
    const/16 v28, 0x0

    if-ge v0, v11, :cond_15

    .line 964
    invoke-virtual {v7, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 966
    .local v9, "child":Landroid/view/View;
    if-nez v9, :cond_3

    .line 967
    move/from16 v30, v1

    .end local v1    # "largestChildWidth":I
    .local v30, "largestChildWidth":I
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v27

    add-int v1, v1, v27

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 968
    nop

    .line 963
    move/from16 v21, v6

    move/from16 v41, v12

    move/from16 v1, v30

    goto/16 :goto_e

    .line 971
    .end local v30    # "largestChildWidth":I
    .restart local v1    # "largestChildWidth":I
    :cond_3
    move/from16 v30, v1

    .end local v1    # "largestChildWidth":I
    .restart local v30    # "largestChildWidth":I
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v1

    move/from16 v31, v2

    const/16 v2, 0x8

    .end local v2    # "weightedMaxHeight":I
    .local v31, "weightedMaxHeight":I
    if-ne v1, v2, :cond_4

    .line 972
    invoke-virtual {v7, v9, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v0, v1

    .line 973
    nop

    .line 963
    move/from16 v21, v6

    move/from16 v41, v12

    move/from16 v1, v30

    move/from16 v2, v31

    goto/16 :goto_e

    .line 976
    :cond_4
    invoke-virtual {v7, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 977
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v1, v2

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 980
    :cond_5
    nop

    .line 981
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 983
    .local v2, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    iget v1, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    add-float v29, v5, v1

    .line 985
    .end local v5    # "totalWeight":F
    .local v29, "totalWeight":F
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v12, v1, :cond_8

    iget v1, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v1, :cond_8

    iget v1, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v1, v1, v28

    if-lez v1, :cond_8

    .line 989
    if-eqz v23, :cond_6

    .line 990
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v5, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v32, v0

    .end local v0    # "i":I
    .local v32, "i":I
    iget v0, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v5, v0

    add-int/2addr v1, v5

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_2

    .line 992
    .end local v32    # "i":I
    .restart local v0    # "i":I
    :cond_6
    move/from16 v32, v0

    .end local v0    # "i":I
    .restart local v32    # "i":I
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 993
    .local v0, "totalLength":I
    iget v1, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v1, v0

    iget v5, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1002
    .end local v0    # "totalLength":I
    :goto_2
    if-eqz v6, :cond_7

    .line 1003
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1004
    .local v1, "freeSpec":I
    invoke-virtual {v9, v1, v1}, Landroid/view/View;->measure(II)V

    .line 1005
    .end local v1    # "freeSpec":I
    nop

    .line 1047
    move-object v0, v2

    move/from16 v39, v3

    move/from16 v40, v4

    move/from16 v21, v6

    move/from16 v41, v12

    move/from16 v2, v30

    move/from16 v38, v31

    move/from16 v35, v32

    const/4 v12, -0x1

    goto/16 :goto_6

    .line 1006
    :cond_7
    const/16 v22, 0x1

    .line 1047
    move-object v0, v2

    move/from16 v39, v3

    move/from16 v40, v4

    move/from16 v21, v6

    move/from16 v41, v12

    move/from16 v38, v31

    move/from16 v35, v32

    const/4 v12, -0x1

    goto/16 :goto_7

    .line 1009
    .end local v32    # "i":I
    .local v0, "i":I
    :cond_8
    move/from16 v32, v0

    .end local v0    # "i":I
    .restart local v32    # "i":I
    const/high16 v0, -0x80000000

    .line 1011
    .local v0, "oldWidth":I
    iget v1, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v1, :cond_9

    iget v1, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v1, v1, v28

    if-lez v1, :cond_9

    .line 1016
    const/4 v0, 0x0

    .line 1017
    const/4 v1, -0x2

    iput v1, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1024
    .end local v0    # "oldWidth":I
    .local v5, "oldWidth":I
    :cond_9
    move v5, v0

    cmpl-float v0, v29, v28

    if-nez v0, :cond_a

    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v33, v0

    goto :goto_3

    :cond_a
    const/16 v33, 0x0

    :goto_3
    const/16 v34, 0x0

    move/from16 v1, v32

    .end local v32    # "i":I
    .local v1, "i":I
    move-object/from16 v0, p0

    move/from16 v35, v1

    move/from16 v36, v30

    .end local v1    # "i":I
    .end local v30    # "largestChildWidth":I
    .local v35, "i":I
    .local v36, "largestChildWidth":I
    move-object v1, v9

    move-object/from16 v37, v2

    move/from16 v38, v31

    .end local v2    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .end local v31    # "weightedMaxHeight":I
    .local v37, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .local v38, "weightedMaxHeight":I
    move/from16 v2, v35

    move/from16 v39, v3

    .end local v3    # "alternativeMaxHeight":I
    .local v39, "alternativeMaxHeight":I
    move/from16 v3, p1

    move/from16 v40, v4

    .end local v4    # "maxHeight":I
    .local v40, "maxHeight":I
    move/from16 v4, v33

    move v8, v5

    .end local v5    # "oldWidth":I
    .local v8, "oldWidth":I
    move/from16 v5, p2

    move/from16 v21, v6

    move/from16 v41, v12

    const/4 v12, -0x1

    .end local v6    # "baselineAligned":Z
    .end local v12    # "widthMode":I
    .local v21, "baselineAligned":Z
    .local v41, "widthMode":I
    move/from16 v6, v34

    invoke-virtual/range {v0 .. v6}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 1028
    const/high16 v0, -0x80000000

    if-eq v8, v0, :cond_b

    .line 1029
    move-object/from16 v0, v37

    .end local v37    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .local v0, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    iput v8, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    goto :goto_4

    .line 1032
    .end local v0    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .restart local v37    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    :cond_b
    move-object/from16 v0, v37

    .end local v37    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .restart local v0    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    :goto_4
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1033
    .local v1, "childWidth":I
    if-eqz v23, :cond_c

    .line 1034
    iget v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    .line 1035
    invoke-virtual {v7, v9}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_5

    .line 1037
    :cond_c
    iget v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1038
    .local v2, "totalLength":I
    add-int v3, v2, v1

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    .line 1039
    invoke-virtual {v7, v9}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1038
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1042
    .end local v2    # "totalLength":I
    :goto_5
    if-eqz v14, :cond_d

    .line 1043
    move/from16 v2, v36

    .end local v36    # "largestChildWidth":I
    .local v2, "largestChildWidth":I
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1047
    move/from16 v30, v1

    goto :goto_7

    .end local v1    # "childWidth":I
    .end local v2    # "largestChildWidth":I
    .end local v8    # "oldWidth":I
    .restart local v36    # "largestChildWidth":I
    :cond_d
    move/from16 v2, v36

    .end local v0    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .end local v21    # "baselineAligned":Z
    .end local v35    # "i":I
    .end local v36    # "largestChildWidth":I
    .end local v38    # "weightedMaxHeight":I
    .end local v39    # "alternativeMaxHeight":I
    .end local v40    # "maxHeight":I
    .end local v41    # "widthMode":I
    .local v2, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .restart local v3    # "alternativeMaxHeight":I
    .restart local v4    # "maxHeight":I
    .restart local v6    # "baselineAligned":Z
    .restart local v12    # "widthMode":I
    .restart local v30    # "largestChildWidth":I
    .restart local v31    # "weightedMaxHeight":I
    .restart local v32    # "i":I
    :goto_6
    move/from16 v30, v2

    .end local v2    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .end local v3    # "alternativeMaxHeight":I
    .end local v4    # "maxHeight":I
    .end local v6    # "baselineAligned":Z
    .end local v12    # "widthMode":I
    .end local v31    # "weightedMaxHeight":I
    .end local v32    # "i":I
    .restart local v0    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .restart local v21    # "baselineAligned":Z
    .restart local v35    # "i":I
    .restart local v38    # "weightedMaxHeight":I
    .restart local v39    # "alternativeMaxHeight":I
    .restart local v40    # "maxHeight":I
    .restart local v41    # "widthMode":I
    :goto_7
    const/4 v1, 0x0

    .line 1048
    .local v1, "matchHeightLocally":Z
    const/high16 v2, 0x40000000    # 2.0f

    if-eq v13, v2, :cond_e

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-ne v2, v12, :cond_e

    .line 1052
    const/16 v24, 0x1

    .line 1053
    const/4 v1, 0x1

    .line 1056
    :cond_e
    iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 1057
    .local v2, "margin":I
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v2

    .line 1058
    .local v3, "childHeight":I
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    move/from16 v6, v25

    .end local v25    # "childState":I
    .local v6, "childState":I
    invoke-static {v6, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v4

    .line 1060
    .end local v6    # "childState":I
    .local v4, "childState":I
    if-eqz v21, :cond_10

    .line 1061
    invoke-virtual {v9}, Landroid/view/View;->getBaseline()I

    move-result v5

    .line 1062
    .local v5, "childBaseline":I
    if-eq v5, v12, :cond_10

    .line 1065
    iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v6, :cond_f

    iget v6, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    goto :goto_8

    :cond_f
    iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    :goto_8
    and-int/lit8 v6, v6, 0x70

    .line 1067
    .local v6, "gravity":I
    shr-int/lit8 v8, v6, 0x4

    const/16 v25, -0x2

    and-int/lit8 v8, v8, -0x2

    shr-int/lit8 v8, v8, 0x1

    .line 1070
    .local v8, "index":I
    aget v12, v10, v8

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    aput v12, v10, v8

    .line 1071
    aget v12, v15, v8

    move/from16 v42, v2

    .end local v2    # "margin":I
    .local v42, "margin":I
    sub-int v2, v3, v5

    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v15, v8

    goto :goto_9

    .line 1075
    .end local v5    # "childBaseline":I
    .end local v6    # "gravity":I
    .end local v8    # "index":I
    .end local v42    # "margin":I
    .restart local v2    # "margin":I
    :cond_10
    move/from16 v42, v2

    .end local v2    # "margin":I
    .restart local v42    # "margin":I
    :goto_9
    move/from16 v8, v40

    .end local v40    # "maxHeight":I
    .local v8, "maxHeight":I
    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1077
    .end local v8    # "maxHeight":I
    .local v2, "maxHeight":I
    if-eqz v18, :cond_11

    iget v5, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_11

    const/4 v5, 0x1

    goto :goto_a

    :cond_11
    const/4 v5, 0x0

    .line 1078
    .end local v18    # "allFillParent":Z
    .local v5, "allFillParent":Z
    :goto_a
    iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v6, v6, v28

    if-lez v6, :cond_13

    .line 1083
    if-eqz v1, :cond_12

    move/from16 v6, v42

    goto :goto_b

    :cond_12
    move v6, v3

    :goto_b
    move/from16 v12, v38

    .end local v38    # "weightedMaxHeight":I
    .local v12, "weightedMaxHeight":I
    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1090
    move v12, v6

    move/from16 v6, v39

    goto :goto_d

    .line 1086
    .end local v12    # "weightedMaxHeight":I
    .restart local v38    # "weightedMaxHeight":I
    :cond_13
    move/from16 v12, v38

    .end local v38    # "weightedMaxHeight":I
    .restart local v12    # "weightedMaxHeight":I
    if-eqz v1, :cond_14

    move/from16 v6, v42

    goto :goto_c

    :cond_14
    move v6, v3

    :goto_c
    move/from16 v8, v39

    .end local v39    # "alternativeMaxHeight":I
    .local v8, "alternativeMaxHeight":I
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1090
    .end local v8    # "alternativeMaxHeight":I
    .local v6, "alternativeMaxHeight":I
    :goto_d
    move/from16 v8, v35

    .end local v35    # "i":I
    .local v8, "i":I
    invoke-virtual {v7, v9, v8}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v18

    add-int v0, v8, v18

    .line 963
    move/from16 v25, v4

    move/from16 v18, v5

    move v3, v6

    move/from16 v5, v29

    move/from16 v1, v30

    move v4, v2

    move v2, v12

    .end local v6    # "alternativeMaxHeight":I
    .end local v8    # "i":I
    .end local v9    # "child":Landroid/view/View;
    .end local v12    # "weightedMaxHeight":I
    .end local v29    # "totalWeight":F
    .end local v30    # "largestChildWidth":I
    .end local v42    # "margin":I
    .local v0, "i":I
    .local v1, "largestChildWidth":I
    .local v2, "weightedMaxHeight":I
    .local v3, "alternativeMaxHeight":I
    .local v4, "maxHeight":I
    .local v5, "totalWeight":F
    .restart local v18    # "allFillParent":Z
    .restart local v25    # "childState":I
    :goto_e
    add-int/lit8 v0, v0, 0x1

    move/from16 v6, v21

    move/from16 v12, v41

    move/from16 v8, p1

    const/high16 v9, 0x40000000    # 2.0f

    goto/16 :goto_1

    .line 1093
    .end local v0    # "i":I
    .end local v21    # "baselineAligned":Z
    .end local v41    # "widthMode":I
    .local v6, "baselineAligned":Z
    .local v12, "widthMode":I
    :cond_15
    move v8, v4

    move/from16 v21, v6

    move/from16 v41, v12

    move/from16 v6, v25

    move v12, v2

    move v2, v1

    .end local v1    # "largestChildWidth":I
    .end local v4    # "maxHeight":I
    .end local v25    # "childState":I
    .local v2, "largestChildWidth":I
    .local v6, "childState":I
    .local v8, "maxHeight":I
    .local v12, "weightedMaxHeight":I
    .restart local v21    # "baselineAligned":Z
    .restart local v41    # "widthMode":I
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    if-lez v0, :cond_16

    invoke-virtual {v7, v11}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1094
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v0, v1

    iput v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1099
    :cond_16
    aget v0, v10, v20

    const/4 v1, -0x1

    if-ne v0, v1, :cond_18

    const/4 v0, 0x0

    aget v4, v10, v0

    if-ne v4, v1, :cond_18

    aget v0, v10, v19

    if-ne v0, v1, :cond_18

    aget v0, v10, v17

    if-eq v0, v1, :cond_17

    goto :goto_f

    .line 1112
    :cond_17
    move/from16 v43, v6

    move v4, v8

    goto :goto_10

    .line 1103
    :cond_18
    :goto_f
    aget v0, v10, v17

    const/4 v1, 0x0

    aget v4, v10, v1

    aget v9, v10, v20

    aget v1, v10, v19

    .line 1105
    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1104
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1103
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1106
    .local v0, "ascent":I
    aget v1, v15, v17

    const/4 v4, 0x0

    aget v9, v15, v4

    aget v4, v15, v20

    move/from16 v43, v6

    .end local v6    # "childState":I
    .local v43, "childState":I
    aget v6, v15, v19

    .line 1108
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1107
    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1106
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1109
    .local v1, "descent":I
    add-int v4, v0, v1

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1112
    .end local v0    # "ascent":I
    .end local v1    # "descent":I
    .end local v8    # "maxHeight":I
    .restart local v4    # "maxHeight":I
    :goto_10
    if-eqz v14, :cond_1f

    move/from16 v0, v41

    const/high16 v1, -0x80000000

    .end local v41    # "widthMode":I
    .local v0, "widthMode":I
    if-eq v0, v1, :cond_1a

    if-nez v0, :cond_19

    goto :goto_11

    .line 1143
    :cond_19
    move/from16 v45, v4

    goto/16 :goto_15

    .line 1114
    :cond_1a
    :goto_11
    const/4 v1, 0x0

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1116
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-ge v1, v11, :cond_1e

    .line 1117
    invoke-virtual {v7, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1119
    .local v6, "child":Landroid/view/View;
    if-nez v6, :cond_1b

    .line 1120
    iget v8, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1121
    goto :goto_13

    .line 1124
    :cond_1b
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_1c

    .line 1125
    invoke-virtual {v7, v6, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v8

    add-int/2addr v1, v8

    .line 1126
    nop

    .line 1116
    .end local v1    # "i":I
    .end local v4    # "maxHeight":I
    .end local v6    # "child":Landroid/view/View;
    .local v44, "i":I
    .local v45, "maxHeight":I
    :goto_13
    move/from16 v44, v1

    move/from16 v45, v4

    goto :goto_14

    .line 1129
    .end local v44    # "i":I
    .end local v45    # "maxHeight":I
    .restart local v1    # "i":I
    .restart local v4    # "maxHeight":I
    .restart local v6    # "child":Landroid/view/View;
    :cond_1c
    nop

    .line 1130
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 1131
    .local v8, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    if-eqz v23, :cond_1d

    .line 1132
    iget v9, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v44, v1

    .end local v1    # "i":I
    .restart local v44    # "i":I
    iget v1, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    move/from16 v45, v4

    .end local v4    # "maxHeight":I
    .restart local v45    # "maxHeight":I
    iget v4, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v1, v4

    .line 1133
    invoke-virtual {v7, v6}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v9, v1

    iput v9, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_14

    .line 1135
    .end local v44    # "i":I
    .end local v45    # "maxHeight":I
    .restart local v1    # "i":I
    .restart local v4    # "maxHeight":I
    :cond_1d
    move/from16 v44, v1

    move/from16 v45, v4

    .end local v1    # "i":I
    .end local v4    # "maxHeight":I
    .restart local v44    # "i":I
    .restart local v45    # "maxHeight":I
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1136
    .local v1, "totalLength":I
    add-int v4, v1, v2

    iget v9, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v4, v9

    iget v9, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v4, v9

    .line 1137
    invoke-virtual {v7, v6}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v9

    add-int/2addr v4, v9

    .line 1136
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1116
    .end local v1    # "totalLength":I
    .end local v6    # "child":Landroid/view/View;
    .end local v8    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    :goto_14
    add-int/lit8 v1, v44, 0x1

    move/from16 v4, v45

    goto :goto_12

    .line 1143
    .end local v44    # "i":I
    .end local v45    # "maxHeight":I
    .restart local v4    # "maxHeight":I
    :cond_1e
    move/from16 v45, v4

    .end local v4    # "maxHeight":I
    .restart local v45    # "maxHeight":I
    goto :goto_15

    .end local v0    # "widthMode":I
    .end local v45    # "maxHeight":I
    .restart local v4    # "maxHeight":I
    .restart local v41    # "widthMode":I
    :cond_1f
    move/from16 v45, v4

    move/from16 v0, v41

    .end local v4    # "maxHeight":I
    .end local v41    # "widthMode":I
    .restart local v0    # "widthMode":I
    .restart local v45    # "maxHeight":I
    :goto_15
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v6

    add-int/2addr v4, v6

    add-int/2addr v1, v4

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1145
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1148
    .local v1, "widthSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1151
    move/from16 v4, p1

    const/4 v6, 0x0

    invoke-static {v1, v4, v6}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v8

    .line 1152
    .local v8, "widthSizeAndState":I
    const v6, 0xffffff

    and-int v1, v8, v6

    .line 1157
    iget v6, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v6, v1, v6

    .line 1158
    .local v6, "delta":I
    if-nez v22, :cond_25

    if-eqz v6, :cond_20

    cmpl-float v25, v5, v28

    if-lez v25, :cond_20

    .line 1159
    move/from16 v46, v1

    move/from16 v51, v2

    move v2, v3

    move/from16 v48, v5

    const/high16 v3, 0x40000000    # 2.0f

    goto/16 :goto_18

    .line 1269
    :cond_20
    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1273
    if-eqz v14, :cond_24

    const/high16 v9, 0x40000000    # 2.0f

    if-eq v0, v9, :cond_24

    .line 1274
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_16
    move/from16 v9, v16

    .end local v16    # "i":I
    .local v9, "i":I
    if-ge v9, v11, :cond_24

    .line 1275
    move/from16 v46, v1

    .end local v1    # "widthSize":I
    .local v46, "widthSize":I
    invoke-virtual {v7, v9}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1277
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_23

    move/from16 v47, v3

    .end local v3    # "alternativeMaxHeight":I
    .local v47, "alternativeMaxHeight":I
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    move/from16 v48, v5

    const/16 v5, 0x8

    .end local v5    # "totalWeight":F
    .local v48, "totalWeight":F
    if-ne v3, v5, :cond_21

    .line 1278
    nop

    .line 1274
    move/from16 v51, v2

    const/high16 v3, 0x40000000    # 2.0f

    goto :goto_17

    .line 1281
    :cond_21
    nop

    .line 1282
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 1284
    .local v3, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    iget v5, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1285
    .local v5, "childExtra":F
    cmpl-float v16, v5, v28

    if-lez v16, :cond_22

    .line 1286
    nop

    .line 1287
    move-object/from16 v49, v3

    move/from16 v50, v5

    const/high16 v3, 0x40000000    # 2.0f

    .end local v3    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .end local v5    # "childExtra":F
    .local v49, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .local v50, "childExtra":F
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1288
    move/from16 v51, v2

    .end local v2    # "largestChildWidth":I
    .local v51, "largestChildWidth":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1286
    invoke-virtual {v1, v5, v2}, Landroid/view/View;->measure(II)V

    goto :goto_17

    .line 1274
    .end local v1    # "child":Landroid/view/View;
    .end local v49    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .end local v50    # "childExtra":F
    .end local v51    # "largestChildWidth":I
    .restart local v2    # "largestChildWidth":I
    :cond_22
    move/from16 v51, v2

    const/high16 v3, 0x40000000    # 2.0f

    .end local v2    # "largestChildWidth":I
    .restart local v51    # "largestChildWidth":I
    goto :goto_17

    .end local v47    # "alternativeMaxHeight":I
    .end local v48    # "totalWeight":F
    .end local v51    # "largestChildWidth":I
    .restart local v2    # "largestChildWidth":I
    .local v3, "alternativeMaxHeight":I
    .local v5, "totalWeight":F
    :cond_23
    move/from16 v51, v2

    move/from16 v47, v3

    move/from16 v48, v5

    const/high16 v3, 0x40000000    # 2.0f

    .end local v2    # "largestChildWidth":I
    .end local v3    # "alternativeMaxHeight":I
    .end local v5    # "totalWeight":F
    .restart local v47    # "alternativeMaxHeight":I
    .restart local v48    # "totalWeight":F
    .restart local v51    # "largestChildWidth":I
    :goto_17
    add-int/lit8 v16, v9, 0x1

    move/from16 v1, v46

    move/from16 v3, v47

    move/from16 v5, v48

    move/from16 v2, v51

    goto :goto_16

    .line 1295
    .end local v9    # "i":I
    .end local v46    # "widthSize":I
    .end local v47    # "alternativeMaxHeight":I
    .end local v48    # "totalWeight":F
    .end local v51    # "largestChildWidth":I
    .local v1, "widthSize":I
    .restart local v2    # "largestChildWidth":I
    .restart local v3    # "alternativeMaxHeight":I
    .restart local v5    # "totalWeight":F
    :cond_24
    move/from16 v46, v1

    move/from16 v51, v2

    move/from16 v47, v3

    move/from16 v48, v5

    const/high16 v3, 0x40000000    # 2.0f

    .end local v1    # "widthSize":I
    .end local v2    # "largestChildWidth":I
    .end local v3    # "alternativeMaxHeight":I
    .end local v5    # "totalWeight":F
    .restart local v46    # "widthSize":I
    .restart local v47    # "alternativeMaxHeight":I
    .restart local v48    # "totalWeight":F
    .restart local v51    # "largestChildWidth":I
    move/from16 v59, v0

    move v0, v6

    move/from16 v58, v8

    move/from16 v54, v11

    move/from16 v52, v12

    move/from16 v53, v14

    move/from16 v6, p2

    goto/16 :goto_29

    .line 1159
    .end local v46    # "widthSize":I
    .end local v47    # "alternativeMaxHeight":I
    .end local v48    # "totalWeight":F
    .end local v51    # "largestChildWidth":I
    .restart local v1    # "widthSize":I
    .restart local v2    # "largestChildWidth":I
    .restart local v3    # "alternativeMaxHeight":I
    .restart local v5    # "totalWeight":F
    :cond_25
    move/from16 v46, v1

    move/from16 v51, v2

    move v2, v3

    move/from16 v48, v5

    const/high16 v3, 0x40000000    # 2.0f

    .end local v1    # "widthSize":I
    .end local v3    # "alternativeMaxHeight":I
    .end local v5    # "totalWeight":F
    .local v2, "alternativeMaxHeight":I
    .restart local v46    # "widthSize":I
    .restart local v48    # "totalWeight":F
    .restart local v51    # "largestChildWidth":I
    :goto_18
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    cmpl-float v1, v1, v28

    if-lez v1, :cond_26

    iget v5, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    goto :goto_19

    :cond_26
    move/from16 v5, v48

    :goto_19
    move v1, v5

    .line 1161
    .local v1, "weightSum":F
    const/4 v5, -0x1

    aput v5, v10, v17

    aput v5, v10, v19

    aput v5, v10, v20

    const/4 v9, 0x0

    aput v5, v10, v9

    .line 1162
    aput v5, v15, v17

    aput v5, v15, v19

    aput v5, v15, v20

    aput v5, v15, v9

    .line 1163
    const/4 v5, -0x1

    .line 1165
    .end local v45    # "maxHeight":I
    .local v5, "maxHeight":I
    iput v9, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1167
    move v3, v2

    move/from16 v9, v43

    move v2, v1

    const/4 v1, 0x0

    .end local v43    # "childState":I
    .local v1, "i":I
    .local v2, "weightSum":F
    .restart local v3    # "alternativeMaxHeight":I
    .local v9, "childState":I
    :goto_1a
    if-ge v1, v11, :cond_34

    .line 1168
    move/from16 v52, v12

    .end local v12    # "weightedMaxHeight":I
    .local v52, "weightedMaxHeight":I
    invoke-virtual {v7, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1170
    .local v12, "child":Landroid/view/View;
    if-eqz v12, :cond_33

    move/from16 v53, v14

    .end local v14    # "useLargestChild":Z
    .local v53, "useLargestChild":Z
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v4, 0x8

    if-ne v14, v4, :cond_27

    .line 1171
    nop

    .line 1167
    move/from16 v59, v0

    move v0, v6

    move/from16 v58, v8

    move/from16 v54, v11

    move/from16 v6, p2

    const/16 v25, -0x2

    goto/16 :goto_25

    .line 1174
    :cond_27
    nop

    .line 1175
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 1177
    .local v14, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    iget v4, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1178
    .local v4, "childExtra":F
    cmpl-float v25, v4, v28

    if-lez v25, :cond_2c

    .line 1180
    move/from16 v54, v11

    .end local v11    # "count":I
    .local v54, "count":I
    int-to-float v11, v6

    mul-float v11, v11, v4

    div-float/2addr v11, v2

    float-to-int v11, v11

    .line 1181
    .local v11, "share":I
    sub-float/2addr v2, v4

    .line 1182
    sub-int/2addr v6, v11

    .line 1184
    nop

    .line 1186
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v25

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v26

    add-int v25, v25, v26

    move/from16 v55, v2

    .end local v2    # "weightSum":F
    .local v55, "weightSum":F
    iget v2, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v25, v25, v2

    iget v2, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v2, v25, v2

    move/from16 v56, v4

    .end local v4    # "childExtra":F
    .local v56, "childExtra":F
    iget v4, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 1184
    move/from16 v57, v6

    move/from16 v58, v8

    move/from16 v6, p2

    const/high16 v8, 0x40000000    # 2.0f

    .end local v6    # "delta":I
    .end local v8    # "widthSizeAndState":I
    .local v57, "delta":I
    .local v58, "widthSizeAndState":I
    invoke-static {v6, v2, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v2

    .line 1191
    .local v2, "childHeightMeasureSpec":I
    iget v4, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v4, :cond_2a

    if-eq v0, v8, :cond_28

    goto :goto_1c

    .line 1204
    :cond_28
    if-lez v11, :cond_29

    move v4, v11

    goto :goto_1b

    :cond_29
    const/4 v4, 0x0

    :goto_1b
    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v12, v4, v2}, Landroid/view/View;->measure(II)V

    .line 1210
    move/from16 v59, v0

    goto :goto_1d

    .line 1194
    :cond_2a
    :goto_1c
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v11

    .line 1195
    .local v4, "childWidth":I
    if-gez v4, :cond_2b

    .line 1196
    const/4 v4, 0x0

    .line 1199
    :cond_2b
    nop

    .line 1200
    move/from16 v59, v0

    .end local v0    # "widthMode":I
    .local v59, "widthMode":I
    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1199
    invoke-virtual {v12, v0, v2}, Landroid/view/View;->measure(II)V

    .line 1202
    .end local v4    # "childWidth":I
    nop

    .line 1210
    :goto_1d
    nop

    .line 1211
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    const/high16 v4, -0x1000000

    and-int/2addr v0, v4

    .line 1210
    invoke-static {v9, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    goto :goto_1e

    .line 1214
    .end local v54    # "count":I
    .end local v55    # "weightSum":F
    .end local v56    # "childExtra":F
    .end local v57    # "delta":I
    .end local v58    # "widthSizeAndState":I
    .end local v59    # "widthMode":I
    .restart local v0    # "widthMode":I
    .local v2, "weightSum":F
    .local v4, "childExtra":F
    .restart local v6    # "delta":I
    .restart local v8    # "widthSizeAndState":I
    .local v11, "count":I
    :cond_2c
    move/from16 v59, v0

    move/from16 v56, v4

    move v0, v6

    move/from16 v58, v8

    move/from16 v54, v11

    move/from16 v6, p2

    const/high16 v8, 0x40000000    # 2.0f

    move/from16 v57, v0

    move/from16 v55, v2

    .end local v0    # "widthMode":I
    .end local v2    # "weightSum":F
    .end local v4    # "childExtra":F
    .end local v6    # "delta":I
    .end local v8    # "widthSizeAndState":I
    .end local v11    # "count":I
    .restart local v54    # "count":I
    .restart local v55    # "weightSum":F
    .restart local v56    # "childExtra":F
    .restart local v57    # "delta":I
    .restart local v58    # "widthSizeAndState":I
    .restart local v59    # "widthMode":I
    :goto_1e
    if-eqz v23, :cond_2d

    .line 1215
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v4, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    iget v4, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    .line 1216
    invoke-virtual {v7, v12}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    iput v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_1f

    .line 1218
    :cond_2d
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1219
    .local v0, "totalLength":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    iget v4, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    iget v4, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    .line 1220
    invoke-virtual {v7, v12}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1219
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1223
    .end local v0    # "totalLength":I
    :goto_1f
    if-eq v13, v8, :cond_2e

    iget v0, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2e

    const/4 v0, 0x1

    goto :goto_20

    :cond_2e
    const/4 v0, 0x0

    .line 1226
    .local v0, "matchHeightLocally":Z
    :goto_20
    iget v2, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    iget v4, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    .line 1227
    .local v2, "margin":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    .line 1228
    .local v4, "childHeight":I
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1229
    if-eqz v0, :cond_2f

    move v11, v2

    goto :goto_21

    :cond_2f
    move v11, v4

    :goto_21
    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1232
    if-eqz v18, :cond_30

    iget v11, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v8, -0x1

    if-ne v11, v8, :cond_30

    const/4 v8, 0x1

    goto :goto_22

    :cond_30
    const/4 v8, 0x0

    .line 1234
    .end local v18    # "allFillParent":Z
    .local v8, "allFillParent":Z
    :goto_22
    if-eqz v21, :cond_32

    .line 1235
    invoke-virtual {v12}, Landroid/view/View;->getBaseline()I

    move-result v11

    .line 1236
    .local v11, "childBaseline":I
    move/from16 v60, v0

    const/4 v0, -0x1

    .end local v0    # "matchHeightLocally":Z
    .local v60, "matchHeightLocally":Z
    if-eq v11, v0, :cond_32

    .line 1238
    iget v0, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v0, :cond_31

    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    goto :goto_23

    :cond_31
    iget v0, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    :goto_23
    and-int/lit8 v0, v0, 0x70

    .line 1240
    .local v0, "gravity":I
    shr-int/lit8 v18, v0, 0x4

    const/16 v25, -0x2

    and-int/lit8 v18, v18, -0x2

    shr-int/lit8 v18, v18, 0x1

    .line 1243
    .local v18, "index":I
    move/from16 v61, v0

    .end local v0    # "gravity":I
    .local v61, "gravity":I
    aget v0, v10, v18

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v10, v18

    .line 1244
    aget v0, v15, v18

    move/from16 v62, v2

    .end local v2    # "margin":I
    .local v62, "margin":I
    sub-int v2, v4, v11

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v15, v18

    goto :goto_24

    .line 1167
    .end local v4    # "childHeight":I
    .end local v11    # "childBaseline":I
    .end local v12    # "child":Landroid/view/View;
    .end local v14    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .end local v18    # "index":I
    .end local v56    # "childExtra":F
    .end local v60    # "matchHeightLocally":Z
    .end local v61    # "gravity":I
    .end local v62    # "margin":I
    :cond_32
    const/16 v25, -0x2

    :goto_24
    move/from16 v18, v8

    move/from16 v2, v55

    goto :goto_26

    .end local v53    # "useLargestChild":Z
    .end local v54    # "count":I
    .end local v55    # "weightSum":F
    .end local v57    # "delta":I
    .end local v58    # "widthSizeAndState":I
    .end local v59    # "widthMode":I
    .local v0, "widthMode":I
    .local v2, "weightSum":F
    .restart local v6    # "delta":I
    .local v8, "widthSizeAndState":I
    .local v11, "count":I
    .local v14, "useLargestChild":Z
    .local v18, "allFillParent":Z
    :cond_33
    move/from16 v59, v0

    move v0, v6

    move/from16 v58, v8

    move/from16 v54, v11

    move/from16 v53, v14

    move/from16 v6, p2

    const/16 v25, -0x2

    .end local v6    # "delta":I
    .end local v8    # "widthSizeAndState":I
    .end local v11    # "count":I
    .end local v14    # "useLargestChild":Z
    .local v0, "delta":I
    .restart local v53    # "useLargestChild":Z
    .restart local v54    # "count":I
    .restart local v58    # "widthSizeAndState":I
    .restart local v59    # "widthMode":I
    :goto_25
    move/from16 v57, v0

    .end local v0    # "delta":I
    .restart local v57    # "delta":I
    :goto_26
    add-int/lit8 v1, v1, 0x1

    move/from16 v12, v52

    move/from16 v14, v53

    move/from16 v11, v54

    move/from16 v6, v57

    move/from16 v8, v58

    move/from16 v0, v59

    move/from16 v4, p1

    goto/16 :goto_1a

    .line 1251
    .end local v1    # "i":I
    .end local v52    # "weightedMaxHeight":I
    .end local v53    # "useLargestChild":Z
    .end local v54    # "count":I
    .end local v57    # "delta":I
    .end local v58    # "widthSizeAndState":I
    .end local v59    # "widthMode":I
    .local v0, "widthMode":I
    .restart local v6    # "delta":I
    .restart local v8    # "widthSizeAndState":I
    .restart local v11    # "count":I
    .local v12, "weightedMaxHeight":I
    .restart local v14    # "useLargestChild":Z
    :cond_34
    move/from16 v59, v0

    move v0, v6

    move/from16 v58, v8

    move/from16 v54, v11

    move/from16 v52, v12

    move/from16 v53, v14

    move/from16 v6, p2

    .end local v6    # "delta":I
    .end local v8    # "widthSizeAndState":I
    .end local v11    # "count":I
    .end local v12    # "weightedMaxHeight":I
    .end local v14    # "useLargestChild":Z
    .local v0, "delta":I
    .restart local v52    # "weightedMaxHeight":I
    .restart local v53    # "useLargestChild":Z
    .restart local v54    # "count":I
    .restart local v58    # "widthSizeAndState":I
    .restart local v59    # "widthMode":I
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v8

    add-int/2addr v4, v8

    add-int/2addr v1, v4

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1256
    aget v1, v10, v20

    const/4 v4, -0x1

    if-ne v1, v4, :cond_36

    const/4 v1, 0x0

    aget v8, v10, v1

    if-ne v8, v4, :cond_36

    aget v1, v10, v19

    if-ne v1, v4, :cond_36

    aget v1, v10, v17

    if-eq v1, v4, :cond_35

    goto :goto_27

    .line 1268
    .end local v2    # "weightSum":F
    :cond_35
    move v4, v5

    goto :goto_28

    .line 1260
    .restart local v2    # "weightSum":F
    :cond_36
    :goto_27
    aget v1, v10, v17

    const/4 v4, 0x0

    aget v8, v10, v4

    aget v11, v10, v20

    aget v12, v10, v19

    .line 1262
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1261
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1260
    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1263
    .local v1, "ascent":I
    aget v8, v15, v17

    aget v4, v15, v4

    aget v11, v15, v20

    aget v12, v15, v19

    .line 1265
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1264
    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1263
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1266
    .local v4, "descent":I
    add-int v8, v1, v4

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1268
    move v4, v1

    .line 1295
    .end local v1    # "ascent":I
    .end local v2    # "weightSum":F
    .end local v5    # "maxHeight":I
    .local v4, "maxHeight":I
    :goto_28
    move/from16 v47, v3

    move/from16 v45, v4

    move/from16 v43, v9

    .end local v3    # "alternativeMaxHeight":I
    .end local v4    # "maxHeight":I
    .end local v9    # "childState":I
    .restart local v43    # "childState":I
    .restart local v45    # "maxHeight":I
    .restart local v47    # "alternativeMaxHeight":I
    :goto_29
    if-nez v18, :cond_37

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v13, v1, :cond_37

    .line 1296
    move/from16 v45, v47

    .line 1299
    :cond_37
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int v1, v45, v1

    .line 1302
    .end local v45    # "maxHeight":I
    .local v1, "maxHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1304
    const/high16 v2, -0x1000000

    and-int v2, v43, v2

    or-int v2, v58, v2

    shl-int/lit8 v3, v43, 0x10

    .line 1305
    invoke-static {v1, v6, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    .line 1304
    invoke-virtual {v7, v2, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    .line 1308
    if-eqz v24, :cond_38

    .line 1309
    move/from16 v3, v54

    move/from16 v2, p1

    .end local v54    # "count":I
    .local v3, "count":I
    invoke-direct {v7, v3, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->forceUniformHeight(II)V

    goto :goto_2a

    .line 1311
    .end local v3    # "count":I
    .restart local v54    # "count":I
    :cond_38
    move/from16 v3, v54

    move/from16 v2, p1

    .end local v54    # "count":I
    .restart local v3    # "count":I
    :goto_2a
    return-void
.end method

.method measureNullChild(I)I
    .locals 1
    .param p1, "childIndex"    # I

    .line 1358
    const/4 v0, 0x0

    return v0
.end method

.method measureVertical(II)V
    .locals 57
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 595
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    iput v10, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 596
    const/4 v0, 0x0

    .line 597
    .local v0, "maxWidth":I
    const/4 v1, 0x0

    .line 598
    .local v1, "childState":I
    const/4 v2, 0x0

    .line 599
    .local v2, "alternativeMaxWidth":I
    const/4 v3, 0x0

    .line 600
    .local v3, "weightedMaxWidth":I
    const/4 v4, 0x1

    .line 601
    .local v4, "allFillParent":Z
    const/4 v5, 0x0

    .line 603
    .local v5, "totalWeight":F
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v11

    .line 605
    .local v11, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 606
    .local v12, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 608
    .local v13, "heightMode":I
    const/4 v6, 0x0

    .line 609
    .local v6, "matchWidth":Z
    const/4 v14, 0x0

    .line 611
    .local v14, "skippedMeasure":Z
    iget v15, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 612
    .local v15, "baselineChildIndex":I
    iget-boolean v10, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 614
    .local v10, "useLargestChild":Z
    const/16 v17, 0x0

    .line 617
    .local v17, "largestChildHeight":I
    move/from16 v18, v6

    move v6, v2

    move v2, v0

    const/4 v0, 0x0

    move/from16 v56, v4

    move v4, v3

    move/from16 v3, v17

    move/from16 v17, v56

    .local v0, "i":I
    .local v2, "maxWidth":I
    .local v3, "largestChildHeight":I
    .local v4, "weightedMaxWidth":I
    .local v6, "alternativeMaxWidth":I
    .local v17, "allFillParent":Z
    .local v18, "matchWidth":Z
    :goto_0
    move/from16 v19, v4

    .end local v4    # "weightedMaxWidth":I
    .local v19, "weightedMaxWidth":I
    const/16 v21, 0x1

    const/16 v22, 0x0

    if-ge v0, v11, :cond_13

    .line 618
    invoke-virtual {v7, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 620
    .local v4, "child":Landroid/view/View;
    if-nez v4, :cond_0

    .line 621
    move/from16 v25, v1

    .end local v1    # "childState":I
    .local v25, "childState":I
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v20

    add-int v1, v1, v20

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 622
    nop

    .line 617
    move/from16 v35, v11

    move/from16 v34, v13

    move/from16 v4, v19

    move/from16 v1, v25

    goto/16 :goto_b

    .line 625
    .end local v25    # "childState":I
    .restart local v1    # "childState":I
    :cond_0
    move/from16 v25, v1

    .end local v1    # "childState":I
    .restart local v25    # "childState":I
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v1

    move/from16 v26, v2

    const/16 v2, 0x8

    .end local v2    # "maxWidth":I
    .local v26, "maxWidth":I
    if-ne v1, v2, :cond_1

    .line 626
    invoke-virtual {v7, v4, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v0, v1

    .line 627
    nop

    .line 617
    move/from16 v35, v11

    move/from16 v34, v13

    move/from16 v4, v19

    move/from16 v1, v25

    move/from16 v2, v26

    goto/16 :goto_b

    .line 630
    :cond_1
    invoke-virtual {v7, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 631
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v1, v2

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 634
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 636
    .local v2, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    iget v1, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    add-float v23, v5, v1

    .line 638
    .end local v5    # "totalWeight":F
    .local v23, "totalWeight":F
    const/high16 v5, 0x40000000    # 2.0f

    if-ne v13, v5, :cond_3

    iget v1, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v1, :cond_3

    iget v1, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v1, v1, v22

    if-lez v1, :cond_3

    .line 642
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 643
    .local v1, "totalLength":I
    iget v5, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v5, v1

    move/from16 v27, v0

    .end local v0    # "i":I
    .local v27, "i":I
    iget v0, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 644
    const/4 v14, 0x1

    .line 645
    .end local v1    # "totalLength":I
    nop

    .line 683
    move-object v0, v2

    move/from16 v35, v11

    move/from16 v34, v13

    move/from16 v32, v14

    move/from16 v9, v19

    move/from16 v8, v25

    move/from16 v31, v26

    move/from16 v29, v27

    move v11, v6

    goto/16 :goto_3

    .line 646
    .end local v27    # "i":I
    .restart local v0    # "i":I
    :cond_3
    move/from16 v27, v0

    .end local v0    # "i":I
    .restart local v27    # "i":I
    const/high16 v0, -0x80000000

    .line 648
    .local v0, "oldHeight":I
    iget v1, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v1, :cond_4

    iget v1, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v1, v1, v22

    if-lez v1, :cond_4

    .line 653
    const/4 v0, 0x0

    .line 654
    const/4 v1, -0x2

    iput v1, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 661
    .end local v0    # "oldHeight":I
    .local v5, "oldHeight":I
    :cond_4
    move v5, v0

    const/16 v24, 0x0

    cmpl-float v0, v23, v22

    if-nez v0, :cond_5

    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v28, v0

    goto :goto_1

    :cond_5
    const/16 v28, 0x0

    :goto_1
    move/from16 v1, v27

    .end local v27    # "i":I
    .local v1, "i":I
    move-object/from16 v0, p0

    move/from16 v29, v1

    move/from16 v8, v25

    .end local v1    # "i":I
    .end local v25    # "childState":I
    .local v8, "childState":I
    .local v29, "i":I
    move-object v1, v4

    move-object/from16 v30, v2

    move/from16 v31, v26

    .end local v2    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .end local v26    # "maxWidth":I
    .local v30, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .local v31, "maxWidth":I
    move/from16 v2, v29

    move/from16 v32, v14

    move v14, v3

    .end local v3    # "largestChildHeight":I
    .local v14, "largestChildHeight":I
    .local v32, "skippedMeasure":Z
    move/from16 v3, p1

    move-object/from16 v33, v4

    move/from16 v34, v13

    move/from16 v9, v19

    const/high16 v13, -0x80000000

    .end local v4    # "child":Landroid/view/View;
    .end local v13    # "heightMode":I
    .end local v19    # "weightedMaxWidth":I
    .local v9, "weightedMaxWidth":I
    .local v33, "child":Landroid/view/View;
    .local v34, "heightMode":I
    move/from16 v4, v24

    move v13, v5

    .end local v5    # "oldHeight":I
    .local v13, "oldHeight":I
    move/from16 v5, p2

    move/from16 v35, v11

    move v11, v6

    .end local v6    # "alternativeMaxWidth":I
    .local v11, "alternativeMaxWidth":I
    .local v35, "count":I
    move/from16 v6, v28

    invoke-virtual/range {v0 .. v6}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 665
    const/high16 v0, -0x80000000

    if-eq v13, v0, :cond_6

    .line 666
    move-object/from16 v0, v30

    .end local v30    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .local v0, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    iput v13, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    goto :goto_2

    .line 669
    .end local v0    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .restart local v30    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    :cond_6
    move-object/from16 v0, v30

    .end local v30    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .restart local v0    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    :goto_2
    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 670
    .local v1, "childHeight":I
    iget v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 671
    .local v2, "totalLength":I
    add-int v3, v2, v1

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    .line 672
    move-object/from16 v4, v33

    .end local v33    # "child":Landroid/view/View;
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v7, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    .line 671
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 674
    if-eqz v10, :cond_7

    .line 675
    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_3

    .line 683
    .end local v1    # "childHeight":I
    .end local v2    # "totalLength":I
    .end local v13    # "oldHeight":I
    :cond_7
    move v3, v14

    .end local v14    # "largestChildHeight":I
    .restart local v3    # "largestChildHeight":I
    :goto_3
    if-ltz v15, :cond_8

    move/from16 v1, v29

    .end local v29    # "i":I
    .local v1, "i":I
    add-int/lit8 v2, v1, 0x1

    if-ne v15, v2, :cond_9

    .line 684
    iget v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iput v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineChildTop:I

    goto :goto_4

    .line 690
    .end local v1    # "i":I
    .restart local v29    # "i":I
    :cond_8
    move/from16 v1, v29

    .end local v29    # "i":I
    .restart local v1    # "i":I
    :cond_9
    :goto_4
    if-ge v1, v15, :cond_b

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v2, v2, v22

    if-gtz v2, :cond_a

    goto :goto_5

    .line 691
    :cond_a
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v5, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v2, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 697
    :cond_b
    :goto_5
    const/4 v2, 0x0

    .line 698
    .local v2, "matchWidthLocally":Z
    const/high16 v5, 0x40000000    # 2.0f

    if-eq v12, v5, :cond_c

    iget v5, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_d

    .line 703
    const/16 v18, 0x1

    .line 704
    const/4 v2, 0x1

    goto :goto_6

    .line 707
    :cond_c
    const/4 v6, -0x1

    :cond_d
    :goto_6
    iget v5, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    iget v13, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v5, v13

    .line 708
    .local v5, "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v13, v5

    .line 709
    .local v13, "measuredWidth":I
    move/from16 v14, v31

    .end local v31    # "maxWidth":I
    .local v14, "maxWidth":I
    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 710
    nop

    .line 711
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v6

    .line 710
    invoke-static {v8, v6}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    .line 713
    .end local v8    # "childState":I
    .local v6, "childState":I
    if-eqz v17, :cond_e

    iget v8, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v36, v3

    const/4 v3, -0x1

    .end local v3    # "largestChildHeight":I
    .local v36, "largestChildHeight":I
    if-ne v8, v3, :cond_f

    const/4 v3, 0x1

    goto :goto_7

    .end local v36    # "largestChildHeight":I
    .restart local v3    # "largestChildHeight":I
    :cond_e
    move/from16 v36, v3

    .end local v3    # "largestChildHeight":I
    .restart local v36    # "largestChildHeight":I
    :cond_f
    const/4 v3, 0x0

    .line 714
    .end local v17    # "allFillParent":Z
    .local v3, "allFillParent":Z
    :goto_7
    iget v8, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v8, v8, v22

    if-lez v8, :cond_11

    .line 719
    if-eqz v2, :cond_10

    move v8, v5

    goto :goto_8

    :cond_10
    move v8, v13

    :goto_8
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 726
    move v9, v8

    move v8, v11

    goto :goto_a

    .line 722
    :cond_11
    if-eqz v2, :cond_12

    move v8, v5

    goto :goto_9

    :cond_12
    move v8, v13

    :goto_9
    invoke-static {v11, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 726
    .end local v11    # "alternativeMaxWidth":I
    .local v8, "alternativeMaxWidth":I
    :goto_a
    invoke-virtual {v7, v4, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v11

    add-int v0, v1, v11

    .line 617
    move/from16 v17, v3

    move v1, v6

    move v6, v8

    move v4, v9

    move v2, v14

    move/from16 v5, v23

    move/from16 v14, v32

    move/from16 v3, v36

    .end local v8    # "alternativeMaxWidth":I
    .end local v9    # "weightedMaxWidth":I
    .end local v13    # "measuredWidth":I
    .end local v23    # "totalWeight":F
    .end local v32    # "skippedMeasure":Z
    .end local v36    # "largestChildHeight":I
    .local v0, "i":I
    .local v1, "childState":I
    .local v2, "maxWidth":I
    .local v3, "largestChildHeight":I
    .local v4, "weightedMaxWidth":I
    .local v5, "totalWeight":F
    .local v6, "alternativeMaxWidth":I
    .local v14, "skippedMeasure":Z
    .restart local v17    # "allFillParent":Z
    :goto_b
    add-int/lit8 v0, v0, 0x1

    move/from16 v13, v34

    move/from16 v11, v35

    move/from16 v8, p1

    move/from16 v9, p2

    goto/16 :goto_0

    .line 729
    .end local v0    # "i":I
    .end local v4    # "weightedMaxWidth":I
    .end local v34    # "heightMode":I
    .end local v35    # "count":I
    .local v11, "count":I
    .local v13, "heightMode":I
    .restart local v19    # "weightedMaxWidth":I
    :cond_13
    move v8, v1

    move v0, v2

    move/from16 v35, v11

    move/from16 v34, v13

    move/from16 v32, v14

    move/from16 v9, v19

    move v14, v3

    move v11, v6

    .end local v1    # "childState":I
    .end local v2    # "maxWidth":I
    .end local v3    # "largestChildHeight":I
    .end local v6    # "alternativeMaxWidth":I
    .end local v13    # "heightMode":I
    .end local v19    # "weightedMaxWidth":I
    .local v0, "maxWidth":I
    .local v8, "childState":I
    .restart local v9    # "weightedMaxWidth":I
    .local v11, "alternativeMaxWidth":I
    .local v14, "largestChildHeight":I
    .restart local v32    # "skippedMeasure":Z
    .restart local v34    # "heightMode":I
    .restart local v35    # "count":I
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    if-lez v1, :cond_14

    move/from16 v1, v35

    .end local v35    # "count":I
    .local v1, "count":I
    invoke-virtual {v7, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 730
    iget v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v3, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v2, v3

    iput v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_c

    .line 733
    .end local v1    # "count":I
    .restart local v35    # "count":I
    :cond_14
    move/from16 v1, v35

    .end local v35    # "count":I
    .restart local v1    # "count":I
    :cond_15
    :goto_c
    if-eqz v10, :cond_1b

    move/from16 v2, v34

    const/high16 v3, -0x80000000

    .end local v34    # "heightMode":I
    .local v2, "heightMode":I
    if-eq v2, v3, :cond_17

    if-nez v2, :cond_16

    goto :goto_d

    .line 760
    :cond_16
    move/from16 v37, v0

    goto :goto_11

    .line 735
    :cond_17
    :goto_d
    const/4 v3, 0x0

    iput v3, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 737
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    if-ge v3, v1, :cond_1a

    .line 738
    invoke-virtual {v7, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 740
    .local v4, "child":Landroid/view/View;
    if-nez v4, :cond_18

    .line 741
    iget v6, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v13

    add-int/2addr v6, v13

    iput v6, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 742
    goto :goto_f

    .line 745
    :cond_18
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v13, 0x8

    if-ne v6, v13, :cond_19

    .line 746
    invoke-virtual {v7, v4, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v6

    add-int/2addr v3, v6

    .line 747
    nop

    .line 737
    .end local v0    # "maxWidth":I
    .end local v4    # "child":Landroid/view/View;
    .local v37, "maxWidth":I
    :goto_f
    move/from16 v37, v0

    goto :goto_10

    .line 750
    .end local v37    # "maxWidth":I
    .restart local v0    # "maxWidth":I
    .restart local v4    # "child":Landroid/view/View;
    :cond_19
    nop

    .line 751
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 753
    .local v6, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    iget v13, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 754
    .local v13, "totalLength":I
    add-int v19, v13, v14

    move/from16 v37, v0

    .end local v0    # "maxWidth":I
    .restart local v37    # "maxWidth":I
    iget v0, v6, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v19, v19, v0

    iget v0, v6, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v19, v19, v0

    .line 755
    invoke-virtual {v7, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int v0, v19, v0

    .line 754
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 737
    .end local v4    # "child":Landroid/view/View;
    .end local v6    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .end local v13    # "totalLength":I
    :goto_10
    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v37

    goto :goto_e

    .line 760
    .end local v3    # "i":I
    .end local v37    # "maxWidth":I
    .restart local v0    # "maxWidth":I
    :cond_1a
    move/from16 v37, v0

    .end local v0    # "maxWidth":I
    .restart local v37    # "maxWidth":I
    goto :goto_11

    .end local v2    # "heightMode":I
    .end local v37    # "maxWidth":I
    .restart local v0    # "maxWidth":I
    .restart local v34    # "heightMode":I
    :cond_1b
    move/from16 v37, v0

    move/from16 v2, v34

    .end local v0    # "maxWidth":I
    .end local v34    # "heightMode":I
    .restart local v2    # "heightMode":I
    .restart local v37    # "maxWidth":I
    :goto_11
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    iput v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 762
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 765
    .local v0, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 768
    move v4, v9

    move/from16 v3, p2

    const/4 v6, 0x0

    .end local v9    # "weightedMaxWidth":I
    .local v4, "weightedMaxWidth":I
    invoke-static {v0, v3, v6}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v9

    .line 769
    .local v9, "heightSizeAndState":I
    const v6, 0xffffff

    and-int v0, v9, v6

    .line 774
    iget v6, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v6, v0, v6

    .line 775
    .local v6, "delta":I
    if-nez v32, :cond_21

    if-eqz v6, :cond_1c

    cmpl-float v13, v5, v22

    if-lez v13, :cond_1c

    .line 776
    move/from16 v38, v0

    move/from16 v39, v4

    move/from16 v40, v5

    move/from16 v43, v6

    goto/16 :goto_14

    .line 847
    :cond_1c
    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 853
    if-eqz v10, :cond_20

    const/high16 v13, 0x40000000    # 2.0f

    if-eq v2, v13, :cond_20

    .line 854
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_12
    move/from16 v13, v16

    .end local v16    # "i":I
    .local v13, "i":I
    if-ge v13, v1, :cond_20

    .line 855
    move/from16 v38, v0

    .end local v0    # "heightSize":I
    .local v38, "heightSize":I
    invoke-virtual {v7, v13}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 857
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1f

    move/from16 v39, v4

    .end local v4    # "weightedMaxWidth":I
    .local v39, "weightedMaxWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    move/from16 v40, v5

    const/16 v5, 0x8

    .end local v5    # "totalWeight":F
    .local v40, "totalWeight":F
    if-ne v4, v5, :cond_1d

    .line 858
    nop

    .line 854
    move/from16 v43, v6

    goto :goto_13

    .line 861
    :cond_1d
    nop

    .line 862
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 864
    .local v4, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    iget v5, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 865
    .local v5, "childExtra":F
    cmpl-float v16, v5, v22

    if-lez v16, :cond_1e

    .line 866
    nop

    .line 867
    move-object/from16 v41, v4

    .end local v4    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .local v41, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    move/from16 v42, v5

    const/high16 v5, 0x40000000    # 2.0f

    .end local v5    # "childExtra":F
    .local v42, "childExtra":F
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 869
    move/from16 v43, v6

    .end local v6    # "delta":I
    .local v43, "delta":I
    invoke-static {v14, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 866
    invoke-virtual {v0, v4, v6}, Landroid/view/View;->measure(II)V

    goto :goto_13

    .line 854
    .end local v0    # "child":Landroid/view/View;
    .end local v41    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .end local v42    # "childExtra":F
    .end local v43    # "delta":I
    .restart local v6    # "delta":I
    :cond_1e
    move/from16 v43, v6

    .end local v6    # "delta":I
    .restart local v43    # "delta":I
    goto :goto_13

    .end local v39    # "weightedMaxWidth":I
    .end local v40    # "totalWeight":F
    .end local v43    # "delta":I
    .local v4, "weightedMaxWidth":I
    .local v5, "totalWeight":F
    .restart local v6    # "delta":I
    :cond_1f
    move/from16 v39, v4

    move/from16 v40, v5

    move/from16 v43, v6

    .end local v4    # "weightedMaxWidth":I
    .end local v5    # "totalWeight":F
    .end local v6    # "delta":I
    .restart local v39    # "weightedMaxWidth":I
    .restart local v40    # "totalWeight":F
    .restart local v43    # "delta":I
    :goto_13
    add-int/lit8 v16, v13, 0x1

    move/from16 v0, v38

    move/from16 v4, v39

    move/from16 v5, v40

    move/from16 v6, v43

    goto :goto_12

    .line 876
    .end local v13    # "i":I
    .end local v38    # "heightSize":I
    .end local v39    # "weightedMaxWidth":I
    .end local v40    # "totalWeight":F
    .end local v43    # "delta":I
    .local v0, "heightSize":I
    .restart local v4    # "weightedMaxWidth":I
    .restart local v5    # "totalWeight":F
    .restart local v6    # "delta":I
    :cond_20
    move/from16 v38, v0

    move/from16 v39, v4

    move/from16 v40, v5

    move/from16 v43, v6

    .end local v0    # "heightSize":I
    .end local v4    # "weightedMaxWidth":I
    .end local v5    # "totalWeight":F
    .end local v6    # "delta":I
    .restart local v38    # "heightSize":I
    .restart local v39    # "weightedMaxWidth":I
    .restart local v40    # "totalWeight":F
    .restart local v43    # "delta":I
    move/from16 v50, v2

    move/from16 v44, v10

    move/from16 v45, v14

    move/from16 v46, v15

    move/from16 v6, v37

    move/from16 v13, v43

    move/from16 v14, p1

    goto/16 :goto_1f

    .line 776
    .end local v38    # "heightSize":I
    .end local v39    # "weightedMaxWidth":I
    .end local v40    # "totalWeight":F
    .end local v43    # "delta":I
    .restart local v0    # "heightSize":I
    .restart local v4    # "weightedMaxWidth":I
    .restart local v5    # "totalWeight":F
    .restart local v6    # "delta":I
    :cond_21
    move/from16 v38, v0

    move/from16 v39, v4

    move/from16 v40, v5

    move/from16 v43, v6

    .end local v0    # "heightSize":I
    .end local v4    # "weightedMaxWidth":I
    .end local v5    # "totalWeight":F
    .end local v6    # "delta":I
    .restart local v38    # "heightSize":I
    .restart local v39    # "weightedMaxWidth":I
    .restart local v40    # "totalWeight":F
    .restart local v43    # "delta":I
    :goto_14
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    cmpl-float v0, v0, v22

    if-lez v0, :cond_22

    iget v5, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    goto :goto_15

    :cond_22
    move/from16 v5, v40

    :goto_15
    move v0, v5

    .line 778
    .local v0, "weightSum":F
    const/4 v4, 0x0

    iput v4, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 780
    move/from16 v6, v37

    move/from16 v13, v43

    const/4 v0, 0x0

    .end local v37    # "maxWidth":I
    .end local v43    # "delta":I
    .local v0, "i":I
    .local v5, "weightSum":F
    .local v6, "maxWidth":I
    .local v13, "delta":I
    :goto_16
    if-ge v0, v1, :cond_2e

    .line 781
    invoke-virtual {v7, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 783
    .local v4, "child":Landroid/view/View;
    move/from16 v44, v10

    .end local v10    # "useLargestChild":Z
    .local v44, "useLargestChild":Z
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v10

    move/from16 v45, v14

    const/16 v14, 0x8

    .end local v14    # "largestChildHeight":I
    .local v45, "largestChildHeight":I
    if-ne v10, v14, :cond_23

    .line 784
    nop

    .line 780
    move/from16 v50, v2

    move/from16 v46, v15

    move/from16 v14, p1

    goto/16 :goto_1e

    .line 787
    :cond_23
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 789
    .local v10, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    iget v14, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 790
    .local v14, "childExtra":F
    cmpl-float v16, v14, v22

    if-lez v16, :cond_28

    .line 792
    move/from16 v46, v15

    .end local v15    # "baselineChildIndex":I
    .local v46, "baselineChildIndex":I
    int-to-float v15, v13

    mul-float v15, v15, v14

    div-float/2addr v15, v5

    float-to-int v15, v15

    .line 793
    .local v15, "share":I
    sub-float/2addr v5, v14

    .line 794
    sub-int/2addr v13, v15

    .line 796
    nop

    .line 797
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v19

    add-int v16, v16, v19

    move/from16 v47, v5

    .end local v5    # "weightSum":F
    .local v47, "weightSum":F
    iget v5, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int v16, v16, v5

    iget v5, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int v5, v16, v5

    move/from16 v48, v13

    .end local v13    # "delta":I
    .local v48, "delta":I
    iget v13, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 796
    move/from16 v49, v14

    move/from16 v14, p1

    .end local v14    # "childExtra":F
    .local v49, "childExtra":F
    invoke-static {v14, v5, v13}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v5

    .line 802
    .local v5, "childWidthMeasureSpec":I
    iget v13, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v13, :cond_26

    const/high16 v13, 0x40000000    # 2.0f

    if-eq v2, v13, :cond_24

    .line 805
    move/from16 v50, v2

    goto :goto_18

    .line 815
    :cond_24
    if-lez v15, :cond_25

    move v13, v15

    goto :goto_17

    :cond_25
    const/4 v13, 0x0

    .line 816
    :goto_17
    move/from16 v50, v2

    const/high16 v2, 0x40000000    # 2.0f

    .end local v2    # "heightMode":I
    .local v50, "heightMode":I
    invoke-static {v13, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 815
    invoke-virtual {v4, v5, v13}, Landroid/view/View;->measure(II)V

    .line 821
    move/from16 v51, v15

    goto :goto_19

    .line 805
    .end local v50    # "heightMode":I
    .restart local v2    # "heightMode":I
    :cond_26
    move/from16 v50, v2

    .end local v2    # "heightMode":I
    .restart local v50    # "heightMode":I
    :goto_18
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v15

    .line 806
    .local v2, "childHeight":I
    if-gez v2, :cond_27

    .line 807
    const/4 v2, 0x0

    .line 810
    :cond_27
    nop

    .line 811
    move/from16 v51, v15

    const/high16 v13, 0x40000000    # 2.0f

    .end local v15    # "share":I
    .local v51, "share":I
    invoke-static {v2, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 810
    invoke-virtual {v4, v5, v15}, Landroid/view/View;->measure(II)V

    .line 812
    .end local v2    # "childHeight":I
    nop

    .line 821
    :goto_19
    nop

    .line 822
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    and-int/lit16 v2, v2, -0x100

    .line 821
    invoke-static {v8, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v8

    .line 826
    move/from16 v5, v47

    move/from16 v13, v48

    goto :goto_1a

    .end local v46    # "baselineChildIndex":I
    .end local v47    # "weightSum":F
    .end local v48    # "delta":I
    .end local v49    # "childExtra":F
    .end local v50    # "heightMode":I
    .end local v51    # "share":I
    .local v2, "heightMode":I
    .local v5, "weightSum":F
    .restart local v13    # "delta":I
    .restart local v14    # "childExtra":F
    .local v15, "baselineChildIndex":I
    :cond_28
    move/from16 v50, v2

    move/from16 v49, v14

    move/from16 v46, v15

    move/from16 v14, p1

    .end local v2    # "heightMode":I
    .end local v14    # "childExtra":F
    .end local v15    # "baselineChildIndex":I
    .restart local v46    # "baselineChildIndex":I
    .restart local v49    # "childExtra":F
    .restart local v50    # "heightMode":I
    :goto_1a
    iget v2, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    iget v15, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v2, v15

    .line 827
    .local v2, "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v2

    .line 828
    .local v15, "measuredWidth":I
    invoke-static {v6, v15}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 830
    move/from16 v52, v2

    const/high16 v2, 0x40000000    # 2.0f

    .end local v2    # "margin":I
    .local v52, "margin":I
    if-eq v12, v2, :cond_29

    iget v2, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v53, v5

    const/4 v5, -0x1

    .end local v5    # "weightSum":F
    .local v53, "weightSum":F
    if-ne v2, v5, :cond_2a

    const/4 v2, 0x1

    goto :goto_1b

    .end local v53    # "weightSum":F
    .restart local v5    # "weightSum":F
    :cond_29
    move/from16 v53, v5

    .end local v5    # "weightSum":F
    .restart local v53    # "weightSum":F
    :cond_2a
    const/4 v2, 0x0

    .line 833
    .local v2, "matchWidthLocally":Z
    :goto_1b
    if-eqz v2, :cond_2b

    move/from16 v5, v52

    goto :goto_1c

    :cond_2b
    move v5, v15

    :goto_1c
    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 836
    .end local v11    # "alternativeMaxWidth":I
    .local v5, "alternativeMaxWidth":I
    if-eqz v17, :cond_2c

    iget v11, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v54, v2

    const/4 v2, -0x1

    .end local v2    # "matchWidthLocally":Z
    .local v54, "matchWidthLocally":Z
    if-ne v11, v2, :cond_2d

    const/4 v11, 0x1

    goto :goto_1d

    .end local v54    # "matchWidthLocally":Z
    .restart local v2    # "matchWidthLocally":Z
    :cond_2c
    move/from16 v54, v2

    const/4 v2, -0x1

    .end local v2    # "matchWidthLocally":Z
    .restart local v54    # "matchWidthLocally":Z
    :cond_2d
    const/4 v11, 0x0

    .line 838
    .end local v17    # "allFillParent":Z
    .local v11, "allFillParent":Z
    :goto_1d
    iget v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 839
    .local v2, "totalLength":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v16, v2, v16

    move/from16 v55, v5

    .end local v5    # "alternativeMaxWidth":I
    .local v55, "alternativeMaxWidth":I
    iget v5, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v16, v16, v5

    iget v5, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v16, v16, v5

    .line 840
    invoke-virtual {v7, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int v5, v16, v5

    .line 839
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 780
    move/from16 v17, v11

    move/from16 v5, v53

    move/from16 v11, v55

    .end local v2    # "totalLength":I
    .end local v4    # "child":Landroid/view/View;
    .end local v10    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .end local v15    # "measuredWidth":I
    .end local v49    # "childExtra":F
    .end local v52    # "margin":I
    .end local v53    # "weightSum":F
    .end local v54    # "matchWidthLocally":Z
    .end local v55    # "alternativeMaxWidth":I
    .local v5, "weightSum":F
    .local v11, "alternativeMaxWidth":I
    .restart local v17    # "allFillParent":Z
    :goto_1e
    add-int/lit8 v0, v0, 0x1

    move/from16 v10, v44

    move/from16 v14, v45

    move/from16 v15, v46

    move/from16 v2, v50

    const/4 v4, 0x0

    goto/16 :goto_16

    .line 844
    .end local v0    # "i":I
    .end local v44    # "useLargestChild":Z
    .end local v45    # "largestChildHeight":I
    .end local v46    # "baselineChildIndex":I
    .end local v50    # "heightMode":I
    .local v2, "heightMode":I
    .local v10, "useLargestChild":Z
    .local v14, "largestChildHeight":I
    .local v15, "baselineChildIndex":I
    :cond_2e
    move/from16 v50, v2

    move/from16 v44, v10

    move/from16 v45, v14

    move/from16 v46, v15

    move/from16 v14, p1

    .end local v2    # "heightMode":I
    .end local v10    # "useLargestChild":Z
    .end local v14    # "largestChildHeight":I
    .end local v15    # "baselineChildIndex":I
    .restart local v44    # "useLargestChild":Z
    .restart local v45    # "largestChildHeight":I
    .restart local v46    # "baselineChildIndex":I
    .restart local v50    # "heightMode":I
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    iput v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 846
    .end local v5    # "weightSum":F
    nop

    .line 876
    :goto_1f
    if-nez v17, :cond_2f

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v12, v0, :cond_2f

    .line 877
    move v6, v11

    .line 880
    :cond_2f
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v6, v0

    .line 883
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 885
    .end local v6    # "maxWidth":I
    .local v0, "maxWidth":I
    invoke-static {v0, v14, v8}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v2

    invoke-virtual {v7, v2, v9}, Landroid/support/v7/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    .line 888
    if-eqz v18, :cond_30

    .line 889
    invoke-direct {v7, v1, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->forceUniformWidth(II)V

    .line 891
    :cond_30
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 283
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 284
    return-void

    .line 287
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 288
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->drawDividersVertical(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 290
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    .line 292
    :goto_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1756
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1757
    const-class v0, Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1758
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1762
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1763
    const-class v0, Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1764
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1406
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1407
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/support/v7/widget/LinearLayoutCompat;->layoutVertical(IIII)V

    goto :goto_0

    .line 1409
    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/support/v7/widget/LinearLayoutCompat;->layoutHorizontal(IIII)V

    .line 1411
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 550
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 551
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->measureVertical(II)V

    goto :goto_0

    .line 553
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->measureHorizontal(II)V

    .line 555
    :goto_0
    return-void
.end method

.method public setBaselineAligned(Z)V
    .locals 0
    .param p1, "baselineAligned"    # Z

    .line 392
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 393
    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 3
    .param p1, "i"    # I

    .line 488
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 492
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 493
    return-void

    .line 489
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "base aligned child index out of range (0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .line 232
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 233
    return-void

    .line 235
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 236
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 237
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 238
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    goto :goto_0

    .line 240
    :cond_1
    iput v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 241
    iput v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    .line 243
    :goto_0
    if-nez p1, :cond_2

    const/4 v0, 0x1

    nop

    :cond_2
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->setWillNotDraw(Z)V

    .line 244
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    .line 245
    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0
    .param p1, "padding"    # I

    .line 257
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 258
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .line 1679
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    if-eq v0, p1, :cond_2

    .line 1680
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 1681
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 1684
    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    .line 1685
    or-int/lit8 p1, p1, 0x30

    .line 1688
    :cond_1
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    .line 1689
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    .line 1691
    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 3
    .param p1, "horizontalGravity"    # I

    .line 1704
    const v0, 0x800007

    and-int v1, p1, v0

    .line 1705
    .local v1, "gravity":I
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    and-int/2addr v0, v2

    if-eq v0, v1, :cond_0

    .line 1706
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    const v2, -0x800008

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    .line 1707
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    .line 1709
    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 418
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 419
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .line 1654
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 1655
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    .line 1656
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    .line 1658
    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1
    .param p1, "showDividers"    # I

    .line 195
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    if-eq p1, v0, :cond_0

    .line 196
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    .line 198
    :cond_0
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    .line 199
    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2
    .param p1, "verticalGravity"    # I

    .line 1712
    and-int/lit8 v0, p1, 0x70

    .line 1713
    .local v0, "gravity":I
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_0

    .line 1714
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    .line 1715
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    .line 1717
    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 1
    .param p1, "weightSum"    # F

    .line 545
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    .line 546
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 203
    const/4 v0, 0x0

    return v0
.end method
