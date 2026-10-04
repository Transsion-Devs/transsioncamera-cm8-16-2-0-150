.class final Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;
.super Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/SubDeviceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PreviewedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;


# direct methods
.method public static synthetic $r8$lambda$qNpqDOai19C9VycpYLsN0_bo87Y(Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;Z)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->lambda$shutterSoundPlay$0(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;Z)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Ljava/lang/String;)V
    .registers 3

    .line 1511
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    .line 1512
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;-><init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$shutterSoundPlay$0(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;Z)V
    .registers 3

    .line 1656
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetTAG(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p2, "shutterSoundPlay, onPlayDone"

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_10

    .line 1658
    invoke-interface {p1}, Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;->onStart()V

    :cond_10
    return-void
.end method


# virtual methods
.method cancelTakePicture()V
    .registers 2

    .line 1603
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 1606
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->cancelTakePicture()V

    .line 1607
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmSettingDeviceConfigurator(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->onPreviewStopped()V

    .line 1608
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmSettingDeviceConfigurator(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->onPreviewStarted()V

    return-void
.end method

.method changeParameter(Ljava/lang/String;)V
    .registers 7

    .line 1670
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_60

    .line 1673
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    .line 1674
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmSettingDeviceConfigurator(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I

    move-result v1

    .line 1675
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetTAG(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PreviewedState], changeParameter restartpreview:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-ne v1, p1, :cond_55

    .line 1677
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCameraOutputSurface(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->dirty()V

    .line 1678
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentState(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->updateOutputChannel()V

    return-void

    :cond_55
    if-nez v1, :cond_60

    .line 1680
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setCameraParameters(Lcom/transsion/camera/adapter/CameraParameters;)V

    :cond_60
    :goto_60
    return-void
.end method

.method varargs changeParameterByKey([Ljava/lang/String;)V
    .registers 7

    .line 1696
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_64

    .line 1699
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    .line 1700
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmSettingDeviceConfigurator(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->configParametersByKey(Lcom/transsion/camera/adapter/CameraParameters;[Ljava/lang/String;)I

    move-result v1

    .line 1701
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetTAG(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PreviewedState], changeParameterSelf restartpreview:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-ne v1, p1, :cond_59

    .line 1703
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCameraOutputSurface(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->dirty()V

    .line 1704
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentState(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->updateOutputChannel()V

    return-void

    :cond_59
    if-nez v1, :cond_64

    .line 1706
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setCameraParameters(Lcom/transsion/camera/adapter/CameraParameters;)V

    :cond_64
    :goto_64
    return-void
.end method

.method configCommand(Ljava/lang/String;)V
    .registers 3

    .line 1665
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmSettingDeviceConfigurator(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->configCommand(Ljava/lang/String;Lcom/transsion/camera/adapter/CameraProxy;)V

    return-void
.end method

.method enableVideoAutoFlash(Z)V
    .registers 3

    .line 1726
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 1729
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->enableVideoAutoFlash(Z)V

    return-void
.end method

.method onCameraError(I)V
    .registers 4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_7

    const/4 v0, 0x5

    if-eq p1, v0, :cond_7

    goto :goto_2d

    .line 1520
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fputmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Lcom/transsion/camera/adapter/CameraProxy;)V

    .line 1521
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmClosedState(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->enter()V

    .line 1522
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmNotifyCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 1523
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmNotifyCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentCameraId(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;->notifyDeviceError(Ljava/lang/String;I)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method onZoomValueChanged(Ljava/lang/String;)V
    .registers 4

    .line 1686
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 1689
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    .line 1690
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmSettingDeviceConfigurator(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->configParametersByKey(Lcom/transsion/camera/adapter/CameraParameters;[Ljava/lang/String;)I

    .line 1691
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setCameraParameters(Lcom/transsion/camera/adapter/CameraParameters;)V

    return-void
.end method

.method setLowConfigReduceLoading(Z)V
    .registers 3

    .line 1541
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1542
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->setLowConfigReduceLoading(Z)V

    :cond_11
    return-void
.end method

.method shutterSoundPlay(ILcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V
    .registers 5

    .line 1652
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 1655
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/adapter/CameraProxy;->shutterSoundPlay(ILcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V

    return-void
.end method

.method shutterSoundPlay(Ljava/lang/String;)V
    .registers 3

    .line 1644
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 1647
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->shutterSoundPlay(Ljava/lang/String;)V

    return-void
.end method

.method startContinuousShot(Landroid/content/Context;I)V
    .registers 10

    .line 1613
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    .line 1617
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmInfoCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 1618
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmInfoCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentCameraId(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;->getOrientationInfo(Ljava/lang/String;)I

    move-result p1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    .line 1620
    :goto_23
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->setPictureOrientation(I)V

    .line 1621
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$mgetLocation(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setPictureGPSLocation(Landroid/location/Location;)V

    .line 1622
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmContinuousShotShutterCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

    move-result-object v1

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmContinueShotCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    move-result-object v3

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p1

    .line 1623
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getCurShutterPriority()I

    move-result v5

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportShutterSound()Z

    move-result v6

    const/4 v2, 0x0

    move v4, p2

    .line 1622
    invoke-virtual/range {v0 .. v6}, Lcom/transsion/camera/adapter/CameraProxy;->startContinuousShot(Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;IIZ)V

    return-void
.end method

.method startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;Z)V
    .registers 5

    .line 1712
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 1716
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmInfoCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 1717
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmInfoCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentCameraId(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;->getVideoOrientationInfo(Ljava/lang/String;)I

    move-result v0

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    .line 1719
    :goto_23
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setVideoOrientation(I)V

    .line 1720
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/adapter/CameraProxy;->startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;Z)V

    .line 1721
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmRecordingState(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->enter()V

    return-void
.end method

.method stopContinuousShot()V
    .registers 2

    .line 1628
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 1631
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy;->stopContinuousShot()V

    return-void
.end method

.method stopContinuousShotCount()V
    .registers 2

    .line 1636
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 1639
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy;->stopContinuousShotCount()V

    return-void
.end method

.method stopPreview()V
    .registers 3

    .line 1548
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 1549
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setHeavyCapturing(Z)V

    .line 1550
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->stopPreview()V

    .line 1552
    :cond_1f
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmSettingDeviceConfigurator(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->onPreviewStopped()V

    .line 1553
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmNotifyCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 1554
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmNotifyCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentCameraId(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;->notifyStopPreview(Ljava/lang/String;)V

    .line 1556
    :cond_3f
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmOpenedState(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->enter()V

    return-void
.end method

.method stopRepeating()V
    .registers 2

    .line 1569
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1570
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy;->stopRepeating()V

    :cond_11
    return-void
.end method

.method switchToOfflineSession(I)V
    .registers 5

    .line 1561
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetTAG(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchToOfflineSession ,camera state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentState(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->-$$Nest$fgetmName(Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1562
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 1563
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->switchToOfflineSession(I)V

    :cond_35
    return-void
.end method

.method takePicture()V
    .registers 11

    .line 1576
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 1579
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmSettingDeviceConfigurator(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->onTakePictureStarted()V

    .line 1581
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmInfoCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 1582
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmInfoCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentCameraId(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;->getOrientationInfo(Ljava/lang/String;)I

    move-result v0

    goto :goto_2d

    :cond_2c
    move v0, v1

    .line 1584
    :goto_2d
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setPictureOrientation(I)V

    .line 1585
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$mgetLocation(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/adapter/CameraProxy;->setPictureGPSLocation(Landroid/location/Location;)V

    .line 1589
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->isQcomCaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 1590
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v2

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmShutterCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

    move-result-object v3

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmRawPictureCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    move-result-object v4

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    .line 1591
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isNeedDeviceCaptureSound()Z

    move-result v7

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getCurShutterPriority()I

    move-result v8

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    .line 1592
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportShutterSound()Z

    move-result v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1590
    invoke-virtual/range {v2 .. v9}, Lcom/transsion/camera/adapter/CameraProxy;->takePicture(Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;ZIZ)V

    goto :goto_bc

    .line 1594
    :cond_87
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v2

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmShutterCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

    move-result-object v3

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmPictureCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    move-result-object v6

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    .line 1595
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isNeedDeviceCaptureSound()Z

    move-result v7

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getCurShutterPriority()I

    move-result v8

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    .line 1596
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportShutterSound()Z

    move-result v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1594
    invoke-virtual/range {v2 .. v9}, Lcom/transsion/camera/adapter/CameraProxy;->takePicture(Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;ZIZ)V

    .line 1598
    :goto_bc
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0, v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fputmCaptureCompletedNum(Lcom/transsion/camera/app/common/mode/SubDeviceControl;I)V

    return-void
.end method

.method updateAuxSurfaceModeSupport(Z)V
    .registers 3

    .line 1750
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 1753
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->updateAuxSurfaceModeSupport(Z)V

    return-void
.end method

.method updateAuxSurfaceStatus(Z)V
    .registers 3

    .line 1742
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 1745
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->updateAuxSurfaceStatus(Z)V

    return-void
.end method

.method updateBackgroundSurfaceModeSupport(Z)V
    .registers 3

    .line 1774
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 1777
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->updateBackgroundSurfaceModeSupport(Z)V

    return-void
.end method

.method updateBackgroundSurfaceStatus(Z)V
    .registers 3

    .line 1766
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 1769
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->updateBackgroundSurfaceStatus(Z)V

    return-void
.end method

.method updateFocusMode(Ljava/lang/String;)V
    .registers 3

    .line 1734
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 1737
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->updateFocusMode(Ljava/lang/String;)V

    return-void
.end method

.method updateOutputChannel()V
    .registers 5

    .line 1531
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCameraOutputSurface(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmPreviewSize(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->channelReadyForUpdate(Landroid/util/Size;)Z

    move-result v0

    .line 1532
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetTAG(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateOutputChannel channelReady = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",camera state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v3}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentState(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->-$$Nest$fgetmName(Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_51

    .line 1534
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentState(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->stopPreview()V

    .line 1535
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentState(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->updateOutputChannel()V

    :cond_51
    return-void
.end method

.method updateSlaveSurfaceModeSupported(Z)V
    .registers 2

    .line 1758
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 1760
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->updateSlaveSurfaceModeSupport(Z)V

    :cond_b
    return-void
.end method
