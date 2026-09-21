.class public final Lcom/transsion/widgetslib/view/OSLoadingView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/OSLoadingView$Companion;
    }
.end annotation


# static fields
.field private static final ANGLE_BEZIER_OFFSET:D = 1.5707963267948966

.field private static final ATTRACT_ANGLE:D = 0.5235987755982988

.field public static final Companion:Lcom/transsion/widgetslib/view/OSLoadingView$Companion;

.field private static final DURATION_APPEAL:J = 0x1f4L

.field private static final DURATION_APPEAL_DELAY:J = 0x1f4L

.field private static final DURATION_CIRCLE:J = 0x352L

.field private static final DURATION_REPEL:J = 0x1f4L

.field private static final DURATION_REPEL_DELAY:J = 0x3e8L

.field public static final RUNNING_TYPE_CIRCLE:I = 0x0

.field public static final RUNNING_TYPE_PULL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MyLoadingView"


# instance fields
.field private final mAnimAppeal$delegate:Lkotlin/Lazy;

.field private final mAnimCircle$delegate:Lkotlin/Lazy;

.field private final mAnimRepel$delegate:Lkotlin/Lazy;

.field private mCenterLeftX:F

.field private mCenterLeftY:F

.field private mCenterRightX:F

.field private mCenterRightY:F

.field private mCenterX:F

.field private mCenterY:F

.field private mCircleRadius:F

.field private final mCubicRatio:F

.field private mCurrentAngle:F

.field private mDotColor:I

.field private mIsSecondHome:Z

.field private mMeasuredSize:I

.field private mOutCircleRadiusStatic:F

.field private mOuterCircleRadius:F

.field private final mPaint$delegate:Lkotlin/Lazy;

.field private final mPath$delegate:Lkotlin/Lazy;

.field private mPullPercent:F

.field private mRunningType:I

.field private mType:I

.field private mVisibilityChangedReStartAnim:Z


# direct methods
.method public static synthetic $r8$lambda$7tBuGAtqIC-81FT9qv_9KYUrXHc(Lcom/transsion/widgetslib/view/OSLoadingView;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/transsion/widgetslib/view/OSLoadingView;->doCirculateAnimation$lambda$4$lambda$3(Lcom/transsion/widgetslib/view/OSLoadingView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q-c9TK3yQ1RKM_xMzudhDx2GAq4(Lcom/transsion/widgetslib/view/OSLoadingView;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/transsion/widgetslib/view/OSLoadingView;->doCirculateAnimation$lambda$6$lambda$5(Lcom/transsion/widgetslib/view/OSLoadingView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uAeyauIKtC6w6N_ZlZbHGNac3js(Lcom/transsion/widgetslib/view/OSLoadingView;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/transsion/widgetslib/view/OSLoadingView;->doCirculateAnimation$lambda$2$lambda$1(Lcom/transsion/widgetslib/view/OSLoadingView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/transsion/widgetslib/view/OSLoadingView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/view/OSLoadingView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/widgetslib/view/OSLoadingView;->Companion:Lcom/transsion/widgetslib/view/OSLoadingView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    .line 0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/transsion/widgetslib/view/OSLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11

    .line 0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/transsion/widgetslib/view/OSLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12

    .line 0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/transsion/widgetslib/view/OSLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    sget-object p3, Lcom/transsion/widgetslib/view/OSLoadingView$mPaint$2;->INSTANCE:Lcom/transsion/widgetslib/view/OSLoadingView$mPaint$2;

    invoke-static {p3}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mPaint$delegate:Lkotlin/Lazy;

    .line 47
    sget-object p3, Lcom/transsion/widgetslib/view/OSLoadingView$mPath$2;->INSTANCE:Lcom/transsion/widgetslib/view/OSLoadingView$mPath$2;

    invoke-static {p3}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mPath$delegate:Lkotlin/Lazy;

    .line 53
    new-instance p3, Lcom/transsion/widgetslib/view/OSLoadingView$mAnimAppeal$2;

    invoke-direct {p3, p0}, Lcom/transsion/widgetslib/view/OSLoadingView$mAnimAppeal$2;-><init>(Lcom/transsion/widgetslib/view/OSLoadingView;)V

    invoke-static {p3}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mAnimAppeal$delegate:Lkotlin/Lazy;

    .line 54
    sget-object p3, Lcom/transsion/widgetslib/view/OSLoadingView$mAnimCircle$2;->INSTANCE:Lcom/transsion/widgetslib/view/OSLoadingView$mAnimCircle$2;

    invoke-static {p3}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mAnimCircle$delegate:Lkotlin/Lazy;

    .line 55
    new-instance p3, Lcom/transsion/widgetslib/view/OSLoadingView$mAnimRepel$2;

    invoke-direct {p3, p0}, Lcom/transsion/widgetslib/view/OSLoadingView$mAnimRepel$2;-><init>(Lcom/transsion/widgetslib/view/OSLoadingView;)V

    invoke-static {p3}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mAnimRepel$delegate:Lkotlin/Lazy;

    const p3, 0x3f19999a    # 0.6f

    .line 61
    iput p3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCubicRatio:F

    const p3, 0x40c90fdb

    .line 63
    iput p3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCurrentAngle:F

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/transsion/widgetslib/util/Utils;->isSecondHome(Landroid/content/Context;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mIsSecondHome:Z

    .line 74
    sget-object p3, Lcom/transsion/widgetslib/R$styleable;->OSLoadingView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string p3, "context.obtainStyledAttr\u2026.styleable.OSLoadingView)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    sget p3, Lcom/transsion/widgetslib/R$styleable;->OSLoadingView_os_lv_type:I

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/transsion/widgetslib/R$integer;->OSLoadingViewMedium:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p4

    .line 75
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mType:I

    .line 80
    sget p3, Lcom/transsion/widgetslib/R$styleable;->OSLoadingView_os_lv_dot_color:I

    .line 81
    sget p4, Lcom/transsion/widgetslib/R$color;->os_comp_color_loading_hios:I

    invoke-virtual {p1, p4}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 79
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mDotColor:I

    .line 84
    sget p1, Lcom/transsion/widgetslib/R$styleable;->OSLoadingView_os_lv_running_type:I

    const/4 p3, 0x0

    .line 83
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mRunningType:I

    .line 87
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMPaint()Landroid/graphics/Paint;

    move-result-object p1

    const/4 p2, 0x1

    .line 89
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 90
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 91
    iget p2, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mDotColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->initParams()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_b

    move p3, v0

    :cond_b
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_10

    move p4, v0

    .line 24
    :cond_10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/widgetslib/view/OSLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final synthetic access$getMAnimAppeal(Lcom/transsion/widgetslib/view/OSLoadingView;)Landroid/animation/ValueAnimator;
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMAnimAppeal()Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMAnimCircle(Lcom/transsion/widgetslib/view/OSLoadingView;)Landroid/animation/ValueAnimator;
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMAnimCircle()Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMAnimRepel(Lcom/transsion/widgetslib/view/OSLoadingView;)Landroid/animation/ValueAnimator;
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMAnimRepel()Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMOutCircleRadiusStatic$p(Lcom/transsion/widgetslib/view/OSLoadingView;)F
    .registers 1

    .line 24
    iget p0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mOutCircleRadiusStatic:F

    return p0
.end method

.method private final doCirculateAnimation()V
    .registers 5

    .line 257
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMAnimCircle()Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x352

    .line 258
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 259
    new-instance v1, Lcom/transsion/widgetslib/view/interpolators/OSSharpCurveInterpolator;

    invoke-direct {v1}, Lcom/transsion/widgetslib/view/interpolators/OSSharpCurveInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 260
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 261
    new-instance v1, Lcom/transsion/widgetslib/view/OSLoadingView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/OSLoadingView$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/widgetslib/view/OSLoadingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 265
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 267
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMAnimAppeal()Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 268
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 269
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 270
    new-instance v3, Lcom/transsion/widgetslib/view/interpolators/OSSharpCurveInterpolator;

    invoke-direct {v3}, Lcom/transsion/widgetslib/view/interpolators/OSSharpCurveInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 271
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 272
    new-instance v3, Lcom/transsion/widgetslib/view/OSLoadingView$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/transsion/widgetslib/view/OSLoadingView$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/widgetslib/view/OSLoadingView;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 276
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 278
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMAnimRepel()Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 279
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x3e8

    .line 280
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 281
    new-instance v1, Lcom/transsion/widgetslib/view/interpolators/OSSharpCurveInterpolator;

    invoke-direct {v1}, Lcom/transsion/widgetslib/view/interpolators/OSSharpCurveInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 282
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 283
    new-instance v1, Lcom/transsion/widgetslib/view/OSLoadingView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/OSLoadingView$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/widgetslib/view/OSLoadingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 287
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 288
    new-instance v1, Lcom/transsion/widgetslib/view/OSLoadingView$doCirculateAnimation$3$2;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/OSLoadingView$doCirculateAnimation$3$2;-><init>(Lcom/transsion/widgetslib/view/OSLoadingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 295
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private static final doCirculateAnimation$lambda$2$lambda$1(Lcom/transsion/widgetslib/view/OSLoadingView;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCurrentAngle:F

    .line 263
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private static final doCirculateAnimation$lambda$4$lambda$3(Lcom/transsion/widgetslib/view/OSLoadingView;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mOuterCircleRadius:F

    .line 274
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private static final doCirculateAnimation$lambda$6$lambda$5(Lcom/transsion/widgetslib/view/OSLoadingView;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mOuterCircleRadius:F

    .line 285
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private final drawCubic(Landroid/graphics/Canvas;)V
    .registers 26

    move-object/from16 v0, p0

    .line 214
    invoke-direct {v0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getDistance()D

    move-result-wide v1

    iget v3, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mOutCircleRadiusStatic:F

    iget v4, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCubicRatio:F

    mul-float/2addr v3, v4

    float-to-double v3, v3

    div-double/2addr v1, v3

    const-wide v3, 0x3feccccccccccccdL    # 0.9

    cmpl-double v3, v1, v3

    if-lez v3, :cond_18

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 218
    :cond_18
    iget v3, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCircleRadius:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v3

    float-to-double v4, v4

    const/high16 v6, 0x40100000    # 2.25f

    mul-float/2addr v6, v3

    float-to-double v6, v6

    mul-double/2addr v6, v1

    sub-double/2addr v4, v6

    const/4 v6, 0x3

    int-to-float v6, v6

    mul-float/2addr v6, v3

    const/4 v7, 0x4

    int-to-float v7, v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    cmpl-double v6, v4, v6

    if-lez v6, :cond_30

    float-to-double v4, v3

    :cond_30
    neg-float v6, v3

    float-to-double v6, v6

    cmpg-double v6, v4, v6

    if-gez v6, :cond_38

    neg-float v4, v3

    float-to-double v4, v4

    :cond_38
    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v1, v6

    const/4 v6, 0x6

    int-to-double v6, v6

    div-double/2addr v1, v6

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v1, v6, v1

    .line 226
    iget v8, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCurrentAngle:F

    float-to-double v8, v8

    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    sub-double/2addr v10, v8

    const-wide/16 v8, 0x0

    cmpg-double v12, v10, v8

    if-gez v12, :cond_58

    move-wide v10, v8

    .line 230
    :cond_58
    iget v8, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterLeftX:F

    float-to-double v8, v8

    float-to-double v12, v3

    add-double v14, v1, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v12, v12, v16

    add-double/2addr v8, v12

    double-to-float v3, v8

    .line 231
    iget v8, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterLeftY:F

    float-to-double v8, v8

    iget v12, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCircleRadius:F

    float-to-double v12, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v12, v12, v16

    sub-double/2addr v8, v12

    double-to-float v8, v8

    .line 233
    iget v9, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterRightX:F

    iget v12, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterLeftX:F

    sub-float/2addr v9, v12

    const/4 v13, 0x2

    int-to-float v13, v13

    div-float/2addr v9, v13

    add-float/2addr v9, v12

    move-wide/from16 v16, v6

    float-to-double v6, v9

    sub-double v16, v16, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v18, v18, v4

    sub-double v6, v6, v18

    double-to-float v6, v6

    .line 235
    iget v7, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterRightY:F

    iget v9, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterLeftY:F

    sub-float/2addr v7, v9

    div-float/2addr v7, v13

    add-float/2addr v7, v9

    move-wide/from16 v18, v1

    float-to-double v1, v7

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v20, v20, v4

    sub-double v1, v1, v20

    double-to-float v1, v1

    .line 236
    iget v2, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterRightX:F

    move-wide/from16 v20, v4

    float-to-double v4, v2

    iget v2, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCircleRadius:F

    move-wide/from16 v22, v4

    float-to-double v4, v2

    sub-double v10, v10, v18

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v4, v4, v18

    sub-double v4, v22, v4

    double-to-float v2, v4

    .line 237
    iget v4, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterRightY:F

    float-to-double v4, v4

    iget v7, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCircleRadius:F

    move-wide/from16 v18, v4

    float-to-double v4, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v4, v4, v22

    add-double v4, v18, v4

    double-to-float v4, v4

    .line 238
    iget v5, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterLeftX:F

    move-wide/from16 v18, v10

    float-to-double v9, v5

    iget v5, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCircleRadius:F

    float-to-double v11, v5

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v11, v11, v22

    add-double/2addr v9, v11

    double-to-float v5, v9

    .line 239
    iget v7, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterLeftY:F

    float-to-double v9, v7

    iget v7, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCircleRadius:F

    float-to-double v11, v7

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v11, v11, v18

    sub-double/2addr v9, v11

    double-to-float v7, v9

    .line 241
    iget v9, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterRightX:F

    iget v10, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterLeftX:F

    sub-float/2addr v9, v10

    div-float/2addr v9, v13

    add-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double v11, v11, v20

    add-double/2addr v9, v11

    double-to-float v9, v9

    .line 243
    iget v10, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterRightY:F

    iget v11, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterLeftY:F

    sub-float/2addr v10, v11

    div-float/2addr v10, v13

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double v12, v12, v20

    add-double/2addr v10, v12

    double-to-float v10, v10

    .line 245
    iget v11, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterRightX:F

    float-to-double v11, v11

    iget v13, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCircleRadius:F

    move-wide/from16 v16, v11

    float-to-double v11, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v11, v11, v18

    sub-double v11, v16, v11

    double-to-float v11, v11

    .line 246
    iget v12, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterRightY:F

    float-to-double v12, v12

    move-wide/from16 v16, v12

    iget v12, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCircleRadius:F

    float-to-double v12, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double v12, v16, v12

    double-to-float v12, v12

    .line 247
    invoke-direct {v0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMPath()Landroid/graphics/Path;

    move-result-object v13

    invoke-virtual {v13, v3, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 248
    invoke-direct {v0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMPath()Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v3, v6, v1, v2, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 249
    invoke-direct {v0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMPath()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 250
    invoke-direct {v0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMPath()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v1, v9, v10, v5, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 251
    invoke-direct {v0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMPath()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 252
    invoke-direct {v0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMPath()Landroid/graphics/Path;

    move-result-object v1

    invoke-direct {v0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMPaint()Landroid/graphics/Paint;

    move-result-object v0

    move-object/from16 v2, p1

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private final getDistance()D
    .registers 7

    .line 206
    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterX:F

    iget v1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterLeftX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 207
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v4, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterY:F

    iget p0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterLeftY:F

    sub-float/2addr v4, p0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double v4, p0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 206
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private final getMAnimAppeal()Landroid/animation/ValueAnimator;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mAnimAppeal$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private final getMAnimCircle()Landroid/animation/ValueAnimator;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mAnimCircle$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private final getMAnimRepel()Landroid/animation/ValueAnimator;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mAnimRepel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private final getMPaint()Landroid/graphics/Paint;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mPaint$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method private final getMPath()Landroid/graphics/Path;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mPath$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Path;

    return-object p0
.end method

.method private final initOutCircleRadius()V
    .registers 2

    .line 305
    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mRunningType:I

    if-nez v0, :cond_7

    .line 307
    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mOutCircleRadiusStatic:F

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 305
    :goto_8
    iput v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mOuterCircleRadius:F

    return-void
.end method

.method private final initParams()V
    .registers 7

    .line 172
    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mType:I

    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$integer;->OSLoadingViewSmall:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_1e

    .line 174
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_dimen_loading_view_size_small:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_1c
    int-to-float v0, v0

    goto :goto_44

    .line 176
    :cond_1e
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$integer;->OSLoadingViewLarge:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_39

    .line 177
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_dimen_loading_view_size_large:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1c

    .line 180
    :cond_39
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_dimen_loading_view_size_medium:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1c

    .line 172
    :goto_44
    iput v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mOutCircleRadiusStatic:F

    .line 183
    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mType:I

    .line 184
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$integer;->OSLoadingViewSmall:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_64

    .line 185
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_dimen_loading_view_dot_size_small:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_62
    int-to-float v0, v0

    goto :goto_8a

    .line 188
    :cond_64
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$integer;->OSLoadingViewLarge:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_7f

    .line 189
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_dimen_loading_view_dot_size_large:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_62

    .line 193
    :cond_7f
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_dimen_loading_view_dot_size_medium:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_62

    .line 197
    :goto_8a
    iget v1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mOutCircleRadiusStatic:F

    const/4 v2, 0x2

    int-to-float v3, v2

    div-float/2addr v1, v3

    iput v1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mOutCircleRadiusStatic:F

    div-float/2addr v0, v3

    .line 198
    iput v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCircleRadius:F

    .line 199
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->initOutCircleRadius()V

    .line 200
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMAnimAppeal()Landroid/animation/ValueAnimator;

    move-result-object v0

    iget v1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mOutCircleRadiusStatic:F

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v1, 0x1

    const/4 v5, 0x0

    aput v5, v3, v1

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 201
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMAnimRepel()Landroid/animation/ValueAnimator;

    move-result-object v0

    iget p0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mOutCircleRadiusStatic:F

    new-array v2, v2, [F

    aput v5, v2, v4

    aput p0, v2, v1

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    return-void
.end method

.method private final resetParams()V
    .registers 2

    const v0, 0x40c90fdb

    .line 352
    iput v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCurrentAngle:F

    .line 353
    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mOutCircleRadiusStatic:F

    iput v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mOuterCircleRadius:F

    return-void
.end method


# virtual methods
.method public final getMVisibilityChangedReStartAnim()Z
    .registers 1

    .line 65
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mVisibilityChangedReStartAnim:Z

    return p0
.end method

.method public final isRunning()Z
    .registers 2

    .line 348
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMAnimAppeal()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMAnimRepel()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMAnimCircle()Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    return p0

    :cond_21
    :goto_21
    const/4 p0, 0x1

    return p0
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .line 373
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 374
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->release()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 137
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mIsSecondHome:Z

    if-eqz v0, :cond_28

    const v0, 0x3f666666    # 0.9f

    .line 138
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 139
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3dccccd0    # 0.100000024f

    mul-float/2addr v0, v1

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    div-float/2addr v3, v2

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 141
    :cond_28
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 142
    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mRunningType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_78

    .line 144
    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterX:F

    iget v1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mOutCircleRadiusStatic:F

    iget v2, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mPullPercent:F

    mul-float v3, v1, v2

    sub-float v3, v0, v3

    iput v3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterLeftX:F

    .line 145
    iget v4, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mMeasuredSize:I

    int-to-float v5, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iput v5, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterLeftY:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 146
    iput v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterRightX:F

    int-to-float v0, v4

    div-float/2addr v0, v6

    .line 147
    iput v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterRightY:F

    .line 148
    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCircleRadius:F

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v3, v5, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 149
    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterRightX:F

    iget v1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterRightY:F

    iget v2, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCircleRadius:F

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 150
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getDistance()D

    move-result-wide v0

    iget v2, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mOutCircleRadiusStatic:F

    iget v3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCubicRatio:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_108

    .line 151
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/OSLoadingView;->drawCubic(Landroid/graphics/Canvas;)V

    return-void

    .line 155
    :cond_78
    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterX:F

    iget v1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mOuterCircleRadius:F

    iget v2, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCurrentAngle:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterLeftX:F

    .line 156
    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterY:F

    iget v1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mOuterCircleRadius:F

    iget v2, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCurrentAngle:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterLeftY:F

    .line 157
    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterX:F

    iget v1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mOuterCircleRadius:F

    iget v2, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCurrentAngle:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterRightX:F

    .line 158
    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterY:F

    iget v1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mOuterCircleRadius:F

    iget v2, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCurrentAngle:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterRightY:F

    .line 159
    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterLeftX:F

    iget v1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterLeftY:F

    iget v2, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCircleRadius:F

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 160
    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterRightX:F

    iget v1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterRightY:F

    iget v2, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCircleRadius:F

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 161
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getDistance()D

    move-result-wide v0

    iget v2, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mOutCircleRadiusStatic:F

    iget v3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCubicRatio:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_108

    .line 162
    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCurrentAngle:F

    float-to-double v1, v0

    const-wide v3, 0x3fe0c152382d7365L    # 0.5235987755982988

    cmpl-double v1, v1, v3

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    if-lez v1, :cond_f6

    float-to-double v4, v0

    cmpg-double v1, v4, v2

    if-ltz v1, :cond_105

    :cond_f6
    float-to-double v0, v0

    sub-double/2addr v0, v2

    .line 163
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_108

    .line 165
    :cond_105
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/OSLoadingView;->drawCubic(Landroid/graphics/Canvas;)V

    :cond_108
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 126
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 127
    iget p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mRunningType:I

    if-nez p1, :cond_14

    .line 128
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMAnimAppeal()Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_14

    .line 129
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->doCirculateAnimation()V

    :cond_14
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .line 97
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 98
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    if-ne p1, p2, :cond_69

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_loading_medium_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    if-ge p1, p2, :cond_2e

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/widgetslib/R$integer;->OSLoadingViewSmall:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    goto :goto_5f

    .line 104
    :cond_2e
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_loading_default_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    if-ge p1, p2, :cond_51

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/widgetslib/R$integer;->OSLoadingViewMedium:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    goto :goto_5f

    .line 107
    :cond_51
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/widgetslib/R$integer;->OSLoadingViewLarge:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 101
    :goto_5f
    iput p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mType:I

    .line 109
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->initParams()V

    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    goto :goto_80

    .line 113
    :cond_69
    iget p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mOutCircleRadiusStatic:F

    const/4 p2, 0x2

    int-to-float v0, p2

    mul-float/2addr p1, v0

    iget v1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCircleRadius:F

    mul-float/2addr v1, v0

    add-float/2addr p1, v1

    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 113
    invoke-static {v0, p2}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 117
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 99
    :goto_80
    iput p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mMeasuredSize:I

    int-to-float p2, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    .line 121
    iput p2, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterX:F

    int-to-float p1, p1

    div-float/2addr p1, v0

    .line 122
    iput p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterY:F

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 4

    const-string v0, "changedView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 379
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 380
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p1

    if-nez p1, :cond_18

    .line 381
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->release()V

    return-void

    .line 383
    :cond_18
    iget p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mRunningType:I

    if-nez p1, :cond_1f

    .line 384
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->startLoadingAnimation()V

    :cond_1f
    return-void
.end method

.method public final release()V
    .registers 3

    .line 325
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMAnimRepel()Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 326
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 327
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 328
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 329
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 332
    :cond_15
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMAnimCircle()Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 333
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 334
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 335
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 338
    :cond_27
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMAnimAppeal()Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 339
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 340
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 341
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 344
    :cond_39
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->resetParams()V

    return-void
.end method

.method public final setDotColor(I)V
    .registers 4

    .line 367
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mDotColor:I

    .line 368
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMPaint()Landroid/graphics/Paint;

    move-result-object p1

    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mDotColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 369
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public final setMVisibilityChangedReStartAnim(Z)V
    .registers 2

    .line 65
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mVisibilityChangedReStartAnim:Z

    return-void
.end method

.method public final setPullPercent(F)V
    .registers 4

    .line 316
    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mRunningType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    .line 317
    iput v1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mRunningType:I

    .line 319
    :cond_7
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->release()V

    .line 320
    iput p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mPullPercent:F

    .line 321
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setRunningType(I)V
    .registers 2

    .line 300
    iput p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mRunningType:I

    .line 301
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->initOutCircleRadius()V

    return-void
.end method

.method public final startLoadingAnimation()V
    .registers 2

    .line 357
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 360
    :cond_7
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->resetParams()V

    const/4 v0, 0x0

    .line 361
    iput v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mRunningType:I

    .line 362
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->initOutCircleRadius()V

    .line 363
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->doCirculateAnimation()V

    return-void
.end method
