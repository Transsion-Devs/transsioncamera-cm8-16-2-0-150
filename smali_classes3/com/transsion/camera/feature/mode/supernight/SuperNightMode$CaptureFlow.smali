.class abstract Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "CaptureFlow"
.end annotation


# instance fields
.field protected mIsAiRawSprdOn:Z

.field protected mIsCapturing:Z

.field protected mIsPostAlgoOn:Z

.field protected mIsSuperAiRawOn:Z

.field protected mIsTurboFusionOn:Z

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V
    .registers 2

    .line 1072
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1073
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->mIsCapturing:Z

    .line 1074
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->mIsPostAlgoOn:Z

    .line 1075
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->mIsSuperAiRawOn:Z

    .line 1076
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->mIsTurboFusionOn:Z

    .line 1077
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->mIsAiRawSprdOn:Z

    return-void
.end method

.method private refreshShutterUI()V
    .registers 3

    .line 1087
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$1400(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # invokes: Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getShutterTypeSelftimerOn()I
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$1300(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->setShutterTypeSelftimerOn(I)V

    .line 1088
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$1500(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->getShutterTypeSelftimerOff()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->setShutterTypeSelftimerOff(I)V

    .line 1089
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$1600(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    const-string v1, "key_self_timer"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1090
    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 1092
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$1800(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # invokes: Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getShutterTypeSelftimerOn()I
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$1700(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateShutterType(I)V

    return-void

    .line 1094
    :cond_42
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->mIsPostAlgoOn:Z

    if-nez v0, :cond_61

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->mIsSuperAiRawOn:Z

    if-nez v0, :cond_61

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->mIsTurboFusionOn:Z

    if-nez v0, :cond_61

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->mIsAiRawSprdOn:Z

    if-nez v0, :cond_61

    .line 1095
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$1900(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->getShutterTypeSelftimerOff()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateShutterType(I)V

    :cond_61
    return-void
.end method


# virtual methods
.method getShutterTypeSelfTimerOff()I
    .registers 1

    const/4 p0, 0x4

    return p0
.end method

.method getType()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method isNeedDeviceCaptureSound()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method onCaptureDone()Z
    .registers 4

    .line 1151
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$2800(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CaptureFlow] onCaptureDone. mIsCapturing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->mIsCapturing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1152
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->mIsCapturing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_75

    .line 1153
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->mIsCapturing:Z

    .line 1154
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->isNeedDeviceCaptureSound()Z

    move-result v0

    if-nez v0, :cond_50

    .line 1155
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmActionSound(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/sound/IActionSound;

    move-result-object v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmSoundLoaded(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1156
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmActionSound(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/sound/IActionSound;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmShutterClickSampleId(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/utils/sound/IActionSound;->stop(I)V

    .line 1160
    :cond_50
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$2900(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    const-string v1, "key_self_timer"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1161
    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 1163
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$3100(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # invokes: Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getShutterTypeSelftimerOn()I
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$3000(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateShutterType(I)V

    :cond_73
    const/4 p0, 0x1

    return p0

    :cond_75
    return v1
.end method

.method onCaptureStart()V
    .registers 7

    const/4 v0, 0x1

    .line 1124
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->mIsCapturing:Z

    .line 1125
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->isNeedDeviceCaptureSound()Z

    move-result v1

    if-nez v1, :cond_a2

    .line 1127
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$2200(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v1

    const-string v2, "key_shutter_sound"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1128
    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 1129
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {v3}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$2300(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CaptureFlow] onCaptureStart. shutterValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", flow: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1130
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmNeedSuperNightAlgo(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Z

    move-result v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmSuperNightSupportCountDown(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Z

    move-result v1

    if-nez v1, :cond_6e

    :cond_4d
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmActionSound(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/sound/IActionSound;

    move-result-object v1

    if-eqz v1, :cond_6e

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmSoundLoaded(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Z

    move-result v1

    if-eqz v1, :cond_6e

    if-eqz v2, :cond_6e

    .line 1132
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmActionSound(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/sound/IActionSound;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmShutterClickSampleId(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/utils/sound/IActionSound;->play(I)V

    .line 1134
    :cond_6e
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # invokes: Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->hookDisturbStatus()V
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$2400(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V

    .line 1135
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmSuperNightSupportCountDown(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Z

    move-result v1

    if-nez v1, :cond_a2

    .line 1136
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getThumbNailType()I

    move-result v1

    if-eq v1, v0, :cond_a2

    .line 1137
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->currentModeNeedNewCaptureAnimation()Z

    move-result v0

    if-eqz v0, :cond_97

    .line 1138
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$2500(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v1, 0x187

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto :goto_a2

    .line 1140
    :cond_97
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$2600(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v1, 0x96

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1145
    :cond_a2
    :goto_a2
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->mIsPostAlgoOn:Z

    if-nez v0, :cond_c1

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->mIsSuperAiRawOn:Z

    if-nez v0, :cond_c1

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->mIsTurboFusionOn:Z

    if-nez v0, :cond_c1

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->mIsAiRawSprdOn:Z

    if-nez v0, :cond_c1

    .line 1146
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$2700(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->getShutterTypeSelftimerOff()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateShutterType(I)V

    :cond_c1
    return-void
.end method

.method onEnter()V
    .registers 4

    .line 1102
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$2000(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CaptureFlow] onEnter: , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1103
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->refreshShutterUI()V

    return-void
.end method

.method onExit()V
    .registers 4

    .line 1108
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$2100(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CaptureFlow] onExit: , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method onSettingChanged(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method onShutterClick()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method onShutterStart()V
    .registers 4

    .line 1171
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$3200(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CaptureFlow] onShutterStart: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
