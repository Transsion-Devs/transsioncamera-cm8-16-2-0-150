.class public Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;
.super Lcom/airbnb/lottie/LottieAnimationView;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/IRotatable;


# instance fields
.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field private mClockwise:Z

.field private mCurrentDegree:I

.field private mEnableAnimation:Z

.field private mStartDegree:I

.field private mTargetDegree:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;->mCurrentDegree:I

    .line 17
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;->mStartDegree:I

    .line 18
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;->mTargetDegree:I

    .line 20
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;->mClockwise:Z

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;->mEnableAnimation:Z

    const-wide/16 p1, 0x0

    .line 23
    iput-wide p1, p0, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;->mAnimationStartTime:J

    .line 24
    iput-wide p1, p0, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;->mAnimationEndTime:J

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .registers 1

    .line 121
    invoke-super {p0}, Lcom/airbnb/lottie/LottieAnimationView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 14

    .line 70
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_8

    goto/16 :goto_b2

    .line 76
    :cond_8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 77
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 78
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    if-eqz v2, :cond_b2

    if-nez v3, :cond_1c

    goto/16 :goto_b2

    .line 84
    :cond_1c
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;->mCurrentDegree:I

    iget v4, p0, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;->mTargetDegree:I

    if-eq v1, v4, :cond_50

    .line 85
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 86
    iget-wide v6, p0, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;->mAnimationEndTime:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_4c

    .line 87
    iget-wide v6, p0, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;->mAnimationStartTime:J

    sub-long/2addr v4, v6

    long-to-int v1, v4

    .line 88
    iget v4, p0, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;->mStartDegree:I

    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;->mClockwise:Z

    if-eqz v5, :cond_37

    goto :goto_38

    :cond_37
    neg-int v1, v1

    :goto_38
    mul-int/lit16 v1, v1, 0x10e

    div-int/lit16 v1, v1, 0x3e8

    add-int/2addr v4, v1

    if-ltz v4, :cond_42

    .line 90
    rem-int/lit16 v4, v4, 0x168

    goto :goto_46

    :cond_42
    rem-int/lit16 v4, v4, 0x168

    add-int/lit16 v4, v4, 0x168

    .line 91
    :goto_46
    iput v4, p0, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;->mCurrentDegree:I

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_50

    .line 94
    :cond_4c
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;->mTargetDegree:I

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;->mCurrentDegree:I

    .line 98
    :cond_50
    :goto_50
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v7, v1

    sub-int/2addr v7, v5

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v5, v4

    sub-int/2addr v5, v6

    .line 105
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v6

    .line 108
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v8

    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne v8, v9, :cond_8f

    if-lt v7, v2, :cond_7c

    if-ge v5, v3, :cond_8f

    :cond_7c
    int-to-float v8, v7

    int-to-float v9, v2

    div-float v9, v8, v9

    int-to-float v10, v5

    int-to-float v11, v3

    div-float v11, v10, v11

    .line 109
    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v8, v11

    div-float/2addr v10, v11

    .line 110
    invoke-virtual {p1, v9, v9, v8, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 112
    :cond_8f
    div-int/lit8 v7, v7, 0x2

    add-int/2addr v1, v7

    int-to-float v1, v1

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 113
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;->mCurrentDegree:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int p0, v2

    .line 114
    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    neg-int v1, v3

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, p0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 115
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 116
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_b2
    :goto_b2
    return-void
.end method

.method public onScreenStateChanged(I)V
    .registers 2

    .line 126
    invoke-super {p0, p1}, Landroid/view/View;->onScreenStateChanged(I)V

    if-nez p1, :cond_9

    const/4 p1, 0x0

    .line 128
    invoke-virtual {p0, p1}, Landroid/view/View;->setPressed(Z)V

    :cond_9
    return-void
.end method

.method public setOrientation(IZ)V
    .registers 5

    .line 40
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;->mEnableAnimation:Z

    if-ltz p1, :cond_7

    .line 42
    rem-int/lit16 p1, p1, 0x168

    goto :goto_b

    :cond_7
    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 p1, p1, 0x168

    .line 43
    :goto_b
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;->mTargetDegree:I

    if-ne p1, v0, :cond_10

    return-void

    .line 47
    :cond_10
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;->mTargetDegree:I

    if-eqz p2, :cond_42

    .line 49
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;->mCurrentDegree:I

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;->mStartDegree:I

    .line 50
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;->mAnimationStartTime:J

    .line 52
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;->mTargetDegree:I

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;->mCurrentDegree:I

    sub-int/2addr v0, v1

    if-ltz v0, :cond_26

    goto :goto_28

    :cond_26
    add-int/lit16 v0, v0, 0x168

    :goto_28
    const/16 v1, 0xb4

    if-le v0, v1, :cond_2e

    add-int/lit16 v0, v0, -0x168

    :cond_2e
    if-ltz v0, :cond_32

    const/4 v1, 0x1

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    .line 59
    :goto_33
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;->mClockwise:Z

    .line 60
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    div-int/lit16 v0, v0, 0x10e

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;->mAnimationEndTime:J

    goto :goto_44

    .line 62
    :cond_42
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;->mCurrentDegree:I

    .line 65
    :goto_44
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
