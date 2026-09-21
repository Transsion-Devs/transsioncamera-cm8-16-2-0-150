.class public Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDistance:F

.field private mPullDistance:F

.field private mStartTime:J

.field private mState:I

.field private mStretchVector:F

.field private mVelocity:F

.field private mWidth:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mState:I

    return-void
.end method

.method private dampStretchVector(F)F
    .registers 7

    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_8

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_8
    const/high16 p0, -0x40800000    # -1.0f

    .line 174
    :goto_a
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3da3d70a    # 0.08f

    mul-float/2addr v0, p1

    neg-float p1, p1

    float-to-double v1, p1

    const-wide v3, 0x3f9bd5d00e2e845dL    # 0.02718281828459045

    mul-double/2addr v1, v3

    .line 177
    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v1

    const-wide v1, 0x3fb99999a0000000L    # 0.10000000149011612

    mul-double/2addr v3, v1

    float-to-double v0, v0

    add-double/2addr v0, v3

    double-to-float p1, v0

    mul-float/2addr p0, p1

    return p0
.end method

.method private isAtEquilibrium()Z
    .registers 7

    .line 162
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mDistance:F

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mWidth:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    .line 163
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mVelocity:F

    float-to-double v2, p0

    const-wide/16 v4, 0x0

    cmpg-double p0, v0, v4

    if-ltz p0, :cond_28

    .line 168
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double p0, v2, v4

    if-gez p0, :cond_26

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double p0, v0, v2

    if-gez p0, :cond_26

    goto :goto_28

    :cond_26
    const/4 p0, 0x0

    return p0

    :cond_28
    :goto_28
    const/4 p0, 0x1

    return p0
.end method

.method private updateSpring()V
    .registers 18

    move-object/from16 v0, p0

    .line 118
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 119
    iget-wide v3, v0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mStartTime:J

    sub-long v3, v1, v3

    long-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    const v4, 0x3a83126f    # 0.001f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_17

    goto/16 :goto_b8

    .line 124
    :cond_17
    iput-wide v1, v0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mStartTime:J

    .line 126
    iget v1, v0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mVelocity:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x42b40000    # 90.0f

    cmpg-float v1, v1, v2

    const/4 v4, 0x0

    if-gtz v1, :cond_6d

    iget v1, v0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mDistance:F

    iget v5, v0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mWidth:F

    mul-float/2addr v1, v5

    .line 127
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v5, v1

    const-wide/high16 v7, 0x4010000000000000L    # 4.0

    cmpg-double v1, v5, v7

    if-gez v1, :cond_6d

    iget v1, v0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mVelocity:F

    .line 128
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    iget v5, v0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mDistance:F

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    neg-float v5, v5

    cmpl-float v1, v1, v5

    if-nez v1, :cond_6d

    .line 131
    iget v1, v0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mVelocity:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mVelocity:F

    .line 133
    iget v2, v0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mDistance:F

    mul-float/2addr v1, v3

    iget v3, v0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mWidth:F

    div-float/2addr v1, v3

    add-float/2addr v2, v1

    .line 134
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v1

    iget v3, v0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mDistance:F

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_6a

    .line 136
    iput v4, v0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mDistance:F

    .line 137
    iput v4, v0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mVelocity:F

    return-void

    .line 139
    :cond_6a
    iput v2, v0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mDistance:F

    return-void

    .line 144
    :cond_6d
    iget v1, v0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mDistance:F

    iget v2, v0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mWidth:F

    mul-float v5, v1, v2

    float-to-double v5, v5

    .line 145
    iget v7, v0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mVelocity:F

    float-to-double v7, v7

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    float-to-double v11, v1

    mul-double/2addr v11, v9

    float-to-double v1, v2

    mul-double/2addr v11, v1

    add-double/2addr v7, v11

    float-to-double v1, v3

    mul-double v9, v7, v1

    add-double/2addr v5, v9

    const-wide/high16 v9, -0x3fdc000000000000L    # -10.0

    mul-double/2addr v1, v9

    const-wide v11, 0x4005bf0a8b145769L    # Math.E

    .line 146
    invoke-static {v11, v12, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    mul-double/2addr v13, v5

    .line 147
    invoke-static {v11, v12, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    mul-double/2addr v5, v15

    mul-double/2addr v5, v9

    .line 148
    invoke-static {v11, v12, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double/2addr v7, v1

    add-double/2addr v5, v7

    double-to-float v1, v13

    .line 149
    iget v2, v0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mWidth:F

    div-float/2addr v1, v2

    iput v1, v0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mDistance:F

    double-to-float v2, v5

    .line 150
    iput v2, v0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mVelocity:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_ae

    .line 152
    iput v2, v0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mDistance:F

    .line 153
    iput v4, v0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mVelocity:F

    .line 155
    :cond_ae
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->isAtEquilibrium()Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 156
    iput v4, v0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mDistance:F

    .line 157
    iput v4, v0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mVelocity:F

    :cond_b8
    :goto_b8
    return-void
.end method


# virtual methods
.method public computerStretchOffset()Z
    .registers 6

    .line 96
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 97
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->updateSpring()V

    .line 100
    :cond_8
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mDistance:F

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_23

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 101
    invoke-static {v0, v3, v4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->dampStretchVector(F)F

    move-result v0

    .line 102
    invoke-static {v0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 103
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mStretchVector:F

    .line 108
    :cond_23
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mState:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_3b

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mDistance:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3b

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mVelocity:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3b

    .line 109
    iput v4, p0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mState:I

    .line 111
    iput v2, p0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mStretchVector:F

    move v0, v3

    goto :goto_3c

    :cond_3b
    move v0, v4

    .line 114
    :goto_3c
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mState:I

    if-nez p0, :cond_44

    if-eqz v0, :cond_43

    goto :goto_44

    :cond_43
    return v4

    :cond_44
    :goto_44
    return v3
.end method

.method public finish()V
    .registers 2

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mState:I

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mDistance:F

    .line 45
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mVelocity:F

    return-void
.end method

.method public getDistance()F
    .registers 1

    .line 49
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mDistance:F

    return p0
.end method

.method public getStretchFactor()F
    .registers 1

    .line 92
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mStretchVector:F

    return p0
.end method

.method public isFinished()Z
    .registers 1

    .line 39
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mState:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public onPull(F)V
    .registers 4

    .line 64
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    .line 65
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mDistance:F

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mPullDistance:F

    .line 67
    :cond_9
    iput v1, p0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mState:I

    .line 68
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mStartTime:J

    .line 70
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mPullDistance:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mPullDistance:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 71
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mPullDistance:F

    const/4 v0, 0x0

    .line 72
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mDistance:F

    .line 73
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mVelocity:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_2e

    const/4 p1, 0x0

    .line 76
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mState:I

    :cond_2e
    return-void
.end method

.method public onPullDistance(F)F
    .registers 5

    .line 53
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mDistance:F

    add-float/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 54
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mDistance:F

    sub-float/2addr p1, v1

    cmpl-float v2, p1, v0

    if-nez v2, :cond_14

    cmpl-float v1, v1, v0

    if-nez v1, :cond_14

    return v0

    .line 59
    :cond_14
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->onPull(F)V

    return p1
.end method

.method public onRelease()V
    .registers 4

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mPullDistance:F

    .line 83
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_c

    const/4 v2, 0x3

    if-eq v1, v2, :cond_c

    return-void

    :cond_c
    const/4 v1, 0x2

    .line 86
    iput v1, p0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mState:I

    .line 87
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mStartTime:J

    .line 88
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mVelocity:F

    return-void
.end method

.method public setWidth(I)V
    .registers 2

    int-to-float p1, p1

    .line 35
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->mWidth:F

    return-void
.end method
