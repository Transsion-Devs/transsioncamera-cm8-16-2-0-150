.class public interface abstract Lcom/transsion/camera/app/common/mode/ICameraMode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/ICameraControl$IModeConfig;
.implements Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;
.implements Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;
.implements Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;
.implements Lcom/transsion/camera/app/common/mode/IAeAfLock;
.implements Lcom/transsion/camera/app/common/IScreenFormControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;
    }
.end annotation


# virtual methods
.method public abstract buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
.end method

.method public abstract checkNotifyBgOfflineErr()V
.end method

.method public abstract configStream(Landroid/view/Surface;II)Landroid/view/Surface;
.end method

.method public abstract createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
.end method

.method public abstract destroyTask()V
.end method

.method public abstract getCameraIdForOpen(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;ZIZ)Ljava/lang/String;
.end method

.method public abstract getCurShutterPriority()I
.end method

.method public abstract getDataFlowType()I
.end method

.method public abstract getFpsRange()Landroid/util/Range;
.end method

.method public abstract getModeFeatureConfig()Lcom/transsion/camera/app/common/IModeFeatureConfig;
.end method

.method public abstract getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
.end method

.method public abstract getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
.end method

.method public abstract getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;
.end method

.method public abstract getModeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getOrientation()I
.end method

.method public abstract getOutputDataType()I
.end method

.method public abstract getPostAlgoFormat()I
.end method

.method public abstract getPostViewSize(Ljava/util/List;)Landroid/util/Size;
.end method

.method public abstract getPreviewSize(Ljava/util/List;)Landroid/util/Size;
.end method

.method public abstract getPreviewViewType()Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;
.end method

.method public abstract getSettingGroup()J
.end method

.method public abstract getThumbnailSource()I
.end method

.method public abstract getVideoRecodingOrientation()I
.end method

.method public abstract init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
.end method

.method public abstract initContext(Landroid/content/Context;)V
.end method

.method public abstract isBgCapturing()Z
.end method

.method public abstract isBgOfflineCapturing()Z
.end method

.method public abstract isFirstSteadyFrameCome()Z
.end method

.method public abstract isForceRecreateSession()Z
.end method

.method public abstract isInsensorZoomStatus(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
.end method

.method public abstract isLivePhotoMediaRecorderPrepared()Z
.end method

.method public abstract isModeNeedNotifyNewMedia()Z
.end method

.method public abstract isNeedDeviceCaptureSound()Z
.end method

.method public abstract isNotSupportWaitPageMode()Z
.end method

.method public abstract isSupportAuxPreview()Z
.end method

.method public abstract isSupportBackgroundPreview()Z
.end method

.method public abstract isSupportDualVideo()Z
.end method

.method public abstract isSupportPowerSavingMode()Z
.end method

.method public abstract isSupportSAT(Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
.end method

.method public abstract isSupportShutterSound()Z
.end method

.method public abstract isSupportSlavePreview()Z
.end method

.method public abstract isSupportVideoCamera()Z
.end method

.method public abstract isValid()Z
.end method

.method public abstract needQCSaveJpegToFile([BZJ)I
.end method

.method public abstract needQCUpdateThumbnailView(ILandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/mode/TimestampInfo;)I
.end method

.method public abstract needRebuildMode()Z
.end method

.method public abstract needUnintModeWhenPause()Z
.end method

.method public abstract notifyModeforSwitchDevice()V
.end method

.method public abstract notifySwitchByUser(Z)V
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)Z
.end method

.method public abstract onBackPressed()Z
.end method

.method public abstract onBackPressedForUI()Z
.end method

.method public abstract onBatteryStatusChanged(ZII)V
.end method

.method public abstract onContinueShutterStart()V
.end method

.method public abstract onFirstSteadyFrame()V
.end method

.method public abstract onLongPress()Z
.end method

.method public abstract onModeCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
.end method

.method public abstract onModeCaptureFailed(Z[J)V
.end method

.method public onModeCaptureProgressed(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
    .registers 3

    return-void
.end method

.method public abstract onModeCaptureStarted(JLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
.end method

.method public abstract onOrientationChanged(I)V
.end method

.method public abstract onPreviewTypeChanged(Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V
.end method

.method public abstract onSettingChangeDone(Ljava/lang/String;)V
.end method

.method public abstract onSettingChangeStart(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onShutterStart(ZJJ)V
.end method

.method public abstract onSingleTapUp()Z
.end method

.method public abstract onSurfaceDrawn()V
.end method

.method public abstract onThumbNailTypeConfirmed(I[IJ)V
.end method

.method public abstract pause()V
.end method

.method public queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 176
    sget-object p0, Lcom/transsion/camera/app/common/IAppUI$UIState;->UNKNOWN:Lcom/transsion/camera/app/common/IAppUI$UIState;

    return-object p0
.end method

.method public abstract recentAppsStart()V
.end method

.method public abstract removeCaptureInfo(Z)V
.end method

.method public abstract resetBgEnable()V
.end method

.method public abstract resume()V
.end method

.method public abstract setCallingPackage(Ljava/lang/String;)V
.end method

.method public abstract setGotoActivityListener(Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;)V
.end method

.method public abstract setInternalStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V
.end method

.method public abstract setModeBgCaptureListener(Lcom/transsion/camera/app/common/IApp$ModeBgCaptureListener;)V
.end method

.method public abstract setModeChangeFlag(Z)V
.end method

.method public abstract setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
.end method

.method public abstract setQuickCaptureManager(Lcom/transsion/camera/app/common/provider/QuickCaptureManager;)V
.end method

.method public abstract setSupportQuickCapture(Z)V
.end method

.method public abstract setSurfaceStatusListener(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)V
.end method

.method public abstract setThumbnailTransitionManager(Lcom/transsion/camera/app/common/thumbnailtransition/IThumbnailTransition;)V
.end method

.method public abstract stop()V
.end method

.method public abstract unInit()V
.end method

.method public abstract updateCapturedNumber(I)V
.end method

.method public abstract updateCurrentCameraId(Ljava/lang/String;)V
.end method

.method public abstract updateFastThumbSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;
.end method

.method public abstract updatePicSurface()Lcom/transsion/camera/app/common/mode/CaptureSurface;
.end method

.method public abstract updatePostAlgoPicSurface()Lcom/transsion/camera/app/common/mode/CaptureSurface;
.end method

.method public abstract updatePreviewSize(Landroid/util/Size;Landroid/util/Size;)V
.end method

.method public abstract updatePreviewViewType(Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V
.end method

.method public abstract updateQcomJpegPicSurface()Lcom/transsion/camera/app/common/mode/CaptureSurface;
.end method

.method public abstract updateQcomPicSurface()Lcom/transsion/camera/app/common/mode/CaptureSurface;
.end method

.method public abstract updateQcomRawSurface(I)[Lcom/transsion/camera/app/common/mode/CaptureSurface;
.end method

.method public abstract updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V
.end method

.method public abstract updateThumbnailSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;
.end method

.method public abstract updateYuvPicSurface()Lcom/transsion/camera/app/common/mode/CaptureSurface;
.end method
