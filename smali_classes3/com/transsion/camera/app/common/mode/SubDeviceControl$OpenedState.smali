.class final Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;
.super Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/SubDeviceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OpenedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Ljava/lang/String;)V
    .registers 3

    .line 1299
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    .line 1300
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;-><init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method cameraOpened()V
    .registers 2

    .line 1312
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmNotifyCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 1313
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmNotifyCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentCameraId(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;->notifyDeviceOpened(Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method changeParameter(Ljava/lang/String;)V
    .registers 2

    .line 1404
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    .line 1408
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object p1

    .line 1409
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmSettingDeviceConfigurator(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I

    return-void
.end method

.method varargs changeParameterByKey([Ljava/lang/String;)V
    .registers 3

    .line 1414
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 1418
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    .line 1419
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmSettingDeviceConfigurator(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object p0

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->configParametersByKey(Lcom/transsion/camera/adapter/CameraParameters;[Ljava/lang/String;)I

    return-void
.end method

.method configCommand(Ljava/lang/String;)V
    .registers 3

    .line 1399
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmSettingDeviceConfigurator(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->configCommand(Ljava/lang/String;Lcom/transsion/camera/adapter/CameraProxy;)V

    return-void
.end method

.method createOutputChannel(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .registers 12

    .line 1319
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCameraOutputSurface(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmPreviewSize(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->channelReadyForUpdate(Landroid/util/Size;)Z

    move-result v0

    .line 1320
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetTAG(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createOutputChannel, oldMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",newMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",isReady = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",mPreviewSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v3}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmPreviewSize(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_e3

    if-eqz p2, :cond_e3

    if-nez v0, :cond_e3

    .line 1323
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmPreviewSize(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/util/Size;

    move-result-object p1

    if-eqz p1, :cond_e3

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p1

    if-eqz p1, :cond_e3

    .line 1325
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCameraOutputSurface(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->requestDataChannel()Lcom/transsion/camera/adapter/CameraDataChannel;

    move-result-object v8

    .line 1326
    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportAuxPreview()Z

    move-result v4

    .line 1327
    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportBackgroundPreview()Z

    move-result v5

    .line 1328
    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportSlavePreview()Z

    move-result v6

    .line 1330
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmInfoCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

    move-result-object p1

    if-eqz p1, :cond_88

    .line 1331
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmInfoCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;->getPreviewSurfaceType()I

    move-result p1

    :goto_86
    move v7, p1

    goto :goto_8a

    :cond_88
    const/4 p1, 0x0

    goto :goto_86

    .line 1333
    :goto_8a
    new-instance v0, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmPreviewSize(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/util/Size;

    move-result-object v1

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmAuxPreviewSize(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/util/Size;

    move-result-object v2

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmBackgroundPreviewSize(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/util/Size;

    move-result-object v3

    invoke-direct/range {v0 .. v8}, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;-><init>(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;ZZZILcom/transsion/camera/adapter/CameraDataChannel;)V

    .line 1336
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmPreviewSize(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/util/Size;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraParameters;->setPreviewSize(Landroid/util/Size;)V

    .line 1337
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmFpsRange(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/util/Range;

    move-result-object p2

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/transsion/camera/app/common/mode/SubDeviceControl$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/adapter/CameraParameters;)V

    invoke-static {p1, p2, v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$msetFpsRange(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Landroid/util/Range;Ljava/util/function/Consumer;)V

    .line 1338
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p2

    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getOutputDataType()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/transsion/camera/adapter/CameraProxy;->preparePreview(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;I)V

    goto :goto_e6

    .line 1340
    :cond_e3
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->updateOutputChannel()V

    .line 1342
    :goto_e6
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentState(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->startPreview()V

    return-void
.end method

.method onEnter(I)V
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 1306
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->updateOutputChannel()V

    :cond_6
    return-void
.end method

.method startPreview()V
    .registers 5

    .line 1382
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCameraOutputSurface(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->hasSetDataChannel()Z

    move-result v0

    .line 1383
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetTAG(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPreview hasSetDataChannel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", camera state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v3}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentState(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->-$$Nest$fgetmName(Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_a0

    .line 1384
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_a0

    .line 1385
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    .line 1386
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmPreviewSize(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setPreviewSize(Landroid/util/Size;)V

    .line 1387
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/app/common/ICameraControl$IModeConfig;->onConfigBeforeStartPreview()V

    .line 1388
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmFpsRange(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/util/Range;

    move-result-object v2

    new-instance v3, Lcom/transsion/camera/app/common/mode/SubDeviceControl$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/adapter/CameraParameters;)V

    invoke-static {v1, v2, v3}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$msetFpsRange(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Landroid/util/Range;Ljava/util/function/Consumer;)V

    .line 1389
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmPreviewCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmPreviewFrameCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/adapter/CameraProxy;->startPreview(Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;)V

    .line 1390
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmNotifyCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    move-result-object v0

    if-eqz v0, :cond_97

    .line 1391
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmNotifyCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentCameraId(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v0, v2, v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;->notifyStartPreview(ILjava/lang/String;)V

    .line 1393
    :cond_97
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmPreviewingState(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->enter()V

    :cond_a0
    return-void
.end method

.method updateAuxSurfaceModeSupport(Z)V
    .registers 3

    .line 1432
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 1435
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->updateAuxSurfaceModeSupport(Z)V

    return-void
.end method

.method updateAuxSurfaceStatus(Z)V
    .registers 3

    .line 1424
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 1427
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->updateAuxSurfaceStatus(Z)V

    return-void
.end method

.method updateBackgroundSurfaceModeSupport(Z)V
    .registers 3

    .line 1456
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 1459
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->updateBackgroundSurfaceModeSupport(Z)V

    return-void
.end method

.method updateBackgroundSurfaceStatus(Z)V
    .registers 3

    .line 1448
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 1451
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->updateBackgroundSurfaceStatus(Z)V

    return-void
.end method

.method updateOutputChannel()V
    .registers 6

    .line 1347
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmIsRestore(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1348
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCameraOutputSurface(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->dirty()V

    .line 1351
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCameraOutputSurface(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmPreviewSize(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->channelReadyForUpdate(Landroid/util/Size;)Z

    move-result v0

    .line 1352
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetTAG(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateOutputChannel channelReady: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", previewSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v3}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmPreviewSize(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", camera state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v3}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentState(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->-$$Nest$fgetmName(Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mCurrentMode.isValid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v3}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v3

    .line 1354
    invoke-interface {v3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isValid()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1352
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_106

    .line 1355
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_106

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isValid()Z

    move-result v0

    if-eqz v0, :cond_106

    .line 1356
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmPreviewSize(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setPreviewSize(Landroid/util/Size;)V

    .line 1357
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmFpsRange(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/util/Range;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/transsion/camera/app/common/mode/SubDeviceControl$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/adapter/CameraParameters;)V

    invoke-static {v0, v1, v3}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$msetFpsRange(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Landroid/util/Range;Ljava/util/function/Consumer;)V

    .line 1358
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCameraOutputSurface(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->requestDataChannel()Lcom/transsion/camera/adapter/CameraDataChannel;

    move-result-object v0

    .line 1359
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v1

    .line 1360
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraDataChannel;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v3}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmPreviewSize(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/util/Size;

    move-result-object v3

    .line 1361
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v4}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmPreviewSize(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    .line 1359
    invoke-interface {v1, v2, v3, v4}, Lcom/transsion/camera/app/common/mode/ICameraMode;->configStream(Landroid/view/Surface;II)Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_e3

    .line 1363
    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraDataChannel;->replacePreviewSurface(Landroid/view/Surface;)V

    .line 1365
    :cond_e3
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmNotifyCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    move-result-object v1

    if-eqz v1, :cond_fa

    .line 1366
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmNotifyCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentCameraId(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;->notifyStartCreatSession(Ljava/lang/String;)V

    .line 1368
    :cond_fa
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setCameraDataChannel(Lcom/transsion/camera/adapter/CameraDataChannel;)V

    .line 1369
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->startPreview()V

    :cond_106
    return-void
.end method

.method updateSlaveSurfaceModeSupported(Z)V
    .registers 3

    .line 1440
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 1443
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->updateSlaveSurfaceModeSupport(Z)V

    return-void
.end method
