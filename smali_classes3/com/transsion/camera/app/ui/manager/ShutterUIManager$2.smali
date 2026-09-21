.class Lcom/transsion/camera/app/ui/manager/ShutterUIManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$ISwipeOperationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/ShutterUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)V
    .registers 2

    .line 472
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotifyUIStateChange(Z)V
    .registers 6

    .line 475
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p1, :cond_4c

    .line 479
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    const/16 v2, 0xdc

    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 480
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    # getter for: Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->access$300(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string v2, "key_ui_state_action"

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string/jumbo v3, "value_state_idle"

    .line 481
    invoke-virtual {p1, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 482
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmIsContinuousShooting(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Z

    move-result p1

    if-nez p1, :cond_41

    .line 483
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1, v1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    return-void

    .line 486
    :cond_41
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUI;->notifyCsViewAnimationChange(Z)V

    return-void

    .line 488
    :cond_4c
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 p1, 0x9

    invoke-interface {p0, p1, v1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    return-void
.end method
