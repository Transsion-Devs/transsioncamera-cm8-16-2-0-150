.class Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;)V
    .registers 2

    .line 404
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture$2;->this$0:Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 8

    .line 407
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture$2;->this$0:Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->-$$Nest$fgetmIsFrameResultCallbackEnabled(Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 410
    :cond_9
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkAutoMacroSwitchResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v0

    .line 411
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture$2;->this$0:Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    aget v0, v0, v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_18

    goto :goto_19

    :cond_18
    move v3, v2

    :goto_19
    invoke-static {v1, v3}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->-$$Nest$fputmIsAutoMacroActive(Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;Z)V

    .line 413
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture$2;->this$0:Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 414
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkStreamIdResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v0

    if-eqz v0, :cond_35

    .line 415
    aget v0, v0, v2

    goto :goto_36

    :cond_35
    const/4 v0, -0x1

    .line 416
    :goto_36
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture$2;->this$0:Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->-$$Nest$fputmSatStreamId(Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;Ljava/lang/String;)V

    goto :goto_46

    .line 418
    :cond_40
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture$2;->this$0:Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->-$$Nest$fputmSatStreamId(Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;Ljava/lang/String;)V

    .line 420
    :goto_46
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture$2;->this$0:Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->-$$Nest$mcheckGroupScene(Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method
