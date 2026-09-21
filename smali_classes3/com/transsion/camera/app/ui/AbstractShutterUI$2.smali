.class Lcom/transsion/camera/app/ui/AbstractShutterUI$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;


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
.method public static synthetic $r8$lambda$ZhQzWIVckXM0YIY2ViCDLhvu2nk(Lcom/transsion/camera/app/ui/AbstractShutterUI$2;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI$2;->lambda$updateUIState$0()V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V
    .registers 2

    .line 273
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$updateUIState$0()V
    .registers 3

    .line 300
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmSwipeOperationListener(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISwipeOperationListener;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 301
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmSwipeOperationListener(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISwipeOperationListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIListener$ISwipeOperationListener;->onNotifyUIStateChange(Z)V

    .line 303
    :cond_12
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUI;->interruptPhysicalKey(Z)V

    return-void
.end method


# virtual methods
.method public isPreviewReady()Z
    .registers 2

    .line 339
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->isPreviewReady()Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public notifyCsViewAnimationChange(Z)V
    .registers 5

    .line 309
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fputmCsViewAnimationStart(Lcom/transsion/camera/app/ui/AbstractShutterUI;Z)V

    .line 310
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_7f

    .line 313
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUI;->notifyCsViewAnimationChange(Z)V

    .line 314
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$sfgetmTag()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCsViewAnimationChange, animationStart: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsContinuousShooting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmIsContinuousShooting(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsSuperNightLiteCapture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmIsSuperNightLiteCapture(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mSelfTimerBegin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmSelfTimerBegin(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_7f

    .line 319
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmIsContinuousShooting(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z

    move-result p1

    if-nez p1, :cond_7f

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmIsSuperNightLiteCapture(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z

    move-result p1

    if-nez p1, :cond_7f

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmSelfTimerBegin(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z

    move-result p1

    if-nez p1, :cond_7f

    .line 320
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/4 p1, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, v1, p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    :cond_7f
    :goto_7f
    return-void
.end method

.method public onCSViewMoving()V
    .registers 4

    .line 326
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$sfgetmTag()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCSViewMoving, mIsCameraSwitching: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmIsCameraSwitching(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsPhotoSizeChanging: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmIsPhotoSizeChanging(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmIsCameraSwitching(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmIsPhotoSizeChanging(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z

    move-result v0

    if-eqz v0, :cond_3d

    goto :goto_3e

    :cond_3d
    return-void

    .line 329
    :cond_3e
    :goto_3e
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->notifyCSNotSupport()V

    return-void
.end method

.method public resetCSViewStatus()V
    .registers 2

    .line 335
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 v0, 0x17f

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public setContinuousShotSuccessful(Z)V
    .registers 2

    if-eqz p1, :cond_e

    .line 277
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 p1, 0x124

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void

    .line 279
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 p1, 0x125

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public startContinuousShot()V
    .registers 4

    .line 285
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmShutterListener(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmShutterListener(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;->onShutterLongClick(II)V

    .line 288
    :cond_13
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    const-string v0, "key_continuous_shot_action"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, "key_start_continuous_shot_action"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public stopContinuousShot()V
    .registers 3

    .line 293
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    const-string v0, "key_continuous_shot_action"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, "key_stop_continuous_shot_action"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateUIState()V
    .registers 3

    .line 298
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractShutterUI$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI$2$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
