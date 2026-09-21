.class Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/SubDeviceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)V
    .registers 2

    .line 1946
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 6

    .line 2029
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetTAG(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[CapturePerformance] [JPEG] onCaptureCompleted in device controller."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2030
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$mcheckCaptureCompleted(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2031
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmSettingDeviceConfigurator(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->onCaptureEnded()V

    .line 2033
    :cond_1c
    invoke-static {}, Lcom/transsion/camera/manager/ScreenRelay;->getInstance()Lcom/transsion/camera/manager/ScreenRelay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/manager/ScreenRelay;->captureComplete()V

    .line 2034
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onModeCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method

.method public onCaptureFailed(JZ[J)V
    .registers 8

    .line 2015
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetTAG(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] [JPEG] onCaptureFailed in device controller, removeCaptureThumbInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2016
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->isMTKCaptureFlow()Z

    move-result v0

    if-nez v0, :cond_40

    :cond_2e
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.mode.doc.DocumentEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 2017
    :cond_40
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmSettingDeviceConfigurator(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->onCaptureEnded()V

    .line 2019
    :cond_49
    invoke-static {}, Lcom/transsion/camera/manager/ScreenRelay;->getInstance()Lcom/transsion/camera/manager/ScreenRelay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/manager/ScreenRelay;->captureFail()V

    .line 2020
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmSettingDeviceConfigurator(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v1

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraProxy;->isMTKCaptureFlow()Z

    move-result v1

    if-eqz v1, :cond_6c

    const/4 v1, 0x1

    goto :goto_6d

    :cond_6c
    const/4 v1, 0x0

    :goto_6d
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->onTakePictureEnded(Z)V

    .line 2021
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onModeCaptureFailed(Z[J)V

    .line 2022
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p0

    instance-of p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    if-eqz p0, :cond_8a

    .line 2023
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->onCaptureFailed(J)V

    :cond_8a
    return-void
.end method

.method public onCaptureFailed(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 2005
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->onCaptureFailed(Z[J)V

    return-void
.end method

.method public onCaptureFailed(Z[J)V
    .registers 5

    const-wide/16 v0, -0x1

    .line 2010
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->onCaptureFailed(JZ[J)V

    return-void
.end method

.method public onCaptureProgressed(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
    .registers 5

    .line 2039
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetTAG(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[CapturePerformance] onCaptureProgressed in device controller."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2040
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onModeCaptureProgressed(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    return-void
.end method

.method public onCaptureStarted(JLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
    .registers 6

    .line 1949
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetTAG(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[CapturePerformance] [JPEG] onCaptureStarted in device controller."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1950
    invoke-static {}, Lcom/transsion/camera/manager/ScreenRelay;->getInstance()Lcom/transsion/camera/manager/ScreenRelay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/manager/ScreenRelay;->startCapture()V

    .line 1951
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmSettingDeviceConfigurator(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->onCaptureStarted()V

    .line 1952
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onModeCaptureStarted(JLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    return-void
.end method

.method public onDoCapture()V
    .registers 11

    .line 1957
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_a

    goto/16 :goto_113

    .line 1960
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->getBrightnessResult()[I

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 1961
    array-length v2, v0

    if-lez v2, :cond_1e

    aget v0, v0, v1

    :goto_1c
    move v7, v0

    goto :goto_20

    :cond_1e
    const/4 v0, -0x1

    goto :goto_1c

    .line 1962
    :goto_20
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v3

    .line 1964
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    move-result-object v0

    const/4 v8, 0x4

    const/4 v9, 0x1

    if-eqz v0, :cond_d8

    .line 1965
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->hasService()Z

    move-result v0

    if-eqz v0, :cond_d8

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCameraOutputSurface(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    move-result-object v0

    .line 1966
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->isPostAlgoSurfaceReady()Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 1967
    invoke-virtual {v3, v9}, Lcom/transsion/camera/adapter/CameraParameters;->setPostAlgoOn(Z)V

    .line 1969
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->getAeExpoInfo()[I

    move-result-object v0

    .line 1970
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraProxy;->getHDRAeExpoInfo()[I

    move-result-object v2

    .line 1971
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v4}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/camera/adapter/CameraProxy;->getMFNRAeExpoInfo()[I

    move-result-object v4

    .line 1972
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v5}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/camera/adapter/CameraProxy;->getNightAeExpoInfo()[I

    move-result-object v5

    .line 1973
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v6}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraProxy;->getLlsAeExpoInfo()[I

    move-result-object v6

    filled-new-array {v0, v2, v4, v5, v6}, [[I

    move-result-object v4

    .line 1974
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v2

    .line 1975
    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object v2

    invoke-interface {v2}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSupportedZoom2xRemosaic()Z

    move-result v2

    .line 1974
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->set2XRemosaicAvailable(Z)V

    .line 1976
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    move-result-object v2

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    .line 1977
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraId()[I

    move-result-object v5

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v6

    .line 1976
    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->configPostAlgo(Lcom/transsion/camera/adapter/CameraParameters;[[I[ILandroid/hardware/camera2/CaptureResult;I)V

    .line 1978
    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CameraParameters;->getPostAlgoType()I

    move-result v0

    if-ne v0, v8, :cond_ba

    .line 1979
    invoke-virtual {v3, v9}, Lcom/transsion/camera/adapter/CameraParameters;->setHeavyCapturing(Z)V

    .line 1981
    :cond_ba
    invoke-virtual {v3, v7}, Lcom/transsion/camera/adapter/CameraParameters;->setHeavyCapturingBV(I)V

    .line 1982
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->getAeStateResult()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setAeState(I)V

    .line 1983
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy;->getAIRawLiteMotionDetection()I

    move-result p0

    invoke-virtual {v3, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setAIRawLiteMotionDetection(I)V

    goto :goto_f6

    .line 1986
    :cond_d8
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$misSprdHeavyCapturing(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 1987
    invoke-virtual {v3, v9}, Lcom/transsion/camera/adapter/CameraParameters;->setHeavyCapturing(Z)V

    .line 1988
    invoke-virtual {v3, v7}, Lcom/transsion/camera/adapter/CameraParameters;->setHeavyCapturingBV(I)V

    .line 1990
    :cond_e6
    invoke-virtual {v3, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setPostAlgoOn(Z)V

    .line 1992
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy;->getAeExpoInfo()[I

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setPostAlgoFrameInfo([I)V

    .line 1994
    :goto_f6
    invoke-static {v1}, Lcom/transsion/camera/utils/FeatureSupport;->getEnableDumpFirstFrame(I)I

    move-result p0

    if-ne p0, v9, :cond_113

    .line 1995
    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CameraParameters;->postAlgoOn()Z

    move-result p0

    if-eqz p0, :cond_10e

    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CameraParameters;->getPostAlgoType()I

    move-result p0

    if-ne p0, v8, :cond_10e

    .line 1996
    const-string p0, "1"

    invoke-static {p0}, Lcom/transsion/camera/utils/FeatureSupport;->setDumpFirstFrame(Ljava/lang/String;)V

    return-void

    .line 1998
    :cond_10e
    const-string p0, "0"

    invoke-static {p0}, Lcom/transsion/camera/utils/FeatureSupport;->setDumpFirstFrame(Ljava/lang/String;)V

    :cond_113
    :goto_113
    return-void
.end method
