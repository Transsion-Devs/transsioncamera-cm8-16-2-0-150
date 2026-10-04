.class Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;)V
    .registers 2

    .line 227
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite$1;->this$0:Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .registers 2

    .line 238
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite$1;->this$0:Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->access$000(Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 239
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite$1;->this$0:Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->access$100(Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite$1;->this$0:Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitch;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public onPreviewStopped()V
    .registers 3

    .line 230
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite$1;->this$0:Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->-$$Nest$fgetmCameraProxy(Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 231
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite$1;->this$0:Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->-$$Nest$fgetmCameraProxy(Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite$1;->this$0:Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;

    iget-object v1, v1, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->mResultCallBack:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    .line 232
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite$1;->this$0:Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;->-$$Nest$fputmCameraProxy(Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;Lcom/transsion/camera/adapter/CameraProxy;)V

    :cond_1b
    return-void
.end method
