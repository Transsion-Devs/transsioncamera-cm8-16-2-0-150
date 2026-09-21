.class Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->startResetAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;)V
    .registers 2

    .line 426
    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$1;->this$0:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 438
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 439
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$1;->this$0:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->resetUIState()V

    .line 440
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$1;->this$0:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 429
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 430
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$1;->this$0:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 431
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$1;->this$0:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->-$$Nest$fgetmIsQuickVideo(Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 432
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$1;->this$0:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->-$$Nest$fgetmIQVButtonOperationControl(Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;)Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$IQVButtonOperationControl;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$IQVButtonOperationControl;->stopQuickVideo()V

    :cond_1a
    return-void
.end method
