.class Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$IntentActionCallbackImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/IIntentReviewUI$IActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentActionCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)V
    .registers 2

    .line 467
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$IntentActionCallbackImpl;-><init>(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)V

    return-void
.end method


# virtual methods
.method public onCanceled()V
    .registers 4

    .line 470
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->-$$Nest$fgetmIntentReviewUI(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/app/ui/IIntentReviewUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->hideReviewView()Z

    .line 473
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$1200(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mKeyFlashValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->-$$Nest$fgetmKeyFlashValue(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->-$$Nest$fgetmKeyFlashValue(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 475
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$1300(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    const-string v1, "Battery"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryExtStatus(Ljava/lang/String;)I

    move-result v0

    .line 476
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$1400(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v1

    const-string v2, "Temperature"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryExtStatus(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4f

    const/4 v0, 0x1

    if-ne v1, v0, :cond_59

    .line 478
    :cond_4f
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->-$$Nest$fgetmKeyFlashValue(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->-$$Nest$mchangeFlashState(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;Ljava/lang/String;Z)V

    .line 481
    :cond_59
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->-$$Nest$fputmKeyFlashValue(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;Ljava/lang/String;)V

    .line 483
    :cond_5f
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$1500(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v1, 0x85

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 484
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$1600(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 485
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$1700(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v0, "capture_state"

    const-string v1, "capture_end"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onConfirmed()V
    .registers 3

    .line 490
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$1800(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onConfirmed()"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->-$$Nest$fgetmIntentReviewUI(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/app/ui/IIntentReviewUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->updateReviewViewState(Z)V

    .line 492
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->-$$Nest$mdoAttach(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)V

    return-void
.end method
