.class public Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller$ViscousFluidInterpolator;
    }
.end annotation


# static fields
.field private static DECELERATION_RATE:F = 0.0f

.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final END_TENSION:F = 1.0f

.field private static final FLING_MODE:I = 0x1

.field private static final INFLEXION:F = 0.35f

.field private static final NB_SAMPLES:I = 0x64

.field private static final P1:F = 0.175f

.field private static final P2:F = 0.35000002f

.field private static final SCROLL_MODE:I = 0x0

.field private static final SPLINE_POSITION:[F

.field private static final SPLINE_TIME:[F

.field private static final SPRING_DAMPING_RATIO:F = 1.1f

.field private static final SPRING_STIFFNESS:F = 50.0f

.field private static final START_TENSION:F = 0.5f


# instance fields
.field public final SPRING_PROPERTY:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat;"
        }
    .end annotation
.end field

.field private mCurrVelocity:F

.field private mCurrX:I

.field private mCurrY:I

.field private mDeceleration:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDistance:I

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mFinalX:I

.field private mFinalY:I

.field private mFinished:Z

.field private mFixedFlingValue:F

.field private mFlingFriction:F

.field private mFlywheel:Z

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMode:I

.field private mPhysicalCoeff:F

.field private final mPpi:F

.field public mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I

.field private mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .registers 20

    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    .line 69
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->DECELERATION_RATE:F

    const/16 v0, 0x65

    .line 77
    new-array v1, v0, [F

    sput-object v1, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->SPLINE_POSITION:[F

    .line 78
    new-array v0, v0, [F

    sput-object v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->SPLINE_TIME:[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    :goto_24
    const/16 v3, 0x64

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v2, v3, :cond_a9

    int-to-float v3, v2

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v5, v3, v5

    move v3, v4

    :goto_30
    sub-float v6, v3, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v0

    const/high16 v8, 0x40400000    # 3.0f

    mul-float v9, v6, v8

    sub-float v10, v4, v6

    mul-float/2addr v9, v10

    const v11, 0x3e333333    # 0.175f

    mul-float v12, v10, v11

    const v13, 0x3eb33334    # 0.35000002f

    mul-float v14, v6, v13

    add-float/2addr v12, v14

    mul-float/2addr v12, v9

    mul-float v14, v6, v6

    mul-float/2addr v14, v6

    add-float/2addr v12, v14

    sub-float v15, v12, v5

    .line 111
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move/from16 v16, v4

    move/from16 v17, v5

    float-to-double v4, v15

    const-wide v18, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v4, v4, v18

    if-gez v4, :cond_9d

    .line 115
    sget-object v3, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->SPLINE_POSITION:[F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v10, v4

    add-float/2addr v10, v6

    mul-float/2addr v9, v10

    add-float/2addr v9, v14

    aput v9, v3, v2

    move/from16 v3, v16

    :goto_6d
    sub-float v5, v3, v1

    div-float/2addr v5, v7

    add-float/2addr v5, v1

    mul-float v6, v5, v8

    sub-float v9, v16, v5

    mul-float/2addr v6, v9

    mul-float v10, v9, v4

    add-float/2addr v10, v5

    mul-float/2addr v10, v6

    mul-float v12, v5, v5

    mul-float/2addr v12, v5

    add-float/2addr v10, v12

    sub-float v14, v10, v17

    .line 123
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    float-to-double v14, v14

    cmpg-double v14, v14, v18

    if-gez v14, :cond_95

    .line 127
    sget-object v3, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->SPLINE_TIME:[F

    mul-float/2addr v9, v11

    mul-float/2addr v5, v13

    add-float/2addr v9, v5

    mul-float/2addr v6, v9

    add-float/2addr v6, v12

    aput v6, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_95
    cmpl-float v6, v10, v17

    if-lez v6, :cond_9b

    move v3, v5

    goto :goto_6d

    :cond_9b
    move v1, v5

    goto :goto_6d

    :cond_9d
    cmpl-float v4, v12, v17

    if-lez v4, :cond_a7

    move v3, v6

    :goto_a2
    move/from16 v4, v16

    move/from16 v5, v17

    goto :goto_30

    :cond_a7
    move v0, v6

    goto :goto_a2

    :cond_a9
    move/from16 v16, v4

    .line 129
    sget-object v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->SPLINE_POSITION:[F

    sget-object v1, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->SPLINE_TIME:[F

    aput v16, v1, v3

    aput v16, v0, v3

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 136
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .registers 5

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 145
    :goto_d
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .registers 6

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFlingFriction:F

    .line 86
    new-instance v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller$1;

    const-string v1, "scrollerSpring"

    invoke-direct {v0, p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller$1;-><init>(Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->SPRING_PROPERTY:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    const/4 v1, 0x1

    .line 155
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinished:Z

    if-nez p2, :cond_1f

    .line 157
    new-instance p2, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller$ViscousFluidInterpolator;

    invoke-direct {p2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller$ViscousFluidInterpolator;-><init>()V

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_21

    .line 159
    :cond_1f
    iput-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 161
    :goto_21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x43200000    # 160.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mPpi:F

    .line 162
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->computeDeceleration(F)F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mDeceleration:F

    .line 163
    iput-boolean p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFlywheel:Z

    const/high16 p1, 0x3e800000    # 0.25f

    .line 165
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->computeDeceleration(F)F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mPhysicalCoeff:F

    .line 167
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez p1, :cond_4f

    .line 168
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p1, p0, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    :cond_4f
    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;)I
    .registers 1

    .line 30
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mCurrY:I

    return p0
.end method

.method static synthetic access$002(Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;I)I
    .registers 2

    .line 30
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mCurrY:I

    return p1
.end method

.method private computeDeceleration(F)F
    .registers 3

    const v0, 0x43c10b3d

    .line 185
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mPpi:F

    mul-float/2addr p0, v0

    mul-float/2addr p0, p1

    return p0
.end method

.method private getSplineDeceleration(F)D
    .registers 3

    const v0, 0x3eb33333    # 0.35f

    .line 507
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFlingFriction:F

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mPhysicalCoeff:F

    mul-float/2addr v0, p0

    div-float/2addr p1, v0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private getSplineFlingDistance(F)D
    .registers 8

    .line 520
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->getSplineDeceleration(F)D

    move-result-wide v0

    .line 521
    sget p1, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->DECELERATION_RATE:F

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 522
    iget v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFlingFriction:F

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mPhysicalCoeff:F

    mul-float/2addr v4, p0

    float-to-double v4, v4

    float-to-double p0, p1

    div-double/2addr p0, v2

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    mul-double/2addr v4, p0

    return-wide v4
.end method

.method private getSplineFlingDuration(F)I
    .registers 6

    .line 511
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->getSplineDeceleration(F)D

    move-result-wide p0

    .line 512
    sget v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->DECELERATION_RATE:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    div-double/2addr p0, v0

    .line 513
    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method


# virtual methods
.method public abortAnimation()V
    .registers 2

    .line 533
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalX:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mCurrX:I

    .line 534
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalY:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mCurrY:I

    const/4 v0, 0x1

    .line 535
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinished:Z

    return-void
.end method

.method public computeScrollOffset()Z
    .registers 9

    .line 289
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinished:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 293
    :cond_6
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 295
    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mDuration:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_b4

    .line 296
    iget v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mMode:I

    if-eqz v3, :cond_91

    if-eq v3, v2, :cond_1b

    goto/16 :goto_be

    :cond_1b
    int-to-float v0, v0

    int-to-float v3, v1

    div-float/2addr v0, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v4, v0, v3

    float-to-int v4, v4

    const/16 v5, 0x64

    if-ge v4, v5, :cond_3a

    int-to-float v5, v4

    div-float/2addr v5, v3

    add-int/lit8 v6, v4, 0x1

    int-to-float v7, v6

    div-float/2addr v7, v3

    .line 310
    sget-object v3, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->SPLINE_POSITION:[F

    aget v4, v3, v4

    .line 311
    aget v3, v3, v6

    sub-float/2addr v3, v4

    sub-float/2addr v7, v5

    div-float/2addr v3, v7

    sub-float/2addr v0, v5

    mul-float/2addr v0, v3

    add-float/2addr v4, v0

    goto :goto_3d

    :cond_3a
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 316
    :goto_3d
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mDistance:I

    int-to-float v0, v0

    mul-float/2addr v3, v0

    int-to-float v0, v1

    div-float/2addr v3, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v0

    iput v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mCurrVelocity:F

    .line 318
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mStartX:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalX:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mCurrX:I

    .line 320
    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mMaxX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mCurrX:I

    .line 321
    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mMinX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mCurrX:I

    .line 323
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mStartY:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalY:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mCurrY:I

    .line 325
    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mMaxY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mCurrY:I

    .line 326
    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mMinY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mCurrY:I

    .line 328
    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mCurrX:I

    iget v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalX:I

    if-ne v1, v3, :cond_be

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalY:I

    if-ne v0, v1, :cond_be

    .line 329
    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinished:Z

    goto :goto_be

    .line 298
    :cond_91
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    int-to-float v0, v0

    iget v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mDurationReciprocal:F

    mul-float/2addr v0, v3

    invoke-interface {v1, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    .line 299
    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mStartX:I

    iget v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mDeltaX:F

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mCurrX:I

    .line 300
    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mStartY:I

    iget v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mDeltaY:F

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mCurrY:I

    goto :goto_be

    .line 336
    :cond_b4
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalX:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mCurrX:I

    .line 337
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalY:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mCurrY:I

    .line 338
    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinished:Z

    :cond_be
    :goto_be
    return v2
.end method

.method public extendDuration(I)V
    .registers 3

    .line 547
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->timePassed()I

    move-result v0

    add-int/2addr v0, p1

    .line 548
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mDuration:I

    const/high16 p1, 0x3f800000    # 1.0f

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 549
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mDurationReciprocal:F

    const/4 p1, 0x0

    .line 550
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinished:Z

    return-void
.end method

.method public fling(IIIIIIIII)V
    .registers 18

    .line 412
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFlywheel:Z

    if-eqz v0, :cond_41

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinished:Z

    if-nez v0, :cond_41

    .line 413
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->getCurrVelocity()F

    move-result v0

    .line 415
    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalX:I

    iget v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mStartX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 416
    iget v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalY:I

    iget v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mStartY:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    float-to-double v3, v1

    float-to-double v5, v2

    .line 417
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    div-float/2addr v1, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v0

    mul-float/2addr v2, v0

    int-to-float v0, p3

    .line 424
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_41

    int-to-float v3, p4

    .line 425
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_41

    add-float/2addr v0, v1

    float-to-int p3, v0

    add-float/2addr v3, v2

    float-to-int p4, v3

    :cond_41
    const/4 v0, 0x1

    .line 431
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mMode:I

    const/4 v0, 0x0

    .line 432
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinished:Z

    int-to-double v0, p3

    int-to-double v2, p4

    .line 434
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 436
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mVelocity:F

    .line 437
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->getSplineFlingDuration(F)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mDuration:I

    .line 438
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mStartTime:J

    .line 439
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mStartX:I

    .line 440
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mStartY:I

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v2, :cond_69

    move p3, v3

    goto :goto_6b

    :cond_69
    int-to-float p3, p3

    div-float/2addr p3, v0

    :goto_6b
    if-nez v2, :cond_6e

    goto :goto_71

    :cond_6e
    int-to-float p4, p4

    div-float v3, p4, v0

    .line 445
    :goto_71
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->getSplineFlingDistance(F)D

    move-result-wide v4

    .line 446
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result p4

    float-to-double v6, p4

    mul-double/2addr v6, v4

    double-to-int p4, v6

    iput p4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mDistance:I

    .line 448
    iput p5, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mMinX:I

    .line 449
    iput p6, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mMaxX:I

    .line 450
    iput p7, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mMinY:I

    move/from16 p4, p8

    .line 451
    iput p4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mMaxY:I

    float-to-double p3, p3

    mul-double/2addr p3, v4

    .line 453
    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    move-result-wide p3

    long-to-int p3, p3

    add-int/2addr p1, p3

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalX:I

    .line 455
    iget p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mMaxX:I

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalX:I

    .line 456
    iget p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mMinX:I

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalX:I

    cmpg-float p1, v3, v1

    if-gez p1, :cond_b7

    sub-int p1, p2, p9

    float-to-double p3, v3

    mul-double/2addr v4, p3

    .line 460
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide p3

    long-to-int p3, p3

    add-int/2addr p2, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalY:I

    goto :goto_c7

    :cond_b7
    add-int p1, p2, p9

    float-to-double p3, v3

    mul-double/2addr v4, p3

    .line 463
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide p3

    long-to-int p3, p3

    add-int/2addr p2, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalY:I

    .line 467
    :goto_c7
    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalY:I

    iget p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mMaxY:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalY:I

    .line 468
    iget p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mMinY:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalY:I

    .line 470
    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFixedFlingValue:F

    return-void
.end method

.method public final forceFinished(Z)V
    .registers 2

    .line 207
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinished:Z

    return-void
.end method

.method public getCurrVelocity()F
    .registers 3

    .line 244
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 245
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mCurrVelocity:F

    return p0

    :cond_8
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mVelocity:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mDeceleration:F

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->timePassed()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v1, p0

    const/high16 p0, 0x44fa0000    # 2000.0f

    div-float/2addr v1, p0

    sub-float/2addr v0, v1

    return v0
.end method

.method public final getCurrX()I
    .registers 1

    .line 225
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mCurrX:I

    return p0
.end method

.method public final getCurrY()I
    .registers 1

    .line 234
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mCurrY:I

    return p0
.end method

.method public final getDuration()I
    .registers 1

    .line 216
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mDuration:I

    return p0
.end method

.method public final getFinalX()I
    .registers 1

    .line 272
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalX:I

    return p0
.end method

.method public final getFinalY()I
    .registers 1

    .line 281
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalY:I

    return p0
.end method

.method public getFixedFlingValue()F
    .registers 5

    .line 491
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 p0, 0x0

    return p0

    .line 494
    :cond_7
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 495
    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mDuration:I

    if-ge v0, v1, :cond_29

    if-lez v1, :cond_29

    iget-boolean v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinished:Z

    if-eqz v2, :cond_1a

    goto :goto_29

    :cond_1a
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 499
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_25

    .line 500
    invoke-interface {v1, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    .line 502
    :cond_25
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFixedFlingValue:F

    mul-float/2addr v0, p0

    return v0

    .line 496
    :cond_29
    :goto_29
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFixedFlingValue:F

    return p0
.end method

.method public final getStartX()I
    .registers 1

    .line 254
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mStartX:I

    return p0
.end method

.method public final getStartY()I
    .registers 1

    .line 263
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mStartY:I

    return p0
.end method

.method public final isFinished()Z
    .registers 1

    .line 198
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinished:Z

    return p0
.end method

.method public isScrollingInDirection(FF)Z
    .registers 5

    .line 592
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinished:Z

    if-nez v0, :cond_2a

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalX:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mStartX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_2a

    .line 593
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p1

    iget p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalY:I

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mStartY:I

    sub-int/2addr p2, p0

    int-to-float p0, p2

    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result p0

    cmpl-float p0, p1, p0

    if-nez p0, :cond_2a

    const/4 p0, 0x1

    return p0

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method public setFinalX(I)V
    .registers 3

    .line 570
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalX:I

    .line 571
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mStartX:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mDeltaX:F

    const/4 p1, 0x0

    .line 572
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinished:Z

    return-void
.end method

.method public setFinalY(I)V
    .registers 3

    .line 583
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalY:I

    .line 584
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mStartY:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mDeltaY:F

    const/4 p1, 0x0

    .line 585
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinished:Z

    return-void
.end method

.method public setFixedFlingValue(F)V
    .registers 2

    .line 487
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFixedFlingValue:F

    return-void
.end method

.method public final setFriction(F)V
    .registers 3

    .line 180
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mDeceleration:F

    .line 181
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFlingFriction:F

    return-void
.end method

.method public startScroll(IIII)V
    .registers 11

    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 358
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->startScroll(IIIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .registers 8

    const/4 v0, 0x0

    .line 376
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mMode:I

    .line 377
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinished:Z

    .line 378
    iput p5, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mDuration:I

    .line 379
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mStartTime:J

    .line 380
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mStartX:I

    .line 381
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mStartY:I

    add-int/2addr p1, p3

    .line 382
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalX:I

    add-int/2addr p2, p4

    .line 383
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalY:I

    int-to-float p1, p3

    .line 384
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mDeltaX:F

    int-to-float p1, p4

    .line 385
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mDeltaY:F

    .line 386
    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mDuration:I

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    div-float/2addr p2, p1

    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mDurationReciprocal:F

    const/4 p1, 0x0

    .line 387
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFixedFlingValue:F

    return-void
.end method

.method public startSpring(FF)V
    .registers 5

    .line 474
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 475
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 478
    :cond_f
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1, p2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const/high16 p2, 0x42480000    # 50.0f

    .line 479
    invoke-virtual {v1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    const v1, 0x3f8ccccd    # 1.1f

    .line 480
    invoke-virtual {p2, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    .line 478
    invoke-virtual {v0, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 481
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mVelocity:F

    const/high16 v1, 0x457a0000    # 4000.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 482
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 483
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method public timePassed()I
    .registers 5

    .line 559
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method
