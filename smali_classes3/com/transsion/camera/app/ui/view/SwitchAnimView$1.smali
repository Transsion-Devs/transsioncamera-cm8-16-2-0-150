.class Lcom/transsion/camera/app/ui/view/SwitchAnimView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/view/SwitchAnimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/view/SwitchAnimView;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$1;->this$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 108
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$1;->this$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->-$$Nest$fgetmViewSwitcherRoot(Lcom/transsion/camera/app/ui/view/SwitchAnimView;)Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$1;->this$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->-$$Nest$fgetmViewSwitcherRoot(Lcom/transsion/camera/app/ui/view/SwitchAnimView;)Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 100
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$1;->this$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->-$$Nest$fgetmAnimEndCallback(Lcom/transsion/camera/app/ui/view/SwitchAnimView;)Lcom/transsion/camera/app/ui/view/SwitchAnimView$AnimEndCallback;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 101
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$1;->this$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->-$$Nest$fgetmAnimEndCallback(Lcom/transsion/camera/app/ui/view/SwitchAnimView;)Lcom/transsion/camera/app/ui/view/SwitchAnimView$AnimEndCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$AnimEndCallback;->onAnimationEnd()V

    .line 103
    :cond_11
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$1;->this$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->-$$Nest$fgetmViewSwitcherRoot(Lcom/transsion/camera/app/ui/view/SwitchAnimView;)Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method
