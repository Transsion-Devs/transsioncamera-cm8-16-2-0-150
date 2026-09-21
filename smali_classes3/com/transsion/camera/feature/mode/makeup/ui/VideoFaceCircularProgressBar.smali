.class public Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceCircularProgressBar;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private mIsSelect:Z

.field private mNormalPaint:Landroid/graphics/Paint;

.field private mProgress:I

.field private mRectF:Landroid/graphics/RectF;

.field private mSelectPaint:Landroid/graphics/Paint;

.field private mStrokeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceCircularProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceCircularProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 25
    iput p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceCircularProgressBar;->mProgress:I

    .line 26
    iput-boolean p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceCircularProgressBar;->mIsSelect:Z

    .line 39
    sget-object p3, Lcom/transsion/camera/feature/makeup/R$styleable;->VideoFaceCircularProgressBar:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 41
    sget p2, Lcom/transsion/camera/feature/makeup/R$styleable;->VideoFaceCircularProgressBar_strokeWidth:I

    const/4 p3, 0x5

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceCircularProgressBar;->mStrokeWidth:I

    .line 43
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceCircularProgressBar;->mNormalPaint:Landroid/graphics/Paint;

    .line 44
    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceCircularProgressBar;->mNormalPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 46
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceCircularProgressBar;->mNormalPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceCircularProgressBar;->mNormalPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 48
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceCircularProgressBar;->mNormalPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceCircularProgressBar;->mStrokeWidth:I

    int-to-float v2, v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 49
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceCircularProgressBar;->mNormalPaint:Landroid/graphics/Paint;

    sget v2, Lcom/transsion/camera/feature/makeup/R$styleable;->VideoFaceCircularProgressBar_normalCircleColor:I

    const v3, -0xffff01

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceCircularProgressBar;->mSelectPaint:Landroid/graphics/Paint;

    .line 52
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceCircularProgressBar;->mSelectPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 54
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceCircularProgressBar;->mSelectPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceCircularProgressBar;->mSelectPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 56
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceCircularProgressBar;->mSelectPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceCircularProgressBar;->mStrokeWidth:I

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceCircularProgressBar;->mSelectPaint:Landroid/graphics/Paint;

    sget p2, Lcom/transsion/camera/feature/makeup/R$styleable;->VideoFaceCircularProgressBar_selectCircleColor:I

    const/high16 p3, -0x10000

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getProgress()I
    .registers 1

    .line 81
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceCircularProgressBar;->mProgress:I

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    .line 75
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 77
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceCircularProgressBar;->mRectF:Landroid/graphics/RectF;

    iget v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceCircularProgressBar;->mProgress:I

    mul-int/lit16 v0, v0, 0x168

    div-int/lit8 v0, v0, 0x64

    int-to-float v3, v0

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceCircularProgressBar;->mIsSelect:Z

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceCircularProgressBar;->mSelectPaint:Landroid/graphics/Paint;

    :goto_12
    move-object v5, p0

    goto :goto_17

    :cond_14
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceCircularProgressBar;->mNormalPaint:Landroid/graphics/Paint;

    goto :goto_12

    :goto_17
    const/high16 v2, 0x43870000    # 270.0f

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    .line 63
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    if-le p1, p2, :cond_23

    move v0, p2

    goto :goto_24

    :cond_23
    move v0, p1

    .line 66
    :goto_24
    iget v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceCircularProgressBar;->mStrokeWidth:I

    sub-int/2addr v0, v1

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v1, p1

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    .line 70
    new-instance p2, Landroid/graphics/RectF;

    int-to-float v2, v1

    int-to-float v3, p1

    add-int/2addr v1, v0

    int-to-float v1, v1

    add-int/2addr p1, v0

    int-to-float p1, p1

    invoke-direct {p2, v2, v3, v1, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceCircularProgressBar;->mRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public setNormalColor(I)V
    .registers 2

    .line 94
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceCircularProgressBar;->mNormalPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setProgress(I)V
    .registers 2

    .line 85
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceCircularProgressBar;->mProgress:I

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSelect(Z)V
    .registers 2

    .line 90
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceCircularProgressBar;->mIsSelect:Z

    return-void
.end method
