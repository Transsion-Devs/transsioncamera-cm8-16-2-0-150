.class Lcom/transsion/camera/ui/setting/focus/FocusAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/focus/FocusAnimator;->triggerFocusAnimate(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;Landroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/focus/FocusAnimator;

.field final synthetic val$listener:Landroid/animation/Animator$AnimatorListener;

.field final synthetic val$view:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/focus/FocusAnimator;Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;Landroid/animation/Animator$AnimatorListener;)V
    .registers 4

    .line 79
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusAnimator$1;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusAnimator;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/focus/FocusAnimator$1;->val$view:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    iput-object p3, p0, Lcom/transsion/camera/ui/setting/focus/FocusAnimator$1;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 90
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusAnimator$1;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusAnimator;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/focus/FocusAnimator;->-$$Nest$fgetmAnimatorCanceling(Lcom/transsion/camera/ui/setting/focus/FocusAnimator;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusAnimator$1;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 95
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusAnimator$1;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusAnimator;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusAnimator$1;->val$view:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    invoke-static {p1, p0}, Lcom/transsion/camera/ui/setting/focus/FocusAnimator;->-$$Nest$mtriggerRepeatAnimate(Lcom/transsion/camera/ui/setting/focus/FocusAnimator;Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V

    :cond_17
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .line 82
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 83
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusAnimator$1;->val$view:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusAnimator$1;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusAnimator;

    iget v0, v0, Lcom/transsion/camera/ui/setting/focus/FocusAnimator;->mScale:F

    const v1, 0x3fc66666    # 1.55f

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 84
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusAnimator$1;->val$view:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusAnimator$1;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusAnimator;

    iget v0, v0, Lcom/transsion/camera/ui/setting/focus/FocusAnimator;->mScale:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusAnimator$1;->val$view:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
