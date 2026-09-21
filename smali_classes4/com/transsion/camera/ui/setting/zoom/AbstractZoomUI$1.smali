.class Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPreviewStateScaleStart:Z

.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)V
    .registers 2

    .line 1245
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShoulderButtonZoomSwipeEnd()V
    .registers 1

    return-void
.end method

.method public onShoulderButtonZoomSwiping(ZI)V
    .registers 3

    return-void
.end method

.method public onZoomClick(Z)V
    .registers 7

    .line 1251
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmPreviewStarted(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-eqz v0, :cond_212

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInFragment:Z

    if-nez v1, :cond_212

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    if-nez v1, :cond_212

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmRecordStopZoom(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_212

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmIsFilterSwitch(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_212

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsModeOrCameraSwitching:Z

    if-nez v1, :cond_212

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsSizeChanging:Z

    if-nez v1, :cond_212

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmInOrderEditorFragment(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_212

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmInEditWaterMarkFragment(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_212

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmInRemoteCaptureFragment(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_212

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmInMicroPanTilt(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_212

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmInShutterSoundOptionalFragment(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_212

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmInProWaterMarkFragment(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_212

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    .line 1254
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$mdisableZoomBySuperAntiVideo(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_212

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    .line 1255
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$misDVHintShowing(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-eqz v0, :cond_6a

    goto/16 :goto_212

    .line 1267
    :cond_6a
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmModeDisableTouchZoom(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_1fb

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$misZoomDisable(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-eqz v0, :cond_7c

    goto/16 :goto_1fb

    .line 1276
    :cond_7c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmClickZoomSupport(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_1c0

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmZoomUIState(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-eqz v0, :cond_8e

    goto/16 :goto_1c0

    .line 1285
    :cond_8e
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSmoothZoomValue:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_98

    .line 1286
    invoke-virtual {v0, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateSmoothStatus(I)V

    .line 1288
    :cond_98
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 1289
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    if-nez v0, :cond_a7

    sget v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->DEFAULT_ZOOM_VALUE:I

    goto :goto_ab

    :cond_a7
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_ab
    iput v0, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 1290
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fputmStartZoomValue(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;I)V

    .line 1291
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraId:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1292
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsSat()Z

    move-result v1

    .line 1293
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isIncreaseWideToMainCamera:Z

    .line 1295
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mFingerprintSupportZoom:Z

    if-eqz v1, :cond_da

    .line 1296
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const/16 v1, 0xa

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->calculateZoomPosByLongPress(ZI)I

    move-result v0

    goto :goto_e2

    .line 1298
    :cond_da
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const/16 v4, 0x64

    invoke-virtual {v1, p1, v4, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->calculateZoomPosByClick(ZIZ)I

    move-result v0

    .line 1300
    :goto_e2
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$misNearByStreamIdChanged(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v1

    if-eqz v1, :cond_100

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsSat()Z

    move-result v1

    if-eqz v1, :cond_100

    .line 1301
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    if-eqz p1, :cond_fb

    add-int/lit16 v1, v1, 0x3e8

    goto :goto_fd

    :cond_fb
    add-int/lit16 v1, v1, -0x3e8

    :goto_fd
    iput v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    goto :goto_110

    .line 1303
    :cond_100
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v4, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportedValues:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 1305
    :goto_110
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    if-eqz p1, :cond_116

    move p1, v2

    goto :goto_117

    :cond_116
    const/4 p1, -0x1

    :goto_117
    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getSwitchType(I)I

    move-result p1

    iput p1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSwitchType:I

    .line 1306
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$mupdateNextCameraIdByType(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)V

    .line 1307
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isSwitchingToWideCamera()Z

    move-result p1

    if-eqz p1, :cond_133

    .line 1308
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmThreshholdValue(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)I

    move-result v0

    iput v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    goto :goto_16d

    .line 1309
    :cond_133
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isSwitchingWideToMainCamera()Z

    move-result p1

    if-nez p1, :cond_15d

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isSwitchingToLong()Z

    move-result p1

    if-nez p1, :cond_15d

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isIncreaseWideToMainCamera:Z

    if-eqz v0, :cond_14e

    iget-boolean v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    if-nez v0, :cond_14e

    goto :goto_15d

    .line 1313
    :cond_14e
    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isSwitchingLongToMain()Z

    move-result p1

    if-eqz p1, :cond_16d

    .line 1314
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmValueLongFocusScrollToMain(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)I

    move-result v0

    iput v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    goto :goto_16d

    .line 1310
    :cond_15d
    :goto_15d
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmThreshholdValue(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)I

    move-result p1

    if-le v0, p1, :cond_16d

    .line 1311
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    sget v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->DEFAULT_ZOOM_VALUE:I

    iput v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 1316
    :cond_16d
    :goto_16d
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0xe2

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1317
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    if-nez v0, :cond_181

    .line 1318
    iget v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSwitchType:I

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$mswitchCameraByType(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;I)V

    .line 1320
    :cond_181
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setValueToSetting(I)V

    .line 1321
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0x17

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1322
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0xe0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1323
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateZoomValueToUI()V

    .line 1324
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->sendZoomUIMessage(Z)V

    .line 1325
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->sendZoomUIMessage(Z)V

    .line 1326
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    iput v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mLastCurrentValue:I

    .line 1327
    iget-object p1, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0xe1

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1328
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 p1, 0x18

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void

    .line 1277
    :cond_1c0
    :goto_1c0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onZoomClick] wrong status mModeDisableTouchZoom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmModeDisableTouchZoom(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mClickZoomSupport:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmClickZoomSupport(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mZoomUIState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmZoomUIState(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1268
    :cond_1fb
    :goto_1fb
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$mshouldResponseVolumeKey(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-eqz v0, :cond_211

    .line 1269
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p1, :cond_20c

    const/16 p1, 0x7c

    goto :goto_20e

    :cond_20c
    const/16 p1, 0x7d

    :goto_20e
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_211
    return-void

    .line 1256
    :cond_212
    :goto_212
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onZoomClick,return] mPreviewStarted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmPreviewStarted(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mInFragment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInFragment:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsCapturing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsFilterSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmIsFilterSwitch(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsModeOrCameraSwitching: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsModeOrCameraSwitching:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsSizeChanging: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsSizeChanging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mInOrderEditorFragment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmInOrderEditorFragment(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mInEditWaterMarkFragment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmInEditWaterMarkFragment(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mInProWaterMarkFragment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmInProWaterMarkFragment(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mInRemoteCaptureFragment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmInRemoteCaptureFragment(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mInShutterSoundOptionalFragment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmInShutterSoundOptionalFragment(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mInMicroPanTilt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmInMicroPanTilt(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRecordStopZoom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmRecordStopZoom(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onZoomScaleEnd(Z)V
    .registers 5

    .line 1452
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->mPreviewStateScaleStart:Z

    if-eqz v0, :cond_f3

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    if-nez v1, :cond_f3

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmRecordStopZoom(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_f3

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmModeDisableTouchZoom(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_f3

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmInProWaterMarkFragment(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto/16 :goto_f3

    .line 1455
    :cond_22
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmClickZoomSupport(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_c7

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmZoomUIState(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-eqz v0, :cond_34

    goto/16 :goto_c7

    .line 1460
    :cond_34
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSmoothZoomValue:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3e

    .line 1461
    invoke-virtual {v0, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateSmoothStatus(I)V

    .line 1463
    :cond_3e
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fputmStepCount(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;I)V

    .line 1464
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    if-eqz p1, :cond_4a

    move p1, v2

    goto :goto_4b

    :cond_4a
    const/4 p1, -0x1

    :goto_4b
    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getSwitchType(I)I

    move-result p1

    iput p1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSwitchType:I

    .line 1465
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsModeOrCameraSwitching:Z

    if-nez v0, :cond_5a

    .line 1466
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$mupdateNextCameraIdByType(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)V

    .line 1468
    :cond_5a
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isSwitchingToWideCamera()Z

    move-result p1

    if-eqz p1, :cond_6b

    .line 1469
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmThreshholdValue(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)I

    move-result v0

    iput v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    goto :goto_9d

    .line 1470
    :cond_6b
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isSwitchingWideToMainCamera()Z

    move-result p1

    if-nez p1, :cond_8d

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isSwitchingToLong()Z

    move-result p1

    if-eqz p1, :cond_7c

    goto :goto_8d

    .line 1474
    :cond_7c
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isSwitchingLongToMain()Z

    move-result p1

    if-eqz p1, :cond_9d

    .line 1475
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmValueLongFocusScrollToMain(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)I

    move-result v0

    iput v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    goto :goto_9d

    .line 1471
    :cond_8d
    :goto_8d
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmThreshholdValue(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)I

    move-result p1

    if-le v0, p1, :cond_9d

    .line 1472
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    sget v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->DEFAULT_ZOOM_VALUE:I

    iput v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 1477
    :cond_9d
    :goto_9d
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    if-nez v0, :cond_a8

    .line 1478
    iget v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSwitchType:I

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$mswitchCameraByType(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;I)V

    .line 1480
    :cond_a8
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iput-boolean v1, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsZoomClick:Z

    .line 1481
    invoke-virtual {p1, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setSeekBarEnable(Z)V

    .line 1482
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->sendZoomUIMessage(Z)V

    .line 1483
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0x18

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1484
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 p1, 0xe3

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void

    .line 1456
    :cond_c7
    :goto_c7
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onZoomScaleEnd] wrong status mClickZoomSupport:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmClickZoomSupport(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mZoomUIState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmZoomUIState(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_f3
    :goto_f3
    return-void
.end method

.method public onZoomScaleStart(Z)V
    .registers 5

    .line 1333
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmPreviewStarted(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->mPreviewStateScaleStart:Z

    if-eqz v0, :cond_182

    .line 1334
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInFragment:Z

    if-nez v1, :cond_182

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmRecordStopZoom(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_182

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmModeDisableTouchZoom(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_182

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    if-nez v1, :cond_182

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmIsFilterSwitch(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_182

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsModeOrCameraSwitching:Z

    if-nez v1, :cond_182

    .line 1335
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$misZoomLayoutUpdated(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_182

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmInOrderEditorFragment(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_182

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmInEditWaterMarkFragment(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_182

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmInProWaterMarkFragment(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_182

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmInRemoteCaptureFragment(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_182

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmInShutterSoundOptionalFragment(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_182

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmInMicroPanTilt(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_182

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    .line 1337
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$mdisableZoomBySuperAntiVideo(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_182

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    .line 1338
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$misDVHintShowing(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_182

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$misZoomDisable(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-eqz v0, :cond_80

    goto/16 :goto_182

    .line 1350
    :cond_80
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmClickZoomSupport(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_155

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmZoomUIState(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-eqz v0, :cond_92

    goto/16 :goto_155

    .line 1357
    :cond_92
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSmoothZoomValue:I

    const/4 v2, 0x0

    if-eqz v1, :cond_9c

    .line 1358
    invoke-virtual {v0, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateSmoothStatus(I)V

    .line 1360
    :cond_9c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_ad

    .line 1362
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    sget v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->DEFAULT_ZOOM_VALUE:I

    iput v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    goto :goto_b5

    .line 1364
    :cond_ad
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 1366
    :goto_b5
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fputmStartZoomValue(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;I)V

    .line 1367
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fputmStepCount(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;I)V

    .line 1369
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const/4 v1, 0x1

    if-eqz p1, :cond_c8

    move p1, v1

    goto :goto_c9

    :cond_c8
    const/4 p1, -0x1

    :goto_c9
    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getSwitchType(I)I

    move-result p1

    iput p1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSwitchType:I

    .line 1370
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$mupdateNextCameraIdByType(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)V

    .line 1371
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isSwitchingToWideCamera()Z

    move-result p1

    if-eqz p1, :cond_e5

    .line 1372
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmThreshholdValue(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)I

    move-result v0

    iput v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    goto :goto_117

    .line 1373
    :cond_e5
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isSwitchingWideToMainCamera()Z

    move-result p1

    if-nez p1, :cond_107

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isSwitchingToLong()Z

    move-result p1

    if-eqz p1, :cond_f6

    goto :goto_107

    .line 1377
    :cond_f6
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isSwitchingLongToMain()Z

    move-result p1

    if-eqz p1, :cond_117

    .line 1378
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmValueLongFocusScrollToMain(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)I

    move-result v0

    iput v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    goto :goto_117

    .line 1374
    :cond_107
    :goto_107
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmThreshholdValue(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)I

    move-result p1

    if-le v0, p1, :cond_117

    .line 1375
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    sget v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->DEFAULT_ZOOM_VALUE:I

    iput v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 1380
    :cond_117
    :goto_117
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    if-nez v0, :cond_122

    .line 1381
    iget v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSwitchType:I

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$mswitchCameraByType(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;I)V

    .line 1383
    :cond_122
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setValueToSetting(I)V

    .line 1385
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iput-boolean v2, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsZoomUIHidedWhileScaling:Z

    .line 1387
    iget-object p1, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0xe2

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1388
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0x17

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1389
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iput-boolean v1, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsZoomClick:Z

    .line 1390
    invoke-virtual {p1, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setSeekBarEnable(Z)V

    .line 1391
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateZoomValueToUI()V

    .line 1392
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->sendZoomUIMessage(Z)V

    .line 1393
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mLastCurrentValue:I

    return-void

    .line 1351
    :cond_155
    :goto_155
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onZoomScaleStart] wrong status mClickZoomSupport:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmClickZoomSupport(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mZoomUIState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmZoomUIState(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1339
    :cond_182
    :goto_182
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onZoomScaleStart,return] mPreviewStarted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmPreviewStarted(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mInFragment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInFragment:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mIsCapturing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mIsFilterSwitch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmIsFilterSwitch(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mIsModeOrCameraSwitching:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsModeOrCameraSwitching:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mIsSizeChanging:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsSizeChanging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mInOrderEditorFragment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmInOrderEditorFragment(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mInEditWaterMarkFragment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmInEditWaterMarkFragment(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mInProWaterMarkFragment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmInProWaterMarkFragment(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mInRemoteCaptureFragment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmInRemoteCaptureFragment(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mInMicroPanTilt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmInMicroPanTilt(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mRecordStopZoom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmRecordStopZoom(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onZoomScaling(Z)V
    .registers 5

    .line 1399
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->mPreviewStateScaleStart:Z

    if-eqz v0, :cond_199

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInFragment:Z

    if-nez v1, :cond_199

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    if-nez v1, :cond_199

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmRecordStopZoom(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_199

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmModeDisableTouchZoom(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_199

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmIsFilterSwitch(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_199

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsZoomUIHidedWhileScaling:Z

    if-nez v1, :cond_199

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsModeOrCameraSwitching:Z

    if-nez v1, :cond_199

    .line 1400
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$misZoomLayoutUpdated(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_199

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmInOrderEditorFragment(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_199

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmInEditWaterMarkFragment(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_199

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmInProWaterMarkFragment(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_199

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmInRemoteCaptureFragment(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_199

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmInShutterSoundOptionalFragment(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_199

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmInMicroPanTilt(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_199

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    .line 1401
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$mdisableZoomBySuperAntiVideo(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_199

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    .line 1402
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$misDVHintShowing(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_199

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$misZoomDisable(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-eqz v0, :cond_7e

    goto/16 :goto_199

    .line 1415
    :cond_7e
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmClickZoomSupport(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_16c

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmZoomUIState(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-eqz v0, :cond_90

    goto/16 :goto_16c

    .line 1420
    :cond_90
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmStepCount(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fputmStepCount(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;I)V

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->calculateZoomPosByLongPress(ZI)I

    move-result v0

    .line 1421
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v2, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportedValues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 1422
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCurrentValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v2, v2, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mStepCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmStepCount(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1424
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const/4 v1, 0x1

    if-eqz p1, :cond_e0

    move p1, v1

    goto :goto_e1

    :cond_e0
    const/4 p1, -0x1

    :goto_e1
    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getSwitchType(I)I

    move-result p1

    iput p1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSwitchType:I

    .line 1425
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$mupdateNextCameraIdByType(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)V

    .line 1426
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isSwitchingToWideCamera()Z

    move-result p1

    if-eqz p1, :cond_fd

    .line 1427
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmThreshholdValue(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)I

    move-result v0

    iput v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    goto :goto_12f

    .line 1428
    :cond_fd
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isSwitchingWideToMainCamera()Z

    move-result p1

    if-nez p1, :cond_11f

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isSwitchingToLong()Z

    move-result p1

    if-eqz p1, :cond_10e

    goto :goto_11f

    .line 1432
    :cond_10e
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isSwitchingLongToMain()Z

    move-result p1

    if-eqz p1, :cond_12f

    .line 1433
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmValueLongFocusScrollToMain(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)I

    move-result v0

    iput v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    goto :goto_12f

    .line 1429
    :cond_11f
    :goto_11f
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmThreshholdValue(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)I

    move-result p1

    if-le v0, p1, :cond_12f

    .line 1430
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    sget v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->DEFAULT_ZOOM_VALUE:I

    iput v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 1435
    :cond_12f
    :goto_12f
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSwitchType:I

    if-eqz v0, :cond_13a

    .line 1436
    iget v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setValueToSetting(I)V

    .line 1438
    :cond_13a
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    if-nez v0, :cond_145

    .line 1439
    iget v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSwitchType:I

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$mswitchCameraByType(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;I)V

    .line 1441
    :cond_145
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setValueToSetting(I)V

    .line 1442
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0x17

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1443
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setSeekBarEnable(Z)V

    .line 1444
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateZoomValueToUI()V

    .line 1445
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->sendZoomUIMessage(Z)V

    .line 1446
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mLastCurrentValue:I

    return-void

    .line 1416
    :cond_16c
    :goto_16c
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onZoomScaling] wrong status mClickZoomSupport:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmClickZoomSupport(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mZoomUIState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmZoomUIState(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1403
    :cond_199
    :goto_199
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onZoomScaling,return] mPreviewStateScaleStart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->mPreviewStateScaleStart:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mInFragment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInFragment:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsCapturing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsFilterSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmIsFilterSwitch(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsZoomUIHidedWhileScaling: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsZoomUIHidedWhileScaling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsModeOrCameraSwitching: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsModeOrCameraSwitching:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isZoomLayoutUpdated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    .line 1406
    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$misZoomLayoutUpdated(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mInEditWaterMarkFragment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmInEditWaterMarkFragment(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mInProWaterMarkFragment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmInProWaterMarkFragment(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mInRemoteCaptureFragment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmInRemoteCaptureFragment(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mInOrderEditorFragment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmInOrderEditorFragment(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mInShutterSoundOptionalFragment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmInShutterSoundOptionalFragment(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRecordStopZoom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->-$$Nest$fgetmRecordStopZoom(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1403
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
