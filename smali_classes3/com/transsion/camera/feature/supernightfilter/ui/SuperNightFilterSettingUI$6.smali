.class Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)V
    .registers 2

    .line 686
    iput-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$6;->this$0:Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private onCollapseDone()V
    .registers 3

    .line 701
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$6;->this$0:Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->-$$Nest$fgetmFilterRootView(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 702
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$6;->this$0:Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->-$$Nest$fgetmFilterRootView(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 704
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$6;->this$0:Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->-$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 705
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$6;->this$0:Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->-$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    const-string v0, "key_conflict_ui_state"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string/jumbo v1, "value_filter_ui_off"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2d
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 689
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 690
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$6;->onCollapseDone()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 695
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 696
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$6;->onCollapseDone()V

    .line 697
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$6;->this$0:Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 p1, 0x16f

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method
