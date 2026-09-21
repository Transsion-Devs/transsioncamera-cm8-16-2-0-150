.class public Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDarkenAnimator:Landroid/animation/Animator;

.field protected final mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field protected mScale:F


# direct methods
.method public static synthetic $r8$lambda$UVfMzB_UGfkACfMBFkJOsDK_eYw(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 62
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 63
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 64
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartSeekBarAnimate(Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->startSeekBarAnimate(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ExposureAnimator"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 35
    iput v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->mScale:F

    .line 38
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->initInterpolator()Landroid/view/animation/PathInterpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method private clearAnimationImpl(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    if-nez p1, :cond_a

    .line 152
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "drawable is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 155
    :cond_a
    invoke-static {p1}, Lcom/transsion/camera/utils/AnimationUtils;->stopVectorAnimation(Landroid/graphics/drawable/Drawable;)Z

    return-void
.end method

.method private startSeekBarAnimate(Landroid/view/View;)V
    .registers 4

    const/4 v0, 0x2

    .line 81
    new-array v0, v0, [F

    fill-array-data v0, :array_1a

    .line 82
    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xa5

    .line 83
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 85
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_1a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startShowAnimateImpl(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    if-nez p1, :cond_a

    .line 160
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "drawable is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 163
    :cond_a
    invoke-static {p1}, Lcom/transsion/camera/utils/AnimationUtils;->stopVectorAnimation(Landroid/graphics/drawable/Drawable;)Z

    const/4 p0, 0x0

    .line 164
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/AnimationUtils;->startVectorAnimation(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    return-void
.end method


# virtual methods
.method public cancelDarkenAnimate(Landroid/view/View;)V
    .registers 3

    if-nez p1, :cond_a

    .line 113
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "view is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 117
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->mDarkenAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_19

    .line 118
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->mDarkenAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->mDarkenAnimator:Landroid/animation/Animator;

    :cond_19
    const/high16 p0, 0x3f800000    # 1.0f

    .line 122
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public clearAnimation(Landroid/view/View;)V
    .registers 3

    if-nez p1, :cond_a

    .line 141
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "view is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 144
    :cond_a
    sget v0, Lcom/transsion/camera/R$id;->ev_indicator_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->clearAnimationImpl(Landroid/graphics/drawable/Drawable;)V

    :cond_19
    return-void
.end method

.method protected initInterpolator()Landroid/view/animation/PathInterpolator;
    .registers 4

    .line 42
    new-instance p0, Landroid/view/animation/PathInterpolator;

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-direct {p0, v2, v0, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-object p0
.end method

.method public startDarkenAnimate(Landroid/view/View;J)V
    .registers 7

    if-nez p1, :cond_a

    .line 91
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "view is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 95
    :cond_a
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->cancelDarkenAnimate(Landroid/view/View;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 97
    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->mDarkenAnimator:Landroid/animation/Animator;

    const-wide/16 v1, 0x1

    .line 98
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->mDarkenAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 100
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->mDarkenAnimator:Landroid/animation/Animator;

    new-instance p3, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator$2;

    invoke-direct {p3, p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator$2;-><init>(Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 107
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->mDarkenAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public startShowAnimate(Landroid/view/View;)V
    .registers 3

    if-nez p1, :cond_a

    .line 128
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "view is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 132
    :cond_a
    sget v0, Lcom/transsion/camera/R$id;->ev_indicator_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->startShowAnimateImpl(Landroid/graphics/drawable/Drawable;)V

    :cond_19
    return-void
.end method

.method public startShowLockAnimate(Landroid/view/View;Z)V
    .registers 8

    .line 53
    sget v0, Lcom/transsion/camera/R$id;->ev_lock_indicator_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    .line 54
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/exposure/ProductFactory;->createLockBackground(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;->setDrawBackground(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;)V

    .line 55
    sget v1, Lcom/transsion/camera/R$id;->ev_seekbar:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 58
    iget v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->mScale:F

    const v2, 0x3fc66666    # 1.55f

    mul-float/2addr v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v1, v3

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v2, 0x1

    aput v1, v3, v2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    .line 59
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 60
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 61
    new-instance v2, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 67
    new-instance v0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator$1;-><init>(Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;ZLandroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 77
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
