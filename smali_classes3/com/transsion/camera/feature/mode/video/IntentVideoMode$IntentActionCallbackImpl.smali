.class Lcom/transsion/camera/feature/mode/video/IntentVideoMode$IntentActionCallbackImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/IIntentReviewUI$IActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/video/IntentVideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentActionCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/video/IntentVideoMode;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;)V
    .registers 2

    .line 453
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/video/IntentVideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;Lcom/transsion/camera/feature/mode/video/IntentVideoMode-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode$IntentActionCallbackImpl;-><init>(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;)V

    return-void
.end method


# virtual methods
.method public onCanceled()V
    .registers 4

    .line 456
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/video/IntentVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->-$$Nest$fgetmIntentReviewUI(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;)Lcom/transsion/camera/app/ui/IIntentReviewUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->hideReviewView()Z

    .line 457
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/video/IntentVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->-$$Nest$fgetmIsUriFromIntent(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 458
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/video/IntentVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->-$$Nest$mdeleteCurrentVideo(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;)V

    .line 460
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/video/IntentVideoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->access$000(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v1, 0x86

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 461
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/video/IntentVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->-$$Nest$fgetmKeyFlashValue(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 462
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/video/IntentVideoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->access$100(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    const-string v1, "Battery"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryExtStatus(Ljava/lang/String;)I

    move-result v0

    .line 463
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/video/IntentVideoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->access$200(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v1

    const-string v2, "Temperature"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryExtStatus(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_47

    const/4 v0, 0x1

    if-ne v1, v0, :cond_50

    .line 465
    :cond_47
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/video/IntentVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->-$$Nest$fgetmKeyFlashValue(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->-$$Nest$mchangeFlashState(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;Ljava/lang/String;)V

    .line 468
    :cond_50
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/video/IntentVideoMode;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->-$$Nest$fputmKeyFlashValue(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;Ljava/lang/String;)V

    :cond_56
    return-void
.end method

.method public onConfirmed()V
    .registers 1

    .line 474
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/video/IntentVideoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->-$$Nest$mattachToSaveUri(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;)V

    return-void
.end method
