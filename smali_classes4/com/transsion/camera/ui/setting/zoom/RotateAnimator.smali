.class public Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field private mClockwise:Z

.field private mCurrentOrientation:I

.field private final mRotateObject:Landroid/view/View;

.field private mStartOrientation:I

.field private mTargetOrientation:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;->mCurrentOrientation:I

    .line 13
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;->mStartOrientation:I

    .line 14
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;->mTargetOrientation:I

    .line 17
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;->mRotateObject:Landroid/view/View;

    return-void
.end method

.method private updateRotateDegree()I
    .registers 5

    .line 47
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;->mCurrentOrientation:I

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;->mTargetOrientation:I

    if-eq v0, v1, :cond_33

    .line 48
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 49
    iget-wide v2, p0, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;->mAnimationEndTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_2f

    .line 50
    iget-wide v2, p0, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;->mAnimationStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 51
    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;->mStartOrientation:I

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;->mClockwise:Z

    if-eqz v2, :cond_1b

    goto :goto_1c

    :cond_1b
    neg-int v0, v0

    :goto_1c
    mul-int/lit16 v0, v0, 0x10e

    div-int/lit16 v0, v0, 0x3e8

    add-int/2addr v1, v0

    .line 52
    rem-int/lit16 v0, v1, 0x168

    if-gez v1, :cond_27

    add-int/lit16 v0, v0, 0x168

    .line 56
    :cond_27
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;->mCurrentOrientation:I

    .line 57
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;->mRotateObject:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_33

    .line 59
    :cond_2f
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;->mTargetOrientation:I

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;->mCurrentOrientation:I

    .line 62
    :cond_33
    :goto_33
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;->mCurrentOrientation:I

    rsub-int p0, p0, 0x168

    return p0
.end method


# virtual methods
.method public rotate(Landroid/graphics/Canvas;FF)F
    .registers 4

    .line 41
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;->updateRotateDegree()I

    move-result p0

    int-to-float p0, p0

    .line 42
    invoke-virtual {p1, p0, p2, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    return p0
.end method

.method public setOrientation(I)V
    .registers 6

    .line 21
    rem-int/lit16 v0, p1, 0x168

    if-gez p1, :cond_6

    add-int/lit16 v0, v0, 0x168

    .line 26
    :cond_6
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;->mTargetOrientation:I

    if-eq v0, p1, :cond_3e

    .line 27
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;->mTargetOrientation:I

    .line 28
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;->mCurrentOrientation:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;->mStartOrientation:I

    .line 29
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 30
    iput-wide v0, p0, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;->mAnimationStartTime:J

    .line 31
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;->mTargetOrientation:I

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;->mCurrentOrientation:I

    sub-int/2addr p1, v2

    if-ltz p1, :cond_1e

    goto :goto_20

    :cond_1e
    add-int/lit16 p1, p1, 0x168

    :goto_20
    const/16 v2, 0xb4

    if-le p1, v2, :cond_26

    add-int/lit16 p1, p1, -0x168

    :cond_26
    if-ltz p1, :cond_2a

    const/4 v2, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v2, 0x0

    .line 34
    :goto_2b
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;->mClockwise:Z

    .line 35
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    div-int/lit16 p1, p1, 0x10e

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;->mAnimationEndTime:J

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;->mRotateObject:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3e
    return-void
.end method
