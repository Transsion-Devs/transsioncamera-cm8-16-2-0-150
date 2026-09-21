.class Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->startResetAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;)V
    .registers 2

    .line 452
    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$3;->this$0:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 468
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 469
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$3;->this$0:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->-$$Nest$fgetmICShotButtonOperationControl(Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;)Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3c

    .line 470
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$3;->this$0:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->-$$Nest$fputmAnimationStart(Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;Z)V

    .line 471
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$3;->this$0:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->-$$Nest$fgetmIsCShooting(Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 472
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$3;->this$0:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->-$$Nest$fgetmICShotButtonOperationControl(Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;)Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;->notifyCsViewAnimationChange(Z)V

    .line 474
    :cond_22
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$3;->this$0:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_33

    .line 475
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$3;->this$0:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->-$$Nest$fgetmICShotButtonOperationControl(Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;)Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;->updateUIState()V

    .line 477
    :cond_33
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$3;->this$0:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->-$$Nest$fgetmICShotButtonOperationControl(Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;)Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;->resetCSViewStatus()V

    .line 479
    :cond_3c
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$3;->this$0:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->resetUIState(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .line 456
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$3;->this$0:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->-$$Nest$fgetmICShotButtonOperationControl(Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;)Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 457
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$3;->this$0:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->-$$Nest$fputmAnimationStart(Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;Z)V

    .line 458
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$3;->this$0:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->-$$Nest$fgetmIsCShooting(Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 459
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$3;->this$0:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->-$$Nest$fgetmICShotButtonOperationControl(Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;)Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;->notifyCsViewAnimationChange(Z)V

    .line 461
    :cond_1f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$3;->this$0:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->-$$Nest$fgetmICShotButtonOperationControl(Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;)Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;->stopContinuousShot()V

    .line 463
    :cond_28
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
