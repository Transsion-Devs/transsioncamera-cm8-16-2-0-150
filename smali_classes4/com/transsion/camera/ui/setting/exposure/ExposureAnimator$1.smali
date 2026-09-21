.class Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->startShowLockAnimate(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;

.field final synthetic val$seekBar:Landroid/view/View;

.field final synthetic val$showSeekBar:Z


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;ZLandroid/view/View;)V
    .registers 4

    .line 67
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;

    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator$1;->val$showSeekBar:Z

    iput-object p3, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator$1;->val$seekBar:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 70
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 71
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator$1;->val$showSeekBar:Z

    if-eqz p1, :cond_14

    .line 72
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator$1;->val$seekBar:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator$1;->val$seekBar:Landroid/view/View;

    invoke-static {p1, p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->-$$Nest$mstartSeekBarAnimate(Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;Landroid/view/View;)V

    :cond_14
    return-void
.end method
