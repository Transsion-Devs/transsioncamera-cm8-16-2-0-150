.class Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .registers 2

    .line 2044
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyDeviceClosed(Ljava/lang/String;)V
    .registers 4

    .line 2091
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmClosedState(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$misNotifyComplete(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    return-void

    .line 2095
    :cond_d
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "notifyDeviceClosed complete."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2096
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mnotifyCameraState(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V

    return-void
.end method

.method public notifyDeviceDisconnected(Ljava/lang/String;)V
    .registers 2

    .line 2101
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmCameraDisconnectedListerner(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/IApp$ICameraDisconnectedListener;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 2102
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmCameraDisconnectedListerner(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/IApp$ICameraDisconnectedListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IApp$ICameraDisconnectedListener;->onCameraDeviceDisconnected()V

    :cond_11
    return-void
.end method

.method public notifyDeviceError(Ljava/lang/String;I)V
    .registers 3

    const/4 p1, 0x6

    if-eq p2, p1, :cond_8

    .line 2109
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1, p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mnotifyCameraError(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V

    .line 2111
    :cond_8
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mnotifyCameraState(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V

    return-void
.end method

.method public notifyDeviceOpened(Ljava/lang/String;)V
    .registers 5

    .line 2048
    const-string v0, "onCameraOpened"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 2049
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmOpenedState(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$misNotifyComplete(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5d

    .line 2051
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmNeedOpenSlave(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Z

    move-result p1

    if-eqz p1, :cond_59

    .line 2052
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fputmNeedOpenSlave(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V

    .line 2053
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmSlaveDevice(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    move-result-object p1

    if-eqz p1, :cond_59

    .line 2054
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOpenCamera openCamera cameraId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmArrayId(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2055
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmSlaveDevice(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmArrayId(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v2

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 2058
    :cond_59
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void

    .line 2062
    :cond_5d
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "notifyDeviceOpened complete."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2064
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmSettingManager(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/setting/SettingManager;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->updateModeDeviceRequester(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    .line 2065
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmMainDevice(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    move-result-object p1

    if-eqz p1, :cond_8c

    .line 2066
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmMainDevice(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmSettingManager(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingDeviceConfigurator()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->setSettingDeviceConfigurator(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;)V

    .line 2068
    :cond_8c
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmSlaveDevice(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    move-result-object p1

    if-eqz p1, :cond_a7

    .line 2069
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmSlaveDevice(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmSettingManager(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingDeviceConfigurator()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->setSettingDeviceConfigurator(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;)V

    .line 2073
    :cond_a7
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmSettingManager(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingManager;->createAllSettings()V

    .line 2075
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    if-eqz p1, :cond_c3

    .line 2076
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 2078
    :cond_c3
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mnotifyCameraState(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V

    .line 2081
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p1

    .line 2082
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmNextMode(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    .line 2083
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mswitchMode(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Z

    move-result v1

    if-nez v1, :cond_f1

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v1

    if-eqz v1, :cond_f6

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isValid()Z

    move-result v1

    if-eqz v1, :cond_f6

    .line 2084
    :cond_f1
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mstartWithMode(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 2086
    :cond_f6
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void
.end method

.method public notifyFirstSteadyFrame(Ljava/lang/String;)V
    .registers 4

    .line 2166
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmFirstFrameState(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$misNotifyComplete(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_4b

    .line 2171
    :cond_d
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "notifyFirstSteadyFrame complete."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2172
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 2173
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 2176
    :cond_29
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmFirstFrameCallback(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 2177
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmFirstFrameCallback(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;->onFirstSteadyFrame(Ljava/lang/String;)V

    .line 2179
    :cond_3a
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p1

    if-eqz p1, :cond_4b

    .line 2180
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onFirstSteadyFrame()V

    :cond_4b
    :goto_4b
    return-void
.end method

.method public notifyStartCreatSession(Ljava/lang/String;)V
    .registers 4

    .line 2116
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2117
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v1, 0x19d

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 2120
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$monModeSettingReady(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    .line 2122
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmStartCreatSessionState(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$misNotifyComplete(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_25

    return-void

    .line 2126
    :cond_25
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "notifyStartCreatSession complete."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public notifyStartPreview(ILjava/lang/String;)V
    .registers 6

    .line 2131
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmStartPreviewingState(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    move-result-object v0

    const/4 v1, 0x6

    if-ne p1, v1, :cond_f

    .line 2133
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmStartPreviewedState(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    move-result-object v0

    .line 2135
    :cond_f
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v2, v0, p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$misNotifyComplete(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_18

    return-void

    .line 2139
    :cond_18
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyStartPreview "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " complete."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2141
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p2, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mnotifyCameraState(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V

    if-ne p1, v1, :cond_4f

    .line 2142
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    if-eqz p1, :cond_4f

    .line 2143
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    const/16 p2, 0x8

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 2146
    :cond_4f
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmSettingManager(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/setting/SettingManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingManager;->loadOtherSettings()V

    return-void
.end method

.method public notifyStopPreview(Ljava/lang/String;)V
    .registers 2

    .line 2151
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/ICameraControl$IModeConfig;->onConfigAfterStopPreview()V

    return-void
.end method

.method public notifySwitchOfflineFailed(I)V
    .registers 4

    .line 2186
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->checkNotifyBgOfflineErr()V

    .line 2187
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->setSwitchingOffline(Z)V

    .line 2188
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmOfflineSwitchCallback(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/IAppUIListener$IBGOfflineSwitchCallback;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 2189
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmOfflineSwitchCallback(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/IAppUIListener$IBGOfflineSwitchCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IBGOfflineSwitchCallback;->onOfflineSwitchFinish(I)V

    .line 2191
    :cond_1e
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mnotifyCaptureOfflineLock(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V

    return-void
.end method

.method public notifyTakePictureFailed(Ljava/lang/String;)V
    .registers 3

    .line 2157
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 2158
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onModeCaptureFailed(Z[J)V

    return-void

    .line 2160
    :cond_14
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "notifyTakePictureFailed mCurrentMode is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
