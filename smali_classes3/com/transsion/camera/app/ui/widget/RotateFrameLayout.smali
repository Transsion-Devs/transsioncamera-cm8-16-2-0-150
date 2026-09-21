.class public Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/IRotatable;


# static fields
.field private static final ANIMATION_SPEED:I = 0x10e


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
    .registers 3

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->mCurrentDegree:I

    .line 14
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->mStartDegree:I

    .line 15
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->mTargetDegree:I

    const/4 p2, 0x1

    .line 16
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->mEnableAnimation:Z

    .line 18
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->mClockwise:Z

    const-wide/16 p1, 0x0

    .line 20
    iput-wide p1, p0, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->mAnimationStartTime:J

    .line 21
    iput-wide p1, p0, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->mAnimationEndTime:J

    return-void
.end method

.method private setDegree(I)V
    .registers 6

    if-ltz p1, :cond_5

    .line 29
    rem-int/lit16 p1, p1, 0x168

    goto :goto_9

    :cond_5
    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 p1, p1, 0x168

    .line 31
    :goto_9
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->mTargetDegree:I

    if-ne p1, v0, :cond_e

    return-void

    .line 34
    :cond_e
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->mTargetDegree:I

    .line 36
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->mEnableAnimation:Z

    if-eqz v0, :cond_42

    .line 37
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->mCurrentDegree:I

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->mStartDegree:I

    .line 38
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->mAnimationStartTime:J

    .line 40
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->mTargetDegree:I

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->mCurrentDegree:I

    sub-int/2addr p1, v2

    if-ltz p1, :cond_26

    goto :goto_28

    :cond_26
    add-int/lit16 p1, p1, 0x168

    :goto_28
    const/16 v2, 0xb4

    if-le p1, v2, :cond_2e

    add-int/lit16 p1, p1, -0x168

    :cond_2e
    if-ltz p1, :cond_32

    const/4 v2, 0x1

    goto :goto_33

    :cond_32
    const/4 v2, 0x0

    .line 47
    :goto_33
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->mClockwise:Z

    .line 49
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    div-int/lit16 p1, p1, 0x10e

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->mAnimationEndTime:J

    goto :goto_44

    .line 51
    :cond_42
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->mCurrentDegree:I

    .line 54
    :goto_44
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 59
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->mCurrentDegree:I

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->mTargetDegree:I

    if-eq v0, v1, :cond_39

    .line 60
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 61
    iget-wide v2, p0, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->mAnimationEndTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_34

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->mEnableAnimation:Z

    if-eqz v2, :cond_34

    .line 62
    iget-wide v2, p0, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->mAnimationStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 63
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->mStartDegree:I

    .line 64
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->mClockwise:Z

    if-eqz v2, :cond_1f

    goto :goto_20

    :cond_1f
    neg-int v0, v0

    :goto_20
    mul-int/lit16 v0, v0, 0x10e

    div-int/lit16 v0, v0, 0x3e8

    add-int/2addr v1, v0

    if-ltz v1, :cond_2a

    .line 65
    rem-int/lit16 v1, v1, 0x168

    goto :goto_2e

    :cond_2a
    rem-int/lit16 v1, v1, 0x168

    add-int/lit16 v1, v1, 0x168

    .line 66
    :goto_2e
    iput v1, p0, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->mCurrentDegree:I

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_48

    .line 69
    :cond_34
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->mTargetDegree:I

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->mCurrentDegree:I

    goto :goto_48

    .line 72
    :cond_39
    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result v0

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->mCurrentDegree:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_48

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    .line 81
    :cond_48
    :goto_48
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 84
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v2

    .line 85
    div-int/lit8 v3, v0, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 86
    iget v3, p0, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->mCurrentDegree:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v0, v0

    .line 87
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 88
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 89
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public setOrientation(IZ)V
    .registers 3

    .line 94
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->mEnableAnimation:Z

    .line 95
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->setDegree(I)V

    return-void
.end method
