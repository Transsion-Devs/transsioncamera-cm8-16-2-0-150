.class public Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mDuration:J

.field private mLowLight:Z

.field private mOval:Landroid/graphics/RectF;

.field private mPaint:Landroid/graphics/Paint;

.field private mProgress:J

.field private mProgressColorBlack:I

.field private mProgressColorWhite:I

.field private mProgressTimer:Landroid/widget/TextView;

.field private mStrokeWidth:I

.field private mTextColorBlack:I

.field private mTextColorWhite:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mOval:Landroid/graphics/RectF;

    const/4 p2, 0x0

    .line 43
    iput p2, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mTextColorWhite:I

    .line 44
    iput p2, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mTextColorBlack:I

    .line 45
    iput p2, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mProgressColorWhite:I

    .line 46
    iput p2, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mProgressColorBlack:I

    .line 64
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private angle()I
    .registers 5

    .line 132
    iget-wide v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mProgress:J

    const-wide/16 v2, 0x168

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mDuration:J

    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method private drawText(Ljava/lang/String;)V
    .registers 2

    .line 126
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mProgressTimer:Landroid/widget/TextView;

    if-eqz p0, :cond_7

    .line 127
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    return-void
.end method

.method private formatProgress()Ljava/lang/String;
    .registers 7

    .line 136
    iget-wide v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mProgress:J

    const-wide/16 v2, 0x3e8

    .line 137
    div-long v4, v0, v2

    long-to-int p0, v4

    .line 138
    rem-long/2addr v0, v2

    long-to-int v0, v0

    .line 139
    div-int/lit8 v0, v0, 0x64

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%01d.%01d"

    invoke-static {v2, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "S"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .registers 8

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 70
    sget v1, Lcom/transsion/camera/R$dimen;->night_lite_progress_stroke_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mStrokeWidth:I

    .line 72
    sget v1, Lcom/transsion/camera/R$color;->night_lite_progress_color:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mTextColorWhite:I

    .line 73
    sget v1, Lcom/transsion/camera/R$color;->night_lite_progress_color_black:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mTextColorBlack:I

    .line 74
    sget v1, Lcom/transsion/camera/R$color;->night_lite_progress_color:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mProgressColorWhite:I

    .line 75
    sget v1, Lcom/transsion/camera/R$color;->night_lite_progress_color_black:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mProgressColorBlack:I

    .line 76
    sget v1, Lcom/transsion/camera/R$color;->night_lite_progress_background_color:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    .line 78
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mPaint:Landroid/graphics/Paint;

    .line 79
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mStrokeWidth:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mPaint:Landroid/graphics/Paint;

    iget-boolean v5, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mLowLight:Z

    if-eqz v5, :cond_72

    iget v5, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mProgressColorBlack:I

    goto :goto_74

    :cond_72
    iget v5, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mProgressColorWhite:I

    :goto_74
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 86
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 90
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 14

    .line 119
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 120
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mOval:Landroid/graphics/RectF;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 121
    iget-object v7, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mOval:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->angle()I

    move-result p1

    neg-int p1, p1

    int-to-float v9, p1

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mPaint:Landroid/graphics/Paint;

    const/high16 v8, -0x3d4c0000    # -90.0f

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 122
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->formatProgress()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->drawText(Ljava/lang/String;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    .line 110
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 111
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mOval:Landroid/graphics/RectF;

    iget p2, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mStrokeWidth:I

    int-to-float v0, p2

    int-to-float p2, p2

    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mStrokeWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mStrokeWidth:I

    sub-int/2addr v2, p0

    int-to-float p0, v2

    .line 111
    invoke-virtual {p1, v0, p2, v1, p0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setProgressTimer(Landroid/widget/TextView;)V
    .registers 2

    .line 162
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mProgressTimer:Landroid/widget/TextView;

    return-void
.end method

.method public setScreenFormType(I)V
    .registers 7

    const/4 v0, 0x7

    if-ne v0, p1, :cond_10

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$dimen;->flip_night_lite_progress_stroke_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mStrokeWidth:I

    goto :goto_1c

    .line 97
    :cond_10
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$dimen;->night_lite_progress_stroke_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mStrokeWidth:I

    .line 99
    :goto_1c
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mStrokeWidth:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 100
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mStrokeWidth:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 101
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mOval:Landroid/graphics/RectF;

    iget v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mStrokeWidth:I

    int-to-float v1, v0

    int-to-float v0, v0

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mStrokeWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mStrokeWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 101
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateLowLight(Z)V
    .registers 4

    .line 155
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mLowLight:Z

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mProgressTimer:Landroid/widget/TextView;

    if-eqz p1, :cond_9

    iget v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mTextColorBlack:I

    goto :goto_b

    :cond_9
    iget v1, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mTextColorWhite:I

    :goto_b
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_15

    iget p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mProgressColorBlack:I

    goto :goto_17

    :cond_15
    iget p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mProgressColorWhite:I

    :goto_17
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateProgress(J)V
    .registers 5

    .line 148
    iget-wide v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mProgress:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_b

    .line 149
    iput-wide p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mProgress:J

    .line 150
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_b
    return-void
.end method

.method public updateTotalDuration(J)V
    .registers 3

    .line 144
    iput-wide p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/NightLiteProgressView;->mDuration:J

    return-void
.end method
