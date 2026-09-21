.class public Lcom/transsion/camera/app/ui/widget/RotateStrokeTextView;
.super Lcom/transsion/camera/app/ui/widget/StrokeTextView;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/IRotatable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field private mClockwise:Z

.field private mCurrentDegree:I

.field private mStartDegree:I

.field private mTargetDegree:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/StrokeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateStrokeTextView;->mCurrentDegree:I

    .line 17
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateStrokeTextView;->mStartDegree:I

    .line 18
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateStrokeTextView;->mTargetDegree:I

    .line 20
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/RotateStrokeTextView;->mClockwise:Z

    const-wide/16 p1, 0x0

    .line 22
    iput-wide p1, p0, Lcom/transsion/camera/app/ui/widget/RotateStrokeTextView;->mAnimationStartTime:J

    .line 23
    iput-wide p1, p0, Lcom/transsion/camera/app/ui/widget/RotateStrokeTextView;->mAnimationEndTime:J

    const/16 p1, 0x11

    .line 27
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 63
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 66
    :cond_7
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/RotateStrokeTextView;->mCurrentDegree:I

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/RotateStrokeTextView;->mTargetDegree:I

    if-eq v0, v1, :cond_3b

    .line 67
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 68
    iget-wide v2, p0, Lcom/transsion/camera/app/ui/widget/RotateStrokeTextView;->mAnimationEndTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_37

    .line 69
    iget-wide v2, p0, Lcom/transsion/camera/app/ui/widget/RotateStrokeTextView;->mAnimationStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 70
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/RotateStrokeTextView;->mStartDegree:I

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/RotateStrokeTextView;->mClockwise:Z

    if-eqz v2, :cond_22

    goto :goto_23

    :cond_22
    neg-int v0, v0

    :goto_23
    mul-int/lit16 v0, v0, 0x10e

    div-int/lit16 v0, v0, 0x3e8

    add-int/2addr v1, v0

    if-ltz v1, :cond_2d

    .line 72
    rem-int/lit16 v1, v1, 0x168

    goto :goto_31

    :cond_2d
    rem-int/lit16 v1, v1, 0x168

    add-int/lit16 v1, v1, 0x168

    .line 73
    :goto_31
    iput v1, p0, Lcom/transsion/camera/app/ui/widget/RotateStrokeTextView;->mCurrentDegree:I

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_3b

    .line 76
    :cond_37
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/RotateStrokeTextView;->mTargetDegree:I

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/RotateStrokeTextView;->mCurrentDegree:I

    .line 80
    :cond_3b
    :goto_3b
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v4, v0

    sub-int/2addr v4, v2

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    sub-int/2addr v2, v3

    .line 87
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v3

    .line 89
    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    int-to-float v0, v0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 90
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/RotateStrokeTextView;->mCurrentDegree:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 92
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/widget/StrokeTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 93
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 98
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    .line 102
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 103
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setOrientation(IZ)V
    .registers 5

    if-ltz p1, :cond_5

    .line 34
    rem-int/lit16 p1, p1, 0x168

    goto :goto_9

    :cond_5
    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 p1, p1, 0x168

    .line 36
    :goto_9
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/RotateStrokeTextView;->mTargetDegree:I

    if-ne p1, v0, :cond_e

    return-void

    .line 40
    :cond_e
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateStrokeTextView;->mTargetDegree:I

    if-eqz p2, :cond_40

    .line 42
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/RotateStrokeTextView;->mCurrentDegree:I

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateStrokeTextView;->mStartDegree:I

    .line 43
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/camera/app/ui/widget/RotateStrokeTextView;->mAnimationStartTime:J

    .line 45
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/RotateStrokeTextView;->mTargetDegree:I

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/RotateStrokeTextView;->mCurrentDegree:I

    sub-int/2addr v0, v1

    if-ltz v0, :cond_24

    goto :goto_26

    :cond_24
    add-int/lit16 v0, v0, 0x168

    :goto_26
    const/16 v1, 0xb4

    if-le v0, v1, :cond_2c

    add-int/lit16 v0, v0, -0x168

    :cond_2c
    if-ltz v0, :cond_30

    const/4 v1, 0x1

    goto :goto_31

    :cond_30
    const/4 v1, 0x0

    .line 53
    :goto_31
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/RotateStrokeTextView;->mClockwise:Z

    .line 54
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    div-int/lit16 v0, v0, 0x10e

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/transsion/camera/app/ui/widget/RotateStrokeTextView;->mAnimationEndTime:J

    goto :goto_42

    .line 56
    :cond_40
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateStrokeTextView;->mCurrentDegree:I

    .line 58
    :goto_42
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
