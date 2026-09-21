.class Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/view/swipmenu/OverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SplineOverScroller"
.end annotation


# static fields
.field private static final BALLISTIC:I = 0x2

.field private static final CUBIC:I = 0x1

.field private static DECELERATION_RATE:F = 0.0f

.field private static final END_TENSION:F = 1.0f

.field private static final GRAVITY:F = 2000.0f

.field private static final INFLEXION:F = 0.35f

.field private static final MIN_VELOCITY:I = 0x5dc

.field private static final NB_SAMPLES:I = 0x64

.field private static final P1:F = 0.175f

.field private static final P2:F = 0.35000002f

.field private static final SPLINE:I = 0x0

.field private static final SPLINE_POSITION:[F

.field private static final SPLINE_TIME:[F

.field private static final SPRING:I = 0x3

.field private static final SPRING_DAMPING_RATIO:F = 1.0f

.field private static final SPRING_STIFFNESS:F = 200.0f

.field private static final START_TENSION:F = 0.5f


# instance fields
.field private final SPRING_PROPERTY:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrVelocity:F

.field private mCurrentPosition:I

.field private mDeceleration:F

.field private mDensity:F

.field private mDuration:I

.field private mFinal:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mIsFinalPointRead:Z

.field private mOnAnimationUpdateListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

.field private mOver:I

.field private mPhysicalCoeff:F

.field private mSplineDistance:I

.field private mSplineDuration:I

.field private mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mStart:I

.field private mStartTime:J

.field private mState:I

.field private mVelocity:I


# direct methods
.method static constructor <clinit>()V
    .registers 20

    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    .line 448
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    const/16 v0, 0x65

    .line 456
    new-array v1, v0, [F

    sput-object v1, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    .line 457
    new-array v0, v0, [F

    sput-object v0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

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

    .line 500
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move/from16 v16, v4

    move/from16 v17, v5

    float-to-double v4, v15

    const-wide v18, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v4, v4, v18

    if-gez v4, :cond_9d

    .line 504
    sget-object v3, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

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

    .line 512
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    float-to-double v14, v14

    cmpg-double v14, v14, v18

    if-gez v14, :cond_95

    .line 516
    sget-object v3, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

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

    .line 518
    sget-object v0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    sget-object v1, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aput v16, v1, v3

    aput v16, v0, v3

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mFlingFriction:F

    const/4 v0, 0x0

    .line 435
    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mState:I

    const/4 v0, 0x1

    .line 440
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mIsFinalPointRead:Z

    const/high16 v1, 0x40400000    # 3.0f

    .line 464
    iput v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mDensity:F

    .line 473
    new-instance v1, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller$1;

    const-string v2, "splineOverScrollerSpring"

    invoke-direct {v1, p0, v2}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller$1;-><init>(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->SPRING_PROPERTY:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 526
    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mContext:Landroid/content/Context;

    .line 527
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mFinished:Z

    .line 528
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mDensity:F

    .line 529
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x43200000    # 160.0f

    mul-float/2addr p1, v0

    const v0, 0x43c10b3d

    mul-float/2addr p1, v0

    const v0, 0x3f570a3d    # 0.84f

    mul-float/2addr p1, v0

    .line 530
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    .line 535
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p1, p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 537
    new-instance v0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller$2;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller$2;-><init>(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;)V

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 545
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller$3;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller$3;-><init>(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;)V

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;)Z
    .registers 1

    .line 394
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mFinished:Z

    return p0
.end method

.method static synthetic access$002(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;Z)Z
    .registers 2

    .line 394
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mFinished:Z

    return p1
.end method

.method static synthetic access$102(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;Z)Z
    .registers 2

    .line 394
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mIsFinalPointRead:Z

    return p1
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;)I
    .registers 1

    .line 394
    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mCurrentPosition:I

    return p0
.end method

.method static synthetic access$202(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;I)I
    .registers 2

    .line 394
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$300(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;)F
    .registers 1

    .line 394
    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mCurrVelocity:F

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;)I
    .registers 1

    .line 394
    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mStart:I

    return p0
.end method

.method static synthetic access$500(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;)I
    .registers 1

    .line 394
    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mFinal:I

    return p0
.end method

.method static synthetic access$600(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;)I
    .registers 1

    .line 394
    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mDuration:I

    return p0
.end method

.method static synthetic access$700(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;)J
    .registers 3

    .line 394
    iget-wide v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;)I
    .registers 1

    .line 394
    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mState:I

    return p0
.end method

.method static synthetic access$802(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;I)I
    .registers 2

    .line 394
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mState:I

    return p1
.end method

.method static synthetic access$900(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;)Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;
    .registers 1

    .line 394
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mOnAnimationUpdateListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    return-object p0
.end method

.method private adjustDuration(III)V
    .registers 7

    sub-int/2addr p2, p1

    sub-int/2addr p3, p1

    int-to-float p1, p3

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 577
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p3, p1, p2

    float-to-int p3, p3

    const/16 v0, 0x64

    if-ge p3, v0, :cond_2b

    int-to-float v0, p3

    div-float/2addr v0, p2

    add-int/lit8 v1, p3, 0x1

    int-to-float v2, v1

    div-float/2addr v2, p2

    .line 582
    sget-object p2, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aget p3, p2, p3

    .line 583
    aget p2, p2, v1

    sub-float/2addr p1, v0

    sub-float/2addr v2, v0

    div-float/2addr p1, v2

    sub-float/2addr p2, p3

    mul-float/2addr p1, p2

    add-float/2addr p3, p1

    .line 585
    iget p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mDuration:I

    int-to-float p1, p1

    mul-float/2addr p1, p3

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mDuration:I

    :cond_2b
    return-void
.end method

.method private fitOnBounceCurve(III)V
    .registers 9

    neg-int v0, p3

    int-to-float v0, v0

    .line 743
    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float/2addr v0, v1

    int-to-float p3, p3

    mul-float/2addr p3, p3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p3, v2

    .line 746
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr p3, v1

    sub-int p1, p2, p1

    .line 747
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p3, p1

    float-to-double v1, p3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double/2addr v1, v3

    .line 748
    iget p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 749
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v3, p1

    div-double/2addr v1, v3

    .line 748
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p1, v1

    .line 750
    iget-wide v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mStartTime:J

    const/high16 p3, 0x447a0000    # 1000.0f

    sub-float v0, p1, v0

    mul-float/2addr v0, p3

    float-to-int p3, v0

    int-to-long v3, p3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mStartTime:J

    .line 751
    iput p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mStart:I

    iput p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 752
    iget p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mDeceleration:F

    neg-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mVelocity:I

    return-void
.end method

.method private static getDeceleration(I)F
    .registers 1

    if-lez p0, :cond_5

    const/high16 p0, -0x3b060000    # -2000.0f

    return p0

    :cond_5
    const/high16 p0, 0x44fa0000    # 2000.0f

    return p0
.end method

.method private getSplineDeceleration(I)D
    .registers 3

    .line 725
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3eb33333    # 0.35f

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v0, p0

    div-float/2addr p1, v0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private getSplineFlingDistance(I)D
    .registers 8

    .line 729
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v0

    .line 730
    sget p1, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 731
    iget v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

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

.method private getSplineFlingDuration(I)I
    .registers 6

    .line 736
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide p0

    .line 737
    sget v0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    div-double/2addr p0, v0

    .line 738
    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method private onEdgeReached()V
    .registers 4

    const/4 v0, 0x3

    .line 798
    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mState:I

    .line 799
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mStart:I

    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v1, v1

    const v2, 0x3f59999a    # 0.85f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {p0, v0, v0, v1}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->startSpringback(III)V

    return-void
.end method

.method private startAfterEdge(IIII)V
    .registers 14

    const/4 v0, 0x1

    if-le p1, p2, :cond_27

    if-ge p1, p3, :cond_27

    .line 764
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "finish: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OverScroller"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mFinished:Z

    return-void

    :cond_27
    if-le p1, p3, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    if-eqz v0, :cond_2f

    move v1, p3

    goto :goto_30

    :cond_2f
    move v1, p2

    :goto_30
    sub-int v2, p1, v1

    mul-int v3, v2, p4

    if-ltz v3, :cond_3a

    .line 774
    invoke-direct {p0, p1, v1, p4}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->startBounceAfterEdge(III)V

    return-void

    .line 776
    :cond_3a
    invoke-direct {p0, p4}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v3

    .line 777
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v5, v2

    cmpl-double v2, v3, v5

    if-lez v2, :cond_5a

    if-eqz v0, :cond_4b

    move v6, p2

    goto :goto_4c

    :cond_4b
    move v6, p1

    :goto_4c
    if-eqz v0, :cond_50

    move v7, p1

    goto :goto_51

    :cond_50
    move v7, p3

    .line 778
    :goto_51
    iget v8, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mOver:I

    move-object v3, p0

    move v4, p1

    move v5, p4

    invoke-virtual/range {v3 .. v8}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->fling(IIIII)V

    return-void

    :cond_5a
    move-object v3, p0

    move v4, p1

    move v5, p4

    .line 780
    invoke-direct {v3, v4, v1, v5}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->startSpringback(III)V

    return-void
.end method

.method private startBounceAfterEdge(III)V
    .registers 4

    if-nez p3, :cond_4

    sub-int/2addr p1, p2

    goto :goto_5

    :cond_4
    move p1, p3

    .line 756
    :goto_5
    invoke-static {p1}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 758
    invoke-direct {p0, p2, p2, p3}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->startSpringback(III)V

    return-void
.end method

.method private startSpringback(III)V
    .registers 5

    const/4 v0, 0x0

    .line 660
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mFinished:Z

    const/4 v0, 0x3

    .line 661
    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mState:I

    .line 662
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 663
    iput p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mFinal:I

    .line 664
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 665
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 668
    :cond_1b
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p2, Landroidx/dynamicanimation/animation/SpringForce;

    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mFinal:I

    int-to-float v0, v0

    invoke-direct {p2, v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const/high16 v0, 0x43480000    # 200.0f

    .line 669
    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 670
    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    .line 668
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 671
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    int-to-float p2, p3

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 672
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method


# virtual methods
.method continueWhenFinished()Z
    .registers 8

    .line 804
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    if-eq v0, v1, :cond_1c

    const/4 v3, 0x2

    if-eq v0, v3, :cond_c

    goto :goto_3f

    .line 821
    :cond_c
    iget-wide v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mStartTime:J

    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mStartTime:J

    .line 822
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mFinal:I

    iget v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mStart:I

    invoke-direct {p0, v0, v3, v2}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_3f

    :cond_1c
    return v2

    .line 807
    :cond_1d
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mDuration:I

    iget v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mSplineDuration:I

    if-ge v0, v3, :cond_43

    .line 809
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mStart:I

    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 811
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mVelocity:I

    .line 812
    invoke-static {v0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 813
    iget-wide v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mStartTime:J

    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mStartTime:J

    .line 814
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->onEdgeReached()V

    .line 828
    :goto_3f
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->update()Z

    return v1

    :cond_43
    return v2
.end method

.method extendDuration(I)V
    .registers 6

    .line 636
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 637
    iget-wide v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    add-int/2addr v0, p1

    .line 638
    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mDuration:I

    const/4 p1, 0x0

    .line 639
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mFinished:Z

    return-void
.end method

.method finish()V
    .registers 2

    .line 607
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 609
    :cond_f
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mCurrentPosition:I

    const/4 v0, 0x1

    .line 613
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mFinished:Z

    return-void
.end method

.method fling(IIIII)V
    .registers 11

    .line 677
    iput p5, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mOver:I

    const/4 p5, 0x0

    .line 678
    iput-boolean p5, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mFinished:Z

    .line 679
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x44bb8000    # 1500.0f

    iget v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mDensity:F

    mul-float/2addr v2, v1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1b

    if-gez p2, :cond_19

    const/16 p2, -0x5dc

    goto :goto_1b

    :cond_19
    const/16 p2, 0x5dc

    .line 686
    :cond_1b
    :goto_1b
    iput p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v0, p2

    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 687
    iput p5, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput p5, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mDuration:I

    .line 688
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mStartTime:J

    .line 689
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mCurrentPosition:I

    if-gt p1, p4, :cond_67

    if-ge p1, p3, :cond_33

    goto :goto_67

    .line 701
    :cond_33
    iput p5, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mState:I

    if-eqz p2, :cond_44

    .line 705
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->getSplineFlingDuration(I)I

    move-result p5

    iput p5, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput p5, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mDuration:I

    .line 706
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v1

    goto :goto_46

    :cond_44
    const-wide/16 v1, 0x0

    .line 709
    :goto_46
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result p2

    float-to-double v3, p2

    mul-double/2addr v1, v3

    double-to-int p2, v1

    iput p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mSplineDistance:I

    add-int/2addr p1, p2

    .line 710
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mFinal:I

    if-ge p1, p3, :cond_5b

    .line 714
    iget p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mStart:I

    invoke-direct {p0, p2, p1, p3}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 715
    iput p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mFinal:I

    .line 718
    :cond_5b
    iget p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mFinal:I

    if-le p1, p4, :cond_66

    .line 719
    iget p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mStart:I

    invoke-direct {p0, p2, p1, p4}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 720
    iput p4, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mFinal:I

    :cond_66
    return-void

    :cond_67
    :goto_67
    if-le p1, p4, :cond_6a

    move p3, p4

    .line 696
    :cond_6a
    invoke-direct {p0, p1, p3, p5}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->startSpringback(III)V

    return-void
.end method

.method notifyEdgeReached(III)V
    .registers 6

    .line 787
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mState:I

    if-nez v0, :cond_12

    .line 788
    iput p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mOver:I

    .line 789
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mStartTime:J

    .line 792
    iget p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int p3, p3

    invoke-direct {p0, p1, p2, p2, p3}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    :cond_12
    return-void
.end method

.method setFinalPosition(I)V
    .registers 4

    .line 627
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mFinal:I

    .line 628
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_f

    int-to-float p1, p1

    .line 629
    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 631
    :cond_f
    iget p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mFinal:I

    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mStart:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mSplineDistance:I

    const/4 p1, 0x0

    .line 632
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mFinished:Z

    return-void
.end method

.method setFriction(F)V
    .registers 2

    .line 522
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mFlingFriction:F

    return-void
.end method

.method public setSpringAnimationListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V
    .registers 2

    .line 470
    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mOnAnimationUpdateListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    return-void
.end method

.method softFinish()V
    .registers 2

    .line 617
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    :cond_f
    const/4 v0, 0x1

    .line 622
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mFinished:Z

    return-void
.end method

.method springback(III)Z
    .registers 7

    .line 643
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mFinal:I

    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mCurrentPosition:I

    const/4 v0, 0x0

    .line 644
    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mVelocity:I

    .line 646
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mStartTime:J

    .line 647
    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mDuration:I

    if-ge p1, p2, :cond_17

    .line 650
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_1c

    :cond_17
    if-le p1, p3, :cond_1c

    .line 652
    invoke-direct {p0, p1, p3, v0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->startSpringback(III)V

    .line 655
    :cond_1c
    :goto_1c
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mFinished:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method startScroll(III)V
    .registers 5

    const/4 v0, 0x0

    .line 590
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->startScroll(IIIF)V

    return-void
.end method

.method startScroll(IIIF)V
    .registers 5

    const/4 p4, 0x0

    .line 594
    iput-boolean p4, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mFinished:Z

    .line 596
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mCurrentPosition:I

    add-int/2addr p1, p2

    .line 597
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mFinal:I

    .line 599
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mStartTime:J

    .line 600
    iput p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mDuration:I

    const/4 p1, 0x0

    .line 602
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 603
    iput p4, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mVelocity:I

    return-void
.end method

.method update()Z
    .registers 10

    .line 838
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 839
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mFinished:Z

    return p0

    .line 842
    :cond_8
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 843
    iget-wide v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1d

    .line 847
    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mDuration:I

    if-lez p0, :cond_1c

    return v4

    :cond_1c
    return v3

    .line 849
    :cond_1d
    iget v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v5, v2

    cmp-long v5, v0, v5

    if-lez v5, :cond_25

    return v3

    .line 854
    :cond_25
    iget v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mState:I

    const/high16 v5, 0x447a0000    # 1000.0f

    if-eqz v3, :cond_6d

    const/high16 v6, 0x40000000    # 2.0f

    if-eq v3, v4, :cond_49

    const/4 v2, 0x2

    if-eq v3, v2, :cond_35

    const-wide/16 v0, 0x0

    goto :goto_9e

    :cond_35
    long-to-float v0, v0

    div-float/2addr v0, v5

    .line 876
    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v2, v1

    iget v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mDeceleration:F

    mul-float v5, v3, v0

    add-float/2addr v2, v5

    iput v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mCurrVelocity:F

    int-to-float v1, v1

    mul-float/2addr v1, v0

    mul-float/2addr v3, v0

    mul-float/2addr v3, v0

    div-float/2addr v3, v6

    add-float/2addr v1, v3

    float-to-double v0, v1

    goto :goto_9e

    :cond_49
    long-to-float v0, v0

    int-to-float v1, v2

    div-float/2addr v0, v1

    mul-float v1, v0, v0

    .line 884
    iget v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    .line 885
    iget v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v5, v3

    mul-float/2addr v5, v2

    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v7, v1

    mul-float/2addr v6, v0

    mul-float/2addr v6, v1

    sub-float/2addr v7, v6

    mul-float/2addr v5, v7

    float-to-double v5, v5

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float/2addr v2, v3

    neg-float v0, v0

    add-float/2addr v0, v1

    mul-float/2addr v2, v0

    .line 886
    iput v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mCurrVelocity:F

    move-wide v0, v5

    goto :goto_9e

    :cond_6d
    long-to-float v0, v0

    .line 856
    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mSplineDuration:I

    int-to-float v2, v1

    div-float/2addr v0, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v3, v0, v2

    float-to-int v3, v3

    const/16 v6, 0x64

    if-ge v3, v6, :cond_8e

    int-to-float v6, v3

    div-float/2addr v6, v2

    add-int/lit8 v7, v3, 0x1

    int-to-float v8, v7

    div-float/2addr v8, v2

    .line 863
    sget-object v2, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v3, v2, v3

    .line 864
    aget v2, v2, v7

    sub-float/2addr v2, v3

    sub-float/2addr v8, v6

    div-float/2addr v2, v8

    sub-float/2addr v0, v6

    mul-float/2addr v0, v2

    add-float/2addr v3, v0

    goto :goto_91

    :cond_8e
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 869
    :goto_91
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mSplineDistance:I

    int-to-float v6, v0

    mul-float/2addr v3, v6

    float-to-double v6, v3

    int-to-float v0, v0

    mul-float/2addr v2, v0

    int-to-float v0, v1

    div-float/2addr v2, v0

    mul-float/2addr v2, v5

    .line 870
    iput v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mCurrVelocity:F

    move-wide v0, v6

    .line 891
    :goto_9e
    iget v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mStart:I

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/2addr v2, v0

    iput v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mCurrentPosition:I

    return v4
.end method

.method updateScroll(F)V
    .registers 4

    .line 557
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    return-void

    .line 560
    :cond_6
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mStart:I

    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mFinal:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->mCurrentPosition:I

    return-void
.end method
