.class public Lcom/transsion/camera/ui/setting/focus/itel/LockBackground;
.super Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;
.source "SourceFile"


# instance fields
.field private final mStrokeLength:I

.field private final mStrokeWidth:I


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V
    .registers 4

    .line 28
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;-><init>(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 32
    sget v0, Lcom/transsion/camera/R$dimen;->focus_background_stroke_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/focus/itel/LockBackground;->mStrokeWidth:I

    .line 33
    sget v1, Lcom/transsion/camera/R$dimen;->focus_background_stroke_length:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/focus/itel/LockBackground;->mStrokeLength:I

    const/4 p1, -0x1

    .line 35
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mStrokeColor:I

    .line 36
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mPaint:Landroid/graphics/Paint;

    int-to-float p1, v0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 19

    move-object/from16 v0, p0

    .line 42
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->getWidth()I

    move-result v1

    .line 43
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->getHeight()I

    move-result v2

    if-lez v1, :cond_98

    if-gtz v2, :cond_10

    goto/16 :goto_98

    .line 49
    :cond_10
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->getScale()F

    move-result v3

    .line 51
    iget v4, v0, Lcom/transsion/camera/ui/setting/focus/itel/LockBackground;->mStrokeWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    .line 52
    iget v3, v0, Lcom/transsion/camera/ui/setting/focus/itel/LockBackground;->mStrokeLength:I

    int-to-float v8, v3

    .line 54
    iget-object v3, v0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mPaint:Landroid/graphics/Paint;

    iget v5, v0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mStrokeColor:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    iget-object v3, v0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 56
    iget-object v3, v0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x41200000    # 10.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5, v7, v7, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    const/high16 v3, 0x40000000    # 2.0f

    div-float v6, v4, v3

    .line 59
    iget-object v10, v0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mPaint:Landroid/graphics/Paint;

    move v7, v6

    const/4 v6, 0x0

    move v9, v7

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v3, 0x0

    .line 60
    iget-object v10, v0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mPaint:Landroid/graphics/Paint;

    move v9, v8

    move v8, v7

    move v6, v7

    move v7, v3

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v7, v6

    move v8, v9

    int-to-float v14, v1

    sub-float v10, v14, v8

    move v12, v14

    .line 63
    iget-object v14, v0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mPaint:Landroid/graphics/Paint;

    move v13, v7

    move-object/from16 v9, p1

    move v11, v7

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v3, v10

    move v1, v12

    sub-float v6, v1, v11

    const/4 v7, 0x0

    .line 64
    iget-object v10, v0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mPaint:Landroid/graphics/Paint;

    move v9, v8

    move v8, v6

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v4, v6

    move v8, v9

    int-to-float v15, v2

    sub-float v7, v15, v11

    .line 67
    iget-object v10, v0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    move v9, v7

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v13, v15, v8

    .line 68
    iget-object v14, v0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mPaint:Landroid/graphics/Paint;

    move v12, v11

    move-object/from16 v9, p1

    move v10, v11

    move v11, v13

    move v13, v15

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v5, v11

    move v2, v13

    .line 71
    iget-object v6, v0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mPaint:Landroid/graphics/Paint;

    move v15, v7

    move-object/from16 v11, p1

    move v14, v1

    move v12, v3

    move-object/from16 v16, v6

    move v13, v7

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 72
    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mPaint:Landroid/graphics/Paint;

    move v14, v4

    move-object/from16 v16, v0

    move v15, v2

    move v12, v4

    move v13, v5

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_98
    :goto_98
    return-void
.end method
