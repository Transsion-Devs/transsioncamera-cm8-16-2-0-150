.class public Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final DST_OUT:Landroid/graphics/PorterDuffXfermode;

.field private mCurrentDuration:J

.field private mCurrentRotation:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPauseTime:J

.field private mPaused:Z

.field private mPausedDuration:J

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mRotateMatrix:Landroid/graphics/Matrix;

.field private mSVGPadding:F

.field private mStartTime:J

.field private mStarted:Z

.field private mStopped:Z

.field private mStrokeRectF:Landroid/graphics/RectF;

.field private mStrokeWidth:F

.field private mTotalDuration:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x40c00000    # 6.0f

    .line 26
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mStrokeWidth:F

    const/high16 p1, 0x40400000    # 3.0f

    .line 27
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mSVGPadding:F

    const/high16 p1, -0x40400000    # -1.5f

    .line 34
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mCurrentRotation:F

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mStarted:Z

    .line 36
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mStopped:Z

    .line 37
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mPaused:Z

    .line 40
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->DST_OUT:Landroid/graphics/PorterDuffXfermode;

    .line 52
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->init()V

    return-void
.end method

.method private init()V
    .registers 5

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->video_recording_progress_stroke_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mStrokeWidth:F

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->video_recording_progress_svg_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mSVGPadding:F

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    .line 59
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mRotateMatrix:Landroid/graphics/Matrix;

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$drawable;->ic_progress_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v0, 0x2

    .line 65
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 15

    .line 78
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mStarted:Z

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    const/high16 v8, -0x40400000    # -1.5f

    const/4 v5, -0x1

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v9, 0x43b40000    # 360.0f

    if-eqz v2, :cond_de

    .line 79
    iget-wide v10, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mTotalDuration:J

    cmp-long v2, v10, v3

    if-nez v2, :cond_a4

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 81
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 82
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 83
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mStartTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mPausedDuration:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mCurrentDuration:J

    long-to-float v2, v2

    const v3, 0x45bb8000    # 6000.0f

    div-float/2addr v2, v3

    mul-float/2addr v2, v9

    const/high16 v4, 0x42b40000    # 90.0f

    cmpl-float v5, v2, v4

    if-lez v5, :cond_42

    move v2, v4

    :cond_42
    sub-float v4, v2, v4

    .line 91
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v11, 0x3c23d70a    # 0.01f

    cmpg-float v5, v5, v11

    if-gez v5, :cond_5c

    .line 92
    iget-wide v11, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mCurrentDuration:J

    long-to-float v5, v11

    const v8, 0x44bb8000    # 1500.0f

    sub-float/2addr v5, v8

    div-float/2addr v5, v3

    mul-float/2addr v5, v9

    rem-float/2addr v5, v9

    .line 94
    iput v5, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mCurrentRotation:F

    goto :goto_5e

    .line 96
    :cond_5c
    iput v8, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mCurrentRotation:F

    .line 98
    :goto_5e
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mRotateMatrix:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mCurrentRotation:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v6

    invoke-virtual {v3, v5, v8, v11}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 99
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 100
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->DST_OUT:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move v3, v2

    .line 101
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mStrokeRectF:Landroid/graphics/RectF;

    sub-float/2addr v9, v3

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v4

    move v4, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 102
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 103
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mStrokeRectF:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40000000    # 2.0f

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 104
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 105
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mPaused:Z

    if-nez v1, :cond_a3

    .line 106
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_a3
    return-void

    .line 109
    :cond_a4
    iget-wide v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mCurrentDuration:J

    long-to-float v2, v2

    long-to-float v3, v10

    div-float/2addr v2, v3

    mul-float/2addr v2, v9

    cmpl-float v3, v2, v9

    if-lez v3, :cond_b0

    move v4, v9

    goto :goto_b1

    :cond_b0
    move v4, v2

    .line 113
    :goto_b1
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 114
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mStrokeRectF:Landroid/graphics/RectF;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x3d4c0000    # -90.0f

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 116
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mStrokeRectF:Landroid/graphics/RectF;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/high16 v3, 0x3fc00000    # 1.5f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void

    .line 119
    :cond_de
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mStopped:Z

    const/4 v10, 0x0

    if-eqz v2, :cond_171

    .line 120
    iget-wide v11, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mTotalDuration:J

    cmp-long v2, v11, v3

    if-nez v2, :cond_164

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 122
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 123
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 124
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    iget v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mCurrentRotation:F

    const/high16 v3, 0x41100000    # 9.0f

    add-float/2addr v2, v3

    iput v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mCurrentRotation:F

    .line 126
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    invoke-virtual {v3, v2, v4, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 127
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 128
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->DST_OUT:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 131
    iget v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mCurrentRotation:F

    const v3, 0x4387c000    # 271.5f

    cmpl-float v3, v2, v3

    const/high16 v4, 0x43870000    # 270.0f

    if-ltz v3, :cond_134

    sub-float/2addr v4, v2

    sub-float/2addr v4, v8

    sub-float v2, v9, v4

    move v3, v4

    move v4, v2

    goto :goto_136

    :cond_134
    const/4 v2, 0x0

    move v3, v2

    .line 135
    :goto_136
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mStrokeRectF:Landroid/graphics/RectF;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 136
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    cmpl-float v1, v3, v8

    if-ltz v1, :cond_153

    .line 138
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mStrokeRectF:Landroid/graphics/RectF;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40000000    # 2.0f

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 140
    :cond_153
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 141
    iget v1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mCurrentRotation:F

    cmpg-float v1, v1, v9

    if-gez v1, :cond_160

    .line 142
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void

    .line 144
    :cond_160
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->reset()V

    return-void

    .line 147
    :cond_164
    invoke-virtual {p1, v10, v10, v10, v10}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 148
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    .line 149
    iput-boolean v10, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mStopped:Z

    return-void

    .line 152
    :cond_171
    invoke-virtual {p1, v10, v10, v10, v10}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 153
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    .line 154
    iput-boolean v10, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mStopped:Z

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 8

    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 71
    new-instance p1, Landroid/graphics/RectF;

    iget p2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mStrokeWidth:F

    const/high16 p3, 0x40000000    # 2.0f

    div-float p4, p2, p3

    iget v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mSVGPadding:F

    add-float/2addr p4, v0

    div-float/2addr p2, p3

    add-float/2addr p2, v0

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mStrokeWidth:F

    div-float/2addr v1, p3

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mSVGPadding:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mStrokeWidth:F

    div-float/2addr v2, p3

    sub-float/2addr v1, v2

    iget p3, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mSVGPadding:F

    sub-float/2addr v1, p3

    invoke-direct {p1, p4, p2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mStrokeRectF:Landroid/graphics/RectF;

    .line 73
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p2, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public pause(Z)V
    .registers 8

    .line 195
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mPaused:Z

    if-nez v0, :cond_7

    if-nez p1, :cond_7

    goto :goto_29

    .line 198
    :cond_7
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mPaused:Z

    if-eqz p1, :cond_12

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mPauseTime:J

    goto :goto_1e

    .line 202
    :cond_12
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mPausedDuration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mPauseTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mPausedDuration:J

    .line 204
    :goto_1e
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mTotalDuration:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_29

    .line 205
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_29
    :goto_29
    return-void
.end method

.method public reset()V
    .registers 6

    const/4 v0, 0x0

    .line 210
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mStarted:Z

    .line 211
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mPaused:Z

    .line 212
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mStopped:Z

    const-wide/16 v0, 0x0

    .line 213
    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mCurrentDuration:J

    const/high16 v2, -0x40400000    # -1.5f

    .line 214
    iput v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mCurrentRotation:F

    .line 215
    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mPausedDuration:J

    .line 216
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v0, v2, v1, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 217
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 218
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->gc()V

    return-void
.end method

.method public setCurrentDuration(J)Z
    .registers 7

    .line 163
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mTotalDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 166
    :cond_a
    iput-wide p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mCurrentDuration:J

    .line 167
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 168
    iget-wide p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mCurrentDuration:J

    iget-wide v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mTotalDuration:J

    cmp-long p0, p1, v2

    if-ltz p0, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    return v1
.end method

.method public setTotalDuration(J)V
    .registers 3

    .line 159
    iput-wide p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mTotalDuration:J

    return-void
.end method

.method public start()V
    .registers 6

    const/4 v0, 0x1

    .line 172
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mStarted:Z

    const-wide/16 v0, 0x0

    .line 173
    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mCurrentDuration:J

    const/high16 v2, -0x40400000    # -1.5f

    .line 174
    iput v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mCurrentRotation:F

    .line 175
    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mPausedDuration:J

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mStartTime:J

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mRotateMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mCurrentRotation:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v0, v1, v2, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 178
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public stop()V
    .registers 3

    .line 182
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mStarted:Z

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mStopped:Z

    if-eqz v0, :cond_9

    goto :goto_21

    :cond_9
    const/4 v0, 0x0

    .line 185
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mStarted:Z

    .line 186
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mPaused:Z

    const/4 v0, 0x1

    .line 187
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mStopped:Z

    .line 188
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mCurrentRotation:F

    const/high16 v1, 0x43870000    # 270.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1e

    const/high16 v1, 0x43b40000    # 360.0f

    sub-float/2addr v0, v1

    .line 189
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/RecordingProgressView;->mCurrentRotation:F

    .line 191
    :cond_1e
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_21
    :goto_21
    return-void
.end method
