.class Lcom/transsion/camera/adapter/CameraProxy2Impl;
.super Lcom/transsion/camera/adapter/CameraProxy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;,
        Lcom/transsion/camera/adapter/CameraProxy2Impl$HandlerExecutor;,
        Lcom/transsion/camera/adapter/CameraProxy2Impl$Shot2ShotCallbackHolder;,
        Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;,
        Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;,
        Lcom/transsion/camera/adapter/CameraProxy2Impl$IPreCaptureResultCallback;,
        Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureCallback;,
        Lcom/transsion/camera/adapter/CameraProxy2Impl$AFPreCaptureTimeOutCallback;,
        Lcom/transsion/camera/adapter/CameraProxy2Impl$AEPreCaptureTimeOutCallback;,
        Lcom/transsion/camera/adapter/CameraProxy2Impl$TimeOutCallback;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sCaptureID:I


# instance fields
.field private isDoStartPreview:Z

.field private isPostAlgoCapture:Z

.field private final mAEPreCaptureResultCallback:Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;

.field private final mAbortCaptureLock:Lcom/transsion/camera/utils/StateWait;

.field private mAeChangeMinDuration:I

.field private mAeChangeTimeOut:I

.field private mAeStable:Z

.field private mAfStable:Z

.field private mAuxPreviewSurface:Landroid/view/Surface;

.field private mAuxSurfaceModeSupport:Z

.field private mBackgroundPreviewSurface:Landroid/view/Surface;

.field private mBackgroundSurfaceModeSupport:Z

.field private mBackgroundSurfaceNeedShow:Z

.field private mCSPictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private final mCameraId:Ljava/lang/String;

.field private mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

.field private mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

.field private mCaptureResult:Landroid/hardware/camera2/CaptureResult;

.field private mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

.field private final mCaptureStateMonitor:Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;

.field private final mCheckAeAfStableForCapturing:Ljava/lang/Runnable;

.field private final mCheckAeStableForCapturing:Ljava/lang/Runnable;

.field private mCurShutterPriority:I

.field private mCurrentFacing:I

.field private mCurrentThermal:I

.field private mDeferredOutputConfigs:Ljava/util/List;

.field private mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

.field private mFastThumbSurface:Landroid/view/Surface;

.field private mForceAfTrigger:Z

.field private mGroupCaptureCount:I

.field private final mIgnoreTriggerAFIspVersions:Ljava/util/List;

.field private mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

.field private mInContinuousCapture:Z

.field private mIsAfTriggerStarted:Z

.field private mIsCancelCapture:Z

.field private mIsCaptureCoverAndSoundPlayed:Z

.field private mIsFinalizeConfigured:Z

.field private mIsGroupCapture:Z

.field private mIsGroupCaptureAnimationPlayed:Z

.field private mIsLegacyDevice:Z

.field private mIsOffLineSessionReady:Z

.field private mIsOfflineSessionError:Z

.field private mIsOfflineSessionSupport:Z

.field private mIsPause:Z

.field private mIsPrepareSuccess:Z

.field private mIsSettingPreviewUse:Z

.field private mIsSuperDefinitionCapture:Z

.field private mIsSupportOfflineForCapture:Z

.field private mIsSupportShutterSound:Z

.field private mModeThumbnailSource:I

.field private mNeedCaptureCoverAnimation:Z

.field private mNeedCaptureSound:Z

.field private mOfflineCaptureStatus:I

.field private mOfflineOpMode:I

.field private mOfflineSession:Landroid/hardware/camera2/CameraOfflineSession;

.field private final mOfflineSessionCallback:Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;

.field private mOfflineSessionHandler:Landroid/os/Handler;

.field private mOfflineSessionListener:Lcom/transsion/camera/adapter/CameraProxy$CameraOfflineSessionListener;

.field private mOutputType:I

.field private mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

.field private mPictureCount:I

.field protected mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

.field private mPostAlgoSensorIds:[I

.field private mPostAlgoStreamIdSupport:Z

.field private mPostAlgoSurfaces:[Landroid/view/Surface;

.field private mPreFlashStartTime:J

.field private mPreviewCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;

.field private mPreviewCoverCallback:Ljava/lang/ref/WeakReference;

.field private final mPreviewDataCallBack:Ljava/util/concurrent/atomic/AtomicReference;

.field private final mPreviewDataListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mPreviewFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

.field private mPreviewFrameCallbackTmp:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

.field private mPreviewSessionHighSpeed:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

.field private mPreviewStopFrameNum:I

.field private mPreviewSurface:Landroid/view/Surface;

.field private mPreviewYUVReader:Landroid/media/ImageReader;

.field private final mPreviewYUVReaderLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mQcomJpegSurface:Lcom/transsion/camera/adapter/IBGSurface;

.field private mRawImageSurface:[Landroid/view/Surface;

.field private mRecordSurface:Landroid/view/Surface;

.field private mRecorderState:Z

.field private mReduceFpsThermalThreshold:I

.field private volatile mReleased:Z

.field private mRequestHandler:Landroid/os/Handler;

.field private final mResponseHandler:Landroid/os/Handler;

.field private mSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private final mSessionRepeatCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mSessionState:I

.field private mSetRepeatingRequestTime:J

.field private mSettingPreviewDataCallBacks:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private mShot2ShotCallbackHolder:Lcom/transsion/camera/adapter/CameraProxy2Impl$Shot2ShotCallbackHolder;

.field private mShot2ShotCallbacks:Ljava/util/List;

.field private mShutterClickSampleId:I

.field private mShutterSoundEnabled:Z

.field private mShutterSoundLoaded:Z

.field private mSlavePreviewSurface:Landroid/view/Surface;

.field private mSlaveSurfaceModeSupport:Z

.field private mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

.field private final mSoundPlayerLock:Ljava/lang/Object;

.field private mStartVideoRecordingSampleId:I

.field private final mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private final mStateWait:Lcom/transsion/camera/utils/StateWait;

.field private mStopVideoRecordingSampleId:I

.field private mSupportHFPSAntiVideo:Z

.field private mSupportSuperAntiVideoV2:Z

.field private mSwitchOfflineType:I

.field private mThumbnailSurface:Landroid/view/Surface;

.field private final mTriggerAFPreCapture:Ljava/lang/Runnable;

.field private mUsePreAECaptureForSprd:Z

.field private mVideoFrameHeight:I

.field private mVideoFrameRate:I

.field private mVideoFrameWidth:I

.field private mVideoHDRInfoCallback:Lcom/transsion/camera/adapter/CameraProxy$VideoHDRInfoCallback;

.field private mYuvImageSurface:Lcom/transsion/camera/adapter/IBGSurface;


# direct methods
.method public static synthetic $r8$lambda$31Cbdzma5MiG0NIb6DTv7Het2LU(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;Z)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->lambda$startRecordingRequest$7(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$3aYrNcmG8f3q-9lu7yTWmOHk8PQ(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->lambda$loadSoundEffectSource$2(Lcom/transsion/camera/utils/sound/IActionSound;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$4AnIbEx4CobOHGfv-_1zYp_3XDA(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->lambda$doPreAECapture$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$NODAl9inrP-FbPnB3rAjkaj2zVs(Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;)V
    .registers 2

    .line 2984
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$Ngik3tvhvHzmldftNtUwLmCEixk(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->lambda$new$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$P7F5zU3Ak09Hc8smbgx9rZYsqvw(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->lambda$loadSoundEffectSource$1(Lcom/transsion/camera/utils/sound/IActionSound;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Tv4Rkw4fHMfYGjXtpBZJHedvF5M(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->lambda$loadSoundEffectSource$0(Lcom/transsion/camera/utils/sound/IActionSound;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$h1dJjb8WxG-UKyQ3E0Srb1-lbmM(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doOnPreAfFocused(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$kiF3k9uwkIaR2JUdiPiA4EiDBNM(Landroid/media/ImageReader;)V
    .registers 2

    const/4 v0, 0x0

    .line 4382
    invoke-virtual {p0, v0, v0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mXQh-hZeoIX1jjOH6ulEj3gIRME(Z)V
    .registers 4

    .line 1268
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [doShutterSoundPlay] onPlayDone success = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vrXzDfYS5cRpdR2If0EXyIJB3Fc(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->lambda$doAFAndCapture$8(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetisPostAlgoCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isPostAlgoCapture:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAEPreCaptureResultCallback(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAEPreCaptureResultCallback:Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAbortCaptureLock(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/utils/StateWait;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAbortCaptureLock:Lcom/transsion/camera/utils/StateWait;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraId(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCapturePictureCallback(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCaptureResultMonitor(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CaptureResultMonitor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCheckAeAfStableForCapturing(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Ljava/lang/Runnable;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCheckAeAfStableForCapturing:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGroupCaptureCount(Lcom/transsion/camera/adapter/CameraProxy2Impl;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mGroupCaptureCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmImageSurface(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/IBGSurface;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInContinuousCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mInContinuousCapture:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsCancelCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsCancelCapture:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsGroupCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsGroupCapture:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsGroupCaptureAnimationPlayed(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsGroupCaptureAnimationPlayed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsOffLineSessionReady(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsOffLineSessionReady:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsOfflineSessionError(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsOfflineSessionError:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPause(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsPause:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSettingPreviewUse(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsSettingPreviewUse:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedCaptureCoverAnimation(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mNeedCaptureCoverAnimation:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedCaptureSound(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mNeedCaptureSound:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOfflineCaptureStatus(Lcom/transsion/camera/adapter/CameraProxy2Impl;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOfflineCaptureStatus:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOfflineSession(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Landroid/hardware/camera2/CameraOfflineSession;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOfflineSession:Landroid/hardware/camera2/CameraOfflineSession;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOfflineSessionListener(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraProxy$CameraOfflineSessionListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOfflineSessionListener:Lcom/transsion/camera/adapter/CameraProxy$CameraOfflineSessionListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOutputType(Lcom/transsion/camera/adapter/CameraProxy2Impl;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOutputType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmParameters(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraParameters2Impl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPictureCount(Lcom/transsion/camera/adapter/CameraProxy2Impl;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPictureCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewCallback(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewDataCallBack(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewDataCallBack:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewFrameCallbackTmp(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewFrameCallbackTmp:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewYUVReader(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Landroid/media/ImageReader;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewYUVReaderLock(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReaderLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRawImageSurface(Lcom/transsion/camera/adapter/CameraProxy2Impl;)[Landroid/view/Surface;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRawImageSurface:[Landroid/view/Surface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReleased(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRequestHandler(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSession(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Landroid/hardware/camera2/CameraCaptureSession;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSetRepeatingRequestTime(Lcom/transsion/camera/adapter/CameraProxy2Impl;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSetRepeatingRequestTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingPreviewDataCallBacks(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSettingPreviewDataCallBacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwitchOfflineType(Lcom/transsion/camera/adapter/CameraProxy2Impl;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSwitchOfflineType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUsePreAECaptureForSprd(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mUsePreAECaptureForSprd:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputisDoStartPreview(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isDoStartPreview:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisPostAlgoCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isPostAlgoCapture:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAeStable(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAeStable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAfStable(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAfStable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCaptureResult(Lcom/transsion/camera/adapter/CameraProxy2Impl;Landroid/hardware/camera2/CaptureResult;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurShutterPriority(Lcom/transsion/camera/adapter/CameraProxy2Impl;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCurShutterPriority:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmGroupCaptureCount(Lcom/transsion/camera/adapter/CameraProxy2Impl;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mGroupCaptureCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInContinuousCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mInContinuousCapture:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsGroupCaptureAnimationPlayed(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsGroupCaptureAnimationPlayed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsOffLineSessionReady(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsOffLineSessionReady:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsOfflineSessionError(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsOfflineSessionError:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsSettingPreviewUse(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsSettingPreviewUse:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsSupportShutterSound(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsSupportShutterSound:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNeedCaptureSound(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mNeedCaptureSound:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOfflineCaptureStatus(Lcom/transsion/camera/adapter/CameraProxy2Impl;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOfflineCaptureStatus:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOfflineSession(Lcom/transsion/camera/adapter/CameraProxy2Impl;Landroid/hardware/camera2/CameraOfflineSession;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOfflineSession:Landroid/hardware/camera2/CameraOfflineSession;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPictureCount(Lcom/transsion/camera/adapter/CameraProxy2Impl;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPictureCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPreviewCallback(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPreviewFrameCallbackTmp(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewFrameCallbackTmp:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPreviewYUVReader(Lcom/transsion/camera/adapter/CameraProxy2Impl;Landroid/media/ImageReader;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckAeAfStableToCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->checkAeAfStableToCapture()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckAeSearching(Lcom/transsion/camera/adapter/CameraProxy2Impl;Landroid/hardware/camera2/CaptureResult;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->checkAeSearching(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckFaceAttributeInfo(Lcom/transsion/camera/adapter/CameraProxy2Impl;Landroid/hardware/camera2/CaptureResult;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->checkFaceAttributeInfo(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckShot2ShotResult(Lcom/transsion/camera/adapter/CameraProxy2Impl;Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->checkShot2ShotResult(Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdoCancelAutoFocus(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doCancelAutoFocus()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoPreAF(Lcom/transsion/camera/adapter/CameraProxy2Impl;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doPreAF(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoShutterSoundPlay(Lcom/transsion/camera/adapter/CameraProxy2Impl;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doShutterSoundPlay(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mflashStyleOneStage(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->flashStyleOneStage()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misAFSupport(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isAFSupport()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misImageClosed(Lcom/transsion/camera/adapter/CameraProxy2Impl;Landroid/media/Image;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isImageClosed(Landroid/media/Image;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misLongExposureMode(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isLongExposureMode()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misSatCamera(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isSatCamera()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misSatCameraForVideoMode(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isSatCameraForVideoMode()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misZoomBelow1X(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isZoomBelow1X()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnotifySession(Lcom/transsion/camera/adapter/CameraProxy2Impl;Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->notifySession(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifySessionFail(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->notifySessionFail()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mplayShutterSoundAndRunCaptureAnimation(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->playShutterSoundAndRunCaptureAnimation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetRepeatingRequest(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setRepeatingRequest()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateOnePeriodFlashTime(Lcom/transsion/camera/adapter/CameraProxy2Impl;Landroid/hardware/camera2/CaptureResult;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->updateOnePeriodFlashTime(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsCaptureID()I
    .registers 1

    .line 0
    sget v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->sCaptureID:I

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 85
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Proxy"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice;Landroid/os/Handler;Landroid/os/Handler;Landroid/os/Handler;)V
    .registers 12

    .line 226
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionState:I

    const-wide/16 v1, 0x0

    .line 92
    iput-wide v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSetRepeatingRequestTime:J

    .line 116
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsOfflineSessionSupport:Z

    const/4 v1, -0x1

    .line 117
    iput v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSwitchOfflineType:I

    .line 118
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsOffLineSessionReady:Z

    .line 119
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsOfflineSessionError:Z

    const/4 v2, 0x1

    .line 120
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsSupportOfflineForCapture:Z

    .line 121
    iput v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPictureCount:I

    const/4 v3, 0x0

    .line 124
    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSessionHighSpeed:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    const/4 v4, 0x2

    .line 141
    iput v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mModeThumbnailSource:I

    .line 145
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsPrepareSuccess:Z

    .line 146
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isDoStartPreview:Z

    .line 151
    iput v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOutputType:I

    .line 153
    new-instance v4, Lcom/transsion/camera/utils/StateWait;

    invoke-direct {v4}, Lcom/transsion/camera/utils/StateWait;-><init>()V

    iput-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mStateWait:Lcom/transsion/camera/utils/StateWait;

    .line 154
    new-instance v4, Lcom/transsion/camera/utils/StateWait;

    invoke-direct {v4}, Lcom/transsion/camera/utils/StateWait;-><init>()V

    iput-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAbortCaptureLock:Lcom/transsion/camera/utils/StateWait;

    .line 170
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayerLock:Ljava/lang/Object;

    .line 171
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShutterSoundEnabled:Z

    .line 172
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShutterSoundLoaded:Z

    .line 181
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShot2ShotCallbacks:Ljava/util/List;

    .line 182
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewDataCallBack:Ljava/util/concurrent/atomic/AtomicReference;

    .line 183
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSettingPreviewDataCallBacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 185
    iput v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewStopFrameNum:I

    .line 188
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsFinalizeConfigured:Z

    .line 189
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsCancelCapture:Z

    .line 191
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mUsePreAECaptureForSprd:Z

    .line 202
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAuxSurfaceModeSupport:Z

    .line 203
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSlaveSurfaceModeSupport:Z

    .line 210
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsPause:Z

    .line 212
    new-instance v4, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;

    invoke-direct {v4, p0, v3}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy2Impl-IA;)V

    iput-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureStateMonitor:Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;

    const/4 v3, 0x4

    .line 214
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x259

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x25a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIgnoreTriggerAFIspVersions:Ljava/util/List;

    .line 218
    new-instance v3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReaderLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 219
    iput v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOfflineOpMode:I

    .line 220
    iput v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOfflineCaptureStatus:I

    .line 221
    iput v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCurrentFacing:I

    .line 380
    new-instance v3, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;

    invoke-direct {v3, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOfflineSessionCallback:Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;

    .line 2227
    new-instance v3, Lcom/transsion/camera/adapter/CameraProxy2Impl$2;

    invoke-direct {v3, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$2;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mTriggerAFPreCapture:Ljava/lang/Runnable;

    .line 2394
    new-instance v3, Lcom/transsion/camera/adapter/CameraProxy2Impl$3;

    invoke-direct {v3, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$3;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCheckAeStableForCapturing:Ljava/lang/Runnable;

    .line 2403
    new-instance v3, Lcom/transsion/camera/adapter/CameraProxy2Impl$4;

    invoke-direct {v3, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$4;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCheckAeAfStableForCapturing:Ljava/lang/Runnable;

    .line 2489
    new-instance v3, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAEPreCaptureResultCallback:Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;

    .line 3757
    iput v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCurShutterPriority:I

    .line 3760
    iput v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mGroupCaptureCount:I

    .line 3761
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsGroupCapture:Z

    .line 3762
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsSuperDefinitionCapture:Z

    .line 3763
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsCaptureCoverAndSoundPlayed:Z

    .line 3764
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsSupportShutterSound:Z

    .line 4190
    new-instance v1, Lcom/transsion/camera/adapter/CameraProxy2Impl$10;

    invoke-direct {v1, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$10;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewDataListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 4245
    new-instance v1, Lcom/transsion/camera/adapter/CameraProxy2Impl$11;

    invoke-direct {v1, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$11;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionRepeatCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 4300
    new-instance v1, Lcom/transsion/camera/adapter/CameraProxy2Impl$12;

    invoke-direct {v1, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$12;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 227
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    .line 228
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraId:Ljava/lang/String;

    .line 229
    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 230
    iput-object p3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    .line 231
    iput-object p4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mResponseHandler:Landroid/os/Handler;

    .line 232
    iput-object p5, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOfflineSessionHandler:Landroid/os/Handler;

    .line 233
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setTagValue(Ljava/lang/String;)V

    .line 234
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCurrentFacing:I

    return-void
.end method

.method private cancelAF()V
    .registers 2

    .line 4179
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isQcomCaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsAfTriggerStarted:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    .line 4180
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsAfTriggerStarted:Z

    .line 4181
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->cancelAutoFocus()V

    :cond_12
    return-void
.end method

.method private checkAeAfStableToCapture()V
    .registers 4

    .line 2425
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] checkAeAfStableToCapture mAeStable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAeStable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mAfStable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAfStable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2428
    iget-boolean v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAeStable:Z

    if-eqz v1, :cond_7d

    iget-boolean v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAfStable:Z

    if-nez v1, :cond_2b

    goto :goto_7d

    .line 2432
    :cond_2b
    iget-boolean v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_53

    .line 2434
    const-string v1, "[CapturePerformance] camera proxy has release"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2435
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isOfflineJniSupport()Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRawImageSurface:[Landroid/view/Surface;

    if-eqz v0, :cond_49

    .line 2436
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mRawCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {p0, v2}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed(Z)V

    return-void

    .line 2438
    :cond_49
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {p0, v2}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed(Z)V

    return-void

    .line 2443
    :cond_53
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isAFSupport()Z

    move-result v1

    if-eqz v1, :cond_5e

    const/4 v1, 0x1

    .line 2444
    invoke-direct {p0, v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doOnPreAfFocused(Z)V

    goto :goto_63

    .line 2446
    :cond_5e
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    invoke-direct {p0, v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;)V

    .line 2449
    :goto_63
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->needFocusModeAuto()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 2450
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setFocusModeAuto(Z)V

    .line 2452
    :try_start_70
    const-string v1, "[CapturePerformance] triggerAFPreCapture end"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2453
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setRepeatingRequest()V
    :try_end_78
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_70 .. :try_end_78} :catch_79

    return-void

    :catch_79
    move-exception p0

    .line 2455
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7d
    :goto_7d
    return-void
.end method

.method private checkAeSearching(Landroid/hardware/camera2/CaptureResult;)V
    .registers 7

    .line 2467
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getAEState(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 2468
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 2469
    :goto_11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreFlashStartTime:J

    sub-long/2addr v1, v3

    if-eqz v0, :cond_a5

    .line 2470
    iget p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAeChangeMinDuration:I

    int-to-long v3, p1

    cmp-long p1, v1, v3

    if-lez p1, :cond_a5

    iget p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAeChangeTimeOut:I

    int-to-long v3, p1

    cmp-long p1, v1, v3

    if-gez p1, :cond_a5

    .line 2471
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->shouldDoTriggerForCapturing()Z

    move-result p1

    const-string v0, ", mAeChangeTimeOut: "

    if-eqz p1, :cond_69

    .line 2472
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCheckAeStableForCapturing:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_a5

    .line 2473
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCheckAeStableForCapturing:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2474
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAEPreCaptureResultCallback:Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->triggerAEPreCapturing(Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;)V

    .line 2475
    sget-object p1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] checkAeSearching triggerAEPreCapturing mAeChangeMinDuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAeChangeMinDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAeChangeTimeOut:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2479
    :cond_69
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->shouldTriggerAFBeforeFlashCapture()Z

    move-result p1

    if-nez p1, :cond_a5

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCheckAeAfStableForCapturing:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_a5

    .line 2480
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCheckAeAfStableForCapturing:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2481
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCheckAeAfStableForCapturing:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 2482
    sget-object p1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] checkAeSearching triggerAeAfStableForCapturing mAeChangeMinDuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAeChangeMinDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAeChangeTimeOut:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_a5
    return-void
.end method

.method private checkFaceAttributeInfo(Landroid/hardware/camera2/CaptureResult;)V
    .registers 3

    .line 4186
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkFaceAttributeInfo(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    .line 4187
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->setFaceAttributeInfo([I)V

    return-void
.end method

.method private checkShot2ShotResult(Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)Z
    .registers 8

    .line 4142
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mInContinuousCapture:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 4143
    sget-object p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "No need to check shot2shot when it is continuous shot"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 4147
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getShot2ShotMode()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_70

    .line 4148
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->checkShot2ShotResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    .line 4149
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShot2ShotCallbackHolder:Lcom/transsion/camera/adapter/CameraProxy2Impl$Shot2ShotCallbackHolder;

    if-eqz v0, :cond_70

    if-eqz p1, :cond_70

    .line 4150
    array-length v0, p1

    move v3, v1

    :goto_24
    if-ge v3, v0, :cond_70

    aget v4, p1, v3

    if-ne v4, v2, :cond_6d

    .line 4152
    const-string p1, "Shot2ShotOn"

    invoke-static {p1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 4153
    sget-object p1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "checkCaptureResult: onNextReady"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4154
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mNeedCaptureCoverAnimation:Z

    if-eqz v0, :cond_46

    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsCaptureCoverAndSoundPlayed:Z

    if-nez v0, :cond_46

    .line 4155
    const-string v0, "onNextReady, play sound and capture animation!"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4156
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->playShutterSoundAndRunCaptureAnimation()V

    .line 4158
    :cond_46
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShot2ShotCallbackHolder:Lcom/transsion/camera/adapter/CameraProxy2Impl$Shot2ShotCallbackHolder;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl$Shot2ShotCallbackHolder;->onNextReady(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    .line 4159
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureStateMonitor:Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->-$$Nest$monNextReady(Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;)V

    .line 4160
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShot2ShotCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_56
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    .line 4161
    invoke-interface {v0, p2}, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;->onNextReady(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    goto :goto_56

    .line 4163
    :cond_66
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->cancelAF()V

    .line 4164
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return v2

    :cond_6d
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_70
    return v1
.end method

.method private closeSession()V
    .registers 5

    .line 4377
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    if-eqz v0, :cond_7

    .line 4378
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->onPreviewStopped()V

    .line 4381
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda4;-><init>()V

    .line 4382
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 4384
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSessionHighSpeed:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 4385
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 4386
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSessionHighSpeed:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    .line 4387
    invoke-virtual {p0, v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setSession(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 4390
    :cond_22
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_58

    .line 4392
    :try_start_26
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    if-nez v0, :cond_34

    .line 4393
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2f} :catch_30

    goto :goto_34

    :catch_30
    move-exception v0

    .line 4396
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4400
    :cond_34
    :goto_34
    invoke-virtual {p0, v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setSession(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 4401
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeSession mSession, current thread:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4402
    iput v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionState:I

    .line 4404
    :cond_58
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_81

    .line 4405
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReaderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4407
    :try_start_69
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_75

    .line 4408
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 4409
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;
    :try_end_72
    .catchall {:try_start_69 .. :try_end_72} :catchall_73

    goto :goto_75

    :catchall_73
    move-exception v0

    goto :goto_7b

    .line 4412
    :cond_75
    :goto_75
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReaderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_8b

    :goto_7b
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReaderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 4413
    throw v0

    .line 4415
    :cond_81
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/adapter/CameraProxy2Impl$13;

    invoke-direct {v1, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$13;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_8b
    return-void
.end method

.method private configurationForVideoVideoHDR(Landroid/view/Surface;)Landroid/hardware/camera2/params/OutputConfiguration;
    .registers 7

    .line 1845
    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v0, p1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    .line 1846
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt p1, v1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    .line 1847
    :goto_e
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isHdr10PlusOn()Z

    move-result v1

    .line 1848
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isHlgFormat()Z

    move-result p0

    .line 1849
    sget-object v2, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isHdr10PlusOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isHlgFormat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_44

    if-eqz v1, :cond_3d

    const-wide/16 v1, 0x8

    .line 1852
    invoke-static {v0, v1, v2}, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticApiModelOutline1;->m(Landroid/hardware/camera2/params/OutputConfiguration;J)V

    :cond_3d
    if-eqz p0, :cond_44

    const-wide/16 p0, 0x2

    .line 1855
    invoke-static {v0, p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticApiModelOutline1;->m(Landroid/hardware/camera2/params/OutputConfiguration;J)V

    :cond_44
    return-object v0
.end method

.method private createCaptureSessionByConfigurations(ILjava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/hardware/camera2/CaptureRequest$Builder;)Z
    .registers 8

    .line 1866
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mStateWait:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/StateWait;->resetState()V

    .line 1868
    :try_start_5
    new-instance v0, Landroid/hardware/camera2/params/SessionConfiguration;

    new-instance v1, Lcom/transsion/camera/adapter/CameraProxy2Impl$HandlerExecutor;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mResponseHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/transsion/camera/adapter/CameraProxy2Impl$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    .line 1870
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->enableP3forQcomJpegCapture(Landroid/hardware/camera2/params/SessionConfiguration;)V

    .line 1871
    invoke-virtual {p4}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/SessionConfiguration;->setSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V

    .line 1872
    sget-object p1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "createCaptureSession start."

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1873
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V

    .line 1874
    const-string p2, "createCaptureSession end."

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_2c} :catch_3d
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_2c} :catch_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_2c} :catch_3d

    .line 1879
    const-string p2, "createCaptureSessionByConfigurations wait"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1880
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mStateWait:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/StateWait;->waitState()V

    .line 1881
    const-string p0, "createCaptureSessionByConfigurations wait done"

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :catch_3d
    move-exception p0

    .line 1876
    sget-object p1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "createCaptureSessionByConfigurations Exception:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private createDeferredSession(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;I)V
    .registers 6

    .line 1442
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createDeferredSession, deferredData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", sessionType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_2a

    .line 1445
    iput p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOutputType:I

    const/4 p2, 0x0

    .line 1446
    iput-boolean p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsFinalizeConfigured:Z

    .line 1447
    iget-object p2, p1, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->channel:Lcom/transsion/camera/adapter/CameraDataChannel;

    invoke-direct {p0, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->updateSurface(Lcom/transsion/camera/adapter/CameraDataChannel;)V

    .line 1449
    :cond_2a
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->createSession(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;)Z

    return-void
.end method

.method private createPhotoSession(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;)Z
    .registers 9

    .line 1529
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->closeSession()V

    .line 1530
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getPhotoOutputConfigurations(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_89

    if-eqz v0, :cond_21

    .line 1532
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v3}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaces()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    move v3, v2

    goto :goto_22

    :cond_21
    move v3, v1

    .line 1533
    :goto_22
    sget-object v4, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createPhotoSession previewAdded: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", supportAuxPreview: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p1, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->supportAuxPreview:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , supportSlavePreview:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p1, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->supportSlavePreview:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    xor-int/lit8 v5, v3, 0x1

    .line 1536
    iget-boolean p1, p1, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->supportAuxPreview:Z

    if-eqz p1, :cond_85

    if-eqz v0, :cond_68

    .line 1537
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaces()Ljava/util/List;

    move-result-object p1

    iget-object v5, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAuxPreviewSurface:Landroid/view/Surface;

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_68

    move p1, v2

    goto :goto_69

    :cond_68
    move p1, v1

    .line 1538
    :goto_69
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createPhotoSession auxAdded: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v3, :cond_84

    if-nez p1, :cond_82

    goto :goto_84

    :cond_82
    move v5, v1

    goto :goto_85

    :cond_84
    :goto_84
    move v5, v2

    :cond_85
    :goto_85
    if-eqz v5, :cond_89

    .line 1542
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mDeferredOutputConfigs:Ljava/util/List;

    :cond_89
    if-nez v0, :cond_8c

    return v1

    .line 1549
    :cond_8c
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    if-eqz p1, :cond_c1

    .line 1550
    invoke-interface {p1}, Lcom/transsion/camera/adapter/IBGSurface;->isUserBGService()Z

    move-result p1

    if-eqz p1, :cond_a8

    .line 1551
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {v3}, Lcom/transsion/camera/adapter/IBGSurface;->isBGEnable()Z

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {v4}, Lcom/transsion/camera/adapter/IBGSurface;->getId()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->configureBGService(ZI)V

    goto :goto_c1

    .line 1552
    :cond_a8
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {p1}, Lcom/transsion/camera/adapter/IBGSurface;->isUserTZService()Z

    move-result p1

    if-eqz p1, :cond_c1

    .line 1553
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {v3}, Lcom/transsion/camera/adapter/IBGSurface;->isBGEnable()Z

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {v4}, Lcom/transsion/camera/adapter/IBGSurface;->getId()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->configureTZService(ZI)V

    .line 1556
    :cond_c1
    :goto_c1
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->isSatModeSupport()Z

    move-result p1

    if-eqz p1, :cond_ce

    .line 1557
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->upadetMultiCropZoomRatio()V

    .line 1559
    :cond_ce
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    if-eqz p1, :cond_e9

    .line 1560
    invoke-virtual {p0, v2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getInnerCameraParameters(I)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object p1

    iget-boolean v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isDoStartPreview:Z

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    iget-object v5, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    .line 1561
    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    filled-new-array {v4, v5}, [Landroid/view/Surface;

    move-result-object v4

    .line 1560
    invoke-virtual {p1, v2, v3, v4}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilderByCustom(IZ[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    goto :goto_f9

    .line 1563
    :cond_e9
    invoke-virtual {p0, v2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getInnerCameraParameters(I)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object p1

    iget-boolean v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isDoStartPreview:Z

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    filled-new-array {v4}, [Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilderByCustom(IZ[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    .line 1566
    :goto_f9
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAuxPreviewSurface:Landroid/view/Surface;

    if-eqz v2, :cond_100

    .line 1567
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1570
    :cond_100
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraId:Ljava/lang/String;

    const-string v3, "58"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_115

    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSlaveSurfaceModeSupport:Z

    if-eqz v2, :cond_115

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSlavePreviewSurface:Landroid/view/Surface;

    if-eqz v2, :cond_115

    .line 1571
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1574
    :cond_115
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->createCaptureSessionByConfigurations(ILjava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result p0

    .line 1576
    sget-object p1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[createPhotoSession] result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", configurations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method private createSession(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;)Z
    .registers 14

    const/16 v0, 0x1e

    .line 1495
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x3c

    .line 1487
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x32

    .line 1485
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1454
    sget-object v3, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PreviewPerformance] createSession start, deferredData:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1456
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createSession: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOutputType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 1458
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->setSessionCreate(Z)V

    .line 1459
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    iget v6, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOutputType:I

    invoke-virtual {v4, v6}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->setSessionType(I)V

    .line 1460
    iget v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOutputType:I

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-ne v4, v5, :cond_60

    .line 1461
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getPhotoRange()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setPreviewFPSRange(Landroid/util/Range;)V

    .line 1462
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->createPhotoSession(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;)Z

    move-result p1

    goto/16 :goto_177

    :cond_60
    if-ne v4, v6, :cond_123

    .line 1464
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v4, v7}, Lcom/transsion/camera/adapter/CameraParameters;->setAutoFpsModeForISP(I)V

    .line 1465
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {v4}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->isHighFpsSupport()Z

    move-result v4

    .line 1466
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v8

    invoke-virtual {v8}, Lcom/transsion/camera/utils/CustomConfigUtil;->isVideoAutoFpsSupportOnlyBackMain()Z

    move-result v8

    if-eqz v8, :cond_81

    const-string v8, "0"

    iget-object v9, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraId:Ljava/lang/String;

    .line 1467
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8b

    .line 1468
    :cond_81
    iget-object v8, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v8}, Lcom/transsion/camera/adapter/CameraParameters;->getOpenAutoFps()Z

    move-result v8

    if-eqz v8, :cond_8b

    move v8, v5

    goto :goto_8c

    :cond_8b
    move v8, v7

    .line 1469
    :goto_8c
    iget-object v9, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v9}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperAntiVideoMode()Ljava/lang/String;

    move-result-object v9

    const-string v10, "on"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_ab

    iget-object v9, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    .line 1470
    invoke-virtual {v9}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperAntiVideoMode()Ljava/lang/String;

    move-result-object v9

    const-string v11, "ai"

    invoke-static {v9, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a9

    goto :goto_ab

    :cond_a9
    move v9, v7

    goto :goto_ac

    :cond_ab
    :goto_ab
    move v9, v5

    .line 1471
    :goto_ac
    iget-boolean v11, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSupportSuperAntiVideoV2:Z

    if-eqz v11, :cond_ba

    .line 1472
    iget-object v9, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v9}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperAntiVideoMode()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    :cond_ba
    if-eqz v8, :cond_c1

    .line 1476
    iget-object v10, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v10, v5}, Lcom/transsion/camera/adapter/CameraParameters;->setAutoFpsModeForISP(I)V

    .line 1478
    :cond_c1
    iget-object v5, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v5}, Lcom/transsion/camera/adapter/CameraParameters;->getHighFpsMode()Ljava/lang/String;

    move-result-object v5

    .line 1479
    const-string v10, "1"

    if-eqz v4, :cond_f6

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f6

    if-eqz v8, :cond_df

    .line 1482
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getPreviewFPSRange()Landroid/util/Range;

    move-result-object v0

    .line 1483
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v1, v6}, Lcom/transsion/camera/adapter/CameraParameters;->setAutoFpsModeForISP(I)V

    goto :goto_f0

    :cond_df
    if-eqz v9, :cond_eb

    .line 1484
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSupportHFPSAntiVideo:Z

    if-eqz v0, :cond_eb

    .line 1485
    new-instance v0, Landroid/util/Range;

    invoke-direct {v0, v2, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    goto :goto_f0

    .line 1487
    :cond_eb
    new-instance v0, Landroid/util/Range;

    invoke-direct {v0, v1, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1489
    :goto_f0
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setPreviewFPSRange(Landroid/util/Range;)V

    goto :goto_11e

    .line 1491
    :cond_f6
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraCapabilities;->getSupportedPreviewFPSRanges()Ljava/util/List;

    move-result-object v1

    .line 1492
    iget v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameRate:I

    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getSuitableRange(Ljava/util/List;I)Landroid/util/Range;

    move-result-object v1

    .line 1493
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoSuperNightScene()I

    move-result v2

    .line 1494
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v2, v4, :cond_119

    .line 1495
    new-instance v1, Landroid/util/Range;

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1497
    :cond_119
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setPreviewFPSRange(Landroid/util/Range;)V

    .line 1499
    :goto_11e
    invoke-direct {p0, p1, v7}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->createVideoSession(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;I)Z

    move-result p1

    goto :goto_177

    :cond_123
    const/4 v1, 0x3

    if-ne v4, v1, :cond_160

    .line 1502
    iget v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameRate:I

    invoke-direct {p0, v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isRunSMVRMode(I)Z

    move-result v1

    if-eqz v1, :cond_145

    .line 1503
    const-string v1, "VideoHighSpeed:createVideoSession"

    invoke-static {v3, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1504
    new-instance v1, Landroid/util/Range;

    iget v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameRate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1505
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setPreviewFPSRange(Landroid/util/Range;)V

    move v5, v7

    goto :goto_15b

    .line 1508
    :cond_145
    new-instance v0, Landroid/util/Range;

    iget v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameRate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1509
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setPreviewFPSRange(Landroid/util/Range;)V

    .line 1511
    :goto_15b
    invoke-direct {p0, p1, v5}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->createVideoSession(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;I)Z

    move-result p1

    goto :goto_177

    .line 1513
    :cond_160
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createSession unknown session type:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOutputType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move p1, v7

    .line 1515
    :goto_177
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0, v7}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->setSessionCreate(Z)V

    if-eqz p1, :cond_17f

    goto :goto_181

    .line 1519
    :cond_17f
    iput v6, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionState:I

    .line 1521
    :goto_181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PreviewPerformance] createSession end, session type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOutputType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", success:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1523
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return p1
.end method

.method private createVideoSession(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;I)Z
    .registers 11

    .line 1582
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createVideoSession  mPreviewSurface = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1583
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->closeSession()V

    .line 1584
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getVideoOutputConfigurations(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_94

    const/4 v3, 0x1

    if-eqz v1, :cond_39

    .line 1586
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v4}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaces()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    move v4, v3

    goto :goto_3a

    :cond_39
    move v4, v2

    .line 1587
    :goto_3a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createVideoSession previewAdded: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", supportBackgroundPreview: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p1, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->supportBackgroundPreview:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    xor-int/lit8 v5, v4, 0x1

    .line 1590
    iget-boolean v6, p1, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->supportBackgroundPreview:Z

    if-eqz v6, :cond_90

    if-eqz v1, :cond_74

    .line 1591
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v5}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaces()Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mBackgroundPreviewSurface:Landroid/view/Surface;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_74

    move v5, v3

    goto :goto_75

    :cond_74
    move v5, v2

    .line 1592
    :goto_75
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createVideoSession backgroundAdded: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v4, :cond_8f

    if-nez v5, :cond_8e

    goto :goto_8f

    :cond_8e
    move v3, v2

    :cond_8f
    :goto_8f
    move v5, v3

    :cond_90
    if-eqz v5, :cond_94

    .line 1596
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mDeferredOutputConfigs:Ljava/util/List;

    :cond_94
    if-eqz p1, :cond_98

    .line 1600
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mDeferredOutputConfigs:Ljava/util/List;

    :cond_98
    if-nez v1, :cond_9b

    return v2

    .line 1606
    :cond_9b
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->isSatModeSupport()Z

    move-result p1

    if-eqz p1, :cond_a8

    .line 1607
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->upadetMultiCropZoomRatio()V

    .line 1609
    :cond_a8
    iget-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsPrepareSuccess:Z

    const/4 v2, 0x3

    if-eqz p1, :cond_e1

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    if-eqz p1, :cond_e1

    .line 1611
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    if-eqz p1, :cond_ce

    .line 1612
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    .line 1613
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isLowPlatform()Z

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    iget-object v5, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    iget-object v6, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    invoke-virtual {v6}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v6

    filled-new-array {v4, v5, v6}, [Landroid/view/Surface;

    move-result-object v4

    .line 1612
    invoke-virtual {p1, v2, v3, v4}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilderByCustom(IZ[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    goto :goto_10c

    .line 1615
    :cond_ce
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    .line 1616
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isLowPlatform()Z

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    iget-object v5, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    filled-new-array {v4, v5}, [Landroid/view/Surface;

    move-result-object v4

    .line 1615
    invoke-virtual {p1, v2, v3, v4}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilderByCustom(IZ[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    goto :goto_10c

    .line 1619
    :cond_e1
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    if-eqz p1, :cond_fc

    .line 1620
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    .line 1621
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isLowPlatform()Z

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    iget-object v5, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    filled-new-array {v4, v5}, [Landroid/view/Surface;

    move-result-object v4

    .line 1620
    invoke-virtual {p1, v2, v3, v4}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilderByCustom(IZ[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    goto :goto_10c

    .line 1623
    :cond_fc
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    .line 1624
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isLowPlatform()Z

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    filled-new-array {v4}, [Landroid/view/Surface;

    move-result-object v4

    .line 1623
    invoke-virtual {p1, v2, v3, v4}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilderByCustom(IZ[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    .line 1627
    :goto_10c
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    if-eqz v2, :cond_13b

    .line 1628
    invoke-interface {v2}, Lcom/transsion/camera/adapter/IBGSurface;->isUserBGService()Z

    move-result v2

    if-eqz v2, :cond_128

    .line 1629
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {v3}, Lcom/transsion/camera/adapter/IBGSurface;->isBGEnable()Z

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {v4}, Lcom/transsion/camera/adapter/IBGSurface;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->configureBGService(ZI)V

    goto :goto_13b

    .line 1630
    :cond_128
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {v2}, Lcom/transsion/camera/adapter/IBGSurface;->isUserTZService()Z

    move-result v2

    if-eqz v2, :cond_13b

    .line 1631
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {v3}, Lcom/transsion/camera/adapter/IBGSurface;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setBGImageReaderId(I)V

    .line 1634
    :cond_13b
    :goto_13b
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mBackgroundPreviewSurface:Landroid/view/Surface;

    if-eqz v2, :cond_142

    .line 1635
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1637
    :cond_142
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-direct {p0, p2, v1, v2, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->createCaptureSessionByConfigurations(ILjava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result p1

    .line 1638
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[createVideoSession] sessionType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",result:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ",configurations:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ",mIsPrepareSuccess: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsPrepareSuccess:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p1
.end method

.method private currentParameter(Lcom/transsion/camera/adapter/CameraParameters;)[I
    .registers 6

    const/16 v0, 0x8

    .line 3102
    new-array v0, v0, [I

    .line 3103
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionHDR()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 3104
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionLowLightMode()I

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 3105
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportedMegSuperNight()Z

    move-result p0

    if-eqz p0, :cond_1f

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getMegSuperNight()I

    move-result p0

    goto :goto_20

    :cond_1f
    move p0, v2

    :goto_20
    const/4 v1, 0x2

    aput p0, v0, v1

    const/4 p0, 0x3

    .line 3106
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getAisMode()I

    move-result v1

    aput v1, v0, p0

    .line 3107
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mTurboFusionEnable:Z

    const/4 v1, 0x4

    if-eqz p0, :cond_3a

    .line 3108
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionTurboFusionMode()I

    move-result p0

    aput p0, v0, v1

    goto :goto_48

    .line 3109
    :cond_3a
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperAiRawEnable:Z

    if-eqz p0, :cond_48

    .line 3110
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperAIRawMode()I

    move-result p0

    aput p0, v0, v1

    :cond_48
    :goto_48
    const/4 p0, 0x5

    .line 3112
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getRawScene()I

    move-result v1

    aput v1, v0, p0

    .line 3113
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getBestMomentDetectMode()I

    move-result p0

    const/4 v1, 0x6

    if-nez p0, :cond_66

    .line 3114
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getMotionCaptureMode()I

    move-result p0

    if-nez p0, :cond_66

    .line 3115
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getBestMomentRawHDRMode()I

    move-result p0

    if-eqz p0, :cond_63

    goto :goto_66

    .line 3118
    :cond_63
    aput v2, v0, v1

    goto :goto_68

    .line 3116
    :cond_66
    :goto_66
    aput v3, v0, v1

    :goto_68
    const/4 p0, 0x7

    .line 3120
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getRawSuperResolutionMode()I

    move-result p1

    aput p1, v0, p0

    return-object v0
.end method

.method private doAFAndCapture()V
    .registers 5

    .line 3302
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] doAFAndCapture ++"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3303
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setFocusModeAuto(Z)V

    .line 3305
    :try_start_d
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setRepeatingRequest()V
    :try_end_10
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_d .. :try_end_10} :catch_19
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_10} :catch_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_10} :catch_19

    .line 3312
    new-instance v0, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda13;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doPreAF(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V

    return-void

    :catch_19
    move-exception v0

    .line 3307
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setFocusModeAuto(Z)V

    .line 3308
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {p0, v1}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed(Z)V

    .line 3309
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private doAddPreviewCallBack(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V
    .registers 4

    .line 3689
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewDataCallBack:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3690
    sget-object p1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doAddPreviewCallBack, callback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewDataCallBack:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doAutoFocus(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V
    .registers 9

    .line 3239
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_af

    if-eqz p1, :cond_af

    .line 3240
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    if-eqz v1, :cond_af

    iget-boolean v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    if-eqz v1, :cond_10

    goto/16 :goto_af

    .line 3245
    :cond_10
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_24

    .line 3246
    sget-object p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "doAutoFocus while preview not started."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 3247
    invoke-interface {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;->onAutoFocus(Z)V

    return-void

    .line 3250
    :cond_24
    new-instance v1, Lcom/transsion/camera/adapter/CameraProxy2Impl$6;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl$6;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V

    .line 3268
    iget-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecorderState:Z

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz p1, :cond_36

    .line 3269
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    goto :goto_3e

    .line 3271
    :cond_36
    invoke-virtual {p0, v3}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getInnerCameraParameters(I)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object p1

    .line 3272
    invoke-virtual {p1, v3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    .line 3275
    :goto_3e
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    if-eqz v4, :cond_52

    .line 3276
    iget-object v5, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    iget-object v6, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    filled-new-array {v6, v4}, [Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v5, p1, v4}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->addSurfaceToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V

    goto :goto_5d

    .line 3278
    :cond_52
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    iget-object v5, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    filled-new-array {v5}, [Landroid/view/Surface;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->addSurfaceToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V

    .line 3280
    :goto_5d
    iget-boolean v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecorderState:Z

    if-eqz v4, :cond_6e

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    if-eqz v4, :cond_6e

    .line 3281
    iget-object v5, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    filled-new-array {v4}, [Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v5, p1, v4}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->addSurfaceToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V

    .line 3283
    :cond_6e
    sget-object v4, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v5, "doAutoFocus"

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3284
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 3285
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3284
    invoke-virtual {p1, v5, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3287
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->startAF()V

    .line 3288
    iget v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOutputType:I

    if-ne v3, v2, :cond_a5

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSessionHighSpeed:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    if-eqz v2, :cond_a5

    .line 3290
    :try_start_8b
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object p1

    .line 3291
    const-string v0, "doAutoFocus: mPreviewSessionHighSpeed.captureBurst()"

    invoke-static {v4, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3292
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSessionHighSpeed:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, p0}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_9f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8b .. :try_end_9f} :catch_a0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_8b .. :try_end_9f} :catch_a0

    return-void

    :catch_a0
    move-exception p0

    .line 3294
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    .line 3297
    :cond_a5
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    return-void

    .line 3242
    :cond_af
    :goto_af
    sget-object p1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doAutoFocus is error, mSession:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mParameters:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doAutoFocusPreAFCapture()V
    .registers 5

    .line 3325
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] doAutoFocusPreAFCapture"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3326
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setFocusModeAuto(Z)V

    .line 3328
    :try_start_d
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setRepeatingRequest()V
    :try_end_10
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_d .. :try_end_10} :catch_19
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_10} :catch_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_10} :catch_19

    .line 3335
    new-instance v0, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda11;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doPreAF(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V

    return-void

    :catch_19
    move-exception v0

    .line 3330
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setFocusModeAuto(Z)V

    .line 3331
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {p0, v1}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed(Z)V

    .line 3332
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private doCancelAutoFocus()V
    .registers 6

    .line 3543
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    if-eqz v0, :cond_9a

    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    if-eqz v0, :cond_e

    goto/16 :goto_9a

    .line 3548
    :cond_e
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecorderState:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_1a

    .line 3549
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    goto :goto_23

    :cond_1a
    const/4 v0, 0x1

    .line 3551
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getInnerCameraParameters(I)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object v2

    .line 3552
    invoke-virtual {v2, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 3555
    :goto_23
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    if-eqz v2, :cond_37

    .line 3556
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    filled-new-array {v4, v2}, [Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->addSurfaceToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V

    goto :goto_42

    .line 3558
    :cond_37
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    filled-new-array {v3}, [Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->addSurfaceToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V

    .line 3560
    :goto_42
    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecorderState:Z

    if-eqz v2, :cond_53

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    if-eqz v2, :cond_53

    .line 3561
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    filled-new-array {v2}, [Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->addSurfaceToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V

    .line 3563
    :cond_53
    sget-object v2, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "doCancelAutoFocus"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3564
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v3, v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->requestCancelFocus(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 3565
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->cancelAF()V

    .line 3566
    iget v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOutputType:I

    const/4 v4, 0x0

    if-ne v3, v1, :cond_87

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSessionHighSpeed:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    if-eqz v1, :cond_87

    .line 3568
    :try_start_6d
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object v0

    .line 3569
    const-string v1, "doCancelAutoFocus: mPreviewSessionHighSpeed.captureBurst()"

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3570
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSessionHighSpeed:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v4, p0}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_81
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6d .. :try_end_81} :catch_82
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6d .. :try_end_81} :catch_82
    .catch Ljava/lang/IllegalStateException; {:try_start_6d .. :try_end_81} :catch_82

    return-void

    :catch_82
    move-exception p0

    .line 3573
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_99

    .line 3577
    :cond_87
    :try_start_87
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_99

    .line 3579
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v4, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_94
    .catch Ljava/lang/IllegalArgumentException; {:try_start_87 .. :try_end_94} :catch_95
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_87 .. :try_end_94} :catch_95
    .catch Ljava/lang/IllegalStateException; {:try_start_87 .. :try_end_94} :catch_95

    return-void

    :catch_95
    move-exception p0

    .line 3583
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_99
    :goto_99
    return-void

    .line 3544
    :cond_9a
    :goto_9a
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doCancelAutoFocus is error, mSession:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mParameters:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doCancelCapture()V
    .registers 5

    .line 2592
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_c

    .line 2593
    sget-object p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "doCancelCapture is error, mSession is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2596
    :cond_c
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doCancelCapture"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2597
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsCancelCapture:Z

    .line 2599
    :try_start_16
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAbortCaptureLock:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/StateWait;->resetState()V

    .line 2600
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 2601
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->onPreviewStopped()V

    .line 2602
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAbortCaptureLock:Lcom/transsion/camera/utils/StateWait;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/utils/StateWait;->waitState(J)V
    :try_end_2c
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_16 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_2c} :catch_2d

    goto :goto_48

    :catch_2d
    move-exception v0

    .line 2604
    sget-object v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doCancelCapture exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2606
    :goto_48
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setRepeatingRequest()V

    return-void
.end method

.method private doCapture(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V
    .registers 5

    .line 2148
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    .line 2150
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "doCapture is error, mSession is null"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2151
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isQcomCaptureFlow()Z

    move-result p0

    if-eqz p0, :cond_18

    .line 2152
    iget-object p0, p1, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mRawCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {p0, v1}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed(Z)V

    return-void

    .line 2154
    :cond_18
    iget-object p0, p1, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {p0, v1}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed(Z)V

    return-void

    .line 2159
    :cond_1e
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsCancelCapture:Z

    .line 2160
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->createCapturePictureCallback(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    .line 2161
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->triggerFrontFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2162
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isMTKCaptureFlow()Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 2163
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->ledFlashRealOn()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setLedFlashState(Z)V

    .line 2165
    :cond_3d
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getFlashFacade()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFlashFacade(Ljava/lang/String;)V

    .line 2166
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    if-eqz p1, :cond_60

    iget-object p1, p1, Lcom/transsion/camera/adapter/CaptureResultMonitor;->brightness:[I

    if-eqz p1, :cond_60

    array-length p1, p1

    if-lez p1, :cond_60

    .line 2167
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    iget-object v0, v0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->brightness:[I

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setBvValue(I)V

    .line 2169
    :cond_60
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isMTKCaptureFlow()Z

    move-result p1

    if-eqz p1, :cond_6c

    .line 2170
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doCaptureMTK()V

    return-void

    .line 2171
    :cond_6c
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isQcomCaptureFlow()Z

    move-result p1

    if-eqz p1, :cond_78

    .line 2172
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doCaptureQcom()V

    return-void

    .line 2174
    :cond_78
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doCaptureSprd()V

    return-void
.end method

.method private doCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;)V
    .registers 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 2874
    iget-object v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v3, 0x0

    if-eqz v0, :cond_4f2

    iget-boolean v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    if-eqz v0, :cond_f

    goto/16 :goto_4f2

    :cond_f
    const/4 v4, 0x1

    .line 2885
    :try_start_10
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isQcomCaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2886
    iget-object v0, v2, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object v0, v0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mRawCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onDoCapture()V

    goto :goto_2b

    :catchall_1e
    move-exception v0

    goto/16 :goto_4eb

    :catch_21
    move-exception v0

    goto/16 :goto_4ca

    .line 2888
    :cond_24
    iget-object v0, v2, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object v0, v0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onDoCapture()V

    .line 2890
    :goto_2b
    iput-boolean v3, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsSuperDefinitionCapture:Z

    .line 2891
    iput-boolean v3, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsGroupCapture:Z

    .line 2892
    iput-boolean v3, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsCaptureCoverAndSoundPlayed:Z

    .line 2895
    iget-object v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/adapter/CameraParameters;->setCapturing(Z)V

    .line 2896
    iget-object v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->algorithmMigrate()Z

    move-result v0

    .line 2897
    iget-object v5, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v5}, Lcom/transsion/camera/adapter/CameraParameters;->getLongExposureCaptureState()Ljava/lang/String;

    move-result-object v5

    .line 2898
    sget-object v6, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[doCapture] mYuvImageSurface: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mYuvImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", longExposureCaptureState: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", algorithmMigrate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " postAlgoOn = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    .line 2899
    invoke-virtual {v8}, Lcom/transsion/camera/adapter/CameraParameters;->postAlgoOn()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", mRawImageSurface = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRawImageSurface:[Landroid/view/Surface;

    .line 2900
    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", mNeedCaptureCoverAnimation = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mNeedCaptureCoverAnimation:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2898
    invoke-static {v6, v7}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2902
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/transsion/camera/utils/CustomConfigUtil;->isThumbnailPostView()Z

    move-result v7

    .line 2903
    iget v8, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mModeThumbnailSource:I

    .line 2904
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object v9

    iget-object v10, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    .line 2905
    invoke-virtual {v10}, Lcom/transsion/camera/adapter/CameraParameters;->getExposureTime()J

    move-result-wide v10

    invoke-direct {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->needTriggerPreCapture()Z

    move-result v12

    .line 2904
    invoke-interface {v9, v7, v10, v11, v12}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getCaptureThumbnailSource(ZJZ)I

    move-result v7

    .line 2903
    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 2906
    iget-object v8, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    sget v9, Lcom/transsion/camera/adapter/CameraProxy2Impl;->sCaptureID:I

    add-int/2addr v9, v4

    sput v9, Lcom/transsion/camera/adapter/CameraProxy2Impl;->sCaptureID:I

    invoke-virtual {v8, v9}, Lcom/transsion/camera/adapter/CameraParameters;->setCaptureId(I)V

    .line 2907
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isQcomCaptureFlow()Z

    move-result v8

    if-eqz v8, :cond_c7

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isRaw10OfflineJNISupport()Z

    move-result v8

    if-nez v8, :cond_c7

    move v7, v4

    .line 2911
    :cond_c7
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v8

    invoke-virtual {v8}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v8

    const/4 v9, 0x2

    if-eqz v8, :cond_e3

    .line 2912
    iget-object v8, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v8}, Lcom/transsion/camera/adapter/CameraParameters;->getFlashStyle()Ljava/lang/String;

    move-result-object v8

    const-string v10, "one_stage"

    invoke-static {v8, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_e3

    if-ne v7, v9, :cond_e3

    move v7, v4

    .line 2917
    :cond_e3
    iget-object v8, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v8}, Lcom/transsion/camera/adapter/CameraParameters;->postAlgoOn()Z

    move-result v8
    :try_end_e9
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_10 .. :try_end_e9} :catch_21
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_e9} :catch_21
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_e9} :catch_21
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_e9} :catch_21
    .catchall {:try_start_10 .. :try_end_e9} :catchall_1e

    const-string v10, "captureBurst"

    const-string v11, "[CapturePerformance][doCapture] START session start to captureBurst, thumbnailSource:"

    const-string v12, "[CapturePerformance][doCapture] END."

    if-eqz v8, :cond_1ce

    :try_start_f1
    iget-object v8, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v8}, Lcom/transsion/camera/adapter/CameraParameters;->getPostAlgoType()I

    move-result v8

    if-eqz v8, :cond_1ce

    iget-object v8, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPostAlgoSurfaces:[Landroid/view/Surface;

    if-eqz v8, :cond_1ce

    .line 2918
    iget-object v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->getStreamId()[I

    move-result-object v0

    .line 2919
    iget-object v5, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPostAlgoSurfaces:[Landroid/view/Surface;

    aget-object v6, v5, v3

    .line 2920
    aget-object v8, v5, v4

    .line 2922
    array-length v5, v5

    if-le v5, v9, :cond_158

    if-eqz v0, :cond_158

    array-length v5, v0

    if-lez v5, :cond_158

    move v5, v3

    move v14, v5

    .line 2923
    :goto_113
    iget-object v15, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPostAlgoSensorIds:[I

    const/16 v16, 0x0

    array-length v13, v15

    if-ge v5, v13, :cond_12f

    .line 2924
    aget v13, v0, v3

    aget v15, v15, v5

    if-ne v13, v15, :cond_12c

    if-nez v14, :cond_127

    .line 2926
    iget-object v6, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPostAlgoSurfaces:[Landroid/view/Surface;

    aget-object v6, v6, v5

    goto :goto_12b

    .line 2928
    :cond_127
    iget-object v8, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPostAlgoSurfaces:[Landroid/view/Surface;

    aget-object v8, v8, v5

    :goto_12b
    move v14, v4

    :cond_12c
    add-int/lit8 v5, v5, 0x1

    goto :goto_113

    .line 2933
    :cond_12f
    sget-object v5, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[CapturePerformance][doCapture] use postAlgo Surface: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ", tuningDataSurface: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " streamId = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_15a

    :cond_158
    const/16 v16, 0x0

    .line 2936
    :goto_15a
    iget-object v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-direct {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getPhotoRange()Landroid/util/Range;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/transsion/camera/adapter/CameraParameters;->setPreviewFPSRange(Landroid/util/Range;)V

    .line 2938
    iget-object v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mThumbnailSurface:Landroid/view/Surface;

    if-eqz v0, :cond_171

    invoke-direct {v1, v7}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->needThumbnailSurface(I)Z

    move-result v0

    if-eqz v0, :cond_171

    .line 2939
    iget-object v13, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mThumbnailSurface:Landroid/view/Surface;

    move-object/from16 v16, v13

    .line 2941
    :cond_171
    invoke-virtual {v1, v9}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getInnerCameraParameters(I)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object v13

    iget-object v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    .line 2942
    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v15

    iget-object v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    filled-new-array {v6, v8}, [Landroid/view/Surface;

    move-result-object v18

    const/4 v14, 0x2

    move-object/from16 v17, v0

    .line 2941
    invoke-virtual/range {v13 .. v18}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createMultiFrameRequest(ILandroid/view/Surface;Landroid/view/Surface;Lcom/transsion/camera/adapter/CameraParameters2Impl;[Landroid/view/Surface;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2943
    sget-object v5, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2944
    invoke-static {v10}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 2945
    iget-object v6, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v8, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v6, v0, v2, v8}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 2946
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 2947
    iget-object v0, v2, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object v0, v0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mShutterCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

    iget-object v6, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-direct {v1, v6}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->currentParameter(Lcom/transsion/camera/adapter/CameraParameters;)[I

    move-result-object v6

    iget-object v8, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v8}, Lcom/transsion/camera/adapter/CameraParameters;->getCaptureTime()J

    move-result-wide v8

    invoke-interface {v0, v7, v6, v8, v9}, Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;->onThumbNailTypeConfirmed(I[IJ)V

    .line 2948
    iput-boolean v4, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isPostAlgoCapture:Z

    .line 2949
    invoke-static {v5, v12}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2950
    iget-object v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->isHeavyCapturing()Z

    move-result v0

    if-eqz v0, :cond_4c3

    .line 2951
    invoke-direct {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setRepeatingRequest()V

    goto/16 :goto_4c3

    :cond_1ce
    const/16 v16, 0x0

    .line 2953
    iget-object v8, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRawImageSurface:[Landroid/view/Surface;

    if-eqz v8, :cond_379

    .line 2954
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isOfflineJniSupport()Z

    move-result v0

    if-eqz v0, :cond_1f9

    iget-object v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isOfflineInitSuccess()Z

    move-result v0

    if-nez v0, :cond_1f9

    .line 2955
    iget-object v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->initOffline()V

    .line 2956
    const-string v0, "[CapturePerformance] offline init failed"

    invoke-static {v6, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2957
    iget-object v0, v2, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object v0, v0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mRawCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {v0, v3}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed(Z)V
    :try_end_1f3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_f1 .. :try_end_1f3} :catch_21
    .catch Ljava/lang/IllegalStateException; {:try_start_f1 .. :try_end_1f3} :catch_21
    .catch Ljava/lang/NullPointerException; {:try_start_f1 .. :try_end_1f3} :catch_21
    .catch Ljava/lang/SecurityException; {:try_start_f1 .. :try_end_1f3} :catch_21
    .catchall {:try_start_f1 .. :try_end_1f3} :catchall_1e

    .line 3073
    iget-object v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setCapturing(Z)V

    return-void

    .line 2960
    :cond_1f9
    :try_start_1f9
    const-string v0, "[CapturePerformance][doCapture] E "

    invoke-static {v6, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2961
    iput v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOfflineCaptureStatus:I

    .line 2962
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object v0

    .line 2964
    new-array v5, v3, [Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 2965
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->getOfflineBurstCaptureNumber()I

    move-result v5

    .line 2966
    iget-object v8, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v8}, Lcom/transsion/camera/adapter/CameraParameters;->isEVListValid()Z

    move-result v8

    if-eqz v8, :cond_223

    .line 2967
    iget-object v5, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v5}, Lcom/transsion/camera/adapter/CameraParameters;->getFrameNumFromEVList()I

    move-result v5

    :cond_223
    move v14, v5

    .line 2969
    iget-object v5, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRawImageSurface:[Landroid/view/Surface;

    aget-object v5, v5, v3

    if-eqz v0, :cond_23d

    .line 2970
    array-length v8, v0

    if-le v8, v4, :cond_23d

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isMultiCamera()Z

    move-result v8

    if-eqz v8, :cond_23d

    .line 2971
    iget-object v5, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRawImageSurface:[Landroid/view/Surface;

    aget-object v8, v5, v3

    .line 2972
    aget-object v5, v5, v4

    move-object/from16 v21, v5

    move-object v5, v8

    goto :goto_23f

    :cond_23d
    move-object/from16 v21, v16

    .line 2974
    :goto_23f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[CapturePerformance][doCapture] physicalIds: "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2976
    iget-object v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mThumbnailSurface:Landroid/view/Surface;

    if-eqz v0, :cond_266

    invoke-direct {v1, v7}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->needThumbnailSurface(I)Z

    move-result v0

    if-eqz v0, :cond_266

    .line 2977
    iget-object v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mThumbnailSurface:Landroid/view/Surface;

    move-object/from16 v23, v0

    goto :goto_268

    :cond_266
    move-object/from16 v23, v16

    .line 2979
    :goto_268
    invoke-virtual {v1, v9}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getInnerCameraParameters(I)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object v17

    .line 2981
    invoke-direct {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isSatCamera()Z

    move-result v19

    invoke-direct {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isBlurCamera()Z

    move-result v20

    iget-object v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    filled-new-array {v5}, [Landroid/view/Surface;

    move-result-object v24

    const/16 v18, 0x2

    move-object/from16 v22, v0

    .line 2980
    invoke-virtual/range {v17 .. v24}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createMultiFrameRequestQcom(IZZLandroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;[Landroid/view/Surface;)Ljava/util/ArrayList;

    move-result-object v0

    move-object/from16 v5, v21

    .line 2982
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2983
    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 2984
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v13

    new-instance v15, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda12;

    invoke-direct {v15, v8}, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda12;-><init>(Ljava/util/List;)V

    invoke-interface {v13, v15}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 2985
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isOfflineJniSupport()Z

    move-result v13

    if-eqz v13, :cond_326

    .line 2986
    invoke-direct {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getOfflineOpMode()I

    move-result v13

    .line 2987
    invoke-direct {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isSatCamera()Z

    move-result v15

    if-eqz v15, :cond_2b1

    iget-object v15, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v15}, Lcom/transsion/camera/adapter/CameraParameters;->getSatPictureSize()Landroid/util/Size;

    move-result-object v15

    :goto_2ae
    move/from16 v17, v9

    goto :goto_2b8

    :cond_2b1
    iget-object v15, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v15}, Lcom/transsion/camera/adapter/CameraParameters;->getPictureSize()Landroid/util/Size;

    move-result-object v15

    goto :goto_2ae

    .line 2988
    :goto_2b8
    iget-object v9, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v9}, Lcom/transsion/camera/adapter/CameraParameters;->getRawPictureSize()Ljava/util/List;

    move-result-object v9

    .line 2989
    invoke-direct {v1, v9, v13}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->offlineConfig(Ljava/util/List;I)I

    move-result v18

    if-eqz v18, :cond_2d1

    .line 2991
    iget-object v0, v2, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object v0, v0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mRawCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {v0, v3}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed(Z)V
    :try_end_2cb
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1f9 .. :try_end_2cb} :catch_21
    .catch Ljava/lang/IllegalStateException; {:try_start_1f9 .. :try_end_2cb} :catch_21
    .catch Ljava/lang/NullPointerException; {:try_start_1f9 .. :try_end_2cb} :catch_21
    .catch Ljava/lang/SecurityException; {:try_start_1f9 .. :try_end_2cb} :catch_21
    .catchall {:try_start_1f9 .. :try_end_2cb} :catchall_1e

    .line 3073
    iget-object v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setCapturing(Z)V

    return-void

    :cond_2d1
    move/from16 v23, v4

    const/4 v4, 0x4

    .line 2995
    :try_start_2d4
    new-array v4, v4, [Landroid/util/Size;

    .line 2996
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/util/Size;

    aput-object v18, v4, v3

    .line 2997
    invoke-direct {v1, v15}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getOfflineOutSize(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v18

    aput-object v18, v4, v23

    .line 2998
    aput-object v15, v4, v17

    .line 2999
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    const/16 v17, 0x3

    move/from16 v3, v23

    if-le v15, v3, :cond_304

    .line 3000
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isMultiCamera()Z

    move-result v15

    if-eqz v15, :cond_2ff

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v3, v9

    check-cast v3, Landroid/util/Size;

    move-object/from16 v16, v3

    :cond_2ff
    aput-object v16, v4, v17

    :goto_301
    move/from16 v17, v13

    goto :goto_307

    .line 3002
    :cond_304
    aput-object v16, v4, v17

    goto :goto_301

    .line 3004
    :goto_307
    iget-object v13, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    iget-object v3, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraId:Ljava/lang/String;

    invoke-static {v3}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result v15

    iget-object v3, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraId:Ljava/lang/String;

    .line 3005
    invoke-direct {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isSatCamera()Z

    move-result v19

    invoke-direct {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isBlurCamera()Z

    move-result v20

    invoke-direct {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isTfAlgo()Z

    move-result v22

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v21, v8

    .line 3004
    invoke-interface/range {v13 .. v22}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->onCaptureStarted(IILjava/lang/String;I[Landroid/util/Size;ZZLjava/util/List;Z)V

    .line 3008
    :cond_326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", multiFrameList= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " slaveSurface:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " isMultiCamera:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3009
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isMultiCamera()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3008
    invoke-static {v6, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3010
    invoke-static {v10}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 3011
    iget-object v3, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v4, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0, v2, v4}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 3012
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 3014
    iget-object v0, v2, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object v0, v0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mShutterCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

    iget-object v3, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-direct {v1, v3}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->currentParameter(Lcom/transsion/camera/adapter/CameraParameters;)[I

    move-result-object v3

    iget-object v4, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v4}, Lcom/transsion/camera/adapter/CameraParameters;->getCaptureTime()J

    move-result-wide v4

    invoke-interface {v0, v7, v3, v4, v5}, Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;->onThumbNailTypeConfirmed(I[IJ)V

    .line 3015
    invoke-static {v6, v12}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_4c3

    :cond_379
    move/from16 v17, v9

    .line 3017
    iget-object v3, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mYuvImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    if-eqz v3, :cond_3bc

    const-string v3, "continue"

    .line 3018
    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_389

    if-eqz v0, :cond_3bc

    :cond_389
    const-string v0, "stop"

    .line 3019
    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3bc

    const-string v0, "cancel"

    .line 3020
    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3bc

    .line 3021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CapturePerformance][doCapture] use YUV Surface, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CameraParameters;->getLongExposureCaptureState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3022
    iget-object v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mYuvImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/IBGSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    :goto_3b9
    move/from16 v3, v17

    goto :goto_3d9

    .line 3024
    :cond_3bc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CapturePerformance][doCapture] use Jpeg Surface: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3025
    iget-object v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/IBGSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_3b9

    .line 3027
    :goto_3d9
    invoke-virtual {v1, v3}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getInnerCameraParameters(I)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object v4

    filled-new-array {v0}, [Landroid/view/Surface;

    move-result-object v5

    .line 3028
    invoke-virtual {v4, v3, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    .line 3030
    iget-object v3, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mThumbnailSurface:Landroid/view/Surface;

    if-eqz v3, :cond_3f4

    invoke-direct {v1, v7}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->needThumbnailSurface(I)Z

    move-result v3

    if-eqz v3, :cond_3f4

    .line 3031
    iget-object v3, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mThumbnailSurface:Landroid/view/Surface;

    invoke-virtual {v4, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 3033
    :cond_3f4
    iget-object v3, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mFastThumbSurface:Landroid/view/Surface;

    if-eqz v3, :cond_409

    iget-object v3, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CameraParameters;->getAppModeId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v7, v3}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->needFastThumbSurface(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_409

    .line 3034
    iget-object v3, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mFastThumbSurface:Landroid/view/Surface;

    invoke-virtual {v4, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 3037
    :cond_409
    const-string v3, "capture"

    invoke-static {v3}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 3039
    invoke-direct {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isLongExposureMode()Z

    move-result v3

    if-nez v3, :cond_41f

    .line 3040
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object v3

    const-string v5, "shot_to_see"

    const/16 v8, 0x3ec

    invoke-interface {v3, v8, v5}, Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;->onActionStart(ILjava/lang/String;)V

    .line 3042
    :cond_41f
    iget-object v3, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CameraParameters;->getExtraCaptureCount()I

    move-result v3

    if-lez v3, :cond_46e

    const/4 v3, 0x2

    .line 3043
    invoke-virtual {v1, v3}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getInnerCameraParameters(I)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object v5

    iget-object v3, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    .line 3045
    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CameraParameters;->getExtraCaptureCount()I

    move-result v3

    iget-object v8, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v8}, Lcom/transsion/camera/adapter/CameraParameters;->isExtraCaptureEnableZSL()Z

    move-result v8

    const/16 v23, 0x1

    xor-int/lit8 v8, v8, 0x1

    filled-new-array {v0}, [Landroid/view/Surface;

    move-result-object v0

    const/4 v9, 0x2

    .line 3044
    invoke-virtual {v5, v9, v3, v8, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createBurstRequest(IIZ[Landroid/view/Surface;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3046
    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3047
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CapturePerformance][doCapture] START session start to captureBurst, extraCaptureCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v4}, Lcom/transsion/camera/adapter/CameraParameters;->getExtraCaptureCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3048
    iget-object v3, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v4, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0, v2, v4}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_48d

    .line 3050
    :cond_46e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CapturePerformance][doCapture] START session start to capture, thumbnailSource: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3051
    iget-object v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    iget-object v4, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v2, v4}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 3053
    :goto_48d
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 3055
    iget-object v0, v2, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object v0, v0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mShutterCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

    iget-object v3, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-direct {v1, v3}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->currentParameter(Lcom/transsion/camera/adapter/CameraParameters;)[I

    move-result-object v3

    iget-object v4, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v4}, Lcom/transsion/camera/adapter/CameraParameters;->getCaptureTime()J

    move-result-wide v4

    invoke-interface {v0, v7, v3, v4, v5}, Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;->onThumbNailTypeConfirmed(I[IJ)V

    .line 3056
    invoke-static {v6, v12}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3057
    iget-object v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperDefinitionMode()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4b8

    iget-boolean v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mNeedCaptureCoverAnimation:Z

    if-eqz v0, :cond_4b8

    .line 3058
    iput-boolean v3, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsSuperDefinitionCapture:Z

    .line 3059
    invoke-direct {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->playShutterSoundAndRunCaptureAnimation()V

    .line 3061
    :cond_4b8
    iget-object v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->isHeavyCapturing()Z

    move-result v0

    if-eqz v0, :cond_4c3

    .line 3062
    invoke-direct {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setRepeatingRequest()V
    :try_end_4c3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2d4 .. :try_end_4c3} :catch_21
    .catch Ljava/lang/IllegalStateException; {:try_start_2d4 .. :try_end_4c3} :catch_21
    .catch Ljava/lang/NullPointerException; {:try_start_2d4 .. :try_end_4c3} :catch_21
    .catch Ljava/lang/SecurityException; {:try_start_2d4 .. :try_end_4c3} :catch_21
    .catchall {:try_start_2d4 .. :try_end_4c3} :catchall_1e

    .line 3073
    :cond_4c3
    :goto_4c3
    iget-object v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setCapturing(Z)V

    return-void

    .line 3066
    :goto_4ca
    :try_start_4ca
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isQcomCaptureFlow()Z

    move-result v3

    if-eqz v3, :cond_4d9

    .line 3067
    iget-object v2, v2, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object v2, v2, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mRawCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed(Z)V

    goto :goto_4e1

    .line 3069
    :cond_4d9
    iget-object v2, v2, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object v2, v2, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed(Z)V

    .line 3071
    :goto_4e1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4e4
    .catchall {:try_start_4ca .. :try_end_4e4} :catchall_1e

    .line 3073
    iget-object v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setCapturing(Z)V

    return-void

    :goto_4eb
    iget-object v1, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setCapturing(Z)V

    .line 3074
    throw v0

    .line 2876
    :cond_4f2
    :goto_4f2
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v4, "doCapture is error, mSession is null"

    invoke-static {v0, v4}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2877
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isQcomCaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_507

    .line 2878
    iget-object v0, v2, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object v0, v0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mRawCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {v0, v3}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed(Z)V

    return-void

    .line 2880
    :cond_507
    iget-object v0, v2, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object v0, v0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {v0, v3}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed(Z)V

    return-void
.end method

.method private doCaptureMTK()V
    .registers 2

    .line 2520
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->needTriggerPreCapture()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2521
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->flashStyleOneStage()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    .line 2522
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doPreFlashCapture(Z)V

    return-void

    .line 2523
    :cond_11
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->preScreenFlashCapture()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    .line 2524
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doPreFlashCapture(Z)V

    return-void

    .line 2526
    :cond_1c
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doPreCaptureMTK()V

    return-void

    .line 2529
    :cond_20
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;)V

    return-void
.end method

.method private doCaptureQcom()V
    .registers 2

    .line 2506
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->needTriggerPreCapture()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2507
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->flashStyleOneStage()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    .line 2508
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doPreFlashCapture(Z)V

    return-void

    .line 2509
    :cond_11
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->preScreenFlashCapture()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    .line 2510
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doPreFlashCapture(Z)V

    return-void

    .line 2512
    :cond_1c
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doPreCaptureQcom()V

    return-void

    .line 2515
    :cond_20
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;)V

    return-void
.end method

.method private doCaptureSprd()V
    .registers 4

    .line 2548
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] [doCaptureSprd] flashStyleOneStage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->flashStyleOneStage()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", usePreAECaptureFlow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->usePreAECaptureFlow()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mCurShutterPriority:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCurShutterPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , isAFTriggered:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    .line 2549
    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->isAFTriggered()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , aeStateFlashRequired:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    .line 2550
    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->aeStateFlashRequired()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , aeLock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraParameters;->getAeLock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2548
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2551
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->needTriggerPreCapture()Z

    move-result v0

    if-eqz v0, :cond_94

    .line 2552
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->flashStyleOneStage()Z

    move-result v0

    if-nez v0, :cond_8f

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mUseOneStageForScreenFlash:Z

    if-eqz v0, :cond_6f

    goto :goto_8f

    .line 2555
    :cond_6f
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->usePreAECaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 2556
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doUsePreAECaptureSprd()V

    return-void

    .line 2558
    :cond_79
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isAFSupport()Z

    move-result v0

    if-eqz v0, :cond_8b

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mForceCloseAfTrigger:Z

    if-nez v0, :cond_8b

    .line 2559
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doAFAndCapture()V

    return-void

    .line 2561
    :cond_8b
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doPreAECapture()V

    return-void

    :cond_8f
    :goto_8f
    const/4 v0, 0x1

    .line 2553
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doPreFlashCapture(Z)V

    return-void

    .line 2566
    :cond_94
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->usePreAECaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 2567
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doUsePreAECaptureSprd()V

    return-void

    .line 2569
    :cond_9e
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;)V

    return-void
.end method

.method private doClearFrameResultCallback()V
    .registers 1

    .line 3685
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->clearFrameResultCallback()V

    return-void
.end method

.method private doContinuousCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;I)V
    .registers 8

    .line 3127
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mQcomJpegSurface:Lcom/transsion/camera/adapter/IBGSurface;
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_2} :catch_53
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_2} :catch_53

    const-string v1, "doContinuousCapture captureBurst"

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_29

    .line 3128
    :try_start_8
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3129
    invoke-virtual {p0, v3}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getInnerCameraParameters(I)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mQcomJpegSurface:Lcom/transsion/camera/adapter/IBGSurface;

    .line 3130
    invoke-interface {v4}, Lcom/transsion/camera/adapter/IBGSurface;->getSurface()Landroid/view/Surface;

    move-result-object v4

    filled-new-array {v1, v4}, [Landroid/view/Surface;

    move-result-object v1

    .line 3129
    invoke-virtual {v0, v3, p2, v2, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createBurstRequest(IIZ[Landroid/view/Surface;)Ljava/util/ArrayList;

    move-result-object p2

    .line 3131
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2, p1, p0}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    return-void

    .line 3132
    :cond_29
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    if-eqz v0, :cond_52

    .line 3133
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3134
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setIsBurstCapturing(Z)V

    .line 3135
    invoke-virtual {p0, v3}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getInnerCameraParameters(I)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    .line 3136
    invoke-interface {v4}, Lcom/transsion/camera/adapter/IBGSurface;->getSurface()Landroid/view/Surface;

    move-result-object v4

    filled-new-array {v1, v4}, [Landroid/view/Surface;

    move-result-object v1

    .line 3135
    invoke-virtual {v0, v3, p2, v2, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createBurstRequest(IIZ[Landroid/view/Surface;)Ljava/util/ArrayList;

    move-result-object p2

    .line 3137
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2, p1, p0}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_52
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_8 .. :try_end_52} :catch_53
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_52} :catch_53

    :cond_52
    return-void

    :catch_53
    move-exception p0

    .line 3140
    sget-object p1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doContinuousCapture exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doEnableVideoAutoFlash(ZZ)V
    .registers 4

    .line 3694
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->setRecordingHint(Z)V

    if-eqz p1, :cond_21

    .line 3696
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getFlashMode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "auto"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 3697
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->aeStateFlashRequired()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->setFlashRequiredInAutoMode(Z)V

    goto :goto_27

    .line 3700
    :cond_21
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->setFlashRequiredInAutoMode(Z)V

    :cond_27
    :goto_27
    if-eqz p2, :cond_2c

    .line 3704
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setRepeatingRequest()V

    :cond_2c
    return-void
.end method

.method private doOnPreAfFocused(Z)V
    .registers 5

    .line 3343
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] PreAF done, [onAutoFocus]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mIsCancelCapture:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsCancelCapture:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3345
    :try_start_20
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p1, :cond_2a

    .line 3346
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doCancelAutoFocus()V

    goto :goto_2a

    :catch_28
    move-exception p1

    goto :goto_35

    .line 3348
    :cond_2a
    :goto_2a
    iget-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsCancelCapture:Z

    if-eqz p1, :cond_2f

    return-void

    .line 3351
    :cond_2f
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;)V
    :try_end_34
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_20 .. :try_end_34} :catch_28
    .catch Ljava/lang/IllegalStateException; {:try_start_20 .. :try_end_34} :catch_28
    .catch Ljava/lang/SecurityException; {:try_start_20 .. :try_end_34} :catch_28

    return-void

    .line 3353
    :goto_35
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed(Z)V

    .line 3354
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private doParameterRepeatingRequest()V
    .registers 4

    .line 1928
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doParameterRepeatingRequest mSessionState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1929
    iget v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isLongExposureModeCapturing()Z

    move-result v0

    if-nez v0, :cond_26

    .line 1930
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setRepeatingRequest()V

    :cond_26
    return-void
.end method

.method private doPreAEAFCapture()V
    .registers 7

    const/4 v0, 0x1

    .line 3530
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3408
    :try_start_5
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v2, :cond_5f

    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    if-eqz v2, :cond_e

    goto :goto_5f

    .line 3414
    :cond_e
    new-instance v2, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;

    invoke-direct {v2, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    .line 3485
    new-instance v3, Lcom/transsion/camera/adapter/CameraProxy2Impl$9;

    invoke-direct {v3, p0, v2}, Lcom/transsion/camera/adapter/CameraProxy2Impl$9;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy2Impl$IPreCaptureResultCallback;)V

    .line 3521
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    if-eqz v2, :cond_2f

    .line 3522
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    iget-object v5, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    .line 3523
    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    filled-new-array {v5, v2}, [Landroid/view/Surface;

    move-result-object v2

    .line 3522
    invoke-virtual {v4, v0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    goto :goto_3b

    :catch_2d
    move-exception v1

    goto :goto_8c

    .line 3525
    :cond_2f
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    filled-new-array {v4}, [Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    .line 3528
    :goto_3b
    sget-object v4, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v5, "[CapturePerformance] doPreAEAFCapture"

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3529
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v4, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3531
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v4, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3533
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsAfTriggerStarted:Z

    .line 3534
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v1, v2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->triggerFrontFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 3535
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    return-void

    .line 3409
    :cond_5f
    :goto_5f
    sget-object v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doPreAEAFCapture error, mSession: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mReleased: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3410
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    iget-object v1, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object v1, v1, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed(Z)V
    :try_end_8b
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5 .. :try_end_8b} :catch_2d
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_8b} :catch_2d

    return-void

    .line 3537
    :goto_8c
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed(Z)V

    .line 3538
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private doPreAECapture()V
    .registers 6

    const/4 v0, 0x1

    .line 2742
    :try_start_1
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_5e

    iget-boolean v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    if-eqz v1, :cond_a

    goto :goto_5e

    .line 2748
    :cond_a
    new-instance v1, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda10;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    .line 2766
    new-instance v2, Lcom/transsion/camera/adapter/CameraProxy2Impl$5;

    invoke-direct {v2, p0, v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl$5;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;)V

    .line 2792
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_2f

    .line 2793
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getInnerCameraParameters(I)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    .line 2794
    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    filled-new-array {v3, v4}, [Landroid/view/Surface;

    move-result-object v3

    .line 2793
    invoke-virtual {v1, v0, v3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    goto :goto_3d

    :catch_2d
    move-exception v1

    goto :goto_70

    .line 2796
    :cond_2f
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getInnerCameraParameters(I)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    filled-new-array {v3}, [Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 2799
    :goto_3d
    sget-object v3, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v4, "[CapturePerformance] doPreAECapture"

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2800
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2801
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2800
    invoke-virtual {v1, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2802
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v3, v1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->triggerFrontFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2803
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1, v2, v4}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    return-void

    .line 2744
    :cond_5e
    :goto_5e
    sget-object v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "doPreCapture is error, mSession is null"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2745
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    iget-object v1, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object v1, v1, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed(Z)V
    :try_end_6f
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_6f} :catch_2d
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_6f} :catch_2d

    return-void

    .line 2805
    :goto_70
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed(Z)V

    .line 2806
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private doPreAF(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V
    .registers 6

    const/4 v0, 0x1

    .line 2267
    :try_start_1
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v1, :cond_21

    .line 2268
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setFocusModeAuto(Z)V

    .line 2269
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    if-eqz p1, :cond_19

    .line 2270
    invoke-interface {p1, v1}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed(Z)V

    goto :goto_19

    :catch_17
    move-exception p1

    goto :goto_6b

    .line 2272
    :cond_19
    :goto_19
    sget-object p1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doPreAF is error, mSession is null"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2277
    :cond_21
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_3a

    .line 2278
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getInnerCameraParameters(I)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    .line 2279
    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    filled-new-array {v2, v3}, [Landroid/view/Surface;

    move-result-object v2

    .line 2278
    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    goto :goto_48

    .line 2281
    :cond_3a
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getInnerCameraParameters(I)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    filled-new-array {v2}, [Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 2284
    :goto_48
    sget-object v2, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "[CapturePerformance] doPreAFCapture"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2285
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2286
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2285
    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2287
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsAfTriggerStarted:Z

    .line 2288
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v2, v1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->triggerFrontFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2289
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p1, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_6a
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_6a} :catch_17
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_6a} :catch_17

    return-void

    .line 2291
    :goto_6b
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    if-eqz p0, :cond_76

    .line 2292
    invoke-interface {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed(Z)V

    .line 2294
    :cond_76
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private doPreAF(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V
    .registers 6

    const/4 v0, 0x1

    .line 3360
    :try_start_1
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v1, :cond_19

    .line 3362
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed(Z)V

    .line 3363
    sget-object p1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doPreAF is error, mSession is null"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catch_17
    move-exception p1

    goto :goto_60

    .line 3366
    :cond_19
    new-instance v1, Lcom/transsion/camera/adapter/CameraProxy2Impl$7;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl$7;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V

    .line 3383
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    if-eqz p1, :cond_33

    .line 3384
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    .line 3385
    invoke-virtual {p1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p1

    filled-new-array {v3, p1}, [Landroid/view/Surface;

    move-result-object p1

    .line 3384
    invoke-virtual {v2, v0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    goto :goto_3f

    .line 3387
    :cond_33
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    filled-new-array {v2}, [Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    .line 3390
    :goto_3f
    sget-object v2, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "[CapturePerformance] doPreAFCapture"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3391
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 3392
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3391
    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3393
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->triggerFrontFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 3394
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1, v1, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_5f
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_5f} :catch_17
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_5f} :catch_17

    return-void

    .line 3396
    :goto_60
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed(Z)V

    .line 3397
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private doPreAFCapture()V
    .registers 2

    .line 3339
    new-instance v0, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda11;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doPreAF(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V

    return-void
.end method

.method private doPreCaptureMTK()V
    .registers 2

    .line 2534
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isAFSupport()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2535
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->usePreAEAFCaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2536
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doPreAEAFCapture()V

    return-void

    .line 2537
    :cond_10
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->usePreAECaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2538
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doPreAECapture()V

    return-void

    .line 2540
    :cond_1a
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doPreAFCapture()V

    return-void

    .line 2543
    :cond_1e
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doPreAECapture()V

    return-void
.end method

.method private doPreCaptureQcom()V
    .registers 3

    .line 2575
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] doPreCaptureQcom"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2576
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isAFSupport()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2577
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doPreAEAFCapture()V

    return-void

    .line 2579
    :cond_11
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doPreAECapture()V

    return-void
.end method

.method private doPreFlashCapture(Z)V
    .registers 5

    .line 2184
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_77

    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    if-eqz v0, :cond_9

    goto :goto_77

    :cond_9
    if-eqz p1, :cond_11

    .line 2191
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setRepeatingRequest()V

    goto :goto_11

    :catch_f
    move-exception p1

    goto :goto_89

    .line 2194
    :cond_11
    :goto_11
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] doPreFlashCapture start, needSetParam: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mAeChangeMinDuration: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAeChangeMinDuration:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mAeChangeTimeOut: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAeChangeTimeOut:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2197
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreFlashStartTime:J

    .line 2198
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->shouldTriggerAFBeforeFlashCapture()Z

    move-result p1

    .line 2199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldTriggerAFBeforeFlashCapture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_63

    .line 2201
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mTriggerAFPreCapture:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 2203
    :cond_63
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->shouldDoTriggerForCapturing()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 2204
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCheckAeStableForCapturing:Ljava/lang/Runnable;

    goto :goto_70

    :cond_6e
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCheckAeAfStableForCapturing:Ljava/lang/Runnable;

    :goto_70
    iget v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAeChangeTimeOut:I

    int-to-long v1, v1

    .line 2203
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 2185
    :cond_77
    :goto_77
    sget-object p1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "doPreFlashCapture is error, mSession is null"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2186
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed(Z)V
    :try_end_88
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_88} :catch_f
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_88} :catch_f

    return-void

    .line 2207
    :goto_89
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed(Z)V

    .line 2208
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private doRegisterDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;I)V
    .registers 3

    .line 3637
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->registerDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;I)V

    return-void
.end method

.method private doRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .registers 2

    .line 3653
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void
.end method

.method private doRegisterSettingPreviewCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V
    .registers 2

    .line 3661
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->registerSettingPreviewCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V

    return-void
.end method

.method private doSetAnimalEyeDetectCallback(Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;)V
    .registers 2

    .line 3629
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->setAnimalEyeDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;)V

    return-void
.end method

.method private doSetAutoFocusMoveCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;)V
    .registers 2

    .line 3589
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->setAutoFocusMoveResultCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;)V

    return-void
.end method

.method private doSetBVCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraBVCallback;)V
    .registers 2

    .line 3641
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->setBrightnessCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraBVCallback;)V

    return-void
.end method

.method private doSetDataChannel(Lcom/transsion/camera/adapter/CameraDataChannel;)V
    .registers 2

    .line 1369
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->updateSurface(Lcom/transsion/camera/adapter/CameraDataChannel;)V

    .line 1370
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    if-nez p1, :cond_b

    .line 1371
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->closeSession()V

    return-void

    .line 1375
    :cond_b
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mDeferredOutputConfigs:Ljava/util/List;

    if-eqz p1, :cond_13

    .line 1376
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->finalizeConfigSession()V

    return-void

    :cond_13
    const/4 p1, 0x1

    .line 1379
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsFinalizeConfigured:Z

    const/4 p1, 0x0

    .line 1380
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->createSession(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;)Z

    return-void
.end method

.method private doSetEyeDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$EyeDetectionCallback;)V
    .registers 2

    .line 3633
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->setEyeDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$EyeDetectionCallback;)V

    return-void
.end method

.method private doSetFaceDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;)V
    .registers 2

    .line 3593
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

    return-void
.end method

.method private doSetHumanDetCallback(Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;)V
    .registers 2

    .line 3625
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->setHumanDetCallback(Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;)V

    return-void
.end method

.method private doSetVideoHDRInfoCallback(Lcom/transsion/camera/adapter/CameraProxy$VideoHDRInfoCallback;)V
    .registers 2

    .line 3597
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoHDRInfoCallback:Lcom/transsion/camera/adapter/CameraProxy$VideoHDRInfoCallback;

    return-void
.end method

.method private doShutterSoundPlay(Ljava/lang/String;)V
    .registers 3

    .line 1267
    new-instance v0, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doShutterSoundPlay(Ljava/lang/String;Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V

    return-void
.end method

.method private doShutterSoundPlay(Ljava/lang/String;Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V
    .registers 6

    .line 1272
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShutterSoundEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_94

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    if-nez v0, :cond_b

    goto/16 :goto_94

    .line 1279
    :cond_b
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsSupportShutterSound:Z

    if-nez v0, :cond_1f

    if-eqz p2, :cond_17

    .line 1281
    invoke-interface {p2, v1}, Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;->onPlayDone(Z)V

    .line 1282
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->hookDisturbStatus()V

    .line 1284
    :cond_17
    sget-object p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[doShutterSoundPlay] mIsSupportShutterSound = false, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1287
    :cond_1f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_9e

    goto :goto_56

    :sswitch_2b
    const-string v0, "VideoRecord.ogg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto :goto_56

    :cond_34
    const/4 v2, 0x3

    goto :goto_56

    :sswitch_36
    const-string v0, "SOUND_NONE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto :goto_56

    :cond_3f
    const/4 v2, 0x2

    goto :goto_56

    :sswitch_41
    const-string v0, "camera_click.ogg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    goto :goto_56

    :cond_4a
    const/4 v2, 0x1

    goto :goto_56

    :sswitch_4c
    const-string v0, "VideoStop.ogg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    goto :goto_56

    :cond_55
    move v2, v1

    :goto_56
    packed-switch v2, :pswitch_data_b0

    .line 1305
    sget-object p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doShutterSoundPlay error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1293
    :pswitch_70
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    iget p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mStartVideoRecordingSampleId:I

    invoke-interface {p1, p0, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->play(ILcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V

    return-void

    :pswitch_78
    if-eqz p2, :cond_9c

    .line 1300
    invoke-interface {p2, v1}, Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;->onPlayDone(Z)V

    .line 1301
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->hookDisturbStatus()V

    return-void

    .line 1289
    :pswitch_81
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    iget v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShutterClickSampleId:I

    invoke-interface {p1, v0, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->play(ILcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V

    .line 1290
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->hookDisturbStatus()V

    return-void

    .line 1296
    :pswitch_8c
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    iget p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mStopVideoRecordingSampleId:I

    invoke-interface {p1, p0, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->play(ILcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V

    return-void

    :cond_94
    :goto_94
    if-eqz p2, :cond_9c

    .line 1274
    invoke-interface {p2, v1}, Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;->onPlayDone(Z)V

    .line 1275
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->hookDisturbStatus()V

    :cond_9c
    return-void

    nop

    :sswitch_data_9e
    .sparse-switch
        -0x7a2434e2 -> :sswitch_4c
        -0x6980d471 -> :sswitch_41
        0xa40cc88 -> :sswitch_36
        0x39a9fd2d -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_8c
        :pswitch_81
        :pswitch_78
        :pswitch_70
    .end packed-switch
.end method

.method private doStartContinuousCapture(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;I)V
    .registers 5

    .line 2627
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_1e

    .line 2628
    sget-object p2, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "doStartContinuousCapture error, mSession is null"

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2629
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isQcomCaptureFlow()Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_18

    .line 2630
    iget-object p0, p1, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mRawCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {p0, p2}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed(Z)V

    return-void

    .line 2632
    :cond_18
    iget-object p0, p1, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {p0, p2}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed(Z)V

    return-void

    :cond_1e
    const/4 v0, 0x1

    .line 2636
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mInContinuousCapture:Z

    .line 2637
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v1, v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setContinuousCapture(Z)V

    .line 2638
    new-instance v0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCSPictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;

    .line 2640
    invoke-direct {p0, v0, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doContinuousCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;I)V

    return-void
.end method

.method private doStartFaceDetection()V
    .registers 3

    .line 3601
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setFaceDetectionEnable(Z)V

    .line 3602
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->setFaceDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;)V

    .line 3604
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doParameterRepeatingRequest()V

    return-void
.end method

.method private doStartPreview(Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;)V
    .registers 5

    .line 1918
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSetRepeatingRequestTime:J

    .line 1919
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;

    .line 1920
    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    .line 1921
    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewFrameCallbackTmp:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    const/4 p1, 0x1

    .line 1922
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isDoStartPreview:Z

    .line 1923
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setRepeatingRequest()V

    return-void
.end method

.method private doStartVideoHDRInfoDetect()V
    .registers 2

    .line 3617
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoHDRInfoCallback:Lcom/transsion/camera/adapter/CameraProxy$VideoHDRInfoCallback;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->setVideoHDRInfoCallback(Lcom/transsion/camera/adapter/CameraProxy$VideoHDRInfoCallback;)V

    return-void
.end method

.method private doStopContinuousCapture()V
    .registers 4

    .line 2644
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_c

    .line 2645
    sget-object p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "doStopContinuousCapture is error, mSession is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2648
    :cond_c
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mInContinuousCapture:Z

    if-nez v0, :cond_18

    .line 2649
    sget-object p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "do nothing if it isn\'t in continuous capture"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2652
    :cond_18
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mContinuousShotNeedAbortCaptures:Z

    if-nez v0, :cond_28

    .line 2653
    sget-object p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "doStopContinuousCapture continous shot don\'t need abortCaptures!"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2658
    :cond_28
    :try_start_28
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doStopContinuousCapture abortCaptures"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2659
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAbortCaptureLock:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/StateWait;->resetState()V

    .line 2660
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 2661
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isMTKCaptureFlow()Z

    move-result v0

    if-nez v0, :cond_44

    .line 2662
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setRepeatingRequest()V

    .line 2664
    :cond_44
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->onPreviewStopped()V

    .line 2665
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAbortCaptureLock:Lcom/transsion/camera/utils/StateWait;

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/utils/StateWait;->waitState(J)V
    :try_end_50
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_28 .. :try_end_50} :catch_51
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_50} :catch_51
    .catch Ljava/lang/IllegalStateException; {:try_start_28 .. :try_end_50} :catch_51
    .catch Ljava/lang/SecurityException; {:try_start_28 .. :try_end_50} :catch_51

    return-void

    :catch_51
    move-exception p0

    .line 2667
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doStopContinuousCapture exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doStopContinuousCount()V
    .registers 3

    .line 2672
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doStopContinuousCount"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2673
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setContinuousCapture(Z)V

    return-void
.end method

.method private doStopFaceDetection(Z)V
    .registers 4

    .line 3608
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setFaceDetectionEnable(Z)V

    .line 3609
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->setFaceDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;)V

    if-eqz p1, :cond_11

    .line 3612
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doParameterRepeatingRequest()V

    :cond_11
    return-void
.end method

.method private doStopPreview()V
    .registers 3

    .line 2138
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    if-eqz v0, :cond_9

    goto :goto_1f

    .line 2141
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAbortCaptureLock:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/StateWait;->resetState()V

    .line 2142
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 2143
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->onPreviewStopped()V

    .line 2144
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAbortCaptureLock:Lcom/transsion/camera/utils/StateWait;

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/utils/StateWait;->waitState(J)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method private doStopVideoHDRInfoDetect()V
    .registers 2

    .line 3621
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->setVideoHDRInfoCallback(Lcom/transsion/camera/adapter/CameraProxy$VideoHDRInfoCallback;)V

    return-void
.end method

.method private doUnRegisterDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;)V
    .registers 2

    .line 3649
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->unRegisterDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;)V

    return-void
.end method

.method private doUnRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .registers 2

    .line 3657
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void
.end method

.method private doUnRegisterSettingPreviewCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V
    .registers 2

    .line 3665
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->unRegisterSettingPreviewCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V

    return-void
.end method

.method private doUpdateFocusMode(Ljava/lang/String;)V
    .registers 3

    .line 3719
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->setFocusMode(Ljava/lang/String;)V

    .line 3720
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setRepeatingRequest()V

    return-void
.end method

.method private doUsePreAECaptureSprd()V
    .registers 3

    const/4 v0, 0x0

    .line 2584
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mUsePreAECaptureForSprd:Z

    .line 2585
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->aeStateFlashRequired()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getAeLock()Z

    move-result v0

    if-nez v0, :cond_24

    iget v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCurShutterPriority:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_24

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->isAFTriggered()Z

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, 0x1

    .line 2586
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mUsePreAECaptureForSprd:Z

    .line 2588
    :cond_24
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;)V

    return-void
.end method

.method private doVideoSnapShot(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V
    .registers 6

    .line 3145
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_c

    .line 3147
    sget-object p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "doVideoSnapShot is error, mSession is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 3150
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->clone()Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object v0

    .line 3151
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getPreviewSize()Landroid/util/Size;

    move-result-object v1

    if-eqz v1, :cond_e8

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    if-nez v1, :cond_1e

    goto/16 :goto_e8

    .line 3155
    :cond_1e
    new-instance v1, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    .line 3157
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->isHighFpsSupport()Z

    move-result p1

    .line 3158
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getOpenAutoFps()Z

    move-result v1

    .line 3159
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraParameters;->getHighFpsMode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz p1, :cond_48

    if-eqz v2, :cond_48

    if-eqz v1, :cond_48

    .line 3162
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getPreviewFPSRange()Landroid/util/Range;

    move-result-object p1

    goto :goto_54

    .line 3164
    :cond_48
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->getSupportedPreviewFPSRanges()Ljava/util/List;

    move-result-object p1

    .line 3165
    iget v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameRate:I

    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getSuitableRange(Ljava/util/List;I)Landroid/util/Range;

    move-result-object p1

    .line 3167
    :goto_54
    invoke-virtual {v0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->setPreviewFPSRange(Landroid/util/Range;)V

    .line 3169
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->isSatModeSupport()Z

    move-result p1

    if-eqz p1, :cond_6b

    .line 3170
    new-instance p1, Landroid/util/Size;

    iget v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameWidth:I

    iget v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameHeight:I

    invoke-direct {p1, v1, v2}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->setSatPictureSize(Landroid/util/Size;)V

    .line 3173
    :cond_6b
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->algorithmMigrate()Z

    move-result p1

    if-eqz p1, :cond_85

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mYuvImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    if-eqz p1, :cond_85

    .line 3174
    sget-object p1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doCapture use YUV Surface"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3175
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mYuvImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {p1}, Lcom/transsion/camera/adapter/IBGSurface;->getSurface()Landroid/view/Surface;

    move-result-object p1

    goto :goto_92

    .line 3177
    :cond_85
    sget-object p1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doCapture use Jpeg Surface"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3178
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {p1}, Lcom/transsion/camera/adapter/IBGSurface;->getSurface()Landroid/view/Surface;

    move-result-object p1

    :goto_92
    const/4 v1, 0x4

    .line 3180
    filled-new-array {p1}, [Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    .line 3182
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    if-eqz v0, :cond_b0

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSprdPlatform()Z

    move-result v0

    if-nez v0, :cond_b0

    .line 3183
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    filled-new-array {v1}, [Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->addSurfaceToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V

    .line 3185
    :cond_b0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v0, :cond_c5

    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isHdr10PlusOn()Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 3186
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    filled-new-array {v1}, [Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->addSurfaceToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V

    .line 3188
    :cond_c5
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 3189
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    if-eqz p1, :cond_e7

    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mShutterCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

    if-eqz p1, :cond_e7

    .line 3190
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getCaptureTime()J

    move-result-wide v0

    const/4 p0, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, p0, v2, v0, v1}, Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;->onThumbNailTypeConfirmed(I[IJ)V

    :cond_e7
    return-void

    .line 3152
    :cond_e8
    :goto_e8
    sget-object p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "params not ready, do not config now"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private enableP3forQcomJpegCapture(Landroid/hardware/camera2/params/SessionConfiguration;)V
    .registers 5

    .line 1886
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isQcomCaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isOfflineJniSupport()Z

    move-result v0

    if-nez v0, :cond_55

    .line 1887
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_55

    .line 1888
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isDisplayP3Support()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->getDisplayP3Support()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1889
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isForceCloseP3Support()Z

    move-result v0

    if-nez v0, :cond_55

    .line 1890
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCameraId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " support DISPLAY_P3."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1891
    iget p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOutputType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_55

    .line 1892
    sget-object p0, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    invoke-static {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/params/SessionConfiguration;Landroid/graphics/ColorSpace$Named;)V

    :cond_55
    return-void
.end method

.method private finalizeConfigSession()V
    .registers 6

    .line 1385
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finalizeConfigSession mSession: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mPreviewSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mAuxPreviewSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAuxPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mBackgroundPreviewSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mBackgroundPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsFinalizeConfigured: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsFinalizeConfigured:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1392
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v1, :cond_12b

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v1, :cond_4a

    goto/16 :goto_12b

    .line 1395
    :cond_4a
    iget-boolean v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsFinalizeConfigured:Z

    if-nez v1, :cond_12b

    .line 1396
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mDeferredOutputConfigs:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 1397
    invoke-virtual {v1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v2

    if-nez v2, :cond_63

    .line 1398
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/params/OutputConfiguration;->addSurface(Landroid/view/Surface;)V

    goto :goto_7b

    .line 1400
    :cond_63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finalizeConfigSession previewConfig already has surface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1402
    :goto_7b
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mDeferredOutputConfigs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_11d

    .line 1403
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAuxPreviewSurface:Landroid/view/Surface;

    if-eqz v1, :cond_b6

    .line 1404
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mDeferredOutputConfigs:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 1405
    invoke-virtual {v1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v3

    if-nez v3, :cond_9d

    .line 1406
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAuxPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/params/OutputConfiguration;->addSurface(Landroid/view/Surface;)V

    goto/16 :goto_11d

    .line 1408
    :cond_9d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finalizeConfigSession auxConfig already has surface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_11d

    .line 1410
    :cond_b6
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mBackgroundPreviewSurface:Landroid/view/Surface;

    if-eqz v1, :cond_e7

    .line 1411
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mDeferredOutputConfigs:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 1412
    invoke-virtual {v1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v3

    if-nez v3, :cond_ce

    .line 1413
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mBackgroundPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/params/OutputConfiguration;->addSurface(Landroid/view/Surface;)V

    goto :goto_11d

    .line 1415
    :cond_ce
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finalizeConfigSession backgroundConfig already has surface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_11d

    .line 1417
    :cond_e7
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSlavePreviewSurface:Landroid/view/Surface;

    if-eqz v1, :cond_118

    .line 1418
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mDeferredOutputConfigs:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 1419
    invoke-virtual {v1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v3

    if-nez v3, :cond_ff

    .line 1420
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSlavePreviewSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/params/OutputConfiguration;->addSurface(Landroid/view/Surface;)V

    goto :goto_11d

    .line 1422
    :cond_ff
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finalizeConfigSession slaveConfig already has surface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_11d

    .line 1425
    :cond_118
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mDeferredOutputConfigs:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1428
    :cond_11d
    :goto_11d
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_126

    .line 1430
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mDeferredOutputConfigs:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCaptureSession;->finalizeOutputConfigurations(Ljava/util/List;)V

    .line 1432
    :cond_126
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsFinalizeConfigured:Z

    const/4 v0, 0x0

    .line 1433
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mDeferredOutputConfigs:Ljava/util/List;

    :cond_12b
    :goto_12b
    return-void
.end method

.method private flashStyleOneStage()Z
    .registers 2

    .line 2713
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFlashStyle()Ljava/lang/String;

    move-result-object p0

    const-string v0, "one_stage"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private getOfflineOpMode()I
    .registers 3

    .line 3098
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isSatCamera()Z

    move-result v1

    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isBlurCamera()Z

    move-result p0

    invoke-interface {v0, v1, p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getOfflineOpMode(ZZ)I

    move-result p0

    return p0
.end method

.method private getOfflineOutSize(Landroid/util/Size;)Landroid/util/Size;
    .registers 7

    .line 3082
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getJpegMaxSize()I

    move-result v0

    .line 3083
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getTranssionMaxSuperJpegSize()I

    move-result p0

    .line 3084
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    const/4 v2, 0x1

    if-lez p0, :cond_1d

    if-le v1, v0, :cond_1d

    .line 3087
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, p0, v2}, Landroid/util/Size;-><init>(II)V

    :cond_1d
    if-lez v0, :cond_26

    if-ge v1, v0, :cond_26

    .line 3090
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v0, v2}, Landroid/util/Size;-><init>(II)V

    .line 3092
    :cond_26
    sget-object v2, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getOfflineOutSize] maxJpegSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " transsionMaxSuperJpegSize:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " currentJpegSize:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1
.end method

.method private getPhotoOutputConfigurations(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;)Ljava/util/List;
    .registers 8

    .line 1649
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getDataFlowType()I

    move-result v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->yuvPreview(I)Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSprdDumpRawSupport()Z

    move-result v0

    if-nez v0, :cond_64

    .line 1650
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getPreviewSize()Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 1651
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportMultichannelFlow(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 1652
    sget-object v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getPhotoOutputConfigurations] previewSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1653
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPostAlgoSurfaces:[Landroid/view/Surface;

    const/16 v2, 0x23

    if-eqz v1, :cond_5c

    .line 1654
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const-wide/16 v3, 0x103

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createImageReader(Landroid/util/Size;IJ)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    goto :goto_64

    .line 1656
    :cond_5c
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createImageReader(Landroid/util/Size;I)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    .line 1660
    :cond_64
    :goto_64
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->closeAllForFinalMonkeyTest()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6d

    .line 1661
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    .line 1663
    :cond_6d
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getPhotoOutputConfigurations] mPreviewSurface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mImageSurface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mRawImageSurface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRawImageSurface:[Landroid/view/Surface;

    .line 1664
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mYuvImageSurface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mYuvImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mPreviewYUVReader: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", deferredData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1663
    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1666
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1667
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    const-class v3, Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_cf

    .line 1668
    new-instance v2, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    invoke-direct {v2, v4}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ea

    :cond_cf
    if-eqz p1, :cond_ea

    .line 1670
    iget-object v2, p1, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->previewSize:Landroid/util/Size;

    .line 1671
    iget v4, p1, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->previewSurfaceType:I

    if-nez v4, :cond_e2

    .line 1673
    new-instance v4, Landroid/hardware/camera2/params/OutputConfiguration;

    const-class v5, Landroid/view/SurfaceHolder;

    invoke-direct {v4, v2, v5}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/util/Size;Ljava/lang/Class;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ea

    .line 1675
    :cond_e2
    new-instance v4, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v4, v2, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/util/Size;Ljava/lang/Class;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1679
    :cond_ea
    :goto_ea
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAuxPreviewSurface:Landroid/view/Surface;

    if-eqz v2, :cond_f9

    .line 1680
    new-instance v2, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAuxPreviewSurface:Landroid/view/Surface;

    invoke-direct {v2, v4}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10b

    :cond_f9
    if-eqz p1, :cond_10b

    .line 1681
    iget-boolean v2, p1, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->supportAuxPreview:Z

    if-eqz v2, :cond_10b

    iget-object v2, p1, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->auxPreviewSize:Landroid/util/Size;

    if-eqz v2, :cond_10b

    .line 1683
    new-instance v4, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v4, v2, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/util/Size;Ljava/lang/Class;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1686
    :cond_10b
    :goto_10b
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraId:Ljava/lang/String;

    const-string v4, "58"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_138

    .line 1687
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSlavePreviewSurface:Landroid/view/Surface;

    if-eqz v2, :cond_128

    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSlaveSurfaceModeSupport:Z

    if-eqz v2, :cond_128

    .line 1688
    new-instance p1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSlavePreviewSurface:Landroid/view/Surface;

    invoke-direct {p1, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_138

    :cond_128
    if-eqz p1, :cond_138

    .line 1689
    iget-boolean v2, p1, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->supportSlavePreview:Z

    if-eqz v2, :cond_138

    .line 1690
    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->previewSize:Landroid/util/Size;

    .line 1691
    new-instance v2, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v2, p1, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/util/Size;Ljava/lang/Class;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1695
    :cond_138
    :goto_138
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    if-eqz p1, :cond_14a

    .line 1696
    new-instance p1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {v2}, Lcom/transsion/camera/adapter/IBGSurface;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1699
    :cond_14a
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPostAlgoSurfaces:[Landroid/view/Surface;

    const/4 v2, 0x0

    if-eqz p1, :cond_17d

    array-length p1, p1

    if-lez p1, :cond_17d

    move p1, v2

    .line 1700
    :goto_153
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPostAlgoSurfaces:[Landroid/view/Surface;

    array-length v3, v3

    if-ge p1, v3, :cond_17d

    .line 1701
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPostAlgoSurfaces:[Landroid/view/Surface;

    aget-object v4, v4, p1

    invoke-direct {v3, v4}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    .line 1702
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPostAlgoSurfaces:[Landroid/view/Surface;

    array-length v4, v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_177

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPostAlgoSensorIds:[I

    if-eqz v4, :cond_177

    array-length v5, v4

    if-le v5, p1, :cond_177

    .line 1703
    aget v4, v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/params/OutputConfiguration;->setPhysicalCameraId(Ljava/lang/String;)V

    .line 1705
    :cond_177
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_153

    .line 1708
    :cond_17d
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPostAlgoSurfaces:[Landroid/view/Surface;

    if-nez p1, :cond_1a9

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mYuvImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    if-eqz p1, :cond_1a9

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraId:Ljava/lang/String;

    .line 1709
    invoke-interface {p1, v3}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportMultichannelFlow(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_19b

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getDataFlowType()I

    move-result p1

    invoke-static {p1}, Lcom/transsion/camera/adapter/DataFlowSpec;->yuvCapture(I)Z

    move-result p1

    if-eqz p1, :cond_1a9

    .line 1710
    :cond_19b
    new-instance p1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mYuvImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {v3}, Lcom/transsion/camera/adapter/IBGSurface;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-direct {p1, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1713
    :cond_1a9
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mQcomJpegSurface:Lcom/transsion/camera/adapter/IBGSurface;

    if-eqz p1, :cond_1bb

    .line 1714
    new-instance p1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mQcomJpegSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {v3}, Lcom/transsion/camera/adapter/IBGSurface;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-direct {p1, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1717
    :cond_1bb
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRawImageSurface:[Landroid/view/Surface;

    if-eqz p1, :cond_23b

    array-length p1, p1

    if-lez p1, :cond_23b

    .line 1718
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_215

    .line 1719
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_215

    .line 1720
    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 1721
    :goto_1da
    array-length v3, p1

    if-ge v2, v3, :cond_23b

    .line 1722
    sget-object v3, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRawImageSurface += "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRawImageSurface:[Landroid/view/Surface;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " ids = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1723
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRawImageSurface:[Landroid/view/Surface;

    aget-object v4, v4, v2

    invoke-direct {v3, v4}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    .line 1724
    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/params/OutputConfiguration;->setPhysicalCameraId(Ljava/lang/String;)V

    .line 1725
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1da

    .line 1728
    :cond_215
    sget-object p1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRawImageSurface(default) += "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRawImageSurface:[Landroid/view/Surface;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1729
    new-instance p1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRawImageSurface:[Landroid/view/Surface;

    aget-object v2, v3, v2

    invoke-direct {p1, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    .line 1730
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1734
    :cond_23b
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    if-eqz p1, :cond_254

    .line 1735
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewDataListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mResponseHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 1736
    new-instance p1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1739
    :cond_254
    iget p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mModeThumbnailSource:I

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object v2

    invoke-interface {v2}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getCreateSessionThumbnailSource()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1742
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mThumbnailSurface:Landroid/view/Surface;

    if-eqz v2, :cond_276

    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->needThumbnailSurface(I)Z

    move-result v2

    if-eqz v2, :cond_276

    .line 1743
    new-instance v2, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mThumbnailSurface:Landroid/view/Surface;

    invoke-direct {v2, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1747
    :cond_276
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mFastThumbSurface:Landroid/view/Surface;

    if-eqz v2, :cond_290

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraParameters;->getAppModeId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->needFastThumbSurface(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_290

    .line 1748
    new-instance v2, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mFastThumbSurface:Landroid/view/Surface;

    invoke-direct {v2, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1750
    :cond_290
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_297

    return-object v1

    .line 1753
    :cond_297
    sget-object v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getPhotoOutputConfigurations] use source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", needThumbnail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->needThumbnailSurface(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", needFastThumb: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    .line 1754
    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CameraParameters;->getAppModeId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->needFastThumbSurface(ILjava/lang/String;)Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " , mFastThumbSurface:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mFastThumbSurface:Landroid/view/Surface;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", configurations.size="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1755
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1753
    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method private getPhotoRange()Landroid/util/Range;
    .registers 1

    .line 4365
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLimitFpsRange()Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method private getSuitableRange(Ljava/util/List;I)Landroid/util/Range;
    .registers 4

    .line 4347
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSuitableVideoFrameRange(Ljava/util/List;I)Landroid/util/Range;

    move-result-object p1

    .line 4348
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p2}, Lcom/transsion/camera/adapter/CameraParameters;->getOpenAutoFps()Z

    move-result p2

    if-nez p2, :cond_4c

    .line 4349
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p2}, Lcom/transsion/camera/adapter/CameraParameters;->getLimitFpsRange()Landroid/util/Range;

    move-result-object p2

    if-nez p2, :cond_4c

    .line 4350
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p2}, Lcom/transsion/camera/adapter/CameraParameters;->getRegularRange()Landroid/util/Range;

    move-result-object p2

    if-eqz p2, :cond_4c

    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p2}, Lcom/transsion/camera/adapter/CameraParameters;->getRegularRange()Landroid/util/Range;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/Range;->contains(Landroid/util/Range;)Z

    move-result p2

    if-eqz p2, :cond_4c

    .line 4351
    sget-object p1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSuitableRange, regularRange: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getRegularRange()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4352
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getRegularRange()Landroid/util/Range;

    move-result-object p1

    .line 4356
    :cond_4c
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p2}, Lcom/transsion/camera/adapter/CameraParameters;->getLimitFpsRange()Landroid/util/Range;

    move-result-object p2

    if-eqz p2, :cond_83

    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p2}, Lcom/transsion/camera/adapter/CameraParameters;->getLimitFpsRange()Landroid/util/Range;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/Range;->contains(Landroid/util/Range;)Z

    move-result p2

    if-eqz p2, :cond_83

    .line 4357
    sget-object p1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSuitableRange, limitFpsRange: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getLimitFpsRange()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4358
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLimitFpsRange()Landroid/util/Range;

    move-result-object p0

    return-object p0

    :cond_83
    return-object p1
.end method

.method private getVideoOutputConfigurations(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;)Ljava/util/List;
    .registers 8

    .line 1769
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getVideoSurface] mPreviewSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mRecordSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mImageSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mVideoFrameWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mVideoFrameHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", deferredData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsPrepareSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsPrepareSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1774
    :try_start_53
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getDataFlowType()I

    move-result v1

    invoke-static {v1}, Lcom/transsion/camera/adapter/DataFlowSpec;->yuvPreview(I)Z

    move-result v1

    if-eqz v1, :cond_86

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSprdDumpRawSupport()Z

    move-result v1

    if-nez v1, :cond_86

    .line 1775
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getPreviewSize()Landroid/util/Size;

    move-result-object v1

    if-eqz v1, :cond_86

    .line 1776
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraId:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportMultichannelFlow(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 1777
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/16 v3, 0x23

    invoke-virtual {v2, v1, v3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createImageReader(Landroid/util/Size;I)Landroid/media/ImageReader;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    goto :goto_86

    :catch_82
    move-exception p0

    move-object v1, v0

    goto/16 :goto_19e

    .line 1780
    :cond_86
    :goto_86
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->closeAllForFinalMonkeyTest()Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 1781
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    :cond_8e
    if-eqz p1, :cond_11e

    .line 1784
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    if-eqz v1, :cond_19d

    .line 1785
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_99
    .catch Ljava/lang/IllegalArgumentException; {:try_start_53 .. :try_end_99} :catch_82
    .catchall {:try_start_53 .. :try_end_99} :catchall_1bb

    .line 1786
    :try_start_99
    iget-object v2, p1, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->previewSize:Landroid/util/Size;

    .line 1787
    iget v3, p1, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->previewSurfaceType:I
    :try_end_9d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_99 .. :try_end_9d} :catch_af
    .catchall {:try_start_99 .. :try_end_9d} :catchall_ac

    .line 1788
    const-class v4, Landroid/graphics/SurfaceTexture;

    if-nez v3, :cond_b2

    .line 1789
    :try_start_a1
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    const-class v5, Landroid/view/SurfaceHolder;

    invoke-direct {v3, v2, v5}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/util/Size;Ljava/lang/Class;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ba

    :catchall_ac
    move-object v0, v1

    goto/16 :goto_1bb

    :catch_af
    move-exception p0

    goto/16 :goto_19e

    .line 1791
    :cond_b2
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v3, v2, v4}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/util/Size;Ljava/lang/Class;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1793
    :goto_ba
    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsPrepareSuccess:Z

    if-eqz v2, :cond_c8

    .line 1794
    new-instance v2, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    invoke-direct {v2, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1796
    :cond_c8
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    if-eqz v2, :cond_da

    .line 1797
    new-instance v2, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {v3}, Lcom/transsion/camera/adapter/IBGSurface;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1799
    :cond_da
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mYuvImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    if-eqz v2, :cond_f6

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraId:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportMultichannelFlow(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f6

    .line 1800
    new-instance v2, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mYuvImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {v3}, Lcom/transsion/camera/adapter/IBGSurface;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1802
    :cond_f6
    iget-boolean v2, p1, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->supportBackgroundPreview:Z

    if-eqz v2, :cond_104

    .line 1803
    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->backgroundPreviewSize:Landroid/util/Size;

    .line 1804
    new-instance v2, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v2, p1, v4}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/util/Size;Ljava/lang/Class;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1806
    :cond_104
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    if-eqz p1, :cond_11d

    .line 1807
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewDataListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mResponseHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 1808
    new-instance p1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    invoke-virtual {p0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_11d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a1 .. :try_end_11d} :catch_af
    .catchall {:try_start_a1 .. :try_end_11d} :catchall_ac

    :cond_11d
    return-object v1

    .line 1812
    :cond_11e
    :try_start_11e
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    if-eqz p1, :cond_19d

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result p1

    if-eqz p1, :cond_19d

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    if-eqz p1, :cond_19d

    .line 1813
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_131
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11e .. :try_end_131} :catch_82
    .catchall {:try_start_11e .. :try_end_131} :catchall_1bb

    .line 1814
    :try_start_131
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->configurationForVideoVideoHDR(Landroid/view/Surface;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object p1

    .line 1815
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1816
    iget-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsPrepareSuccess:Z

    if-eqz p1, :cond_147

    .line 1817
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->configurationForVideoVideoHDR(Landroid/view/Surface;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object p1

    .line 1818
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1820
    :cond_147
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    if-eqz p1, :cond_159

    .line 1821
    new-instance p1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {v2}, Lcom/transsion/camera/adapter/IBGSurface;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1823
    :cond_159
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mYuvImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    if-eqz p1, :cond_175

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraId:Ljava/lang/String;

    invoke-interface {p1, v2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportMultichannelFlow(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_175

    .line 1824
    new-instance p1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mYuvImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {v2}, Lcom/transsion/camera/adapter/IBGSurface;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1826
    :cond_175
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mBackgroundPreviewSurface:Landroid/view/Surface;

    if-eqz p1, :cond_183

    .line 1827
    new-instance p1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mBackgroundPreviewSurface:Landroid/view/Surface;

    invoke-direct {p1, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1829
    :cond_183
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    if-eqz p1, :cond_19c

    .line 1830
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewDataListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mResponseHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 1831
    new-instance p1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    invoke-virtual {p0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_19c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_131 .. :try_end_19c} :catch_af
    .catchall {:try_start_131 .. :try_end_19c} :catchall_ac

    :cond_19c
    return-object v1

    :cond_19d
    return-object v0

    .line 1836
    :goto_19e
    :try_start_19e
    sget-object p1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVideoOutputConfigurations Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1837
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1bb
    .catchall {:try_start_19e .. :try_end_1bb} :catchall_ac

    :catchall_1bb
    :goto_1bb
    return-object v0
.end method

.method private hookDisturbStatus()V
    .registers 4

    .line 4446
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    if-eqz p0, :cond_2e

    .line 4447
    const-string v0, "key_self_timer"

    invoke-interface {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4448
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[hookDisturbStatus] selfTimer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4449
    const-string v0, "off"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2e

    const/4 p0, 0x0

    const/16 v0, 0x6c

    .line 4450
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/CameraUtil;->hookDisturbStatus(Landroid/content/Context;I)V

    :cond_2e
    return-void
.end method

.method private isAFSupport()Z
    .registers 2

    .line 2610
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFocusMode()Ljava/lang/String;

    move-result-object p0

    .line 2611
    const-string v0, "auto"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "continuous-picture"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "continuous-video"

    .line 2612
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    return p0

    :cond_21
    :goto_21
    const/4 p0, 0x1

    return p0
.end method

.method private isAutoWatermarkOn()Z
    .registers 2

    .line 3231
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isAutoWaterMarkSupport()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    .line 3232
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAutoWatermarkMode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method private isBlurCamera()Z
    .registers 4

    .line 3732
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    .line 3733
    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSecondLogicalCameraId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 3734
    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getLogicalCameraId()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    return p0

    :cond_23
    :goto_23
    const/4 p0, 0x1

    return p0
.end method

.method private isHdr10PlusOn()Z
    .registers 2

    .line 2218
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    if-eqz p0, :cond_c

    .line 2219
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getHdr10PlusMode()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_c

    return v0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private isHlgFormat()Z
    .registers 2

    .line 2223
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    if-eqz p0, :cond_13

    const-string/jumbo v0, "value_hdr_hlg"

    .line 2224
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoHdrFormat()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method private isImageClosed(Landroid/media/Image;)Z
    .registers 2

    .line 4237
    :try_start_0
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p0, 0x0

    return p0

    :catch_5
    const/4 p0, 0x1

    return p0
.end method

.method private isLongExposureMode()Z
    .registers 3

    .line 4476
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    if-nez v1, :cond_9

    goto :goto_18

    .line 4479
    :cond_9
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getAppModeId()Ljava/lang/String;

    move-result-object v0

    .line 4480
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraCapabilities;->getSupportedLongExposureScene()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_18
    :goto_18
    const/4 p0, 0x0

    return p0
.end method

.method private isLongExposureModeCapturing()Z
    .registers 4

    .line 4467
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 4470
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLongExposureCaptureState()Ljava/lang/String;

    move-result-object p0

    .line 4471
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLongExposureModeCapturing longExposureCaptureState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4472
    const-string v0, "continue"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private isRunSMVRMode(I)Z
    .registers 2

    .line 4369
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->getSupportedSMVRRequestParams(I)[I

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private isSatCamera()Z
    .registers 3

    .line 3726
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    .line 3727
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getZoomRatio()I

    move-result v1

    .line 3728
    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSatCameraLogicId()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_20

    sget p0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_1X:I

    if-ge v1, p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method private isSatCameraForVideoMode()Z
    .registers 6

    .line 3743
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    .line 3744
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getZoomRatio()I

    move-result v1

    .line 3745
    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSatCameraLogicId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraId:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v0, :cond_27

    .line 3746
    iget p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOutputType:I

    if-ne v4, p0, :cond_26

    sget p0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_1X:I

    if-lt v1, p0, :cond_26

    return v3

    :cond_26
    return v2

    .line 3748
    :cond_27
    iget p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOutputType:I

    if-ne v4, p0, :cond_2c

    return v3

    :cond_2c
    return v2
.end method

.method private isTfAlgo()Z
    .registers 1

    .line 3078
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionTurboFusionMode()I

    move-result p0

    if-lez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private isZoomBelow1X()Z
    .registers 2

    .line 3753
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getZoomRatio()I

    move-result p0

    sget v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_1X:I

    if-ge p0, v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private judgeOfflineSessionSupport()V
    .registers 4

    .line 372
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {v1}, Lcom/transsion/camera/adapter/IBGSurface;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCaptureSession;->supportsOfflineProcessing(Landroid/view/Surface;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsOfflineSessionSupport:Z

    .line 373
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " judgeOfflineSessionSupport mOfflineSessionSupport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsOfflineSessionSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    return-void

    :catch_27
    move-exception v0

    const/4 v1, 0x0

    .line 375
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsOfflineSessionSupport:Z

    .line 376
    sget-object p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "judgeOfflineSessionSupport Exception e ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$doAFAndCapture$8(Z)V
    .registers 3

    .line 3313
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doOnPreAfFocused(Z)V

    .line 3314
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setFocusModeAuto(Z)V

    .line 3316
    :try_start_9
    sget-object p1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[CapturePerformance] doAFAndCapture --"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3317
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setRepeatingRequest()V
    :try_end_13
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_9 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 3319
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private synthetic lambda$doPreAECapture$5()V
    .registers 3

    .line 2749
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] PreAE done"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2750
    iget-boolean v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    if-eqz v1, :cond_1b

    .line 2752
    const-string v1, "[onAEPreCaptureDone] camera proxy has release"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2753
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed(Z)V

    return-void

    .line 2757
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isMTKCaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2758
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doCancelAutoFocus()V
    :try_end_2a
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1b .. :try_end_2a} :catch_2b
    .catch Ljava/lang/IllegalStateException; {:try_start_1b .. :try_end_2a} :catch_2b
    .catch Ljava/lang/SecurityException; {:try_start_1b .. :try_end_2a} :catch_2b

    goto :goto_2f

    :catch_2b
    move-exception v0

    .line 2761
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2763
    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;)V

    return-void
.end method

.method private synthetic lambda$loadSoundEffectSource$0(Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .registers 5

    .line 1217
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1218
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    if-nez v1, :cond_d

    .line 1219
    invoke-interface {p1, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    goto :goto_f

    :catchall_b
    move-exception p0

    goto :goto_11

    .line 1221
    :cond_d
    iput p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShutterClickSampleId:I

    .line 1223
    :goto_f
    monitor-exit v0

    return-void

    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_b

    throw p0
.end method

.method private synthetic lambda$loadSoundEffectSource$1(Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .registers 5

    .line 1227
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1228
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    if-nez v1, :cond_d

    .line 1229
    invoke-interface {p1, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    goto :goto_f

    :catchall_b
    move-exception p0

    goto :goto_11

    .line 1231
    :cond_d
    iput p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mStartVideoRecordingSampleId:I

    .line 1233
    :goto_f
    monitor-exit v0

    return-void

    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_b

    throw p0
.end method

.method private synthetic lambda$loadSoundEffectSource$2(Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .registers 5

    .line 1236
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1237
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    if-nez v1, :cond_d

    .line 1238
    invoke-interface {p1, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    goto :goto_f

    :catchall_b
    move-exception p0

    goto :goto_11

    .line 1240
    :cond_d
    iput p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mStopVideoRecordingSampleId:I

    .line 1242
    :goto_f
    monitor-exit v0

    return-void

    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_b

    throw p0
.end method

.method private synthetic lambda$new$4()V
    .registers 3

    .line 2490
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] triggerAEPreCapturing done"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2491
    iget-boolean v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    if-eqz v1, :cond_1b

    .line 2493
    const-string v1, "[CapturePerformance] camera proxy has release"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2494
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed(Z)V

    return-void

    .line 2498
    :cond_1b
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isAFSupport()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2499
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doAutoFocusPreAFCapture()V

    return-void

    .line 2501
    :cond_25
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;)V

    return-void
.end method

.method private synthetic lambda$startRecordingRequest$7(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;Z)V
    .registers 6

    .line 3219
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecordingRequest, onPlayDone, success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p2, :cond_2e

    .line 3222
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isAutoWatermarkOn()Z

    move-result p2

    if-eqz p2, :cond_2e

    .line 3223
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mResponseHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda9;

    invoke-direct {p2, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda9;-><init>(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 3225
    :cond_2e
    invoke-interface {p1}, Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;->onStart()V

    return-void
.end method

.method private ledFlashOff()Z
    .registers 2

    .line 2721
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFlashMode()Ljava/lang/String;

    move-result-object p0

    .line 2722
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "off"

    .line 2723
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method private ledFlashOn()Z
    .registers 2

    .line 2717
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFlashMode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private ledFlashRealOn()Z
    .registers 2

    .line 2727
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFlashMode()Ljava/lang/String;

    move-result-object p0

    .line 2728
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "on"

    .line 2729
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string/jumbo v0, "torch"

    .line 2730
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 p0, 0x0

    return p0

    :cond_20
    :goto_20
    const/4 p0, 0x1

    return p0
.end method

.method private loadSoundEffectSource(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 1213
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1214
    :try_start_3
    sget-object v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[loadSoundEffectSource] ++ enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mShutterSoundLoaded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShutterSoundLoaded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_4f

    .line 1215
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v2, :cond_4f

    .line 1216
    new-instance v3, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    invoke-interface {v2, p2, v3}, Lcom/transsion/camera/utils/sound/IActionSound;->load(Ljava/lang/String;Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;)V

    .line 1225
    iget-boolean p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShutterSoundLoaded:Z

    if-nez p2, :cond_4f

    .line 1226
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    new-instance v2, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    invoke-interface {p2, p3, v2}, Lcom/transsion/camera/utils/sound/IActionSound;->load(Ljava/lang/String;Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;)V

    .line 1235
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    new-instance p3, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda7;

    invoke-direct {p3, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    invoke-interface {p2, p4, p3}, Lcom/transsion/camera/utils/sound/IActionSound;->load(Ljava/lang/String;Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;)V

    const/4 p2, 0x1

    .line 1244
    iput-boolean p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShutterSoundLoaded:Z

    goto :goto_4f

    :catchall_4d
    move-exception p0

    goto :goto_58

    .line 1247
    :cond_4f
    :goto_4f
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShutterSoundEnabled:Z

    .line 1248
    const-string p0, "[loadSoundEffectSource] -- [SoundPoolDebug]"

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1249
    monitor-exit v0

    return-void

    :goto_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_4d

    throw p0
.end method

.method private needFastThumbSurface(ILjava/lang/String;)Z
    .registers 4

    .line 1765
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraId:Ljava/lang/String;

    invoke-interface {v0, p1, p2, p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->needFastThumbSurface(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private needThumbnailSurface(I)Z
    .registers 2

    .line 1761
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->needThumbnailSurface(I)Z

    move-result p0

    return p0
.end method

.method private needTriggerPreCapture()Z
    .registers 5

    .line 2678
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsLegacyDevice:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 2681
    :cond_6
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->shouldTriggerPreCaptureAccordingFlashFacade()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    .line 2682
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->needTriggerPreCapture()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2683
    :cond_14
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isLongExposureModeCapturing()Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v1, 0x1

    .line 2684
    :cond_1b
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CapturePerformance] needTriggerPreCapture, flashFacade: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    .line 2685
    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CameraParameters;->getFlashFacade()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", flashStyle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    .line 2686
    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CameraParameters;->getFlashStyle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", superFlash: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    .line 2687
    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperFlashValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", screenFlash: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    .line 2688
    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CameraParameters;->getScreenFlashStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", flashMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    .line 2689
    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CameraParameters;->getFlashMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ringScreenLightOpeningStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2690
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->ringScreenLightOpeningStatus()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", aeState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    .line 2691
    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->getLastAeResult()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", afState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    .line 2692
    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->getLastAfState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isLongExposureModeCapturing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2693
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isLongExposureModeCapturing()Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", return: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2684
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method private notifySession(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 4

    .line 1900
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setSession(Landroid/hardware/camera2/CameraCaptureSession;)V

    const/4 p1, 0x0

    .line 1901
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    .line 1902
    sget-object p1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySession mSession:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",current thread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1903
    iput p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionState:I

    .line 1904
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    if-eqz p1, :cond_38

    .line 1905
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->judgeOfflineSessionSupport()V

    .line 1908
    :cond_38
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mStateWait:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/StateWait;->notifyState()V

    return-void
.end method

.method private notifySessionFail()V
    .registers 2

    const/4 v0, 0x2

    .line 1912
    iput v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionState:I

    .line 1913
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mStateWait:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/StateWait;->notifyState()V

    return-void
.end method

.method private offlineConfig(Ljava/util/List;I)I
    .registers 9

    .line 2832
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getOfflineFacing()I

    move-result v0

    .line 2833
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getOfflineConfigSize()Landroid/util/Size;

    move-result-object v1

    .line 2834
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isSatCamera()Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraParameters;->getSatPictureSize()Landroid/util/Size;

    move-result-object v2

    goto :goto_1f

    :cond_19
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraParameters;->getPictureSize()Landroid/util/Size;

    move-result-object v2

    .line 2835
    :goto_1f
    sget-object v3, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[offlineConfig] currentSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " configSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " facing:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mCurrentFacing:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCurrentFacing:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2836
    iget v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOfflineOpMode:I

    if-ne v4, p2, :cond_5f

    .line 2837
    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->offlineOutSizeChanged(Landroid/util/Size;Landroid/util/Size;)Z

    move-result v1

    if-nez v1, :cond_5f

    .line 2838
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->offlineFacingChanged(I)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 2839
    :cond_5f
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    iget v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCurrentFacing:I

    invoke-interface {v0, v1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->updateOfflineFacing(I)V

    .line 2840
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, p2, v1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->offlineUpdateOpMode(II)V

    .line 2841
    iput p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOfflineOpMode:I

    .line 2842
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->updateOfflineConfig(Ljava/util/List;)I

    move-result p1

    if-eqz p1, :cond_a9

    .line 2844
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[offlineConfig] updateOfflineConfig failed result = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2845
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->restartOffline()I

    move-result p0

    if-eqz p0, :cond_a9

    .line 2847
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[offlineConfig] restartOffline failed ret = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p1

    :cond_a9
    const/4 p0, 0x0

    return p0
.end method

.method private offlineFacingChanged(I)Z
    .registers 2

    .line 2811
    iget p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCurrentFacing:I

    if-eq p0, p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private offlineOutSizeChanged(Landroid/util/Size;Landroid/util/Size;)Z
    .registers 5

    const/4 p0, 0x1

    if-eqz p1, :cond_1c

    if-nez p2, :cond_6

    goto :goto_1c

    .line 2818
    :cond_6
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1c

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    if-eq p1, p2, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :cond_1c
    :goto_1c
    return p0
.end method

.method private playShutterSoundAndRunCaptureAnimation()V
    .registers 2

    .line 4130
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsCaptureCoverAndSoundPlayed:Z

    if-nez v0, :cond_25

    const/4 v0, 0x1

    .line 4131
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsCaptureCoverAndSoundPlayed:Z

    .line 4132
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mNeedCaptureCoverAnimation:Z

    if-eqz v0, :cond_10

    .line 4133
    const-string v0, "camera_click.ogg"

    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doShutterSoundPlay(Ljava/lang/String;)V

    .line 4135
    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewCoverCallback:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 4136
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewCoverCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/adapter/CameraProxy$PreviewCoverCallback;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$PreviewCoverCallback;->onPreviewCover()V

    :cond_25
    return-void
.end method

.method private preScreenFlashCapture()Z
    .registers 2

    .line 2179
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->screenFlashOn()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->ledFlashOff()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private reachThermThreshold(I)Z
    .registers 2

    .line 2134
    iget p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReduceFpsThermalThreshold:I

    if-lt p1, p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private restartOffline()I
    .registers 1

    .line 2826
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->restartOffine()I

    move-result p0

    return p0
.end method

.method private ringScreenLightOpeningStatus()Z
    .registers 4

    .line 4456
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    if-eqz p0, :cond_2a

    .line 4457
    const-string v0, "ringscreenlightopening"

    invoke-interface {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;->getDataStoreValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4458
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ringScreenLightOpeningStatus] status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4459
    const-string v0, "on"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2a

    const/4 p0, 0x1

    return p0

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method private screenFlashOn()Z
    .registers 2

    .line 2734
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getScreenFlashStatus()Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private setRepeatingRequest()V
    .registers 17

    move-object/from16 v1, p0

    const/16 v0, 0x1e

    .line 2027
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x3c

    .line 2019
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x32

    .line 2017
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1946
    sget-object v4, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setRepeatingRequest mSession = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",mSessionType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOutputType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mRecorderState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecorderState:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mReleased:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1947
    iget-object v5, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_61

    .line 1948
    iget-object v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;

    if-eqz v0, :cond_5b

    .line 1949
    iget-object v2, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraId:Ljava/lang/String;

    invoke-interface {v0, v2, v7}, Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;->onPreview(Ljava/lang/String;I)V

    .line 1950
    iput-object v6, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;

    .line 1952
    :cond_5b
    const-string v0, "mSession is null in setRepeatingRequest"

    invoke-static {v4, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1955
    :cond_61
    invoke-virtual {v1, v7}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getInnerCameraParameters(I)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->clone()Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object v5

    .line 1956
    invoke-virtual {v5}, Lcom/transsion/camera/adapter/CameraParameters;->getPreviewSize()Landroid/util/Size;

    move-result-object v8

    if-eqz v8, :cond_410

    iget-boolean v8, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    if-eqz v8, :cond_75

    goto/16 :goto_410

    .line 1960
    :cond_75
    iget v8, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOutputType:I

    const-string v9, "[setRepeatingRequest] error:"

    if-ne v8, v7, :cond_13f

    .line 1962
    iget-object v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-direct {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getPhotoRange()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setPreviewFPSRange(Landroid/util/Range;)V

    .line 1963
    iget-object v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_99

    .line 1964
    iget-boolean v2, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isDoStartPreview:Z

    iget-object v3, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    .line 1965
    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    filled-new-array {v3, v0}, [Landroid/view/Surface;

    move-result-object v0

    .line 1964
    invoke-virtual {v5, v7, v2, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilderByCustom(IZ[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    goto :goto_a5

    .line 1967
    :cond_99
    iget-boolean v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isDoStartPreview:Z

    iget-object v2, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    filled-new-array {v2}, [Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v5, v7, v0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilderByCustom(IZ[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 1970
    :goto_a5
    iget-object v2, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAuxPreviewSurface:Landroid/view/Surface;

    if-eqz v2, :cond_b0

    iget-boolean v3, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAuxSurfaceModeSupport:Z

    if-eqz v3, :cond_b0

    .line 1971
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1974
    :cond_b0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRepeatingRequest mSlaveSurfaceModeSupport = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSlaveSurfaceModeSupport:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",mSlavePreviewSurface = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSlavePreviewSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " , mCameraId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1975
    iget-object v2, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraId:Ljava/lang/String;

    const-string v3, "58"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_117

    .line 1976
    iget-object v2, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSlavePreviewSurface:Landroid/view/Surface;

    if-eqz v2, :cond_3f7

    iget-boolean v3, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSlaveSurfaceModeSupport:Z

    if-eqz v3, :cond_3f7

    .line 1977
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1978
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    .line 1980
    :try_start_f3
    iget-object v2, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v3, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionRepeatCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_fc
    .catchall {:try_start_f3 .. :try_end_fc} :catchall_fe

    goto/16 :goto_3f7

    :catchall_fe
    move-exception v0

    .line 1982
    sget-object v2, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOutputType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f7

    .line 1986
    :cond_117
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    .line 1989
    :try_start_11b
    iget-object v2, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v3, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionRepeatCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_124
    .catchall {:try_start_11b .. :try_end_124} :catchall_126

    goto/16 :goto_3f7

    :catchall_126
    move-exception v0

    .line 1991
    sget-object v2, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOutputType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f7

    :cond_13f
    const/4 v10, 0x2

    const/4 v11, 0x3

    if-ne v8, v10, :cond_32b

    .line 1996
    iget-object v8, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Lcom/transsion/camera/adapter/CameraParameters;->setAutoFpsModeForISP(I)V

    .line 1997
    iget-object v8, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {v8}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->isHighFpsSupport()Z

    move-result v8

    .line 1998
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v13

    invoke-virtual {v13}, Lcom/transsion/camera/utils/CustomConfigUtil;->isVideoAutoFpsSupportOnlyBackMain()Z

    move-result v13

    if-eqz v13, :cond_163

    const-string v13, "0"

    iget-object v14, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraId:Ljava/lang/String;

    .line 1999
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16d

    .line 2000
    :cond_163
    iget-object v13, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v13}, Lcom/transsion/camera/adapter/CameraParameters;->getOpenAutoFps()Z

    move-result v13

    if-eqz v13, :cond_16d

    move v13, v7

    goto :goto_16e

    :cond_16d
    move v13, v12

    .line 2001
    :goto_16e
    iget-object v14, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v14}, Lcom/transsion/camera/adapter/CameraParameters;->getAntiVideoMode()Ljava/lang/String;

    move-result-object v14

    const-string v15, "on"

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    .line 2003
    iget-boolean v6, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSupportSuperAntiVideoV2:Z

    if-eqz v6, :cond_188

    .line 2004
    iget-object v6, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperAntiVideoMode()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    :cond_188
    if-eqz v13, :cond_18f

    .line 2008
    iget-object v6, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v6, v7}, Lcom/transsion/camera/adapter/CameraParameters;->setAutoFpsModeForISP(I)V

    .line 2010
    :cond_18f
    invoke-virtual {v5}, Lcom/transsion/camera/adapter/CameraParameters;->getHighFpsMode()Ljava/lang/String;

    move-result-object v6

    .line 2011
    const-string v15, "1"

    if-eqz v8, :cond_1c0

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c0

    if-eqz v13, :cond_1ab

    .line 2014
    iget-object v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getPreviewFPSRange()Landroid/util/Range;

    move-result-object v0

    .line 2015
    iget-object v2, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v2, v10}, Lcom/transsion/camera/adapter/CameraParameters;->setAutoFpsModeForISP(I)V

    goto :goto_1bc

    :cond_1ab
    if-eqz v14, :cond_1b7

    .line 2016
    iget-boolean v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSupportHFPSAntiVideo:Z

    if-eqz v0, :cond_1b7

    .line 2017
    new-instance v0, Landroid/util/Range;

    invoke-direct {v0, v3, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    goto :goto_1bc

    .line 2019
    :cond_1b7
    new-instance v0, Landroid/util/Range;

    invoke-direct {v0, v2, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 2021
    :goto_1bc
    invoke-virtual {v5, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setPreviewFPSRange(Landroid/util/Range;)V

    goto :goto_1e6

    .line 2023
    :cond_1c0
    iget-object v2, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraCapabilities;->getSupportedPreviewFPSRanges()Ljava/util/List;

    move-result-object v2

    .line 2024
    iget v3, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameRate:I

    invoke-direct {v1, v2, v3}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getSuitableRange(Ljava/util/List;I)Landroid/util/Range;

    move-result-object v2

    .line 2025
    iget-object v3, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoSuperNightScene()I

    move-result v3

    .line 2026
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v3, v8, :cond_1e3

    .line 2027
    new-instance v2, Landroid/util/Range;

    const/16 v3, 0x18

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 2029
    :cond_1e3
    invoke-virtual {v5, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setPreviewFPSRange(Landroid/util/Range;)V

    .line 2033
    :goto_1e6
    iget-boolean v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecorderState:Z

    if-eqz v0, :cond_27a

    .line 2034
    iget-boolean v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsPrepareSuccess:Z

    if-eqz v0, :cond_257

    iget-object v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    if-eqz v0, :cond_257

    .line 2035
    invoke-virtual {v5}, Lcom/transsion/camera/adapter/CameraParameters;->supportYUVDataWhenRecording()Z

    move-result v0

    if-eqz v0, :cond_223

    iget-object v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_223

    .line 2036
    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_223

    iget-object v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_223

    .line 2037
    iget-object v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    iget-object v2, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    iget-object v3, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    .line 2038
    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    filled-new-array {v0, v2, v3}, [Landroid/view/Surface;

    move-result-object v0

    .line 2037
    invoke-virtual {v5, v11, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    :cond_220
    :goto_220
    const/4 v6, 0x0

    goto/16 :goto_2a7

    .line 2041
    :cond_223
    invoke-virtual {v5}, Lcom/transsion/camera/adapter/CameraParameters;->isPreviewStreamEnabled()Z

    move-result v0

    if-eqz v0, :cond_234

    .line 2042
    new-array v0, v10, [Landroid/view/Surface;

    iget-object v2, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v2, v0, v12

    iget-object v2, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    aput-object v2, v0, v7

    goto :goto_23a

    .line 2043
    :cond_234
    new-array v0, v7, [Landroid/view/Surface;

    iget-object v2, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    aput-object v2, v0, v12

    .line 2040
    :goto_23a
    invoke-virtual {v5, v11, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 2044
    iget v2, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCurrentThermal:I

    invoke-direct {v1, v2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->reachThermThreshold(I)Z

    move-result v2

    if-eqz v2, :cond_220

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_220

    .line 2045
    iget-object v2, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    filled-new-array {v2}, [Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v5, v11, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v6

    goto :goto_2a7

    .line 2050
    :cond_257
    iget-object v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    filled-new-array {v0}, [Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v5, v11, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 2052
    iget v2, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCurrentThermal:I

    invoke-direct {v1, v2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->reachThermThreshold(I)Z

    move-result v2

    if-eqz v2, :cond_220

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_220

    .line 2053
    iget-object v2, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    filled-new-array {v2}, [Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v5, v11, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v6

    goto :goto_2a7

    .line 2057
    :cond_27a
    iget-object v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_29b

    .line 2059
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_289

    goto :goto_28a

    :cond_289
    move v7, v11

    .line 2060
    :goto_28a
    iget-object v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    iget-object v2, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    filled-new-array {v0, v2}, [Landroid/view/Surface;

    move-result-object v0

    .line 2058
    invoke-virtual {v5, v7, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    goto :goto_220

    .line 2062
    :cond_29b
    iget-object v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    filled-new-array {v0}, [Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v5, v11, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    goto/16 :goto_220

    .line 2067
    :goto_2a7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRepeatingRequest mBackgroundPreviewSurface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mBackgroundPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mBackgroundSurfaceNeedShow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mBackgroundSurfaceNeedShow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mBackgroundSurfaceModeSupport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mBackgroundSurfaceModeSupport:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2070
    iget-object v2, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mBackgroundPreviewSurface:Landroid/view/Surface;

    if-eqz v2, :cond_2e0

    iget-boolean v3, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mBackgroundSurfaceNeedShow:Z

    if-eqz v3, :cond_2e0

    iget-boolean v3, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mBackgroundSurfaceModeSupport:Z

    if-eqz v3, :cond_2e0

    .line 2071
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 2074
    :cond_2e0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2075
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v6, :cond_2f5

    .line 2077
    invoke-virtual {v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2f5
    if-eqz v6, :cond_304

    .line 2082
    :try_start_2f7
    iget-object v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v3, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionRepeatCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto/16 :goto_3f7

    :catchall_302
    move-exception v0

    goto :goto_313

    .line 2084
    :cond_304
    iget-object v2, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v3, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionRepeatCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_311
    .catchall {:try_start_2f7 .. :try_end_311} :catchall_302

    goto/16 :goto_3f7

    .line 2087
    :goto_313
    sget-object v2, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOutputType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f7

    :cond_32b
    if-ne v8, v11, :cond_3e1

    .line 2091
    iget v2, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameRate:I

    invoke-direct {v1, v2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isRunSMVRMode(I)Z

    move-result v2

    if-eqz v2, :cond_345

    .line 2092
    iget-boolean v3, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecorderState:Z

    if-nez v3, :cond_345

    .line 2093
    new-instance v3, Landroid/util/Range;

    iget v4, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameRate:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    goto :goto_356

    .line 2095
    :cond_345
    new-instance v3, Landroid/util/Range;

    iget v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameRate:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v4, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameRate:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 2097
    :goto_356
    invoke-virtual {v5, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setPreviewFPSRange(Landroid/util/Range;)V

    .line 2100
    iget-object v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSMVRModeSupport()Z

    move-result v0

    if-eqz v0, :cond_365

    iget-boolean v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecorderState:Z

    if-eqz v0, :cond_378

    .line 2101
    :cond_365
    iget-boolean v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsPrepareSuccess:Z

    if-eqz v0, :cond_378

    iget-object v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    if-eqz v0, :cond_378

    .line 2102
    iget-object v3, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    filled-new-array {v3, v0}, [Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v5, v11, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    goto :goto_382

    .line 2105
    :cond_378
    iget-object v0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    filled-new-array {v0}, [Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v5, v11, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    :goto_382
    if-eqz v2, :cond_3aa

    .line 2110
    :try_start_384
    iget-object v2, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v3, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionRepeatCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_391
    .catchall {:try_start_384 .. :try_end_391} :catchall_392

    goto :goto_3f7

    :catchall_392
    move-exception v0

    .line 2112
    sget-object v2, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOutputType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3f7

    .line 2115
    :cond_3aa
    iget-object v2, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    check-cast v2, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    iput-object v2, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSessionHighSpeed:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    .line 2117
    :try_start_3b0
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object v0
    :try_end_3b8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3b0 .. :try_end_3b8} :catch_3dc
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3b0 .. :try_end_3b8} :catch_3dc

    .line 2119
    :try_start_3b8
    iget-object v2, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSessionHighSpeed:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    iget-object v3, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionRepeatCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_3c1
    .catchall {:try_start_3b8 .. :try_end_3c1} :catchall_3c2

    goto :goto_3f7

    :catchall_3c2
    move-exception v0

    .line 2121
    :try_start_3c3
    sget-object v2, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setRepeatingBurst] error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOutputType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3db
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3c3 .. :try_end_3db} :catch_3dc
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3c3 .. :try_end_3db} :catch_3dc

    goto :goto_3f7

    :catch_3dc
    move-exception v0

    .line 2124
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3f7

    .line 2128
    :cond_3e1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setRepeatingRequest] unknown session type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOutputType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2130
    :cond_3f7
    :goto_3f7
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRepeatingRequest] PreviewSurface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1957
    :cond_410
    :goto_410
    const-string v0, "params not ready, do not config now"

    invoke-static {v4, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private setTagValue(Ljava/lang/String;)V
    .registers 4

    .line 1334
    sget-object p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Proxy_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/debug/Log$Tag;->update(Ljava/lang/String;)V

    return-void
.end method

.method private shouldDoTriggerForCapturing()Z
    .registers 2

    .line 2299
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->afSearchStateAvailable()Z

    move-result v0

    .line 2300
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isAFSupport()Z

    move-result p0

    if-eqz p0, :cond_10

    if-nez v0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private shouldTriggerAFBeforeFlashCapture()Z
    .registers 3

    .line 2213
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getIspVersion()I

    move-result v0

    .line 2214
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIgnoreTriggerAFIspVersions:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mForceAfTrigger:Z

    if-eqz v0, :cond_1e

    :cond_16
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isAFSupport()Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method private shouldTriggerPreCaptureAccordingFlashFacade()Z
    .registers 2

    .line 2706
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->flashStyleOneStage()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2707
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->ledFlashOn()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2708
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->screenFlashOn()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2709
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->ringScreenLightOpeningStatus()Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    return p0
.end method

.method private startRecordingRequest(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;Z)V
    .registers 5

    .line 3202
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_3a

    const/4 v0, 0x2

    iget v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOutputType:I

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    if-nez v0, :cond_12

    goto :goto_3a

    .line 3209
    :cond_12
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "startRecordingRequest"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3210
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doEnableVideoAutoFlash(ZZ)V

    const/4 v0, 0x0

    .line 3212
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewFrameCallbackTmp:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    .line 3213
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecorderState:Z

    .line 3214
    iput-boolean p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsSupportShutterSound:Z

    .line 3216
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setRepeatingRequest()V

    .line 3218
    iget-boolean p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsSupportShutterSound:Z

    if-eqz p2, :cond_2f

    const-string p2, "VideoRecord.ogg"

    goto :goto_31

    :cond_2f
    const-string p2, "SOUND_NONE"

    :goto_31
    new-instance v0, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V

    invoke-direct {p0, p2, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doShutterSoundPlay(Ljava/lang/String;Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V

    return-void

    .line 3205
    :cond_3a
    :goto_3a
    sget-object p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "startRecordingRequest is error, mSession or surface is null"

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3206
    const-string p0, "no surface or session"

    invoke-interface {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method private stopRecordingRequest()V
    .registers 3

    .line 3195
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopRecordingRequest"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3196
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecorderState:Z

    .line 3197
    invoke-direct {p0, v0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doEnableVideoAutoFlash(ZZ)V

    .line 3198
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsSupportShutterSound:Z

    if-eqz v0, :cond_14

    const-string v0, "VideoStop.ogg"

    goto :goto_16

    :cond_14
    const-string v0, "SOUND_NONE"

    :goto_16
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doShutterSoundPlay(Ljava/lang/String;)V

    return-void
.end method

.method private unloadSoundEffectSource()V
    .registers 5

    .line 1253
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[unloadSoundEffectSource] ++ "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1254
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1255
    :try_start_a
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v2, :cond_28

    iget-boolean v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShutterSoundLoaded:Z

    if-eqz v3, :cond_28

    .line 1256
    iget v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShutterClickSampleId:I

    invoke-interface {v2, v3}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    .line 1257
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    iget v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mStartVideoRecordingSampleId:I

    invoke-interface {v2, v3}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    .line 1258
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    iget v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mStopVideoRecordingSampleId:I

    invoke-interface {v2, v3}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    goto :goto_28

    :catchall_26
    move-exception p0

    goto :goto_35

    :cond_28
    :goto_28
    const/4 v2, 0x0

    .line 1260
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShutterSoundLoaded:Z

    const/4 v2, 0x0

    .line 1261
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    .line 1262
    const-string p0, "[unloadSoundEffectSource] -- "

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1263
    monitor-exit v1

    return-void

    :goto_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_a .. :try_end_36} :catchall_26

    throw p0
.end method

.method private updateOnePeriodFlashTime(Landroid/hardware/camera2/CaptureResult;)V
    .registers 3

    .line 2461
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->updateOnePeriodFlashTime(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    const/4 v0, 0x0

    .line 2462
    aget v0, p1, v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAeChangeMinDuration:I

    const/4 v0, 0x1

    .line 2463
    aget p1, p1, v0

    iput p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAeChangeTimeOut:I

    return-void
.end method

.method private updateSurface(Lcom/transsion/camera/adapter/CameraDataChannel;)V
    .registers 4

    .line 1338
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraDataChannel;->getCameraDataType()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOutputType:I

    .line 1339
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraDataChannel;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    .line 1340
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraDataChannel;->getSlavePreviewSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSlavePreviewSurface:Landroid/view/Surface;

    .line 1341
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraDataChannel;->getAuxPreviewSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAuxPreviewSurface:Landroid/view/Surface;

    .line 1342
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraDataChannel;->getBackgroundPreviewSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mBackgroundPreviewSurface:Landroid/view/Surface;

    .line 1343
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraDataChannel;->getImageSurface()Lcom/transsion/camera/adapter/IBGSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    .line 1344
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraDataChannel;->getQcomJpegSurface()Lcom/transsion/camera/adapter/IBGSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mQcomJpegSurface:Lcom/transsion/camera/adapter/IBGSurface;

    .line 1345
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraDataChannel;->getRawImageSurface()[Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRawImageSurface:[Landroid/view/Surface;

    .line 1346
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraDataChannel;->getPostAlgoSurface()[Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPostAlgoSurfaces:[Landroid/view/Surface;

    .line 1347
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraDataChannel;->getPostAlgoSensorIds()[I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPostAlgoSensorIds:[I

    .line 1348
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraDataChannel;->getYuvImageSurface()Lcom/transsion/camera/adapter/IBGSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mYuvImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    .line 1349
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraDataChannel;->getThumbnailSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mThumbnailSurface:Landroid/view/Surface;

    .line 1350
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraDataChannel;->getFastThumbSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mFastThumbSurface:Landroid/view/Surface;

    .line 1352
    iget v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOutputType:I

    const/4 v1, 0x2

    if-eq v1, v0, :cond_65

    const/4 v1, 0x3

    if-ne v1, v0, :cond_57

    goto :goto_65

    :cond_57
    const/4 p1, 0x0

    .line 1359
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    const/4 p1, 0x0

    .line 1360
    iput p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameRate:I

    .line 1361
    iput p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameHeight:I

    .line 1362
    iput p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameWidth:I

    const/4 p1, 0x1

    .line 1363
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsPrepareSuccess:Z

    return-void

    .line 1353
    :cond_65
    :goto_65
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraDataChannel;->getVideoSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    .line 1354
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraDataChannel;->getVideoFrameRate()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameRate:I

    .line 1355
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraDataChannel;->getVideoFrameHeight()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameHeight:I

    .line 1356
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraDataChannel;->getVideoFrameWidth()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameWidth:I

    .line 1357
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraDataChannel;->isPrepareSuccess()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsPrepareSuccess:Z

    return-void
.end method

.method private usePreAEAFCaptureFlow()Z
    .registers 2

    .line 2619
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getIspVersion()I

    move-result p0

    const/16 v0, 0x2be

    if-ne v0, p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private usePreAECaptureFlow()Z
    .registers 1

    .line 2623
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraCapabilities;->usePreAECaptureFlow()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addDevicePreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V
    .registers 2

    .line 641
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doAddPreviewCallBack(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V

    return-void
.end method

.method public addGenderAttributeCallback(Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;)V
    .registers 2

    .line 711
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->addGenderAttributeCallback(Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;)V

    return-void
.end method

.method public autoFocus(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V
    .registers 2

    .line 576
    :try_start_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doAutoFocus(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 578
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public cancelAutoFocus()V
    .registers 1

    .line 585
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doCancelAutoFocus()V
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 587
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public cancelTakePicture()V
    .registers 1

    .line 543
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doCancelCapture()V
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 545
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method protected checkCaptureResult(Landroid/hardware/camera2/CaptureResult;)V
    .registers 5

    .line 4063
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mInContinuousCapture:Z

    if-eqz v0, :cond_c

    .line 4064
    sget-object p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "No need to check shot2shot when it is continuous shot"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 4068
    :cond_c
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mNeedCaptureSound:Z

    if-eqz v0, :cond_41

    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mUsePreAECaptureForSprd:Z

    if-eqz v0, :cond_41

    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsCancelCapture:Z

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkPreAECaptureOnStarted(Landroid/hardware/camera2/CaptureResult;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsPause:Z

    if-nez v0, :cond_41

    .line 4069
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] checkPreAECaptureOnStarted, mNeedCaptureSound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mNeedCaptureSound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4070
    const-string v0, "camera_click.ogg"

    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doShutterSoundPlay(Ljava/lang/String;)V

    .line 4073
    :cond_41
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getShot2ShotMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6f

    .line 4074
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->checkShutterDone(Landroid/hardware/camera2/CaptureResult;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 4075
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShot2ShotCallbackHolder:Lcom/transsion/camera/adapter/CameraProxy2Impl$Shot2ShotCallbackHolder;

    if-eqz v0, :cond_59

    .line 4076
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$Shot2ShotCallbackHolder;->onShutterDone()V

    .line 4078
    :cond_59
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShot2ShotCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    .line 4079
    invoke-interface {v2}, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;->onShutterDone()V

    goto :goto_5f

    .line 4084
    :cond_6f
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    if-eqz v0, :cond_8b

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraCapabilities;->isOffLineSessionSupport()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 4085
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkOfflineSessionSupportResult(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_8b

    .line 4087
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_88

    goto :goto_89

    :cond_88
    const/4 v1, 0x0

    :goto_89
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsSupportOfflineForCapture:Z

    :cond_8b
    return-void
.end method

.method public clearFrameResultCallback()V
    .registers 1

    .line 995
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doClearFrameResultCallback()V

    return-void
.end method

.method public clearGenderAttributeCallback()V
    .registers 1

    .line 721
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->clearGenderAttributeCallback()V

    return-void
.end method

.method public clearStreamIdResultCallback()V
    .registers 1

    .line 1000
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->clearStreamIdCallback()V

    return-void
.end method

.method createCameraParameters(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraCharacteristics;Lcom/transsion/camera/adapter/CameraCapabilities2Impl;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)Lcom/transsion/camera/adapter/CameraParameters2Impl;
    .registers 5

    .line 4492
    new-instance p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/adapter/CameraParameters2Impl;-><init>(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraCharacteristics;Lcom/transsion/camera/adapter/CameraCapabilities2Impl;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-object p0
.end method

.method createCapturePictureCallback(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;
    .registers 3

    .line 4496
    new-instance v0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V

    return-object v0
.end method

.method public destroyTask()V
    .registers 1

    return-void
.end method

.method public enableVideoAutoFlash(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 1318
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doEnableVideoAutoFlash(ZZ)V
    :try_end_4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_4} :catch_5

    return-void

    :catch_5
    move-exception p0

    .line 1320
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public getAIRawLiteMotionDetection()I
    .registers 1

    .line 903
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    if-eqz p0, :cond_9

    .line 904
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->getAIRawLiteMotionDetection()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public getAeExpoInfo()[I
    .registers 1

    .line 849
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    if-eqz p0, :cond_9

    .line 850
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->getAeeExpoInfoResult()[I

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    .line 852
    new-array p0, p0, [I

    return-object p0
.end method

.method public getAeStateResult()I
    .registers 1

    .line 910
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    if-eqz p0, :cond_9

    .line 911
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->getLastAeResult()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public getBrightnessResult()[I
    .registers 1

    .line 895
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    if-eqz p0, :cond_9

    .line 896
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->getBrightnessResult()[I

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    .line 898
    new-array p0, p0, [I

    return-object p0
.end method

.method public getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;
    .registers 1

    .line 673
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    return-object p0
.end method

.method public getCameraId()[I
    .registers 3

    .line 928
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->getStreamId()[I

    move-result-object v0

    .line 929
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraId:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-eqz v0, :cond_15

    .line 931
    array-length v1, v0

    if-lez v1, :cond_15

    const/4 v1, 0x0

    .line 932
    aget v0, v0, v1

    goto :goto_16

    :cond_15
    move v0, p0

    .line 936
    :goto_16
    filled-new-array {p0, v0}, [I

    move-result-object p0

    return-object p0
.end method

.method public getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;
    .registers 1

    .line 668
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    return-object p0
.end method

.method public getCaptureResult()Landroid/hardware/camera2/CaptureResult;
    .registers 1

    .line 923
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    return-object p0
.end method

.method public getEVList()[I
    .registers 1

    .line 888
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    if-eqz p0, :cond_9

    .line 889
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->getEVList()[I

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    .line 891
    new-array p0, p0, [I

    return-object p0
.end method

.method public getHDRAeExpoInfo()[I
    .registers 1

    .line 857
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    if-eqz p0, :cond_9

    .line 858
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->getHDRAeExpoInfoResult()[I

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    .line 860
    new-array p0, p0, [I

    return-object p0
.end method

.method getInnerCameraParameters(I)Lcom/transsion/camera/adapter/CameraParameters2Impl;
    .registers 2

    .line 4500
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    return-object p0
.end method

.method public getJpegMaxSize()I
    .registers 1

    .line 918
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getJpegMaxSize()I

    move-result p0

    return p0
.end method

.method public getLlsAeExpoInfo()[I
    .registers 1

    .line 881
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    if-eqz p0, :cond_9

    .line 882
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->getLlsInfoResult()[I

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    .line 884
    new-array p0, p0, [I

    return-object p0
.end method

.method public getMFNRAeExpoInfo()[I
    .registers 1

    .line 865
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    if-eqz p0, :cond_9

    .line 866
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->getMFNRAeExpoInfoResult()[I

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    .line 868
    new-array p0, p0, [I

    return-object p0
.end method

.method public getNightAeExpoInfo()[I
    .registers 1

    .line 873
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    if-eqz p0, :cond_9

    .line 874
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->getNightAeExpoInfoResult()[I

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    .line 876
    new-array p0, p0, [I

    return-object p0
.end method

.method getRequestHandler()Landroid/os/Handler;
    .registers 1

    .line 4504
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public init(Landroid/hardware/camera2/CameraCharacteristics;Lcom/transsion/camera/adapter/CameraCapabilities2Impl;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 7

    .line 239
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[init] cs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 240
    iput-object p3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    .line 241
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->createCameraParameters(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraCharacteristics;Lcom/transsion/camera/adapter/CameraCapabilities2Impl;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    .line 242
    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    .line 244
    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_33

    const/4 p2, 0x1

    goto :goto_34

    :cond_33
    const/4 p2, 0x0

    :goto_34
    iput-boolean p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsLegacyDevice:Z

    .line 246
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportSuperAntiVideoV2:Z

    iput-boolean p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSupportSuperAntiVideoV2:Z

    .line 247
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportHFPSAntiVideo:Z

    iput-boolean p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSupportHFPSAntiVideo:Z

    .line 248
    sget-boolean p2, Lcom/transsion/camera/utils/FeatureSupport;->sDbgReduceRecorderPreviewTempThresh:Z

    if-eqz p2, :cond_4d

    .line 249
    sget p2, Lcom/transsion/camera/utils/FeatureSupport;->sReduceRecorderPreviewTempThresh:I

    goto :goto_53

    :cond_4d
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mThermalThrottleVideoReduceFpsValue:I

    :goto_53
    iput p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReduceFpsThermalThreshold:I

    .line 250
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mForceAFTrigger:Z

    iput-boolean p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mForceAfTrigger:Z

    .line 251
    new-instance p2, Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-direct {p2, p1, p3}, Lcom/transsion/camera/adapter/CaptureResultMonitor;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    .line 252
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mPostAlgoStreamIdSupport:Z

    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPostAlgoStreamIdSupport:Z

    return-void
.end method

.method public isMTKCaptureFlow()Z
    .registers 1

    .line 1160
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isMTKCaptureFlow()Z

    move-result p0

    return p0
.end method

.method public isMultiCamera()Z
    .registers 2

    .line 3739
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isSatCamera()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isBlurCamera()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public isOfflineJniSupport()Z
    .registers 1

    .line 1170
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isOfflineJniSupport()Z

    move-result p0

    return p0
.end method

.method public isQcomCaptureFlow()Z
    .registers 1

    .line 1165
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isQcomCaptureFlow()Z

    move-result p0

    return p0
.end method

.method public isReleased()Z
    .registers 1

    .line 1155
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    return p0
.end method

.method public isVssSupported()Z
    .registers 1

    .line 1123
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsLegacyDevice:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public offlineJniMetadata(Ljava/lang/Object;ZZ)V
    .registers 4

    .line 1175
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->offlineJniMetadata(Ljava/lang/Object;ZZ)V

    return-void
.end method

.method public onTemperatureChanged(I)V
    .registers 5

    .line 830
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onTemperatureChanged]  temperature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 832
    iget v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReduceFpsThermalThreshold:I

    if-lt p1, v0, :cond_1e

    iget v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCurrentThermal:I

    if-ge v1, v0, :cond_24

    :cond_1e
    if-ge p1, v0, :cond_27

    iget v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCurrentThermal:I

    if-ge v1, v0, :cond_27

    .line 834
    :cond_24
    iput p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCurrentThermal:I

    return-void

    .line 837
    :cond_27
    iput p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCurrentThermal:I

    .line 840
    :try_start_29
    iget-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecorderState:Z

    if-eqz p1, :cond_30

    .line 841
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setRepeatingRequest()V
    :try_end_30
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_29 .. :try_end_30} :catch_31
    .catch Ljava/lang/IllegalStateException; {:try_start_29 .. :try_end_30} :catch_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29 .. :try_end_30} :catch_31

    :cond_30
    return-void

    :catch_31
    move-exception p0

    .line 844
    sget-object p1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRepeatingRequest exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public preparePreview(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;I)V
    .registers 5

    .line 257
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "preparePreview start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 258
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 260
    :try_start_b
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->createDeferredSession(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;I)V
    :try_end_e
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_b .. :try_end_e} :catch_f
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_e} :catch_f
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_e} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_e} :catch_f
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception p0

    .line 266
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 268
    :goto_13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v0

    .line 269
    sget-object p2, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preparePreview end, process time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public registerDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;I)V
    .registers 6

    .line 965
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerDualLensCallback, callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", priority:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 966
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doRegisterDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;I)V

    return-void
.end method

.method public registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .registers 5

    .line 983
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerFrameResultCallback, callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 984
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void
.end method

.method registerSettingPreviewCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V
    .registers 4

    if-nez p1, :cond_9

    .line 3670
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "registerSettingPreviewCallback error [why null]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3672
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSettingPreviewDataCallBacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 3673
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSettingPreviewDataCallBacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    return-void
.end method

.method public registerSettingPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V
    .registers 2

    .line 646
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doRegisterSettingPreviewCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V

    return-void
.end method

.method public registerShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V
    .registers 3

    .line 1100
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShot2ShotCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1101
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShot2ShotCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public registerStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V
    .registers 2

    .line 726
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->registerStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V

    return-void
.end method

.method release()V
    .registers 5

    .line 1130
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release start , mReleased:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1132
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShot2ShotCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1133
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1134
    iget-boolean v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecorderState:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_36

    .line 1135
    iput-boolean v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecorderState:Z

    .line 1136
    iget-boolean v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsSupportShutterSound:Z

    if-eqz v1, :cond_31

    const-string v1, "VideoStop.ogg"

    goto :goto_33

    :cond_31
    const-string v1, "SOUND_NONE"

    :goto_33
    invoke-direct {p0, v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doShutterSoundPlay(Ljava/lang/String;)V

    .line 1138
    :cond_36
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->closeSession()V

    .line 1139
    iput-boolean v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mInContinuousCapture:Z

    .line 1140
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    if-eqz v1, :cond_42

    .line 1141
    invoke-interface {v1, v3}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setContinuousCapture(Z)V

    :cond_42
    const/4 v1, 0x1

    .line 1143
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    .line 1144
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;

    .line 1145
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    .line 1147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SoundPoolDebug] camera proxy release, mSoundPlayer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mShutterSoundLoaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShutterSoundLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1149
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->unloadSoundEffectSource()V

    .line 1150
    const-string p0, "release end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public removeGenderAttributeCallback(Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;)V
    .registers 2

    .line 716
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->removeGenderAttributeCallback(Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;)V

    return-void
.end method

.method public setActionSound(Lcom/transsion/camera/utils/sound/IActionSound;)V
    .registers 2

    .line 1312
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    return-void
.end method

.method public setAnimalEyeDetectCallback(Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;)V
    .registers 5

    .line 959
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAnimalEyeDetectCallback, callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 960
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doSetAnimalEyeDetectCallback(Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;)V

    return-void
.end method

.method public setAutoFocusMoveCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;)V
    .registers 2

    .line 593
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doSetAutoFocusMoveCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;)V

    return-void
.end method

.method public setCameraBVCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraBVCallback;)V
    .registers 5

    .line 971
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraBVCallback, callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 972
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doSetBVCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraBVCallback;)V

    return-void
.end method

.method public setCameraDataChannel(Lcom/transsion/camera/adapter/CameraDataChannel;)V
    .registers 5

    .line 624
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "setCameraDataChannel start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 625
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 627
    :try_start_b
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doSetDataChannel(Lcom/transsion/camera/adapter/CameraDataChannel;)V
    :try_end_e
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_b .. :try_end_e} :catch_f
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_e} :catch_f
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_e} :catch_f
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_e} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception p0

    .line 633
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 635
    :goto_13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v0

    .line 636
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraDataChannel end, process time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setCameraOfflineSessionListener(Lcom/transsion/camera/adapter/CameraProxy$CameraOfflineSessionListener;)V
    .registers 5

    .line 449
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraOfflineSessionListener, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 450
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOfflineSessionListener:Lcom/transsion/camera/adapter/CameraProxy$CameraOfflineSessionListener;

    return-void
.end method

.method public setCameraParameters(Lcom/transsion/camera/adapter/CameraParameters;)V
    .registers 3

    .line 656
    sget-object p1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "setCameraParameters start"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 658
    :try_start_7
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doParameterRepeatingRequest()V
    :try_end_a
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_7 .. :try_end_a} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_a} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_a} :catch_b
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception p0

    .line 661
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 663
    :goto_f
    sget-object p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "setCameraParameters end"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setEyeDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$EyeDetectionCallback;)V
    .registers 5

    .line 947
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEyeDetectionCallback, callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 948
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doSetEyeDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$EyeDetectionCallback;)V

    return-void
.end method

.method public setFaceDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;)V
    .registers 2

    .line 696
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doSetFaceDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;)V

    return-void
.end method

.method public setFlashStateCallback(Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;)V
    .registers 5

    .line 1112
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFlashStateCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1113
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->setFlashStateCallback(Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;)V

    return-void
.end method

.method public setHumanDetCallback(Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;)V
    .registers 5

    .line 953
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHumanDetCallback, callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 954
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doSetHumanDetCallback(Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;)V

    return-void
.end method

.method public setLowConfigReduceLoading(Z)V
    .registers 3

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    if-eqz v0, :cond_9

    .line 304
    iput-boolean p1, v0, Lcom/transsion/camera/adapter/CameraParameters;->mEnableLowConfig:Z

    .line 305
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setRepeatingRequest()V
    :try_end_9
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    return-void

    :catch_a
    move-exception p0

    .line 308
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public setModeThumbnailSource(I)V
    .registers 2

    .line 825
    iput p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mModeThumbnailSource:I

    return-void
.end method

.method public setPause(Z)V
    .registers 4

    .line 1188
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsPause:Z

    if-eqz p1, :cond_7

    const/4 v0, -0x1

    .line 1190
    iput v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOfflineOpMode:I

    .line 1192
    :cond_7
    sget-object p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[isPause] isPause:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setPictureGPSLocation(Landroid/location/Location;)V
    .registers 2

    .line 619
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->setJpegGPSLocation(Landroid/location/Location;)V

    return-void
.end method

.method public setPictureOrientation(I)V
    .registers 2

    .line 607
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->setJpegOrientation(I)V

    return-void
.end method

.method public setSession(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 5

    .line 4484
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSession: session = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4485
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method

.method public final setShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_a

    .line 1082
    :cond_4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_a
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setShot2ShotCallbackRef(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method protected setShot2ShotCallbackHolder(Lcom/transsion/camera/adapter/CameraProxy2Impl$Shot2ShotCallbackHolder;)V
    .registers 2

    .line 1091
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShot2ShotCallbackHolder:Lcom/transsion/camera/adapter/CameraProxy2Impl$Shot2ShotCallbackHolder;

    return-void
.end method

.method protected setShot2ShotCallbackRef(Ljava/lang/ref/WeakReference;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 1086
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_f

    .line 1087
    :cond_9
    new-instance v0, Lcom/transsion/camera/adapter/CameraProxy2Impl$Shot2ShotCallbackHolder;

    invoke-direct {v0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl$Shot2ShotCallbackHolder;-><init>(Ljava/lang/ref/WeakReference;)V

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x0

    .line 1086
    :goto_10
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setShot2ShotCallbackHolder(Lcom/transsion/camera/adapter/CameraProxy2Impl$Shot2ShotCallbackHolder;)V

    return-void
.end method

.method public setShutterSoundEffect(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1118
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->loadSoundEffectSource(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVideoHDRInfoCallback(Lcom/transsion/camera/adapter/CameraProxy$VideoHDRInfoCallback;)V
    .registers 2

    .line 706
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doSetVideoHDRInfoCallback(Lcom/transsion/camera/adapter/CameraProxy$VideoHDRInfoCallback;)V

    return-void
.end method

.method public setVideoOrientation(I)V
    .registers 2

    .line 612
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->setVideoOrientation(I)V

    return-void
.end method

.method public shutterSoundPlay(ILcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V
    .registers 4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 1204
    const-string p1, "VideoRecord.ogg"

    goto :goto_e

    :cond_6
    const/4 v0, 0x3

    if-ne p1, v0, :cond_c

    .line 1206
    const-string p1, "VideoStop.ogg"

    goto :goto_e

    .line 1205
    :cond_c
    const-string p1, "camera_click.ogg"

    .line 1208
    :goto_e
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doShutterSoundPlay(Ljava/lang/String;Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V

    return-void
.end method

.method public shutterSoundPlay(Ljava/lang/String;)V
    .registers 2

    .line 1197
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doShutterSoundPlay(Ljava/lang/String;)V

    return-void
.end method

.method startContinuousShot(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;I)V
    .registers 3

    .line 560
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doStartContinuousCapture(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;I)V

    return-void
.end method

.method public startFaceDetection()V
    .registers 1

    .line 742
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doStartFaceDetection()V
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 744
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public startFaceDetection(Lcom/transsion/camera/adapter/CameraProxy$IFaceDetectionListener;)V
    .registers 2

    .line 701
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->setFaceDetectionListener(Lcom/transsion/camera/adapter/CameraProxy$IFaceDetectionListener;)V

    return-void
.end method

.method public startPreview(Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;)V
    .registers 5

    .line 274
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "startPreview start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 275
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 277
    :try_start_b
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doStartPreview(Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;)V
    :try_end_e
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_b .. :try_end_e} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_e} :catch_f
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_e} :catch_f
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception p0

    .line 279
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 281
    :goto_13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v0

    .line 282
    sget-object p2, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startPreview end, process time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->getInstance()Lcom/transsion/camera/thub/TranSchedManagerProxy;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->cancelCamTranSched(I)V

    return-void
.end method

.method public startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;Z)V
    .registers 3

    .line 679
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->startRecordingRequest(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;Z)V
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 681
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public startVideoHDRInfoDetect()V
    .registers 1

    .line 769
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doStartVideoHDRInfoDetect()V
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 771
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public stopContinuousShot()V
    .registers 1

    .line 565
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doStopContinuousCapture()V

    return-void
.end method

.method public stopContinuousShotCount()V
    .registers 1

    .line 570
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doStopContinuousCount()V

    return-void
.end method

.method public stopFaceDetection()V
    .registers 2

    const/4 v0, 0x1

    .line 751
    :try_start_1
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doStopFaceDetection(Z)V
    :try_end_4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_4} :catch_5

    return-void

    :catch_5
    move-exception p0

    .line 753
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public stopFaceDetection(Z)V
    .registers 2

    .line 760
    :try_start_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doStopFaceDetection(Z)V
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 762
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public stopGenderAttributeDetection()V
    .registers 1

    .line 736
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->clearGenderAttributeCallback()V

    return-void
.end method

.method public stopPreview()V
    .registers 5

    .line 288
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPreview start, mReleased:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 289
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 291
    :try_start_1c
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doStopPreview()V
    :try_end_1f
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1c .. :try_end_1f} :catch_20
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_1f} :catch_20
    .catch Ljava/lang/IllegalStateException; {:try_start_1c .. :try_end_1f} :catch_20

    goto :goto_24

    :catch_20
    move-exception p0

    .line 293
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 295
    :goto_24
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 296
    sget-object p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopPreview end, process time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public stopRecording()V
    .registers 1

    .line 688
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->stopRecordingRequest()V
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 690
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public stopRepeating()V
    .registers 6

    .line 315
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_3f

    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    if-eqz v0, :cond_9

    goto :goto_3f

    .line 318
    :cond_9
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopRepeating start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 319
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 321
    :try_start_14
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_19
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_14 .. :try_end_19} :catch_38

    .line 326
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 328
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopRepeating end, process time = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catch_38
    move-exception p0

    .line 323
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_3f
    :goto_3f
    return-void
.end method

.method public stopVideoHDRInfoDetect()V
    .registers 1

    .line 778
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doStopVideoHDRInfoDetect()V
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 780
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public switchToOfflineSession(I)V
    .registers 7

    .line 334
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchToOfflineSession start, offlineType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , mImageSurface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , mReleased:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 335
    iget-boolean v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsOfflineSessionSupport:Z

    if-nez v1, :cond_39

    .line 336
    const-string v1, "switchToOfflineSession return, mIsOfflineSessionSupport is false!"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 337
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOfflineSessionListener:Lcom/transsion/camera/adapter/CameraProxy$CameraOfflineSessionListener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy$CameraOfflineSessionListener;->onSwitchFailed(I)V

    return-void

    .line 340
    :cond_39
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    if-eqz v1, :cond_ba

    invoke-interface {v1}, Lcom/transsion/camera/adapter/IBGSurface;->isSurfaceDirty()Z

    move-result v1

    if-nez v1, :cond_ba

    iget-boolean v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    if-eqz v1, :cond_48

    goto :goto_ba

    .line 345
    :cond_48
    iget-boolean v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsSupportOfflineForCapture:Z

    if-nez v1, :cond_57

    .line 346
    const-string v1, "switchToOfflineSession return, mIsSupportSwitchOfflineForCapture is false!"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 347
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOfflineSessionListener:Lcom/transsion/camera/adapter/CameraProxy$CameraOfflineSessionListener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy$CameraOfflineSessionListener;->onSwitchFailed(I)V

    return-void

    .line 351
    :cond_57
    iput p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSwitchOfflineType:I

    .line 352
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 353
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {v2}, Lcom/transsion/camera/adapter/IBGSurface;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 355
    :try_start_68
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsOffLineSessionReady:Z

    .line 356
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsOfflineSessionError:Z

    const/4 v2, 0x1

    .line 357
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    .line 358
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {v3, v2}, Lcom/transsion/camera/adapter/IBGSurface;->updateBGOfflineState(I)V

    .line 359
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {v2}, Lcom/transsion/camera/adapter/IBGSurface;->getPictureCount()I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPictureCount:I

    .line 360
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOfflineSessionListener:Lcom/transsion/camera/adapter/CameraProxy$CameraOfflineSessionListener;

    invoke-interface {v2}, Lcom/transsion/camera/adapter/CameraProxy$CameraOfflineSessionListener;->executeSwitchToOffline()V

    .line 361
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    new-instance v3, Lcom/transsion/camera/adapter/CameraProxy2Impl$HandlerExecutor;

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOfflineSessionHandler:Landroid/os/Handler;

    invoke-direct {v3, v4}, Lcom/transsion/camera/adapter/CameraProxy2Impl$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOfflineSessionCallback:Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;

    invoke-virtual {v2, v1, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->switchToOffline(Ljava/util/Collection;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;)Landroid/hardware/camera2/CameraOfflineSession;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOfflineSession:Landroid/hardware/camera2/CameraOfflineSession;
    :try_end_92
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_68 .. :try_end_92} :catch_98

    .line 367
    const-string p0, "switchToOfflineSession end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catch_98
    move-exception v0

    .line 363
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOfflineSessionListener:Lcom/transsion/camera/adapter/CameraProxy$CameraOfflineSessionListener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy$CameraOfflineSessionListener;->onSwitchFailed(I)V

    .line 364
    sget-object p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " switchToOfflineSession exception e = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 365
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 341
    :cond_ba
    :goto_ba
    const-string v1, "switchToOfflineSession return, mImageSurface is null or already switch to offline session"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 342
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mOfflineSessionListener:Lcom/transsion/camera/adapter/CameraProxy$CameraOfflineSessionListener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy$CameraOfflineSessionListener;->onSwitchFailed(I)V

    return-void
.end method

.method takePicture(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V
    .registers 4

    .line 455
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isQcomCaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 456
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureStateMonitor:Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;

    iget-object v1, p1, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mRawCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-static {v0, v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->-$$Nest$mwrapCaptureCallback(Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V

    .line 457
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureStateMonitor:Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;

    iput-object v0, p1, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mRawCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    goto :goto_1d

    .line 459
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureStateMonitor:Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;

    iget-object v1, p1, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-static {v0, v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->-$$Nest$mwrapCaptureCallback(Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V

    .line 460
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureStateMonitor:Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;

    iput-object v0, p1, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    .line 462
    :goto_1d
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doCapture(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V

    return-void
.end method

.method public unRegisterDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;)V
    .registers 5

    .line 977
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unRegisterDualLensCallback, callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 978
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doUnRegisterDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;)V

    return-void
.end method

.method public unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .registers 5

    .line 989
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unRegisterFrameResultCallback, callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 990
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doUnRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void
.end method

.method unRegisterSettingPreviewCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V
    .registers 4

    if-nez p1, :cond_a

    .line 3679
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "unRegisterSettingPreviewCallback error [why null]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3681
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSettingPreviewDataCallBacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unRegisterSettingPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V
    .registers 2

    .line 651
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doUnRegisterSettingPreviewCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V

    return-void
.end method

.method public unRegisterStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V
    .registers 2

    .line 731
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->unRegisterStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V

    return-void
.end method

.method public unregisterShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V
    .registers 2

    .line 1107
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShot2ShotCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateAuxSurfaceModeSupport(Z)V
    .registers 2

    .line 798
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAuxSurfaceModeSupport:Z

    return-void
.end method

.method public updateAuxSurfaceStatus(Z)V
    .registers 2

    return-void
.end method

.method public updateBackgroundSurfaceModeSupport(Z)V
    .registers 2

    .line 820
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mBackgroundSurfaceModeSupport:Z

    return-void
.end method

.method public updateBackgroundSurfaceStatus(Z)V
    .registers 5

    .line 809
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBackgroundSurfaceStatus show: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 810
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mBackgroundSurfaceNeedShow:Z

    .line 812
    :try_start_19
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doParameterRepeatingRequest()V
    :try_end_1c
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_19 .. :try_end_1c} :catch_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_1c} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_1c} :catch_1d

    return-void

    :catch_1d
    move-exception p0

    .line 814
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public updateFocusMode(Ljava/lang/String;)V
    .registers 2

    .line 1327
    :try_start_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doUpdateFocusMode(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 1329
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public updateOfflineConfig(Ljava/util/List;)I
    .registers 7

    .line 2856
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isOfflineJniSupport()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 2857
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isSatCamera()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getSatPictureSize()Landroid/util/Size;

    move-result-object v0

    goto :goto_1b

    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getPictureSize()Landroid/util/Size;

    move-result-object v0

    :goto_1b
    const/4 v1, 0x4

    .line 2859
    new-array v1, v1, [Landroid/util/Size;

    const/4 v2, 0x0

    .line 2860
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    aput-object v3, v1, v2

    .line 2861
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getOfflineOutSize(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    .line 2862
    aput-object v0, v1, v2

    .line 2863
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v4, 0x3

    if-le v0, v3, :cond_49

    .line 2864
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isMultiCamera()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/util/Size;

    :cond_46
    aput-object v2, v1, v4

    goto :goto_4b

    .line 2866
    :cond_49
    aput-object v2, v1, v4

    .line 2868
    :goto_4b
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isSatCamera()Z

    move-result v0

    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isBlurCamera()Z

    move-result p0

    invoke-interface {p1, v1, v0, p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->updateOfflineConfig([Landroid/util/Size;ZZ)I

    move-result p0

    return p0

    :cond_5a
    const/4 p0, -0x1

    return p0
.end method

.method public updateQcomPicSurface(Lcom/transsion/camera/adapter/IBGSurface;)V
    .registers 4

    .line 1180
    invoke-interface {p1}, Lcom/transsion/camera/adapter/IBGSurface;->getListener()Landroid/media/ImageReader$OnImageAvailableListener;

    move-result-object v0

    .line 1181
    instance-of v1, v0, Lcom/transsion/camera/adapter/platformcamera/OfflineImageAvaliableListener;

    if-eqz v1, :cond_13

    .line 1182
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p1}, Lcom/transsion/camera/adapter/IBGSurface;->getImageReader()Landroid/media/ImageReader;

    move-result-object p1

    check-cast v0, Lcom/transsion/camera/adapter/platformcamera/OfflineImageAvaliableListener;

    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->updateQcomPicSurface(Landroid/media/ImageReader;Lcom/transsion/camera/adapter/platformcamera/OfflineImageAvaliableListener;)V

    :cond_13
    return-void
.end method

.method public updateRecordingHint(Z)V
    .registers 2

    .line 3710
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->setRecordingHint(Z)V

    return-void
.end method

.method public updateSlaveSurfaceModeSupport(Z)V
    .registers 5

    .line 803
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSlaveSurfaceModeSupport support: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 804
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSlaveSurfaceModeSupport:Z

    return-void
.end method

.method videoSnapShot(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V
    .registers 2

    .line 552
    :try_start_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doVideoSnapShot(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 554
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
