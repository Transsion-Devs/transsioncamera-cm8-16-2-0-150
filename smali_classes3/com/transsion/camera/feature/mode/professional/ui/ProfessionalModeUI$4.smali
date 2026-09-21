.class Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->startHideAnim(FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

.field final synthetic val$sendNotify:Z


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;Z)V
    .registers 3

    .line 765
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$4;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$4;->val$sendNotify:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 768
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 773
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 774
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$4;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->-$$Nest$fgetmGradationViewContainer(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 775
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$4;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    const/16 v0, 0x175

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 776
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$4;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->-$$Nest$fgetmGradationViewContainer(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setY(F)V

    .line 777
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$4;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->-$$Nest$fgetmSeekBarCurIndex(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$4;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->-$$Nest$fgetmCurrentItemIndex(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)I

    move-result v0

    if-ne p1, v0, :cond_3a

    .line 778
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$4;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->-$$Nest$fgetmCurrentItemIndex(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->-$$Nest$mhighLightSelectItem(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;IZ)V

    .line 780
    :cond_3a
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$4;->val$sendNotify:Z

    if-eqz p1, :cond_5b

    .line 781
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$4;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    const/16 v0, 0x59

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 782
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$4;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->-$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    const-string p1, "key_conflict_ui_state"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string/jumbo v0, "value_pro_seek_ui_off"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5b
    return-void
.end method
