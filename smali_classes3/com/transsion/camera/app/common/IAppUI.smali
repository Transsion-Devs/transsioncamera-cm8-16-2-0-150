.class public interface abstract Lcom/transsion/camera/app/common/IAppUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
.implements Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;
.implements Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;
.implements Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;
.implements Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;
.implements Lcom/transsion/camera/app/common/battery/IBatteryListener;
.implements Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
.implements Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;
.implements Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;
.implements Lcom/transsion/camera/app/common/IAppUIControl$IContinuousShotControl;
.implements Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;
.implements Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;
.implements Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;
.implements Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;
.implements Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;
.implements Lcom/transsion/camera/app/common/IAppUIControl$IPrivacyControl;
.implements Lcom/transsion/camera/app/common/IAppUIControl$IMasterGuideControl;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/IAppUI$UIState;,
        Lcom/transsion/camera/app/common/IAppUI$AnimationType;
    }
.end annotation


# virtual methods
.method public abstract changeOrientation(I)I
.end method

.method public abstract changeUIWhenSwitchModeAfter()V
.end method

.method public abstract changeUIWhenSwitchModeBefore()V
.end method

.method public abstract createGuideFragment(Ljava/util/List;)Landroid/app/Fragment;
.end method

.method public abstract currentThreadIsMain()Z
.end method

.method public abstract enterEditWaterMarkFragment()V
.end method

.method public abstract enterGoldWaterMarkFragment()V
.end method

.method public abstract enterModeEditorFragment()V
.end method

.method public abstract enterProWaterMarkFragment()V
.end method

.method public abstract enterRemoteCaptureFragment()V
.end method

.method public abstract enterSettingUIBottom()V
.end method

.method public abstract enterShutterSoundOptionalFragment()V
.end method

.method public abstract exitModeOnMoreTab()V
.end method

.method public abstract getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;
.end method

.method public abstract getActionSound()Lcom/transsion/camera/utils/sound/IActionSound;
.end method

.method public abstract getActionTriggerTime(I)J
.end method

.method public abstract getAodUIOrientation()I
.end method

.method public abstract getAsyncInflater()Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;
.end method

.method public abstract getCurrentMode()Ljava/lang/String;
.end method

.method public abstract getCurrentModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;
.end method

.method public abstract getFloatingShutterRoot()Landroid/view/ViewGroup;
.end method

.method public abstract getGoogleLensUIButtonVisible()I
.end method

.method public abstract getGpuAlgorithmManager()Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;
.end method

.method public abstract getIMasterGuideUICommon()Lcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;
.end method

.method public abstract getMainHandler()Landroid/os/Handler;
.end method

.method public abstract getModeInflateRoot()Landroid/view/ViewGroup;
.end method

.method public abstract getModeInflateScrollRoot()Landroid/view/ViewGroup;
.end method

.method public abstract getModePickerContainer()Landroid/view/View;
.end method

.method public abstract getModePickerLayout()Landroid/view/View;
.end method

.method public abstract getMoreModeGuideLeftRoot()Landroid/view/View;
.end method

.method public abstract getOrientation()I
.end method

.method public abstract getPreviewBackgroundOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;
.end method

.method public abstract getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;
.end method

.method public abstract getPreviewSurfaceType()I
.end method

.method public abstract getRecentKeyMonitor()Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;
.end method

.method public abstract getRecordingOrientation()I
.end method

.method public abstract getScreenFormType()I
.end method

.method public abstract getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;
.end method

.method public abstract getSeparateCaptureNumber()I
.end method

.method public abstract getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
.end method

.method public abstract getSettingUIProvider()Lcom/transsion/camera/app/common/provider/SettingUIProvider;
.end method

.method public abstract getShutterButtonLayout()Landroid/view/View;
.end method

.method public abstract getShutterPriority()I
.end method

.method public abstract getShutterProcessingOrientation()I
.end method

.method public abstract getShutterSoundEffectList()[Ljava/lang/String;
.end method

.method public abstract getShutterSoundNameResIds()[I
.end method

.method public abstract getThumbnailView()Landroid/view/View;
.end method

.method public abstract getTopLayerRoot()Landroid/view/ViewGroup;
.end method

.method public abstract getTriggerSelfTimerPriority()I
.end method

.method public abstract getUIBusyController()Lcom/transsion/camera/app/common/IUIAnimatorController;
.end method

.method public abstract getVerticalModeSelector()Landroid/widget/FrameLayout;
.end method

.method public abstract getVoiceIntent()[Z
.end method

.method public abstract gotoGallery(Landroid/view/View;)V
.end method

.method public abstract hideCustomPreviewCover()V
.end method

.method public abstract hideFloatingShutterUI()V
.end method

.method public abstract hideInteractiveUI()V
.end method

.method public abstract hidePopSettingView()V
.end method

.method public abstract hideToast()V
.end method

.method public abstract interruptPhysicalKey(Z)V
.end method

.method public abstract isActivityPaused()Z
.end method

.method public abstract isCsShotByPhysicalKey()Z
.end method

.method public abstract isCsViewAnimationStart()Z
.end method

.method public abstract isFromIntent()Z
.end method

.method public abstract isLivePhotoOn()Z
.end method

.method public abstract isModeTabScrolling()Z
.end method

.method public abstract isSecureCamera()Z
.end method

.method public abstract isSellingPointVideoPlaying()Z
.end method

.method public abstract isShoulderKeyLongPress()Z
.end method

.method public abstract isSuperDefinition108MInLowPlatform()Z
.end method

.method public abstract isVoiceInteraction()Z
.end method

.method public abstract loadLatestThumbnail()V
.end method

.method public abstract needBuildBlurCoverView(Z)V
.end method

.method public abstract notifyCSNotSupport()V
.end method

.method public abstract notifyCsViewAnimationChange(Z)V
.end method

.method public abstract notifyLowTemperature()V
.end method

.method public abstract onFloatingShutterButtonMove(II)V
.end method

.method public abstract onLeaveAfterSwipeUp()V
.end method

.method public abstract onModePaused()V
.end method

.method public abstract onModeSettingReady()V
.end method

.method public abstract onPreviewClick()Z
.end method

.method public abstract onSatCameraChanged(I)V
.end method

.method public abstract playLivePhotoLottieAnimation()V
.end method

.method public abstract playThumbLottieAnimation()V
.end method

.method public abstract queryCameraModeState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
.end method

.method public abstract querySettingUIState(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
.end method

.method public abstract registerPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V
.end method

.method public abstract registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V
.end method

.method public abstract registerScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V
.end method

.method public abstract resetTBScrollerView()V
.end method

.method public abstract restoreCurrentModeByFacing(I)V
.end method

.method public abstract setAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock;)V
.end method

.method public abstract setAuxPreviewLensSupport(ZLjava/lang/String;)V
.end method

.method public abstract setAuxPreviewModeSupport(ZLjava/lang/String;)V
.end method

.method public abstract setAuxPreviewSize(II)V
.end method

.method public abstract setBackgroundPreviewModeSupport(Z)V
.end method

.method public abstract setBackgroundPreviewSize(II)V
.end method

.method public abstract setCameraReConnectListener(Lcom/transsion/camera/app/common/IAppUIListener$ICameraReConnectListener;)V
.end method

.method public abstract setCameraSwitchListener(Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;)V
.end method

.method public abstract setContinuousShotEnd(Z)V
.end method

.method public abstract setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V
.end method

.method public abstract setModeDataInfoListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeDataInfoListener;)V
.end method

.method public abstract setModeFeatureConfig(Lcom/transsion/camera/app/common/IModeFeatureConfig;)V
.end method

.method public abstract setModeFeatureSupport(Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;)V
.end method

.method public abstract setModeList(Ljava/util/List;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;)V
.end method

.method public abstract setModeName(Ljava/lang/String;)V
.end method

.method public abstract setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V
.end method

.method public abstract setModePickerSink(Z)V
.end method

.method public abstract setModeUIControl(Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;)V
.end method

.method public abstract setPreviewSize(II)V
.end method

.method public abstract setRestartPreviewListener(Lcom/transsion/camera/app/common/IAppUIListener$IRestartPreviewListener;)V
.end method

.method public abstract setSellingPointVideoPlaying(Z)V
.end method

.method public abstract setShutterEnabled(Z)V
.end method

.method public abstract setSurfaceStatusListener(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)V
.end method

.method public abstract setSwitchBlurCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;)V
.end method

.method public abstract setSwitchDualAndMainCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;)V
.end method

.method public abstract setSwitchDualCamBWCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;)V
.end method

.method public abstract setSwitchPeriscopeCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchPeriscopeCameraListener;)V
.end method

.method public abstract setSwitchSatCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;)V
.end method

.method public abstract setSwitchTeleCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;)V
.end method

.method public abstract setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V
.end method

.method public abstract setThumbnailClickable(Z)V
.end method

.method public abstract setUserInteractionListener(Lcom/transsion/camera/app/common/IAppUIListener$IUserInteractionListener;)V
.end method

.method public abstract setVideoPowerSavingListener(Lcom/transsion/camera/app/common/IAppUIListener$VideoPowerSavingListener;)V
.end method

.method public abstract setVolumeIntercept(Z)V
.end method

.method public abstract showCustomPreviewCover(Landroid/graphics/Bitmap;)V
.end method

.method public abstract showFloatingShutterUI(IIZZ)V
.end method

.method public abstract showOrHideHintLayout(Z)V
.end method

.method public abstract showOrHideModePickerFromUnderwater(Z)V
.end method

.method public showOrHideModePickerRootUI(ZZ)V
    .registers 4

    const/4 v0, 0x1

    .line 156
    invoke-interface {p0, p1, p2, v0}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZZ)V

    return-void
.end method

.method public abstract showOrHideModePickerRootUI(ZZZ)V
.end method

.method public abstract showOrHideShutterPanel(ZZIZ)V
.end method

.method public abstract showOrHideSwitcher(Z)V
.end method

.method public abstract showOrHideTopAndBottomView(Z)V
.end method

.method public abstract showPopItem()V
.end method

.method public abstract showPopSettingView()V
.end method

.method public abstract showToast(Lcom/transsion/camera/app/common/ui/HintInfo;)V
.end method

.method public abstract showToast(Lcom/transsion/camera/app/common/ui/HintInfo;I)V
.end method

.method public abstract skipInteractiveUpdate(Z)V
.end method

.method public abstract supportExternalStorage()Z
.end method

.method public abstract switchAnimEnd()V
.end method

.method public abstract switchCamera(Ljava/lang/String;)V
.end method

.method public abstract switchModeByOverlayGuide(Ljava/lang/String;)V
.end method

.method public abstract switchSatCamera(Ljava/lang/String;)V
.end method

.method public abstract switchSatCamera(Ljava/lang/String;Z)V
.end method

.method public abstract switchUnderwaterCamera(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract switchWideCamera(Ljava/lang/String;)V
.end method

.method public abstract unregisterPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V
.end method

.method public abstract unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V
.end method

.method public abstract unregisterScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V
.end method

.method public abstract updateBrowserData(Landroid/net/Uri;)V
.end method

.method public abstract updateBurstBrowserData(Landroid/net/Uri;Z)V
.end method

.method public abstract updateContinuousShotLightState(Z)V
.end method

.method public abstract updateCurrentCamera(Ljava/lang/String;Z)V
.end method

.method public abstract updateCurrentMode(Ljava/lang/String;)V
.end method

.method public abstract updateCurrentModes(Ljava/util/List;)V
.end method

.method public abstract updateCurrentModes(Ljava/util/List;ILjava/lang/String;)V
.end method

.method public abstract updateHelpGuide()V
.end method

.method public abstract updateHelpGuideIndex(I)V
.end method

.method public abstract updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V
.end method

.method public abstract updateMoreEditMode(Z)V
.end method

.method public abstract updateOnlyInteractiveUI()V
.end method

.method public abstract updatePopSettingUI()V
.end method

.method public abstract updatePreviewViewType(Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V
.end method

.method public abstract updateProcessingThumbUri(Landroid/net/Uri;Z)V
.end method

.method public abstract updateSwitchCameraUI(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateThumbnail(Landroid/graphics/Bitmap;)V
.end method

.method public abstract updateThumbnailUri(Landroid/net/Uri;)V
.end method

.method public abstract updateThumbnailUri(Landroid/net/Uri;Z)V
.end method

.method public abstract updateTopBarUI()V
.end method

.method public abstract updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateZoomInfo(Ljava/util/List;Ljava/lang/String;II)V
.end method
