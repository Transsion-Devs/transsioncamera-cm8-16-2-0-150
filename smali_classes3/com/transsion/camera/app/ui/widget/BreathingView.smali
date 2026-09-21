.class public Lcom/transsion/camera/app/ui/widget/BreathingView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/BreathingView$FadeHandler;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mFadeIn:Landroid/animation/ValueAnimator;

.field private mFadeOut:Landroid/animation/ValueAnimator;

.field private final mHadler:Landroid/os/Handler;

.field private mIsStarted:Z

.field private final mVisibilityState:Ljava/util/Set;


# direct methods
.method static bridge synthetic -$$Nest$fgetmFadeIn(Lcom/transsion/camera/app/ui/widget/BreathingView;)Landroid/animation/ValueAnimator;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/BreathingView;->mFadeIn:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFadeOut(Lcom/transsion/camera/app/ui/widget/BreathingView;)Landroid/animation/ValueAnimator;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/BreathingView;->mFadeOut:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHadler(Lcom/transsion/camera/app/ui/widget/BreathingView;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/BreathingView;->mHadler:Landroid/os/Handler;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BreathingView"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/BreathingView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/widget/BreathingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/BreathingView;->mVisibilityState:Ljava/util/Set;

    .line 33
    new-instance p1, Lcom/transsion/camera/app/ui/widget/BreathingView$FadeHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/transsion/camera/app/ui/widget/BreathingView$FadeHandler;-><init>(Landroid/os/Looper;Lcom/transsion/camera/app/ui/widget/BreathingView;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/BreathingView;->mHadler:Landroid/os/Handler;

    .line 48
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/BreathingView;->init()V

    return-void
.end method

.method private createDotAppearance()V
    .registers 4

    .line 58
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x7

    .line 59
    invoke-static {v1}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v1

    const/4 v2, 0x1

    .line 60
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/high16 v2, -0x10000

    .line 61
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 62
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 63
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method private init()V
    .registers 2

    .line 52
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/BreathingView;->createDotAppearance()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 53
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 54
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/BreathingView;->setupBreathingAnimation()V

    return-void
.end method

.method private resetAnimationListener(Z)V
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BreathingView;->mFadeOut:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BreathingView;->mFadeIn:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    if-eqz p1, :cond_20

    .line 105
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/BreathingView;->mFadeOut:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/transsion/camera/app/ui/widget/BreathingView$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/widget/BreathingView$1;-><init>(Lcom/transsion/camera/app/ui/widget/BreathingView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 111
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/BreathingView;->mFadeIn:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/transsion/camera/app/ui/widget/BreathingView$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/widget/BreathingView$2;-><init>(Lcom/transsion/camera/app/ui/widget/BreathingView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_20
    return-void
.end method

.method private setupBreathingAnimation()V
    .registers 7

    const/4 v0, 0x2

    .line 69
    new-array v1, v0, [F

    fill-array-data v1, :array_36

    const-string v2, "alpha"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/BreathingView;->mFadeOut:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x32

    .line 70
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 71
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/BreathingView;->mFadeOut:Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 74
    new-array v0, v0, [F

    fill-array-data v0, :array_3e

    invoke-static {p0, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/BreathingView;->mFadeIn:Landroid/animation/ValueAnimator;

    .line 75
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/BreathingView;->mFadeIn:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    :array_36
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateBreathingState(I)V
    .registers 3

    if-eqz p1, :cond_e

    .line 159
    sget-object p1, Lcom/transsion/camera/app/ui/widget/BreathingView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v0, "updateBreathingState: stopBreathing "

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/BreathingView;->stopBreathing()V

    return-void

    .line 162
    :cond_e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/BreathingView;->mVisibilityState:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_27

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_27

    .line 163
    sget-object p1, Lcom/transsion/camera/app/ui/widget/BreathingView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v0, "updateBreathingState: startBreathing"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/BreathingView;->startBreathing()V

    :cond_27
    return-void
.end method

.method private updateVisibilityState(II)V
    .registers 3

    if-eqz p1, :cond_12

    .line 149
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p1

    if-eq p2, p1, :cond_11

    .line 150
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/BreathingView;->mVisibilityState:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_11
    return-void

    .line 153
    :cond_12
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/BreathingView;->mVisibilityState:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .registers 1

    .line 122
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 123
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/BreathingView;->stopBreathing()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 7

    .line 128
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_26

    .line 131
    sget-object p0, Lcom/transsion/camera/app/ui/widget/BreathingView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onVisibilityChanged: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " no id"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 134
    :cond_26
    sget-object v1, Lcom/transsion/camera/app/ui/widget/BreathingView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVisibilityChanged: changedView = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", visibility = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 135
    invoke-direct {p0, p2, v0}, Lcom/transsion/camera/app/ui/widget/BreathingView;->updateVisibilityState(II)V

    .line 136
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/widget/BreathingView;->updateBreathingState(I)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 5

    .line 141
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 142
    sget-object v0, Lcom/transsion/camera/app/ui/widget/BreathingView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowVisibilityChanged: visibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const v0, 0x7fffffff

    .line 143
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/BreathingView;->updateVisibilityState(II)V

    .line 144
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/BreathingView;->updateBreathingState(I)V

    return-void
.end method

.method public startBreathing()V
    .registers 4

    .line 80
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/BreathingView;->mIsStarted:Z

    if-nez v0, :cond_18

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/BreathingView;->mIsStarted:Z

    .line 82
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/BreathingView;->resetAnimationListener(Z)V

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BreathingView;->mHadler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/BreathingView;->mHadler:Landroid/os/Handler;

    const/4 v0, 0x2

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_18
    return-void
.end method

.method public stopBreathing()V
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BreathingView;->mHadler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BreathingView;->mFadeOut:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BreathingView;->mFadeOut:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 93
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BreathingView;->mFadeIn:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BreathingView;->mFadeIn:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_24
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/BreathingView;->resetAnimationListener(Z)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 97
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 98
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/BreathingView;->mIsStarted:Z

    return-void
.end method
