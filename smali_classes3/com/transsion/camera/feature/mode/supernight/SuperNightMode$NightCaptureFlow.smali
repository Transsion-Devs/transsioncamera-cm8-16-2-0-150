.class Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NightCaptureFlow;
.super Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NightCaptureFlow"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V
    .registers 2

    .line 1194
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;-><init>(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V

    return-void
.end method


# virtual methods
.method getType()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method onCaptureDone()Z
    .registers 2

    .line 1233
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->onCaptureDone()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1235
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$mstopCapturingAnim(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method onCaptureStart()V
    .registers 6

    .line 1220
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->onCaptureStart()V

    .line 1221
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->mIsCapturing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmSuperNightSupportCountDown(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1222
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmCurrentShutterValue(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)I

    move-result v0

    const/16 v2, 0x1f4

    if-lt v0, v2, :cond_4b

    .line 1223
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmCurrentShutterValue(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)I

    move-result v2

    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->mIsPostAlgoOn:Z

    if-eqz v3, :cond_2b

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmShot2seeCountdownTime(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)I

    move-result v3

    goto :goto_2c

    :cond_2b
    move v3, v1

    :goto_2c
    add-int/2addr v2, v3

    invoke-static {v0, v2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fputmCurrentShutterValue(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;I)V

    .line 1224
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmModeUI(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmPreviewSize(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Landroid/util/Size;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmCurrentShutterValue(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;
    invoke-static {v4}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$3800(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->startProcessStepAnim(Landroid/util/Size;ILjava/lang/String;)V

    .line 1227
    :cond_4b
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->superNightAlgorithm(I)V

    .line 1228
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NightCaptureFlow;->getType()I

    move-result p0

    invoke-static {v0, p0, v1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$mstartCapturingAnim(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;IZ)V

    return-void
.end method

.method onEnter()V
    .registers 3

    .line 1202
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->onEnter()V

    .line 1203
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->mIsPostAlgoOn:Z

    if-nez v0, :cond_20

    .line 1204
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$3400(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->getNightRelation(Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 1205
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$3500(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p0

    const-string v0, "key_super_night"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method onExit()V
    .registers 3

    .line 1211
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->onExit()V

    .line 1212
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->mIsPostAlgoOn:Z

    if-nez v0, :cond_20

    .line 1213
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$3600(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->getNightRelation(Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 1214
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$3700(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p0

    const-string v0, "key_super_night"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method onShutterStart()V
    .registers 4

    .line 1244
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->onShutterStart()V

    .line 1245
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$3900(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CaptureFlow] onShutterStart, mIsCapturing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->mIsCapturing:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
