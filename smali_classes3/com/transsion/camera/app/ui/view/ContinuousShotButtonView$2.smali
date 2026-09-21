.class Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->notifyCSNotSupport()V
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

    .line 142
    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$2;->this$0:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 154
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 155
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$2;->this$0:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$2;->this$0:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->-$$Nest$fgetmBurstCountText(Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$2;->this$0:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->-$$Nest$fgetmICShotButtonOperationControl(Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;)Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 158
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$2;->this$0:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->-$$Nest$fgetmICShotButtonOperationControl(Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;)Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;->updateUIState()V

    .line 160
    :cond_24
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$2;->this$0:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->-$$Nest$fputmIsCShooting(Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;Z)V

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$2;->this$0:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 145
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 146
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$2;->this$0:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->-$$Nest$fgetmICShotButtonOperationControl(Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;)Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 147
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$2;->this$0:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->-$$Nest$fgetmICShotButtonOperationControl(Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;)Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;->stopContinuousShot()V

    .line 149
    :cond_14
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$2;->this$0:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
