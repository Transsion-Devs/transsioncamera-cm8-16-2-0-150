.class public Lcom/transsion/camera/app/common/ui/anim/FadeAnim;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/ui/anim/FadeAnim$IFadeListener;
    }
.end annotation


# static fields
.field private static final INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mFadeIn:Landroid/animation/ValueAnimator;

.field private mFadeOut:Landroid/animation/ValueAnimator;


# direct methods
.method public static synthetic $r8$lambda$3OMkB4UWSTNaZ186f5tE94fUPeI(Lcom/transsion/camera/app/common/ui/anim/FadeAnim$IFadeListener;Landroid/animation/ValueAnimator;)V
    .registers 2

    if-eqz p0, :cond_f

    .line 51
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/ui/anim/FadeAnim$IFadeListener;->onAnimationUpdate(F)V

    :cond_f
    return-void
.end method

.method public static synthetic $r8$lambda$AW7XNYgo3nYeimzX_lWrTIF6Hr0(Lcom/transsion/camera/app/common/ui/anim/FadeAnim$IFadeListener;Landroid/animation/ValueAnimator;)V
    .registers 2

    if-eqz p0, :cond_f

    .line 71
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/ui/anim/FadeAnim$IFadeListener;->onAnimationUpdate(F)V

    :cond_f
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmFadeIn(Lcom/transsion/camera/app/common/ui/anim/FadeAnim;)Landroid/animation/ValueAnimator;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/anim/FadeAnim;->mFadeIn:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/common/ui/anim/FadeAnim;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/common/ui/anim/FadeAnim;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/ui/anim/FadeAnim;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 27
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f28f5c3    # 0.66f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/app/common/ui/anim/FadeAnim;->INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelAnim()V
    .registers 3

    .line 89
    sget-object v0, Lcom/transsion/camera/app/common/ui/anim/FadeAnim;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "cancelAnim"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/anim/FadeAnim;->mFadeIn:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/anim/FadeAnim;->mFadeIn:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 93
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/anim/FadeAnim;->mFadeOut:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 94
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/anim/FadeAnim;->mFadeOut:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_25
    return-void
.end method

.method public runFadeAnim(Lcom/transsion/camera/app/common/ui/anim/FadeAnim$IFadeListener;)V
    .registers 8

    .line 42
    sget-object v0, Lcom/transsion/camera/app/common/ui/anim/FadeAnim;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runFadeAnim listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/anim/FadeAnim;->cancelAnim()V

    const/4 v0, 0x2

    .line 46
    new-array v1, v0, [F

    fill-array-data v1, :array_72

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/common/ui/anim/FadeAnim;->mFadeOut:Landroid/animation/ValueAnimator;

    .line 47
    sget-object v2, Lcom/transsion/camera/app/common/ui/anim/FadeAnim;->INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 48
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/anim/FadeAnim;->mFadeOut:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x15e

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 49
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/anim/FadeAnim;->mFadeOut:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/transsion/camera/app/common/ui/anim/FadeAnim$$ExternalSyntheticLambda0;

    invoke-direct {v5, p1}, Lcom/transsion/camera/app/common/ui/anim/FadeAnim$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/ui/anim/FadeAnim$IFadeListener;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 54
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/anim/FadeAnim;->mFadeOut:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/transsion/camera/app/common/ui/anim/FadeAnim$1;

    invoke-direct {v5, p0, p1}, Lcom/transsion/camera/app/common/ui/anim/FadeAnim$1;-><init>(Lcom/transsion/camera/app/common/ui/anim/FadeAnim;Lcom/transsion/camera/app/common/ui/anim/FadeAnim$IFadeListener;)V

    invoke-virtual {v1, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 66
    new-array v0, v0, [F

    fill-array-data v0, :array_7a

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/anim/FadeAnim;->mFadeIn:Landroid/animation/ValueAnimator;

    .line 67
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/anim/FadeAnim;->mFadeIn:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/anim/FadeAnim;->mFadeIn:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/camera/app/common/ui/anim/FadeAnim$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/transsion/camera/app/common/ui/anim/FadeAnim$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/common/ui/anim/FadeAnim$IFadeListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/anim/FadeAnim;->mFadeIn:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/camera/app/common/ui/anim/FadeAnim$2;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/app/common/ui/anim/FadeAnim$2;-><init>(Lcom/transsion/camera/app/common/ui/anim/FadeAnim;Lcom/transsion/camera/app/common/ui/anim/FadeAnim$IFadeListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/anim/FadeAnim;->mFadeOut:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_72
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_7a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
