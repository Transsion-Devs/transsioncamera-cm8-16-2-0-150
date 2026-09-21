.class public Lcom/transsion/camera/app/ui/animator/UIAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field private final mAnimatorType:Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;

.field private final mAppUI:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;)V
    .registers 4

    .line 17
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/animator/UIAnimatorListener;->mAppUI:Ljava/lang/ref/WeakReference;

    .line 19
    iput-object p2, p0, Lcom/transsion/camera/app/ui/animator/UIAnimatorListener;->mAnimatorType:Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;

    return-void
.end method

.method private updateAnimatorState(Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;Z)V
    .registers 3

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/app/ui/animator/UIAnimatorListener;->mAppUI:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_11

    .line 43
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->getUIBusyController()Lcom/transsion/camera/app/common/IUIAnimatorController;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/IUIAnimatorController;->updateAnimatorState(Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;Z)V

    :cond_11
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 24
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 25
    iget-object p1, p0, Lcom/transsion/camera/app/ui/animator/UIAnimatorListener;->mAnimatorType:Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/animator/UIAnimatorListener;->updateAnimatorState(Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 30
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 31
    iget-object p1, p0, Lcom/transsion/camera/app/ui/animator/UIAnimatorListener;->mAnimatorType:Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/animator/UIAnimatorListener;->updateAnimatorState(Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 36
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 37
    iget-object p1, p0, Lcom/transsion/camera/app/ui/animator/UIAnimatorListener;->mAnimatorType:Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/animator/UIAnimatorListener;->updateAnimatorState(Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;Z)V

    return-void
.end method
