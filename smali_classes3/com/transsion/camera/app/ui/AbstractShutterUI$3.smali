.class Lcom/transsion/camera/app/ui/AbstractShutterUI$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$IQVButtonOperationControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractShutterUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;


# direct methods
.method public static synthetic $r8$lambda$W9dTf6kC6vh_4l_AjzoOF-2u5oI(Lcom/transsion/camera/app/ui/AbstractShutterUI$3;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI$3;->lambda$updateUIState$0()V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V
    .registers 2

    .line 353
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$updateUIState$0()V
    .registers 4

    .line 376
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmShutterButtonView(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmSwipeOperationListener(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISwipeOperationListener;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 378
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmSwipeOperationListener(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISwipeOperationListener;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIListener$ISwipeOperationListener;->onNotifyUIStateChange(Z)V

    .line 380
    :cond_1c
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/IAppUI;->interruptPhysicalKey(Z)V

    return-void
.end method


# virtual methods
.method public setQuickVideoSuccessful(Z)V
    .registers 2

    if-eqz p1, :cond_e

    .line 357
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 p1, 0xfe

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void

    .line 359
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 p1, 0xff

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public startQuickVideo()V
    .registers 3

    .line 365
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    const-string v0, "key_quick_video_action"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, "key_quick_video_start"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public stopQuickVideo()V
    .registers 3

    .line 370
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    const-string v0, "key_quick_video_action"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, "key_quick_video_stop"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateUIState()V
    .registers 3

    .line 375
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractShutterUI$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI$3$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
