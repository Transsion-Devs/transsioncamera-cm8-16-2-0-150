.class Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->notifyContinuousShotStop()V
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

    .line 77
    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$1;->this$0:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 88
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 89
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$1;->this$0:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->-$$Nest$fgetmICShotButtonOperationControl(Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;)Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 90
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$1;->this$0:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->-$$Nest$fgetmICShotButtonOperationControl(Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;)Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;->notifyCsViewAnimationChange(Z)V

    .line 92
    :cond_15
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$1;->this$0:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->resetUIState(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 80
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 81
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$1;->this$0:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->-$$Nest$fgetmICShotButtonOperationControl(Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;)Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 82
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$1;->this$0:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->-$$Nest$fgetmICShotButtonOperationControl(Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;)Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;->notifyCsViewAnimationChange(Z)V

    :cond_15
    return-void
.end method
