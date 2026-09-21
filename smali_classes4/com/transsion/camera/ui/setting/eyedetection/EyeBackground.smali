.class public Lcom/transsion/camera/ui/setting/eyedetection/EyeBackground;
.super Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;
.source "SourceFile"


# instance fields
.field private final mStrokeWidth:I


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V
    .registers 4

    .line 26
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;-><init>(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 29
    sget v0, Lcom/transsion/camera/R$dimen;->eye_background_stroke_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeBackground;->mStrokeWidth:I

    .line 30
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 13

    .line 35
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->getWidth()I

    move-result v0

    .line 36
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->getHeight()I

    move-result v1

    if-lez v0, :cond_3a

    if-gtz v1, :cond_d

    goto :goto_3a

    .line 42
    :cond_d
    iget v2, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeBackground;->mStrokeWidth:I

    mul-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    .line 44
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mPaint:Landroid/graphics/Paint;

    int-to-float v2, v2

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 45
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v0, v0

    sub-float/2addr v0, v3

    int-to-float v1, v1

    sub-float/2addr v1, v3

    invoke-direct {v6, v3, v3, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v9, 0x0

    .line 46
    iget-object v10, p0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mPaint:Landroid/graphics/Paint;

    const/high16 v7, 0x41f00000    # 30.0f

    const/high16 v8, 0x42700000    # 60.0f

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 47
    iget-object v10, p0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mPaint:Landroid/graphics/Paint;

    const/high16 v7, 0x43160000    # 150.0f

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 48
    iget-object v10, p0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mPaint:Landroid/graphics/Paint;

    const/high16 v7, 0x43870000    # 270.0f

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_3a
    :goto_3a
    return-void
.end method
