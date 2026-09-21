.class public Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private mAnimateMarkRectF:Landroid/graphics/RectF;

.field private mAnimateMarkWidth:F

.field private mCellStopDuration:J

.field private mCurrentDuration:J

.field private mMainMarkRectF:Landroid/graphics/RectF;

.field private mMainMarkWidth:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPauseTime:J

.field private mPaused:Z

.field private mPausedDuration:J

.field private mRotateMatrix:Landroid/graphics/Matrix;

.field private mStartTime:J

.field private mStarted:Z

.field private mStopCount:I

.field private mStopped:Z

.field private mTotalScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x40e00000    # 7.0f

    .line 33
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mMainMarkWidth:F

    const/high16 p1, 0x40a00000    # 5.0f

    .line 34
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mAnimateMarkWidth:F

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mStarted:Z

    .line 42
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mStopped:Z

    .line 43
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mPaused:Z

    .line 56
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->init()V

    return-void
.end method

.method private drawAnimateSmallLine(Landroid/graphics/Canvas;IF)V
    .registers 16

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mAnimateMarkWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/16 v0, 0xff

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    move v3, v0

    move v4, v1

    :goto_e
    const/16 v5, 0x3c

    if-ge v2, v5, :cond_bc

    .line 160
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/16 v6, 0x99

    if-ge v2, p2, :cond_1f

    if-gt p2, v5, :cond_1f

    .line 163
    iget v4, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mTotalScale:F

    :goto_1d
    move v3, v6

    goto :goto_57

    :cond_1f
    const/high16 v7, 0x42cc0000    # 102.0f

    if-ne v2, p2, :cond_32

    if-gt p2, v5, :cond_32

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v7, p3

    sub-float/2addr v3, v7

    float-to-int v3, v3

    .line 166
    iget v4, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mTotalScale:F

    sub-float v4, v1, v4

    mul-float/2addr v4, p3

    sub-float v4, v1, v4

    goto :goto_57

    :cond_32
    if-le v2, p2, :cond_39

    if-gt p2, v5, :cond_39

    :goto_36
    move v3, v0

    move v4, v1

    goto :goto_57

    :cond_39
    add-int/lit8 v8, v2, 0x3c

    if-ge v8, p2, :cond_40

    if-le p2, v5, :cond_40

    goto :goto_36

    :cond_40
    if-ne v8, p2, :cond_50

    if-le p2, v5, :cond_50

    const/high16 v3, 0x43190000    # 153.0f

    mul-float/2addr v7, p3

    add-float/2addr v7, v3

    float-to-int v3, v7

    .line 175
    iget v4, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mTotalScale:F

    sub-float v5, v1, v4

    mul-float/2addr v5, p3

    add-float/2addr v4, v5

    goto :goto_57

    :cond_50
    if-le v8, p2, :cond_57

    if-le p2, v5, :cond_57

    .line 178
    iget v4, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mTotalScale:F

    goto :goto_1d

    .line 180
    :cond_57
    :goto_57
    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 181
    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mRotateMatrix:Landroid/graphics/Matrix;

    const/high16 v6, 0x40c00000    # 6.0f

    int-to-float v7, v2

    mul-float/2addr v7, v6

    const v6, -0x3d49999a    # -91.2f

    add-float/2addr v7, v6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v8

    invoke-virtual {v5, v7, v6, v9}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 182
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    iget v6, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mAnimateMarkWidth:F

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    mul-float/2addr v5, v4

    .line 183
    iget-object v6, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mAnimateMarkRectF:Landroid/graphics/RectF;

    .line 184
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v8

    sub-float/2addr v7, v5

    .line 185
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v8

    sub-float/2addr v9, v5

    .line 186
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v8

    add-float/2addr v10, v5

    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v8

    add-float/2addr v11, v5

    .line 183
    invoke-virtual {v6, v7, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 188
    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 189
    iget-object v7, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mAnimateMarkRectF:Landroid/graphics/RectF;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    const v9, 0x4019999a    # 2.4f

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 190
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_e

    :cond_bc
    return-void
.end method

.method private drawMainMark(Landroid/graphics/Canvas;)V
    .registers 11

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    const/high16 v4, 0x41e40000    # 28.5f

    invoke-virtual {v0, v4, v1, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mMainMarkWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v0, 0x0

    :goto_24
    const/4 v1, 0x6

    if-gt v0, v1, :cond_55

    .line 107
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 108
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    const/high16 v5, 0x42700000    # 60.0f

    invoke-virtual {v1, v5, v3, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 109
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 110
    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mMainMarkRectF:Landroid/graphics/RectF;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const v6, 0x4019999a    # 2.4f

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 111
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_55
    return-void
.end method

.method private drawRecording(Landroid/graphics/Canvas;)V
    .registers 8

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mStartTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mPausedDuration:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mCurrentDuration:J

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    const v2, -0x3d49999a    # -91.2f

    invoke-virtual {v0, v2, v1, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 133
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mCurrentDuration:J

    const-wide/16 v2, 0x64

    div-long v4, v0, v2

    long-to-int v4, v4

    rem-int/lit8 v4, v4, 0x78

    .line 134
    rem-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 135
    invoke-direct {p0, p1, v4, v0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->drawAnimateSmallLine(Landroid/graphics/Canvas;IF)V

    .line 136
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mPaused:Z

    if-nez p1, :cond_3a

    .line 137
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_3a
    return-void
.end method

.method private drawSmallMarkLine(Landroid/graphics/Canvas;)V
    .registers 11

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    const/high16 v4, 0x41e40000    # 28.5f

    invoke-virtual {v0, v4, v1, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mAnimateMarkWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mAnimateMarkRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mAnimateMarkWidth:F

    div-float v3, v1, v2

    div-float/2addr v1, v2

    .line 120
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mAnimateMarkWidth:F

    div-float/2addr v5, v2

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mAnimateMarkWidth:F

    div-float/2addr v6, v2

    sub-float/2addr v5, v6

    .line 119
    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v0, 0x0

    :goto_40
    const/16 v1, 0x3c

    if-gt v0, v1, :cond_72

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 123
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-virtual {v1, v5, v3, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 124
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 125
    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mAnimateMarkRectF:Landroid/graphics/RectF;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const v6, 0x4019999a    # 2.4f

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 126
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_72
    return-void
.end method

.method private drawStopping(Landroid/graphics/Canvas;)V
    .registers 8

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mCurrentDuration:J

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    const v2, -0x3d49999a    # -91.2f

    invoke-virtual {v0, v2, v1, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 144
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mCurrentDuration:J

    iget-wide v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mCellStopDuration:J

    div-long v4, v0, v2

    long-to-int v4, v4

    rem-int/lit8 v4, v4, 0x78

    iget v5, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mStopCount:I

    add-int/2addr v4, v5

    .line 145
    rem-long/2addr v0, v2

    long-to-float v0, v0

    long-to-float v1, v2

    div-float/2addr v0, v1

    .line 146
    invoke-direct {p0, p1, v4, v0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->drawAnimateSmallLine(Landroid/graphics/Canvas;IF)V

    const/16 p1, 0x77

    if-ge v4, p1, :cond_3a

    .line 148
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void

    .line 150
    :cond_3a
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->reset()V

    .line 151
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->gc()V

    return-void
.end method

.method private init()V
    .registers 3

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->video_recording_progress_stroke_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mMainMarkWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    .line 61
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mAnimateMarkWidth:F

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    .line 63
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mRotateMatrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 92
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mStarted:Z

    if-eqz v0, :cond_8

    .line 93
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->drawRecording(Landroid/graphics/Canvas;)V

    goto :goto_13

    .line 94
    :cond_8
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mStopped:Z

    if-eqz v0, :cond_10

    .line 95
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->drawStopping(Landroid/graphics/Canvas;)V

    goto :goto_13

    .line 97
    :cond_10
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->drawSmallMarkLine(Landroid/graphics/Canvas;)V

    .line 99
    :goto_13
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->drawMainMark(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 8

    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 81
    new-instance p1, Landroid/graphics/RectF;

    iget p2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mMainMarkWidth:F

    const/high16 p3, 0x40000000    # 2.0f

    div-float p4, p2, p3

    div-float/2addr p2, p3

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mMainMarkWidth:F

    div-float/2addr v1, p3

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mMainMarkWidth:F

    div-float/2addr v2, p3

    sub-float/2addr v1, v2

    invoke-direct {p1, p4, p2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mMainMarkRectF:Landroid/graphics/RectF;

    .line 83
    new-instance p1, Landroid/graphics/RectF;

    iget p2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mAnimateMarkWidth:F

    div-float p4, p2, p3

    div-float/2addr p2, p3

    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mAnimateMarkWidth:F

    div-float/2addr v1, p3

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mAnimateMarkWidth:F

    div-float/2addr v2, p3

    sub-float/2addr v1, v2

    invoke-direct {p1, p4, p2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mAnimateMarkRectF:Landroid/graphics/RectF;

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p3

    iget p2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mAnimateMarkWidth:F

    div-float/2addr p2, p3

    sub-float/2addr p1, p2

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, p3

    iget p4, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mMainMarkWidth:F

    iget v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mAnimateMarkWidth:F

    sub-float/2addr p4, v0

    div-float/2addr v0, p3

    add-float/2addr p4, v0

    sub-float/2addr p2, p4

    div-float/2addr p2, p1

    .line 87
    iput p2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mTotalScale:F

    return-void
.end method

.method public pause(Z)V
    .registers 8

    .line 225
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mPaused:Z

    if-nez v0, :cond_7

    if-nez p1, :cond_7

    return-void

    .line 228
    :cond_7
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mPaused:Z

    if-eqz p1, :cond_12

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mPauseTime:J

    goto :goto_1e

    .line 232
    :cond_12
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mPausedDuration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mPauseTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mPausedDuration:J

    .line 234
    :goto_1e
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public reset()V
    .registers 3

    const/4 v0, 0x0

    .line 238
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mStarted:Z

    .line 239
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mPaused:Z

    .line 240
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mStopped:Z

    const-wide/16 v0, 0x0

    .line 241
    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mCurrentDuration:J

    .line 242
    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mPausedDuration:J

    .line 243
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public start()V
    .registers 3

    const/4 v0, 0x1

    .line 195
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mStarted:Z

    const-wide/16 v0, 0x0

    .line 196
    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mCurrentDuration:J

    .line 197
    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mPausedDuration:J

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mStartTime:J

    .line 199
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public stop()V
    .registers 8

    .line 203
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mStarted:Z

    if-eqz v0, :cond_53

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mStopped:Z

    if-eqz v0, :cond_9

    goto :goto_53

    :cond_9
    const/4 v0, 0x0

    .line 206
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mStarted:Z

    .line 207
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mPaused:Z

    if-eqz v1, :cond_1c

    .line 208
    iget-wide v1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mPausedDuration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mPauseTime:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mPausedDuration:J

    .line 210
    :cond_1c
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mPaused:Z

    const/4 v0, 0x1

    .line 211
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mStopped:Z

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mStartTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mPausedDuration:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    .line 213
    div-long v4, v0, v2

    long-to-int v4, v4

    rem-int/lit8 v4, v4, 0x78

    iput v4, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mStopCount:I

    .line 214
    rem-long/2addr v0, v2

    const-wide/16 v5, 0x258

    add-long/2addr v0, v5

    long-to-float v0, v0

    rsub-int/lit8 v1, v4, 0x78

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-long v0, v0

    .line 215
    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mCellStopDuration:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_46

    .line 217
    iput-wide v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mCellStopDuration:J

    .line 219
    :cond_46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mStartTime:J

    const-wide/16 v0, 0x0

    .line 220
    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mPauseTime:J

    .line 221
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_53
    :goto_53
    return-void
.end method

.method updateLowLight(Z)V
    .registers 3

    if-eqz p1, :cond_b

    .line 71
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    const v0, -0x7fb9b9ba

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_11

    .line 73
    :cond_b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    :goto_11
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
