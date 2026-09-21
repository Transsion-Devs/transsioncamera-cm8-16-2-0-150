.class Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableNightCaptureFlow;
.super Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StableNightCaptureFlow"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V
    .registers 2

    .line 1249
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableNightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;-><init>(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V

    return-void
.end method


# virtual methods
.method getShutterTypeSelfTimerOff()I
    .registers 1

    const/4 p0, 0x5

    return p0
.end method

.method getType()I
    .registers 1

    const/4 p0, 0x2

    return p0
.end method

.method onCaptureDone()Z
    .registers 2

    .line 1292
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->onCaptureDone()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1294
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableNightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$mstopCapturingAnim(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method onCaptureStart()V
    .registers 5

    .line 1278
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->onCaptureStart()V

    .line 1279
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->mIsCapturing:Z

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableNightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmSuperNightSupportCountDown(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1280
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableNightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmCurrentShutterValue(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)I

    move-result v0

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_4a

    .line 1281
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableNightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmCurrentShutterValue(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)I

    move-result v1

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->mIsPostAlgoOn:Z

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableNightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmShot2seeCountdownTime(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)I

    move-result v2

    goto :goto_2b

    :cond_2a
    const/4 v2, 0x0

    :goto_2b
    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fputmCurrentShutterValue(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;I)V

    .line 1282
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableNightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmModeUI(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableNightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmPreviewSize(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Landroid/util/Size;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableNightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmCurrentShutterValue(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableNightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;
    invoke-static {v3}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$4400(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->startProcessStepAnim(Landroid/util/Size;ILjava/lang/String;)V

    .line 1285
    :cond_4a
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->superNightAlgorithm(I)V

    .line 1286
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableNightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$4500(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v1, 0x122

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1287
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableNightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableNightCaptureFlow;->getType()I

    move-result p0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$mstartCapturingAnim(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;IZ)V

    return-void
.end method

.method onEnter()V
    .registers 3

    .line 1262
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->onEnter()V

    .line 1263
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableNightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$4000(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    const/4 v1, 0x1

    .line 1264
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->getStableNightRelation(Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 1263
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 1265
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableNightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$4100(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p0

    const-string v0, "key_super_night"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method onExit()V
    .registers 3

    .line 1270
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->onExit()V

    .line 1271
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableNightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$4200(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    const/4 v1, 0x0

    .line 1272
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->getStableNightRelation(Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 1271
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 1273
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableNightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$4300(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p0

    const-string v0, "key_super_night"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method onSettingChanged(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 1303
    const-string p0, "key_self_timer_status"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1d

    .line 1304
    const-string p0, "status_self_timer_begin"

    invoke-static {p2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1b

    const-string p0, "status_self_timer_end"

    .line 1305
    invoke-static {p2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1a

    goto :goto_1b

    :cond_1a
    return p1

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    return p0

    :cond_1d
    return p1
.end method
