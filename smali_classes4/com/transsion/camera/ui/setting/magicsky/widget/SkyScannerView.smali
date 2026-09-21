.class public Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final mAnimDuration:Ljava/lang/Long;

.field private mHorizontalCount:I

.field private mInterval:I

.field private mLinearGradient:Landroid/graphics/LinearGradient;

.field mList:Ljava/util/ArrayList;

.field private mPaint:Landroid/graphics/Paint;

.field private mPointPaint:Landroid/graphics/Paint;

.field mPoints:Ljava/util/ArrayList;

.field private mRandomCount:I

.field private mRectPaint:Landroid/graphics/Paint;

.field private mScreenFormType:I

.field private mStartTime:Ljava/lang/Long;

.field private mStrokeWidth:I

.field private mVerticalCount:I

.field private mViewHeight:I

.field private mViewWidth:I

.field xPoint:[I

.field yPoint:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x7

    .line 33
    iput p1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mRandomCount:I

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mList:Ljava/util/ArrayList;

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mPoints:Ljava/util/ArrayList;

    const-wide/16 p1, 0x3e8

    .line 46
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mAnimDuration:Ljava/lang/Long;

    const-wide/16 p1, 0x0

    .line 47
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mStartTime:Ljava/lang/Long;

    const/4 p1, 0x0

    .line 48
    iput p1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mScreenFormType:I

    .line 56
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mPaint:Landroid/graphics/Paint;

    .line 57
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mPointPaint:Landroid/graphics/Paint;

    .line 60
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mPointPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 62
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mPointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mRectPaint:Landroid/graphics/Paint;

    .line 64
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private init()V
    .registers 9

    .line 132
    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mHorizontalCount:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mVerticalCount:I

    mul-int/2addr v0, v1

    .line 133
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 134
    :goto_c
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mRandomCount:I

    if-gt v1, v2, :cond_27

    .line 135
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    int-to-double v3, v0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    .line 136
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 138
    :cond_27
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    move v2, v1

    .line 139
    :goto_2e
    iget v3, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mHorizontalCount:I

    if-ge v2, v3, :cond_5d

    move v3, v1

    .line 140
    :goto_33
    iget v4, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mVerticalCount:I

    if-ge v3, v4, :cond_5a

    .line 141
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 142
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mPoints:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Point;

    iget-object v6, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->yPoint:[I

    aget v6, v6, v3

    iget-object v7, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->xPoint:[I

    aget v7, v7, v2

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_55
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 147
    :cond_5d
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 148
    :goto_62
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mRandomCount:I

    if-gt v0, v1, :cond_83

    .line 149
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mAnimDuration:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 150
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_62

    :cond_83
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 1

    .line 156
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 157
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->startAnim()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .line 162
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 163
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->stopAnim()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 24

    move-object/from16 v0, p0

    .line 70
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mStartTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_10

    goto/16 :goto_b6

    .line 71
    :cond_10
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mStartTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_26

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mStartTime:Ljava/lang/Long;

    .line 74
    :cond_26
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 75
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mPointPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mStrokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 76
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mLinearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 77
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mPointPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mLinearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v1, 0x1

    move v2, v1

    .line 78
    :goto_41
    iget v5, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mHorizontalCount:I

    if-gt v2, v5, :cond_61

    .line 79
    iget v5, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mInterval:I

    mul-int v6, v5, v2

    div-int/lit8 v7, v5, 0x3

    sub-int/2addr v6, v7

    int-to-float v9, v6

    iget v6, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mViewWidth:I

    int-to-float v10, v6

    mul-int v6, v5, v2

    div-int/lit8 v5, v5, 0x3

    sub-int/2addr v6, v5

    int-to-float v11, v6

    iget-object v12, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    :cond_61
    move v2, v1

    .line 81
    :goto_62
    iget v5, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mVerticalCount:I

    if-gt v2, v5, :cond_88

    .line 82
    iget v5, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mInterval:I

    mul-int v6, v5, v2

    div-int/lit8 v7, v5, 0x2

    sub-int/2addr v6, v7

    int-to-float v14, v6

    mul-int v6, v5, v2

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v6, v5

    int-to-float v5, v6

    iget v6, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mViewHeight:I

    int-to-float v6, v6

    iget-object v7, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mPaint:Landroid/graphics/Paint;

    const/4 v15, 0x0

    move-object/from16 v13, p1

    move/from16 v16, v5

    move/from16 v17, v6

    move-object/from16 v18, v7

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_62

    :cond_88
    const/4 v2, 0x0

    move v5, v2

    .line 84
    :goto_8a
    iget v6, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mHorizontalCount:I

    if-ge v5, v6, :cond_ac

    move v6, v2

    .line 85
    :goto_8f
    iget v7, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mVerticalCount:I

    if-ge v6, v7, :cond_a7

    .line 86
    iget-object v7, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->yPoint:[I

    aget v7, v7, v6

    int-to-float v7, v7

    iget-object v8, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->xPoint:[I

    aget v8, v8, v5

    int-to-float v8, v8

    iget-object v9, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mPointPaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    invoke-virtual {v13, v7, v8, v9}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_8f

    :cond_a7
    move-object/from16 v13, p1

    add-int/lit8 v5, v5, 0x1

    goto :goto_8a

    :cond_ac
    move-object/from16 v13, p1

    .line 89
    iget-object v5, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_b7

    :goto_b6
    return-void

    .line 91
    :cond_b7
    iget-object v5, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v2

    move v8, v7

    :goto_bf
    if-ge v8, v6, :cond_144

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Landroid/graphics/Point;

    .line 92
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/2addr v7, v1

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-object v14, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mStartTime:Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sub-long/2addr v11, v14

    int-to-long v14, v10

    sub-long/2addr v11, v14

    const-wide/16 v16, 0x64

    mul-long v11, v11, v16

    iget-object v10, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mAnimDuration:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    div-long v11, v11, v18

    long-to-int v10, v11

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mStartTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    sub-long v11, v11, v20

    sub-long/2addr v11, v14

    cmp-long v1, v11, v3

    if-gez v1, :cond_102

    move v10, v2

    :cond_102
    const/16 v1, 0x64

    if-lt v10, v1, :cond_120

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v12, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mStartTime:Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    sub-long v10, v10, v20

    sub-long/2addr v10, v14

    mul-long v10, v10, v16

    iget-object v12, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mAnimDuration:Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    div-long/2addr v10, v14

    long-to-int v10, v10

    sub-int/2addr v10, v1

    rsub-int/lit8 v10, v10, 0x64

    :cond_120
    if-gez v10, :cond_123

    move v10, v2

    .line 100
    :cond_123
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 101
    iget v1, v9, Landroid/graphics/Point;->x:I

    int-to-float v14, v1

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v15, v9

    iget v10, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mInterval:I

    add-int/2addr v1, v10

    int-to-float v1, v1

    add-int/2addr v9, v10

    int-to-float v9, v9

    iget-object v10, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mRectPaint:Landroid/graphics/Paint;

    move/from16 v16, v1

    move/from16 v17, v9

    move-object/from16 v18, v10

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v13, p1

    const/4 v1, 0x1

    goto/16 :goto_bf

    .line 103
    :cond_144
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public onScreenFormChanged(I)V
    .registers 2

    .line 179
    iput p1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mScreenFormType:I

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 15

    .line 108
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 109
    iput p1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mViewWidth:I

    .line 110
    iput p2, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mViewHeight:I

    const/16 p3, 0x5a

    const/16 p4, 0x438

    if-ge p1, p4, :cond_10

    const/16 v0, 0x3c

    goto :goto_11

    :cond_10
    move v0, p3

    .line 111
    :goto_11
    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mInterval:I

    .line 112
    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mScreenFormType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    .line 113
    iput p3, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mInterval:I

    :cond_1a
    if-ge p1, p4, :cond_1e

    const/4 p3, 0x7

    goto :goto_20

    :cond_1e
    const/16 p3, 0xa

    .line 115
    :goto_20
    iput p3, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mStrokeWidth:I

    .line 116
    iget p3, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mInterval:I

    div-int/2addr p1, p3

    iput p1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mVerticalCount:I

    .line 117
    div-int/2addr p2, p3

    iput p2, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mHorizontalCount:I

    .line 118
    new-instance v2, Landroid/graphics/LinearGradient;

    iget p1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mViewHeight:I

    div-int/2addr p1, v1

    int-to-float v6, p1

    const-string p1, "#00FFFFFF"

    .line 119
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    const-string p1, "#AAFFFFFF"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    sget-object v9, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mLinearGradient:Landroid/graphics/LinearGradient;

    .line 120
    iget p1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mHorizontalCount:I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->xPoint:[I

    .line 121
    iget p1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mVerticalCount:I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->yPoint:[I

    const/4 p1, 0x1

    move p2, p1

    .line 122
    :goto_54
    iget p3, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mHorizontalCount:I

    if-gt p2, p3, :cond_68

    .line 123
    iget-object p3, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->xPoint:[I

    add-int/lit8 p4, p2, -0x1

    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mInterval:I

    mul-int v2, v0, p2

    div-int/lit8 v0, v0, 0x3

    sub-int/2addr v2, v0

    aput v2, p3, p4

    add-int/lit8 p2, p2, 0x1

    goto :goto_54

    .line 125
    :cond_68
    :goto_68
    iget p2, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mVerticalCount:I

    if-gt p1, p2, :cond_7b

    .line 126
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->yPoint:[I

    add-int/lit8 p3, p1, -0x1

    iget p4, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mInterval:I

    mul-int v0, p4, p1

    div-int/2addr p4, v1

    sub-int/2addr v0, p4

    aput v0, p2, p3

    add-int/lit8 p1, p1, 0x1

    goto :goto_68

    .line 128
    :cond_7b
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->init()V

    return-void
.end method

.method public startAnim()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 167
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mStartTime:Ljava/lang/Long;

    .line 168
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->init()V

    .line 169
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public stopAnim()V
    .registers 3

    const-wide/16 v0, -0x1

    .line 173
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mStartTime:Ljava/lang/Long;

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 175
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
