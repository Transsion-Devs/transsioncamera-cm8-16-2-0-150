.class public Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;,
        Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;,
        Lcom/transsion/camera/app/common/mode/CameraDeviceControl$ICommandCallback;
    }
.end annotation


# static fields
.field private static final CAMERA_OPEN_STRATEGY_IN_MONKEY:Landroid/util/SparseArray;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final ASD_ZOOM_HANDLER_TOKEN:[Ljava/lang/String;

.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mArrayId:[Ljava/lang/String;

.field private volatile mAuxPreviewSize:Landroid/util/Size;

.field private volatile mBackgroundPreviewSize:Landroid/util/Size;

.field private mCameraDisconnectedListerner:Lcom/transsion/camera/app/common/IApp$ICameraDisconnectedListener;

.field private mCameraErrorListener:Lcom/transsion/camera/app/common/IApp$ICameraErrorListener;

.field private final mCameraOfflineSessionListener:Lcom/transsion/camera/adapter/CameraProxy$CameraOfflineSessionListener;

.field private final mCaptureOfflineLock:Lcom/transsion/camera/utils/StateWait;

.field private final mChangeParameterLock:Ljava/lang/Object;

.field private final mClosedState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

.field private volatile mClosing:Z

.field private mContext:Landroid/content/Context;

.field private mCurMainDevice:Ljava/lang/String;

.field private mCurSetParameterDevice:Ljava/lang/String;

.field private mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

.field private mDeviceState:I

.field private mDeviceStateCallback:Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

.field private mFirstFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

.field private final mFirstFrameState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

.field private final mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

.field private mHandler:Landroid/os/Handler;

.field private mIsModeSettingReady:Z

.field private mIsZooming:Z

.field private mLastSetParameterDevice:Ljava/lang/String;

.field private mMainControlInfo:Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

.field private mMainControlInfoCallback:Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

.field private mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

.field private mMainPreviewStopped:Z

.field private mModeChanged:Z

.field private mNeedOpenSlave:Z

.field private mNextMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

.field private mOfflineSwitchCallback:Lcom/transsion/camera/app/common/IAppUIListener$IBGOfflineSwitchCallback;

.field private final mOpenedState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

.field private volatile mPreviewSize:Landroid/util/Size;

.field private mReleased:Z

.field private mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

.field private mSlaveControlInfo:Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

.field private mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

.field private mSlavePreviewStopped:Z

.field private final mStartCreatSessionState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

.field private final mStartPreviewedState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

.field private final mStartPreviewingState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

.field private mStateCB:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private mTotalDeviceCount:I


# direct methods
.method public static synthetic $r8$lambda$6SNl0dzZtVxNjWT-Xg14gJmN8co(Lcom/transsion/camera/app/common/mode/CameraDeviceControl$ICommandCallback;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 532
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$ICommandCallback;->onExecuted()V

    :cond_5
    return-void
.end method

.method public static synthetic $r8$lambda$Ka4ENFngXe925gWgPmdN2TrIJ90(Lcom/transsion/camera/app/common/mode/CameraDeviceControl$ICommandCallback;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 550
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$ICommandCallback;->onExecuted()V

    :cond_5
    return-void
.end method

.method public static synthetic $r8$lambda$X8kclokaFuxH1AsBcjMSNONf4ec(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->doOnFrameResultCallback(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAppUI(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmArrayId(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)[Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mArrayId:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraDisconnectedListerner(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/IApp$ICameraDisconnectedListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraDisconnectedListerner:Lcom/transsion/camera/app/common/IApp$ICameraDisconnectedListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmChangeParameterLock(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mChangeParameterLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClosedState(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mClosedState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClosing(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mClosing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceState(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mDeviceState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFirstFrameCallback(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mFirstFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFirstFrameState(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mFirstFrameState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainDevice(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedOpenSlave(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mNeedOpenSlave:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNextMode(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mNextMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOfflineSwitchCallback(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/IAppUIListener$IBGOfflineSwitchCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mOfflineSwitchCallback:Lcom/transsion/camera/app/common/IAppUIListener$IBGOfflineSwitchCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOpenedState(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mOpenedState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReleased(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mReleased:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingManager(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/setting/SettingManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSlaveDevice(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartCreatSessionState(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mStartCreatSessionState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartPreviewedState(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mStartPreviewedState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartPreviewingState(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mStartPreviewingState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmClosing(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mClosing:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNeedOpenSlave(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mNeedOpenSlave:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleAuxPreviewSurface(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleAuxPreviewSurface(Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleAuxSurfaceModeSupported(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleAuxSurfaceModeSupported(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleBackgroundPreviewSurface(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleBackgroundPreviewSurface(Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleBackgroundSurfaceModeSupported(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleBackgroundSurfaceModeSupported(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleCancelTakePicture(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleCancelTakePicture()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleChangeDualVideoFPS(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Landroid/util/Range;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleChangeDualVideoFPS(Landroid/util/Range;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleChangeParameter(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleChangeParameter(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleChangeParameterByKey(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;[Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleChangeParameterByKey([Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleCheckDisplayChanged(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleCheckDisplayChanged(Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleCloseCamera(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleCloseCamera()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleConfigCommand(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleConfigCommand(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleContinuousDone(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleContinuousDone()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleEnablePreviewStream(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleEnablePreviewStream(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleEnableVideoAutoFlash(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleEnableVideoAutoFlash(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleOpenCamera(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleOpenCamera(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleReConfigureSession(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleReConfigureSession()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleRegisterFrameResultCallback(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleRestoreParameters(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleRestoreParameters(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSetCaptureTag(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleSetCaptureTag(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSetCaptureZSLTimestamps(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;[J)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleSetCaptureZSLTimestamps([J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSetFaceDetectionListener(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/adapter/CameraProxy$IFaceDetectionListener;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleSetFaceDetectionListener(Lcom/transsion/camera/adapter/CameraProxy$IFaceDetectionListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSetSessionDisplay(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleSetSessionDisplay(Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleShutterSoundPlay(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;ILcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleShutterSoundPlay(ILcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleShutterSoundPlay(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleShutterSoundPlay(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSlavePreviewSurface(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleSlavePreviewSurface(Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSlaveSurfaceModeSupported(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleSlaveSurfaceModeSupported(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSnapShot(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleSnapShot(Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleStartContinuousShot(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleStartContinuousShot(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleStartPreview(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleStartPreview()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleStartRecording(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;Z)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleStartRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleStopContinuousShot(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleStopContinuousShot()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleStopContinuousShotCount(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleStopContinuousShotCount()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleStopFaceDetection(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleStopFaceDetection()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleStopPreview(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleStopPreview()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleStopRecording(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleStopRecording()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleStopRepeating(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleStopRepeating()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSwitchMode(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleSwitchMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSwitchOfflineSession(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleSwitchOfflineSession(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSwitchParameters(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleSwitchParameters(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleTakePicture(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleTakePicture()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleTakePictureForRestriction(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/relation/Relation;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleTakePictureForRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleTripodModeChanged(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleTripodModeChanged(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleUnInit(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleUnInit()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleUnRegisterFrameResultCallback(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleUnRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleUpdateAuxSurfaceStatus(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleUpdateAuxSurfaceStatus(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleUpdateBackgroundSurfaceStatus(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleUpdateBackgroundSurfaceStatus(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleUpdateFocusMode(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleUpdateFocusMode(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleUpdateSessionSize(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleUpdateSessionSize(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleZoomValueChanged(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleZoomValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandlerPostRestriction(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/relation/Relation;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handlerPostRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misNotifyComplete(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;Ljava/lang/String;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isNotifyComplete(Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnotifyCameraError(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->notifyCameraError(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyCameraState(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->notifyCameraState(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyCaptureOfflineLock(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->notifyCaptureOfflineLock(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monModeSettingReady(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->onModeSettingReady()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetLowConfigReduceLoading(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setLowConfigReduceLoading(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartWithMode(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->startWithMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mswitchMode(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->switchMode()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 62
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CameraDeviceControl"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 118
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$1;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->CAMERA_OPEN_STRATEGY_IN_MONKEY:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 65
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 66
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mClosing:Z

    .line 68
    new-instance v2, Lcom/transsion/camera/utils/StateWait;

    invoke-direct {v2}, Lcom/transsion/camera/utils/StateWait;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCaptureOfflineLock:Lcom/transsion/camera/utils/StateWait;

    .line 69
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mReleased:Z

    const/4 v2, 0x1

    .line 73
    iput v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mDeviceState:I

    .line 75
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mTotalDeviceCount:I

    .line 76
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    .line 77
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    .line 79
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mNeedOpenSlave:Z

    .line 80
    const-string v3, "device_main"

    iput-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    .line 81
    iput-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mLastSetParameterDevice:Ljava/lang/String;

    .line 82
    iput-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurMainDevice:Ljava/lang/String;

    .line 83
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainPreviewStopped:Z

    .line 84
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlavePreviewStopped:Z

    .line 88
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    .line 90
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mModeChanged:Z

    .line 93
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mIsModeSettingReady:Z

    .line 96
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mStateCB:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 103
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    const-string v2, "opened"

    invoke-direct {v0, p0, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mOpenedState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    .line 104
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    const-string v2, "closed"

    invoke-direct {v0, p0, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mClosedState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    .line 105
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    const-string v2, "startcreatsession"

    invoke-direct {v0, p0, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mStartCreatSessionState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    .line 106
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    const-string v2, "startpreviewing"

    invoke-direct {v0, p0, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mStartPreviewingState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    .line 107
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    const-string v2, "startpreviewed"

    invoke-direct {v0, p0, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mStartPreviewedState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    .line 108
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    const-string v2, "firstframe"

    invoke-direct {v0, p0, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mFirstFrameState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mChangeParameterLock:Ljava/lang/Object;

    .line 111
    const-string v0, "key_camera_zoom"

    const-string v2, "key_asd"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->ASD_ZOOM_HANDLER_TOKEN:[Ljava/lang/String;

    .line 112
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mIsZooming:Z

    .line 1958
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainControlInfoCallback:Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

    .line 1986
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mDeviceStateCallback:Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    .line 2143
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$4;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraOfflineSessionListener:Lcom/transsion/camera/adapter/CameraProxy$CameraOfflineSessionListener;

    .line 2251
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    return-void
.end method

.method private checkCameraId(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1342
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p0

    if-eqz p0, :cond_f

    return-object p1

    .line 1346
    :cond_f
    const-string p0, "0"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    const-string p0, "1"

    .line 1347
    :cond_19
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p1

    if-eqz p1, :cond_28

    return-object p0

    :cond_28
    const/4 p0, 0x0

    return-object p0
.end method

.method private doOnFrameResultCallback(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 2253
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkStreamIdResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    .line 2254
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingManager;->updateStreamIds([I)V

    return-void
.end method

.method private getExceptKeyByPolicy()Ljava/lang/String;
    .registers 3

    .line 2438
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mArrayId:[Ljava/lang/String;

    if-eqz v0, :cond_13

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_e

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isDifferentSideCombination()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2439
    :cond_e
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getFlashKey()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method private getFlashKey()Ljava/lang/String;
    .registers 3

    .line 2335
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    const-string v1, "key_flash"

    if-nez v0, :cond_b

    return-object v1

    .line 2339
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p0

    const-string v0, "key_flash_facade"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1e

    return-object v0

    :cond_1e
    return-object v1
.end method

.method private handleAuxPreviewSurface(Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;)V
    .registers 4

    if-nez p1, :cond_3

    goto :goto_21

    .line 1792
    :cond_3
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    .line 1793
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getDeviceType()I

    move-result v0

    if-nez v0, :cond_21

    .line 1794
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObject()Ljava/lang/Object;

    move-result-object v0

    .line 1795
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectHeight()I

    move-result p1

    .line 1794
    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateAuxPreviewSurface(Ljava/lang/Object;II)V

    :cond_21
    :goto_21
    return-void
.end method

.method private handleAuxSurfaceModeSupported(Z)V
    .registers 2

    .line 1782
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1783
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateAuxSurfaceModeSupported(Z)V

    :cond_7
    return-void
.end method

.method private handleBackgroundPreviewSurface(Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;)V
    .registers 4

    if-nez p1, :cond_3

    goto :goto_21

    .line 1836
    :cond_3
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    .line 1837
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getDeviceType()I

    move-result v0

    if-nez v0, :cond_21

    .line 1838
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObject()Ljava/lang/Object;

    move-result-object v0

    .line 1839
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectHeight()I

    move-result p1

    .line 1838
    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateBackgroundPreviewSurface(Ljava/lang/Object;II)V

    :cond_21
    :goto_21
    return-void
.end method

.method private handleBackgroundSurfaceModeSupported(Z)V
    .registers 2

    .line 1826
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1827
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateBackgroundSurfaceModeSupported(Z)V

    :cond_7
    return-void
.end method

.method private handleCancelTakePicture()V
    .registers 1

    .line 1636
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1637
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->cancelTakePicture()V

    :cond_7
    return-void
.end method

.method private handleChangeDualVideoFPS(Landroid/util/Range;)V
    .registers 3

    .line 2409
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2410
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->setLimitFpsRange(Landroid/util/Range;)V

    :cond_13
    return-void
.end method

.method private handleChangeParameter(Ljava/lang/String;)V
    .registers 6

    .line 1659
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleChangeParameter key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mCurSetParameterDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1660
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    const-string v1, "device_main"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1661
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_85

    .line 1662
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->changeParameter(Ljava/lang/String;)V

    return-void

    .line 1664
    :cond_32
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    const-string v2, "device_slave"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1665
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_85

    .line 1666
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->changeParameter(Ljava/lang/String;)V

    return-void

    .line 1668
    :cond_44
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    const-string v3, "device_both"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 1669
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mLastSetParameterDevice:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    .line 1670
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 1671
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_5f

    .line 1672
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->changeParameter(Ljava/lang/String;)V

    .line 1674
    :cond_5f
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_85

    .line 1675
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->changeParameterByKey([Ljava/lang/String;)V

    return-void

    .line 1677
    :cond_6b
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mLastSetParameterDevice:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 1678
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_7a

    .line 1679
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->changeParameter(Ljava/lang/String;)V

    .line 1681
    :cond_7a
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_85

    .line 1682
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->changeParameterByKey([Ljava/lang/String;)V

    :cond_85
    return-void
.end method

.method private varargs handleChangeParameterByKey([Ljava/lang/String;)V
    .registers 4

    .line 1724
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    const-string v1, "device_main"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1725
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_23

    .line 1726
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->changeParameterByKey([Ljava/lang/String;)V

    return-void

    .line 1728
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    const-string v1, "device_slave"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1729
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_23

    .line 1730
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->changeParameterByKey([Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method private handleCheckDisplayChanged(Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;)V
    .registers 7

    if-nez p1, :cond_3

    goto :goto_3d

    .line 1933
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_3d

    .line 1934
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectType()I

    move-result v1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObject()Ljava/lang/Object;

    move-result-object v2

    .line 1935
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectHeight()I

    move-result v4

    .line 1934
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->checkSurfaceChanged(ILjava/lang/Object;II)Z

    move-result v0

    .line 1936
    sget-object v1, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCheckDisplayChanged changed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_37

    .line 1938
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleSetSessionDisplay(Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;)V

    return-void

    .line 1940
    :cond_37
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleStopPreview()V

    .line 1941
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleStartPreview()V

    :cond_3d
    :goto_3d
    return-void
.end method

.method private handleCloseCamera()V
    .registers 4

    .line 1409
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCloseCamera mTotalDeviceCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mTotalDeviceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1410
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_33

    .line 1411
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->reset()V

    .line 1412
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    .line 1413
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->releaseCamera()V

    .line 1416
    :cond_33
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_3f

    .line 1417
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->reset()V

    .line 1418
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->releaseCamera()V

    .line 1421
    :cond_3f
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_46

    .line 1422
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->closeCamera()V

    .line 1424
    :cond_46
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    .line 1425
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->closeCamera()V

    .line 1426
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    .line 1428
    :cond_50
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingManager;->updateStreamIds([I)V

    .line 1429
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mPreviewSize:Landroid/util/Size;

    .line 1430
    const-string v0, "device_main"

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    .line 1431
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mLastSetParameterDevice:Ljava/lang/String;

    .line 1433
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mTotalDeviceCount:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_6a

    .line 1434
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/transsion/camera/adapter/CameraAgent;->setOpenDoubleDevice(Z)V

    .line 1436
    :cond_6a
    iput v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mTotalDeviceCount:I

    return-void
.end method

.method private handleConfigCommand(Ljava/lang/String;)V
    .registers 5

    .line 1689
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleConfigCommand key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mCurSetParameterDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1690
    const-string v0, "key_face_detection"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1691
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_2f

    .line 1692
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->configCommand(Ljava/lang/String;)V

    .line 1694
    :cond_2f
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_5a

    .line 1695
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->configCommand(Ljava/lang/String;)V

    return-void

    .line 1699
    :cond_37
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    const-string v1, "device_main"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1700
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_5a

    .line 1701
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->configCommand(Ljava/lang/String;)V

    return-void

    .line 1703
    :cond_49
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    const-string v1, "device_slave"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1704
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_5a

    .line 1705
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->configCommand(Ljava/lang/String;)V

    :cond_5a
    return-void
.end method

.method private handleContinuousDone()V
    .registers 2

    .line 1924
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1925
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setIsBurstCapturing(Z)V

    :cond_14
    return-void
.end method

.method private handleEnablePreviewStream(Z)V
    .registers 3

    .line 2403
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2404
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->enablePreviewStream(Z)V

    :cond_13
    return-void
.end method

.method private handleEnableVideoAutoFlash(Z)V
    .registers 2

    .line 1764
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1765
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->enableVideoAutoFlash(Z)V

    :cond_7
    return-void
.end method

.method private handleOpenCamera(Ljava/lang/String;)V
    .registers 6

    if-nez p1, :cond_4

    goto/16 :goto_af

    .line 1376
    :cond_4
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_28

    .line 1378
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOpenCamera cameraId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", error."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1382
    :cond_28
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mArrayId:[Ljava/lang/String;

    .line 1383
    array-length p1, v0

    iput p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mTotalDeviceCount:I

    .line 1384
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mOpenedState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->reset()V

    .line 1385
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mClosedState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->reset()V

    .line 1386
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mStartCreatSessionState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->reset()V

    .line 1387
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mStartPreviewingState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->reset()V

    .line 1388
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mStartPreviewedState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->reset()V

    .line 1389
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mFirstFrameState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->reset()V

    .line 1390
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    const/4 v1, 0x0

    if-eqz p1, :cond_79

    .line 1391
    sget-object p1, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleOpenCamera openCamera cameraId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", TotalDeviceCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mTotalDeviceCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1392
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 1395
    :cond_79
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mNeedOpenSlave:Z

    .line 1396
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraAgent;->setOpenDoubleDevice(Z)V

    .line 1397
    iget p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mTotalDeviceCount:I

    const/4 v1, 0x1

    if-le p1, v1, :cond_af

    .line 1398
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraAgent;->setOpenDoubleDevice(Z)V

    .line 1399
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-nez p1, :cond_ad

    .line 1400
    new-instance p1, Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-direct {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    .line 1401
    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->init(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 1402
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mDeviceStateCallback:Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainControlInfoCallback:Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

    invoke-virtual {p1, v0, v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->setCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;)V

    .line 1404
    :cond_ad
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mNeedOpenSlave:Z

    :cond_af
    :goto_af
    return-void
.end method

.method private handleReConfigureSession()V
    .registers 1

    .line 1475
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1476
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->reConfigureSession()V

    :cond_7
    return-void
.end method

.method private handleRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .registers 2

    .line 1906
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1907
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    :cond_7
    return-void
.end method

.method private handleRestoreParameters(Z)V
    .registers 3

    .line 1889
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_7

    .line 1890
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->restoreParameters(Z)V

    .line 1892
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p1, :cond_13

    .line 1893
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->releaseCamera()V

    .line 1894
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->closeCamera()V

    :cond_13
    const/4 p1, 0x1

    .line 1896
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mTotalDeviceCount:I

    return-void
.end method

.method private handleSetCaptureTag(I)V
    .registers 3

    .line 1918
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1919
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->setCaptureTag(I)V

    :cond_13
    return-void
.end method

.method private handleSetCaptureZSLTimestamps([J)V
    .registers 3

    .line 1947
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1948
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->setCaptureZSLTimestamps([J)V

    :cond_13
    return-void
.end method

.method private handleSetFaceDetectionListener(Lcom/transsion/camera/adapter/CameraProxy$IFaceDetectionListener;)V
    .registers 2

    .line 1845
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1846
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->setFaceDetectionListener(Lcom/transsion/camera/adapter/CameraProxy$IFaceDetectionListener;)V

    :cond_7
    return-void
.end method

.method private handleSetSessionDisplay(Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;)V
    .registers 10

    if-nez p1, :cond_4

    goto/16 :goto_11c

    .line 1497
    :cond_4
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetSessionDisplay device type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getDeviceType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", object type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , mDeviceState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mDeviceState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1498
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f9

    .line 1500
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    const/4 v3, 0x0

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v1, :cond_46

    move v1, v2

    goto :goto_47

    :cond_46
    move v1, v3

    .line 1502
    :goto_47
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getDeviceType()I

    move-result v4

    const/4 v5, 0x6

    if-nez v4, :cond_71

    .line 1503
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v4, :cond_a2

    if-eqz v1, :cond_60

    .line 1504
    iget v6, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mDeviceState:I

    if-ne v6, v5, :cond_60

    .line 1505
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->stopPreview()V

    .line 1506
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainPreviewStopped:Z

    .line 1507
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainControlInfo:Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    goto :goto_a2

    .line 1509
    :cond_60
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObject()Ljava/lang/Object;

    move-result-object v2

    .line 1510
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectWidth()I

    move-result v6

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectHeight()I

    move-result p1

    .line 1509
    invoke-virtual {v4, v2, v6, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updatePreviewSurface(Ljava/lang/Object;II)Z

    move-result p1

    goto :goto_a3

    .line 1514
    :cond_71
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getDeviceType()I

    move-result v4

    if-ne v4, v2, :cond_a2

    .line 1515
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v4, :cond_a2

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->isClosed()Z

    move-result v4

    if-nez v4, :cond_a2

    if-eqz v1, :cond_91

    .line 1516
    iget v4, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mDeviceState:I

    if-ne v4, v5, :cond_91

    .line 1517
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->stopPreview()V

    .line 1518
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlavePreviewStopped:Z

    .line 1519
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveControlInfo:Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    goto :goto_a2

    .line 1521
    :cond_91
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObject()Ljava/lang/Object;

    move-result-object v4

    .line 1522
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectWidth()I

    move-result v6

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectHeight()I

    move-result p1

    .line 1521
    invoke-virtual {v2, v4, v6, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updatePreviewSurface(Ljava/lang/Object;II)Z

    :cond_a2
    :goto_a2
    move p1, v3

    :goto_a3
    if-eqz v1, :cond_ee

    .line 1527
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainPreviewStopped:Z

    if-eqz v1, :cond_ee

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlavePreviewStopped:Z

    if-eqz v1, :cond_ee

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mDeviceState:I

    if-ne v1, v5, :cond_ee

    .line 1528
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainControlInfo:Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObject()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainControlInfo:Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    .line 1529
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectWidth()I

    move-result v2

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainControlInfo:Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectHeight()I

    move-result v4

    .line 1528
    invoke-virtual {p1, v1, v2, v4}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updatePreviewSurface(Ljava/lang/Object;II)Z

    move-result p1

    .line 1530
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v1, :cond_ea

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->isClosed()Z

    move-result v1

    if-nez v1, :cond_ea

    .line 1531
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveControlInfo:Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObject()Ljava/lang/Object;

    move-result-object v2

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveControlInfo:Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    .line 1532
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectWidth()I

    move-result v4

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveControlInfo:Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectHeight()I

    move-result v5

    .line 1531
    invoke-virtual {v1, v2, v4, v5}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updatePreviewSurface(Ljava/lang/Object;II)Z

    .line 1534
    :cond_ea
    iput-boolean v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainPreviewStopped:Z

    .line 1535
    iput-boolean v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlavePreviewStopped:Z

    :cond_ee
    if-eqz p1, :cond_11c

    .line 1539
    const-string p1, "GLPreview Create done and Inflate other UI."

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1540
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->onModeSettingReady()V

    return-void

    .line 1542
    :cond_f9
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11c

    .line 1543
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObject()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Landroid/view/Surface;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getVideoFrameRate()I

    move-result v4

    .line 1544
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectWidth()I

    move-result v5

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectHeight()I

    move-result v6

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getPrepareSuccess()Z

    move-result v7

    .line 1543
    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateVideoSurface(Landroid/view/Surface;IIIZ)V

    :cond_11c
    :goto_11c
    return-void
.end method

.method private handleShutterSoundPlay(ILcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V
    .registers 5

    .line 1863
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurMainDevice:Ljava/lang/String;

    const-string v1, "device_main"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1864
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_19

    .line 1865
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->shutterSoundPlay(ILcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V

    return-void

    .line 1868
    :cond_12
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_19

    .line 1869
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->shutterSoundPlay(ILcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V

    :cond_19
    return-void
.end method

.method private handleShutterSoundPlay(Ljava/lang/String;)V
    .registers 4

    .line 1851
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurMainDevice:Ljava/lang/String;

    const-string v1, "device_main"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1852
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_19

    .line 1853
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->shutterSoundPlay(Ljava/lang/String;)V

    return-void

    .line 1856
    :cond_12
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_19

    .line 1857
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->shutterSoundPlay(Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method private handleSlavePreviewSurface(Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;)V
    .registers 4

    if-nez p1, :cond_3

    goto :goto_21

    .line 1811
    :cond_3
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    .line 1812
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getDeviceType()I

    move-result v0

    if-nez v0, :cond_21

    .line 1813
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObject()Ljava/lang/Object;

    move-result-object v0

    .line 1814
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectHeight()I

    move-result p1

    .line 1813
    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateSlavePreviewSurface(Ljava/lang/Object;II)V

    :cond_21
    :goto_21
    return-void
.end method

.method private handleSlaveSurfaceModeSupported(Z)V
    .registers 2

    .line 1801
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1802
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateSlaveSurfaceModeSupported(Z)V

    :cond_7
    return-void
.end method

.method private handleSnapShot(Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V
    .registers 2

    .line 1758
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1759
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->videoSnapShot(Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V

    :cond_7
    return-void
.end method

.method private handleStartContinuousShot(I)V
    .registers 3

    .line 1642
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_9

    .line 1643
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->startContinuousShot(Landroid/content/Context;I)V

    :cond_9
    return-void
.end method

.method private handleStartPreview()V
    .registers 1

    .line 1457
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1458
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->startPreview()V

    :cond_7
    return-void
.end method

.method private handleStartRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;Z)V
    .registers 4

    .line 1744
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_c

    .line 1745
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;Z)V

    const/16 p1, 0x65

    .line 1746
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->hookDisturbStatus(I)V

    :cond_c
    return-void
.end method

.method private handleStopContinuousShot()V
    .registers 1

    .line 1648
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1649
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->stopContinuousShot()V

    :cond_7
    return-void
.end method

.method private handleStopContinuousShotCount()V
    .registers 1

    .line 1653
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1654
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->stopContinuousShotCount()V

    :cond_7
    return-void
.end method

.method private handleStopFaceDetection()V
    .registers 2

    .line 1487
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1488
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setFaceDetectionEnable(Z)V

    :cond_14
    return-void
.end method

.method private handleStopPreview()V
    .registers 1

    .line 1463
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1464
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->stopPreview()V

    :cond_7
    return-void
.end method

.method private handleStopRecording()V
    .registers 2

    .line 1751
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_c

    .line 1752
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->stopRecording()V

    const/16 v0, 0x68

    .line 1753
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->hookDisturbStatus(I)V

    :cond_c
    return-void
.end method

.method private handleStopRepeating()V
    .registers 1

    .line 1469
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1470
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->stopRepeating()V

    :cond_7
    return-void
.end method

.method private handleSwitchMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .registers 4

    const/4 v0, 0x1

    .line 1549
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mModeChanged:Z

    const/4 v0, 0x0

    .line 1550
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mIsZooming:Z

    .line 1551
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mNextMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 1553
    sget-object p1, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSwitchMode mDeviceState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mDeviceState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1554
    iget p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mDeviceState:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_28

    const/4 v0, 0x6

    if-ne p1, v0, :cond_35

    .line 1556
    :cond_28
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 1557
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mNextMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 1558
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->switchMode()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1560
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->startWithMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    :cond_35
    return-void
.end method

.method private handleSwitchOfflineSession(I)V
    .registers 2

    .line 1481
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1482
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->switchToOfflineSession(I)V

    :cond_7
    return-void
.end method

.method private handleSwitchParameters(Ljava/lang/String;)V
    .registers 5

    .line 1881
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSwitchParameters deviceName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1882
    const-string v0, "device_both"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1883
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mLastSetParameterDevice:Ljava/lang/String;

    .line 1885
    :cond_22
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    return-void
.end method

.method private handleTakePicture()V
    .registers 1

    .line 1630
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1631
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->takePicture()V

    :cond_7
    return-void
.end method

.method private handleTakePictureForRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V
    .registers 2

    .line 1900
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1901
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->takePictureForRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_7
    return-void
.end method

.method private handleTripodModeChanged(Z)V
    .registers 5

    .line 2415
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTripodModeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2416
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 2417
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->tripodMode(Z)V

    :cond_29
    return-void
.end method

.method private handleUnInit()V
    .registers 3

    .line 1447
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "handleUnInit mHandler = null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1448
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 1449
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1451
    :cond_f
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    .line 1452
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    .line 1453
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    return-void
.end method

.method private handleUnRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .registers 2

    .line 1912
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1913
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    :cond_7
    return-void
.end method

.method private handleUpdateAuxSurfaceStatus(Z)V
    .registers 2

    .line 1776
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1777
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateAuxSurfaceStatus(Z)V

    :cond_7
    return-void
.end method

.method private handleUpdateBackgroundSurfaceStatus(Z)V
    .registers 2

    .line 1820
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1821
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateBackgroundSurfaceStatus(Z)V

    :cond_7
    return-void
.end method

.method private handleUpdateFocusMode(Ljava/lang/String;)V
    .registers 2

    .line 1770
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1771
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateFocusMode(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private handleUpdateSessionSize(Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .registers 8

    .line 1566
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz v0, :cond_127

    if-eq v0, p1, :cond_8

    goto/16 :goto_127

    .line 1572
    :cond_8
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->isClosed()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 1573
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "handleUpdateSessionSize mMainDevice.isClosed"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1578
    :cond_1a
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p1, :cond_23

    .line 1579
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object p1

    goto :goto_24

    :cond_23
    const/4 p1, 0x0

    .line 1581
    :goto_24
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSatModeSupport()Z

    move-result v0

    .line 1582
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object p1

    .line 1583
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getPreviewSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object v1

    .line 1584
    sget-object v2, Lcom/transsion/camera/utils/FeatureSupport;->sDbgPrevSizeStr:Ljava/lang/String;

    invoke-static {v2}, Lcom/transsion/camera/utils/FeatureSupport;->getDbgSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v2

    if-eqz v2, :cond_3b

    move-object v1, v2

    .line 1588
    :cond_3b
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v2, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getPostViewSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAuxPreviewSize:Landroid/util/Size;

    .line 1589
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getFpsRange()Landroid/util/Range;

    move-result-object v2

    .line 1590
    sget v3, Lcom/transsion/camera/utils/FeatureSupport;->sDbgPrevFpsMax:I

    const/4 v4, 0x5

    if-le v3, v4, :cond_5b

    .line 1591
    new-instance v2, Landroid/util/Range;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1593
    :cond_5b
    invoke-static {v1, p1}, Lcom/transsion/camera/utils/CameraUtil;->getMinSizeForSupport(Landroid/util/Size;Ljava/util/List;)Landroid/util/Size;

    move-result-object p1

    .line 1594
    sget-object v3, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[handleUpdateSessionSize] previewSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",old mPreviewSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", mAuxPreviewSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAuxPreviewSize:Landroid/util/Size;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", backgroundSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v1, :cond_f1

    .line 1596
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1, v3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f1

    .line 1597
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v3, :cond_a4

    .line 1598
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAuxPreviewSize:Landroid/util/Size;

    invoke-virtual {v3, v1, v4, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updatePreviewSize(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;)V

    .line 1600
    :cond_a4
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v3, :cond_b5

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->isClosed()Z

    move-result v3

    if-nez v3, :cond_b5

    .line 1601
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAuxPreviewSize:Landroid/util/Size;

    invoke-virtual {v3, v1, v4, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updatePreviewSize(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;)V

    .line 1603
    :cond_b5
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/transsion/camera/app/common/IAppUI;->setPreviewSize(II)V

    .line 1604
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAuxPreviewSize:Landroid/util/Size;

    if-eqz v3, :cond_e2

    .line 1605
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lcom/transsion/camera/app/common/IAppUI;->setAuxPreviewLensSupport(ZLjava/lang/String;)V

    .line 1606
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAuxPreviewSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAuxPreviewSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-interface {v0, v3, v4}, Lcom/transsion/camera/app/common/IAppUI;->setAuxPreviewSize(II)V

    :cond_e2
    if-eqz p1, :cond_f1

    .line 1609
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-interface {v0, v3, v4}, Lcom/transsion/camera/app/common/IAppUI;->setBackgroundPreviewSize(II)V

    .line 1612
    :cond_f1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mPreviewSize:Landroid/util/Size;

    invoke-interface {v0, v3, v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updatePreviewSize(Landroid/util/Size;Landroid/util/Size;)V

    .line 1613
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mPreviewSize:Landroid/util/Size;

    .line 1614
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mBackgroundPreviewSize:Landroid/util/Size;

    .line 1616
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p1, :cond_10d

    .line 1617
    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateFpsRange(Landroid/util/Range;)V

    .line 1618
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updatePictureSurface()V

    .line 1619
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updatePostViewSurface()V

    .line 1622
    :cond_10d
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p1, :cond_126

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->isClosed()Z

    move-result p1

    if-nez p1, :cond_126

    .line 1623
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateFpsRange(Landroid/util/Range;)V

    .line 1624
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updatePictureSurface()V

    .line 1625
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updatePostViewSurface()V

    :cond_126
    return-void

    .line 1567
    :cond_127
    :goto_127
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUpdateSessionSize invalid CameraMode | mCurrentMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", cameraMode: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private handleZoomValueChanged(Ljava/lang/String;)V
    .registers 4

    .line 1711
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    const-string v1, "device_main"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1712
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_23

    .line 1713
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->onZoomValueChanged(Ljava/lang/String;)V

    return-void

    .line 1715
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    const-string v1, "device_slave"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1716
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_23

    .line 1717
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->onZoomValueChanged(Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method private handlerPostRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V
    .registers 2

    .line 1875
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1876
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_7
    return-void
.end method

.method private isDifferentSideCombination()Z
    .registers 3

    .line 2434
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mArrayId:[Ljava/lang/String;

    if-eqz p0, :cond_11

    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_11

    const-string v0, "1"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    return v1

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method private isNotifyComplete(Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;Ljava/lang/String;)Z
    .registers 6

    .line 2271
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2272
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->enter()V

    .line 2275
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2276
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->enter()V

    .line 2279
    :cond_22
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->getCount()I

    move-result v0

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mTotalDeviceCount:I

    if-ge v0, v1, :cond_64

    .line 2280
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not complete, cur id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", cur device count:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2281
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->getCount()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", total:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mTotalDeviceCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2280
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 2285
    :cond_64
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->reset()V

    const/4 p0, 0x1

    return p0
.end method

.method private notifyCameraError(I)V
    .registers 2

    .line 2265
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraErrorListener:Lcom/transsion/camera/app/common/IApp$ICameraErrorListener;

    if-eqz p0, :cond_7

    .line 2266
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IApp$ICameraErrorListener;->onCameraError(I)V

    :cond_7
    return-void
.end method

.method private notifyCameraState(I)V
    .registers 3

    .line 2258
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mDeviceState:I

    .line 2259
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mStateCB:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;

    .line 2260
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;->onCameraStateChanged(I)V

    goto :goto_8

    :cond_18
    return-void
.end method

.method private notifyCaptureOfflineLock(I)V
    .registers 2

    if-nez p1, :cond_7

    .line 2139
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCaptureOfflineLock:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/StateWait;->notifyState()V

    :cond_7
    return-void
.end method

.method private declared-synchronized onModeSettingReady()V
    .registers 2

    monitor-enter p0

    .line 2291
    :try_start_1
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mIsModeSettingReady:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 2292
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mIsModeSettingReady:Z

    .line 2293
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->onModeSettingReady()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_e

    goto :goto_10

    :catchall_e
    move-exception v0

    goto :goto_12

    .line 2295
    :cond_10
    :goto_10
    monitor-exit p0

    return-void

    :goto_12
    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_e

    throw v0
.end method

.method private processAnalyticsCameraId(Ljava/lang/String;)V
    .registers 3

    .line 2306
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCameraId(Ljava/lang/String;)V

    .line 2307
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->getCameraName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCameraNameValue(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized resetModeSettingReady()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 2299
    :try_start_2
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mIsModeSettingReady:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 2300
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw v0
.end method

.method private setLowConfigReduceLoading(Z)V
    .registers 2

    .line 1953
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1954
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->setLowConfigReduceLoading(Z)V

    :cond_7
    return-void
.end method

.method private startWithMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .registers 10

    .line 2201
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startWithMode, oldMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", newMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ";main parameters device:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", device id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mArrayId:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2202
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->updateTranssionCameraMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 2203
    invoke-static {}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->getInstance()Lcom/transsion/camera/thub/TranSchedManagerProxy;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->setCamTranSched(I)V

    .line 2204
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/VideoQualityUtils;->setCameraFacing(Ljava/lang/String;Ljava/lang/String;)V

    .line 2205
    const-string v0, "startWithMode"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 2206
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_61

    .line 2207
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateCurrentModeAndType(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 2209
    :cond_61
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_68

    .line 2210
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateCurrentModeAndType(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 2213
    :cond_68
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    const-string v1, "device_main"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_a5

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mArrayId:[Ljava/lang/String;

    if-eqz v0, :cond_a5

    array-length v0, v0

    if-ne v0, v4, :cond_7d

    goto :goto_a5

    .line 2225
    :cond_7d
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-virtual {v0, v1, v5}, Lcom/transsion/camera/app/common/setting/SettingManager;->updateMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 2226
    const-string v0, "device_slave"

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurMainDevice:Ljava/lang/String;

    .line 2227
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_95

    .line 2228
    invoke-virtual {v0, p1, p2, v4, v3}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateModeSetting(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;ZLjava/lang/String;)V

    .line 2231
    :cond_95
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_ce

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_ce

    .line 2232
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateModeSetting(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;ZLjava/lang/String;)V

    goto :goto_ce

    .line 2215
    :cond_a5
    :goto_a5
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-virtual {v0, v5, v6}, Lcom/transsion/camera/app/common/setting/SettingManager;->updateMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 2216
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurMainDevice:Ljava/lang/String;

    .line 2217
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_bb

    .line 2218
    invoke-virtual {v0, p1, p2, v4, v3}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateModeSetting(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;ZLjava/lang/String;)V

    .line 2221
    :cond_bb
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_ce

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_ce

    .line 2222
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getExceptKeyByPolicy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateModeSetting(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;ZLjava/lang/String;)V

    .line 2236
    :cond_ce
    :goto_ce
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_d7

    .line 2237
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    .line 2241
    :cond_d7
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ICameraControl$IModeConfig;->onSettingReady()V

    .line 2242
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->resetModeSettingReady()V

    const/4 v0, 0x4

    .line 2243
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->notifyCameraState(I)V

    .line 2244
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_ea

    .line 2245
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->createOutputChannel(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 2247
    :cond_ea
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void
.end method

.method private switchMode()Z
    .registers 8

    .line 1356
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mModeChanged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_58

    .line 1357
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_f
    move-object v0, v2

    .line 1358
    :goto_10
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mNextMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz v3, :cond_19

    invoke-interface {v3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1a

    :cond_19
    move-object v3, v2

    .line 1359
    :goto_1a
    sget-object v4, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[switchMode] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1360
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mNextMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iput-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 1361
    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mNextMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 1362
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mModeChanged:Z

    .line 1363
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mStateCB:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_46
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;

    .line 1364
    invoke-interface {v1, v0, v3}, Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;->onModeChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    :cond_56
    const/4 p0, 0x1

    return p0

    :cond_58
    return v1
.end method

.method private waitDone()V
    .registers 4

    .line 2312
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 2313
    new-instance v1, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$5;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$5;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/Object;)V

    .line 2322
    monitor-enter v0

    .line 2323
    :try_start_b
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_19

    if-eqz p0, :cond_23

    const-wide/16 v1, 0x1f4

    .line 2326
    :try_start_15
    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_1b
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_23

    :catchall_19
    move-exception p0

    goto :goto_25

    .line 2328
    :catch_1b
    :try_start_1b
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "waitDone interrupted"

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2331
    :cond_23
    :goto_23
    monitor-exit v0

    return-void

    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_19

    throw p0
.end method


# virtual methods
.method public addPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V
    .registers 2

    .line 721
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 722
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->addPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V

    :cond_7
    return-void
.end method

.method public cancelTakePicture()V
    .registers 3

    .line 539
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_10

    const/16 v1, 0xb

    .line 540
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 541
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->waitDone()V

    :cond_10
    return-void
.end method

.method public cancelTakePicture(Lcom/transsion/camera/app/common/mode/CameraDeviceControl$ICommandCallback;)V
    .registers 4

    .line 546
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 547
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 548
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl$ICommandCallback;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public checkDisplayChanged(ILandroid/view/Surface;IIIZ)V
    .registers 13

    .line 403
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1f

    .line 404
    new-instance v0, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, p2

    move v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;-><init>(Ljava/lang/Object;IIII)V

    .line 405
    invoke-virtual {v0, p5}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->setVideoFrameRate(I)V

    .line 406
    invoke-virtual {v0, p6}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->setPrepareSuccess(Z)V

    .line 407
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x32

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1f
    return-void
.end method

.method public checkNotifyBgOfflineErr()V
    .registers 3

    .line 1440
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "checkNotifyBgOfflineErr"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1441
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p0, :cond_e

    .line 1442
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->checkNotifyBgOfflineErr()V

    :cond_e
    return-void
.end method

.method public closeCamera()V
    .registers 3

    .line 307
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isSwitchingOffline()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 309
    const-string p0, "closeCamera return because isSwitchingOffline"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 313
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_27

    const/4 v1, 0x3

    .line 314
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 315
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 316
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->waitDone()V

    :cond_27
    return-void
.end method

.method public closeCameraAsync()V
    .registers 3

    .line 338
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "closeCameraAsync"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isSwitchingOffline()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 340
    const-string p0, "closeCameraAsync return because isSwitchingOffline"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 344
    :cond_13
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mReleased:Z

    if-eqz v1, :cond_1d

    .line 345
    const-string p0, "closeCameraAsync return because has mReleased"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 348
    :cond_1d
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_2c

    const/4 v0, 0x3

    .line 350
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 351
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_2c
    return-void
.end method

.method public closeCameraAsyncWhenDestroy()V
    .registers 4

    .line 321
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "closeCameraAsyncWhenDestroy+"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isSwitchingOffline()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 323
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCaptureOfflineLock:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/StateWait;->resetState()V

    .line 325
    :try_start_12
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCaptureOfflineLock:Lcom/transsion/camera/utils/StateWait;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/utils/StateWait;->waitState(J)V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception v0

    .line 327
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 330
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2f

    const/4 v1, 0x3

    .line 331
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 332
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 334
    :cond_2f
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "closeCameraAsyncWhenDestroy-"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public destroyTask()V
    .registers 1

    .line 301
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 302
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->destroyTask()V

    :cond_7
    return-void
.end method

.method public doPictureSizeUpdate(Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .registers 5

    .line 412
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doPictureSizeUpdate, name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",current thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 413
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Request_Camera"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 414
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4b

    const/4 v1, 0x5

    .line 415
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 416
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_4b
    return-void

    .line 419
    :cond_4c
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleUpdateSessionSize(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    return-void
.end method

.method public dualVideoFPSChange(Landroid/util/Range;)V
    .registers 3

    .line 2390
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_d

    const/16 v0, 0x2b

    .line 2391
    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_d
    return-void
.end method

.method public enablePreviewStream(Z)V
    .registers 3

    .line 2384
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_11

    const/16 v0, 0x29

    .line 2385
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_11
    return-void
.end method

.method public enableVideoAutoFlash(Z)V
    .registers 3

    .line 632
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_11

    const/16 v0, 0x19

    .line 633
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_11
    return-void
.end method

.method public getCurrentCameraId()Ljava/lang/String;
    .registers 1

    .line 733
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_9

    .line 734
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getJpegMaxSize()I
    .registers 1

    .line 2455
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_9

    .line 2456
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getJpegMaxSize()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public getLensFocalLengths(Ljava/lang/String;)[F
    .registers 2

    if-nez p1, :cond_d

    .line 809
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[getAvailableFocalLengths] cameraId == null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 810
    new-array p0, p0, [F

    return-object p0

    .line 812
    :cond_d
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getLensFocalLengths(Ljava/lang/String;)[F

    move-result-object p0

    return-object p0
.end method

.method public getOfflineSessionCount()I
    .registers 1

    .line 239
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getOfflineSessionCount()I

    move-result p0

    return p0
.end method

.method public getOrientation(ILjava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    .line 824
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getOrientation(ILjava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public getOrientation(ILjava/lang/String;Z)I
    .registers 7

    const/4 v0, 0x0

    if-nez p2, :cond_b

    .line 829
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[getOrientation] mCurrentCameraId == null, so return 0"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 832
    :cond_b
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p2

    .line 833
    invoke-interface {p2}, Lcom/transsion/camera/adapter/ICameraInfo;->getSensorOrientation()I

    move-result v1

    .line 834
    invoke-interface {p2}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_24

    move p2, v2

    goto :goto_25

    :cond_24
    move p2, v0

    :goto_25
    if-nez p2, :cond_41

    .line 836
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/setting/SettingManager;->screenPocket()Z

    move-result p2

    if-nez p2, :cond_3f

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/setting/SettingManager;->screenFlip()Z

    move-result p2

    if-nez p2, :cond_3f

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingManager;->isVipMode()Z

    move-result p0

    if-eqz p0, :cond_40

    :cond_3f
    move v0, v2

    :cond_40
    move p2, v0

    :cond_41
    if-eqz p3, :cond_45

    xor-int/lit8 p2, p2, 0x1

    .line 842
    :cond_45
    invoke-static {p1, v1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getRotation(IIZ)I

    move-result p0

    return p0
.end method

.method public getPreviewSize()Landroid/util/Size;
    .registers 4

    .line 424
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreviewSize, mPreviewSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 425
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method public getSensorPhysicalSize(Ljava/lang/String;)Landroid/util/SizeF;
    .registers 2

    if-nez p1, :cond_b

    .line 817
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[getAvailableFocalLengths] cameraId == null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 820
    :cond_b
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSensorPhysicalSize(Ljava/lang/String;)Landroid/util/SizeF;

    move-result-object p0

    return-object p0
.end method

.method public getSettingManager()Lcom/transsion/camera/app/common/setting/SettingManager;
    .registers 1

    .line 199
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    return-object p0
.end method

.method public getSupportedHighFpsResolutions()Ljava/util/List;
    .registers 2

    .line 791
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    const/4 v0, 0x0

    if-eqz p0, :cond_10

    .line 792
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 793
    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedHighFpsResolutions()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_10
    return-object v0
.end method

.method public getSupportedHighSpeedFpsRanges()Ljava/util/List;
    .registers 2

    .line 782
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    const/4 v0, 0x0

    if-eqz p0, :cond_10

    .line 783
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 784
    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedHighSpeedFpsRanges()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_10
    return-object v0
.end method

.method public getSupportedHighSpeedSizesAndFPS()Ljava/util/List;
    .registers 2

    .line 773
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    const/4 v0, 0x0

    if-eqz p0, :cond_10

    .line 774
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 775
    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedHighSpeedSizesAndFPS()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_10
    return-object v0
.end method

.method public getVideoHintOrientation(ILjava/lang/String;Z)I
    .registers 8

    const/4 v0, 0x0

    if-nez p2, :cond_b

    .line 847
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[getVideoHintOrientation] mCurrentCameraId == null, so return 0"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 850
    :cond_b
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p2

    .line 851
    invoke-interface {p2}, Lcom/transsion/camera/adapter/ICameraInfo;->getSensorOrientation()I

    move-result v1

    .line 853
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingManager;->isVipMode()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2c

    .line 854
    invoke-interface {p2}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result p2

    if-nez p2, :cond_33

    :goto_2a
    move v0, v3

    goto :goto_33

    .line 856
    :cond_2c
    invoke-interface {p2}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result p2

    if-ne p2, v3, :cond_33

    goto :goto_2a

    .line 859
    :cond_33
    :goto_33
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->needFlipForVideoMirror()Z

    move-result p0

    if-eqz p0, :cond_3e

    .line 860
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getRotation(IIZ)I

    move-result p0

    return p0

    :cond_3e
    if-eqz p3, :cond_42

    xor-int/lit8 v0, v0, 0x1

    .line 867
    :cond_42
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getRotation(IIZ)I

    move-result p0

    return p0
.end method

.method public hookDisturbStatus(I)V
    .registers 4

    .line 1736
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    const-string v1, "key_mood_light"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingManager;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 1737
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->isModeSupport()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1738
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1739
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/CameraUtil;->hookDisturbStatus(Landroid/content/Context;I)V

    :cond_27
    return-void
.end method

.method public init(Ljava/lang/String;Landroid/content/Context;Lcom/transsion/camera/app/common/setting/SettingManager;)V
    .registers 4

    .line 139
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mContext:Landroid/content/Context;

    .line 140
    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    .line 141
    new-instance p2, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;

    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p3

    invoke-virtual {p3}, Lcom/transsion/camera/adapter/CameraAgent;->getRequestThread()Landroid/os/HandlerThread;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    .line 142
    new-instance p2, Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-direct {p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    .line 143
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->init(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 144
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mDeviceStateCallback:Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainControlInfoCallback:Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->setCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;)V

    return-void
.end method

.method public isBgOfflineCapturing()Z
    .registers 2

    .line 243
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isOffLineSessionSupport()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isBgOfflineCapturing()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public isHighSpeedVideoSupport()Z
    .registers 3

    .line 763
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    const/4 v0, 0x0

    if-eqz p0, :cond_11

    .line 764
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 765
    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isHighSpeedVideoSupport()Z

    move-result p0

    return p0

    :cond_10
    return v0

    .line 767
    :cond_11
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "isHighSpeedVideoSupport cameraCapabilities is null"

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method public isOffLineSessionSupport()Z
    .registers 1

    .line 247
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->isOffLineSessionSupport()Z

    move-result p0

    return p0
.end method

.method public isSuperDefinitionSupport()Z
    .registers 1

    .line 902
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_f

    .line 903
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 905
    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSupportedSuperDefinition()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public isSwitchingOffline()Z
    .registers 1

    .line 251
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->isSwitchingOffline()Z

    move-result p0

    return p0
.end method

.method public isVideoSuperNightSupport()Z
    .registers 1

    .line 892
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_f

    .line 893
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 895
    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isVideoSuperNightSupport()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public isVssSupported()Z
    .registers 1

    .line 881
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_9

    .line 882
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->isVssSupported()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public needFlipForVideoMirror()Z
    .registers 1

    .line 871
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_f

    .line 872
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 874
    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraCapabilities;->needFlipForVideoMirror()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public onContinuousShotDone()V
    .registers 2

    .line 575
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_d

    const/16 v0, 0x31

    .line 576
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_d
    return-void
.end method

.method public onTemperatureChanged(I)V
    .registers 2

    .line 192
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-nez p0, :cond_5

    return-void

    .line 195
    :cond_5
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->onTemperatureChanged(I)V

    return-void
.end method

.method public openCamera(Ljava/lang/String;)V
    .registers 7

    if-nez p1, :cond_4

    goto/16 :goto_7c

    .line 264
    :cond_4
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 265
    array-length v1, v0

    const-string v2, "openCamera cameraId:"

    if-nez v1, :cond_29

    .line 266
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", error."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 270
    :cond_29
    sget-object v1, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 271
    const-string v1, "[TranMemoryFlow] available memory when openCamera :"

    invoke-static {v1}, Lcom/transsion/camera/utils/MemoryUtils;->logAvailMemoryAsync(Ljava/lang/String;)V

    .line 272
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_45
    if-ge v3, v1, :cond_5a

    aget-object v4, v0, v3

    .line 273
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->checkCameraId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_57

    .line 274
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "openCamera has no camera, return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_57
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 279
    :cond_5a
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isSwitchingOffline()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 280
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "openCamera return because isSwitchingOffline"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 287
    :cond_68
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    if-eqz v1, :cond_74

    .line 289
    invoke-virtual {v1, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 294
    :cond_74
    array-length p1, v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_7d

    array-length p1, v0

    if-ne p1, v3, :cond_7c

    goto :goto_7d

    :cond_7c
    :goto_7c
    return-void

    .line 295
    :cond_7d
    :goto_7d
    aget-object p1, v0, v2

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->processAnalyticsCameraId(Ljava/lang/String;)V

    return-void
.end method

.method public pause()V
    .registers 3

    .line 158
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraAgent;->setPause(Z)V

    const/4 v0, 0x0

    .line 160
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mIsZooming:Z

    .line 161
    const-string v0, "[TranMemoryFlow] available memory when pause:"

    invoke-static {v0}, Lcom/transsion/camera/utils/MemoryUtils;->logAvailMemoryAsync(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_23

    .line 163
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->pause()V

    .line 164
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->resetCameraOutputSurface()V

    .line 166
    :cond_23
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_2f

    .line 167
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->pause()V

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->resetCameraOutputSurface()V

    .line 170
    :cond_2f
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_37

    const/4 v0, 0x2

    .line 171
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_37
    return-void
.end method

.method public reConfigureSession()V
    .registers 2

    .line 2422
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_f

    if-eqz p0, :cond_f

    const/16 v0, 0x2a

    .line 2424
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_f
    return-void
.end method

.method public registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .registers 3

    .line 644
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_d

    const/16 v0, 0x1a

    .line 645
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_d
    return-void
.end method

.method public registerStateCallback(Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;)V
    .registers 2

    .line 215
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mStateCB:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removePendingCommand()V
    .registers 4

    .line 746
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    .line 747
    const-string v1, "key_face_detection"

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 748
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const-string v0, "key_focus"

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_12
    return-void
.end method

.method public requestChangeCommand(Ljava/lang/String;)V
    .registers 4

    .line 448
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    const/16 v1, 0xf

    .line 449
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 450
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_12
    return-void
.end method

.method public requestChangeSettingValue(Ljava/lang/String;)V
    .registers 5

    .line 430
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestChangeSettingValue, key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_36

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_36

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mReleased:Z

    if-nez v0, :cond_36

    .line 432
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 433
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 434
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_36
    return-void
.end method

.method public varargs requestChangeSettingValueJustSelf([Ljava/lang/String;)V
    .registers 5

    .line 468
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mIsZooming:Z

    if-eqz v0, :cond_5

    goto :goto_4e

    .line 471
    :cond_5
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestChangeSettingValueJustSelf, keys:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4e

    .line 474
    const-string v1, "key_camera_zoom"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x10

    if-eqz v1, :cond_44

    const-string v1, "key_asd"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 475
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->ASD_ZOOM_HANDLER_TOKEN:[Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 476
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->ASD_ZOOM_HANDLER_TOKEN:[Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 478
    :cond_44
    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 479
    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_4e
    :goto_4e
    return-void
.end method

.method public requestChangeSettingValueSync(Ljava/lang/String;)V
    .registers 5

    .line 440
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestChangeSettingValueSync, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mChangeParameterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 442
    :try_start_19
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleChangeParameter(Ljava/lang/String;)V

    .line 443
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public requestZoomValueChanged(Ljava/lang/String;Z)V
    .registers 4

    .line 456
    iput-boolean p2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mIsZooming:Z

    .line 457
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_14

    const/16 v0, 0x30

    if-nez p2, :cond_d

    .line 460
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 462
    :cond_d
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_14
    return-void
.end method

.method public restoreParameters(Z)V
    .registers 5

    .line 713
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreParameters thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 714
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_34

    const/16 v1, 0x15

    .line 715
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 716
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_34
    return-void
.end method

.method public resume()V
    .registers 3

    .line 148
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraAgent;->setPause(Z)V

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_f

    .line 150
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->resume()V

    .line 152
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_16

    .line 153
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->resume()V

    :cond_16
    return-void
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 188
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method public setBGOfflineSwitchCallback(Lcom/transsion/camera/app/common/IAppUIListener$IBGOfflineSwitchCallback;)V
    .registers 4

    .line 255
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "setBGOfflineSwitchCallback"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 256
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mOfflineSwitchCallback:Lcom/transsion/camera/app/common/IAppUIListener$IBGOfflineSwitchCallback;

    return-void
.end method

.method public setCameraDisconnectedListerner(Lcom/transsion/camera/app/common/IApp$ICameraDisconnectedListener;)V
    .registers 2

    .line 207
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraDisconnectedListerner:Lcom/transsion/camera/app/common/IApp$ICameraDisconnectedListener;

    return-void
.end method

.method public setCameraErrorListener(Lcom/transsion/camera/app/common/IApp$ICameraErrorListener;)V
    .registers 2

    .line 203
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraErrorListener:Lcom/transsion/camera/app/common/IApp$ICameraErrorListener;

    return-void
.end method

.method public setCameraOfflineSessionListener()V
    .registers 2

    .line 235
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraOfflineSessionListener:Lcom/transsion/camera/adapter/CameraProxy$CameraOfflineSessionListener;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->setCameraOfflineSessionListener(Lcom/transsion/camera/adapter/CameraProxy$CameraOfflineSessionListener;)V

    return-void
.end method

.method public setCaptureTag(I)V
    .registers 3

    .line 912
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_11

    const/16 v0, 0x2e

    .line 913
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_11
    return-void
.end method

.method public setCaptureZSLTimestamps([J)V
    .registers 3

    .line 918
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_d

    const/16 v0, 0x2f

    .line 919
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_d
    return-void
.end method

.method public setFaceDetectionListener(Lcom/transsion/camera/adapter/CameraProxy$IFaceDetectionListener;)V
    .registers 3

    .line 727
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_d

    const/16 v0, 0x25

    .line 728
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_d
    return-void
.end method

.method public setFirstFrameCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;)V
    .registers 2

    .line 211
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mFirstFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    return-void
.end method

.method public setLowConfigParameter(Z)V
    .registers 3

    .line 512
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_11

    const/16 v0, 0x33

    .line 513
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_11
    return-void
.end method

.method public setMainPreviewDisplay(Ljava/lang/Object;II)V
    .registers 10

    .line 372
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMainPreviewDisplay, width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 373
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_34

    .line 374
    new-instance v0, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;-><init>(Ljava/lang/Object;IIII)V

    const/4 p1, 0x6

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 375
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_34
    return-void
.end method

.method public setMediaRecordDisplay(Landroid/view/Surface;IIIZ)V
    .registers 13

    .line 389
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMediaRecordDisplay, width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", videoFrameRate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isSuccess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5c

    .line 391
    new-instance v1, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p3

    move v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;-><init>(Ljava/lang/Object;IIII)V

    .line 392
    invoke-virtual {v1, p2}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->setVideoFrameRate(I)V

    .line 393
    invoke-virtual {v1, p5}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->setPrepareSuccess(Z)V

    .line 394
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    if-eq p1, p2, :cond_59

    .line 395
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x6

    invoke-virtual {p0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 397
    :cond_59
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleSetSessionDisplay(Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;)V

    :cond_5c
    return-void
.end method

.method public setModeSupportAuxPreview(Z)V
    .registers 4

    .line 656
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_16

    const/16 v1, 0x1e

    .line 657
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 658
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_16
    return-void
.end method

.method public setModeSupportBackgroundPreview(Z)V
    .registers 4

    .line 693
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_16

    const/16 v1, 0x23

    .line 694
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 695
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_16
    return-void
.end method

.method public setModeSupportSlavePreview(Z)V
    .registers 2

    .line 676
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 677
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateSlaveSurfaceModeSupported(Z)V

    :cond_7
    return-void
.end method

.method public setShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V
    .registers 2

    .line 223
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 224
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->setShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V

    :cond_7
    return-void
.end method

.method public setSlavePreviewDisplay(Ljava/lang/Object;II)V
    .registers 10

    .line 380
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSlavePreviewDisplay, width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 381
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_34

    .line 382
    new-instance v0, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;-><init>(Ljava/lang/Object;IIII)V

    const/4 p1, 0x6

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 383
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_34
    return-void
.end method

.method public shutterSoundPlay(ILcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V
    .registers 3

    .line 616
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleShutterSoundPlay(ILcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V

    return-void
.end method

.method public shutterSoundPlay(Ljava/lang/String;)V
    .registers 2

    .line 612
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleShutterSoundPlay(Ljava/lang/String;)V

    return-void
.end method

.method public startContinuousShot(I)V
    .registers 3

    .line 562
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_18

    .line 563
    const-string v0, "[TranMemoryFlow] available memory when startContinuousShot:"

    invoke-static {v0}, Lcom/transsion/camera/utils/MemoryUtils;->logAvailMemoryAsync(Ljava/lang/String;)V

    .line 564
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xc

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_18
    return-void
.end method

.method public startPreview()V
    .registers 2

    .line 492
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_c

    const/4 v0, 0x7

    .line 493
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_c
    return-void
.end method

.method public startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V
    .registers 3

    const/4 v0, 0x1

    .line 593
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;Z)V

    return-void
.end method

.method public startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;Z)V
    .registers 4

    .line 597
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_18

    .line 598
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->startVideo()V

    .line 599
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x11

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 600
    iput p2, p0, Landroid/os/Message;->arg1:I

    .line 601
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_18
    return-void
.end method

.method public stopContinuousShot()V
    .registers 2

    .line 569
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_d

    const/16 v0, 0xd

    .line 570
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_d
    return-void
.end method

.method public stopContinuousShotCount()V
    .registers 2

    .line 581
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_d

    const/16 v0, 0x20

    .line 582
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_d
    return-void
.end method

.method public stopFaceDetection()V
    .registers 3

    .line 505
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopFaceDetection"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 506
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_14

    const/16 v0, 0x21

    .line 507
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_14
    return-void
.end method

.method public stopPreview()V
    .registers 3

    .line 498
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 499
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_14

    const/16 v0, 0x8

    .line 500
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_14
    return-void
.end method

.method public stopRecording()V
    .registers 2

    .line 606
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_d

    const/16 v0, 0x12

    .line 607
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_d
    return-void
.end method

.method public stopRepeatingRequest()V
    .registers 2

    .line 556
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_d

    const/16 v0, 0x9

    .line 557
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_d
    return-void
.end method

.method public switchDeviceParameters(Ljava/lang/String;)V
    .registers 4

    .line 485
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    .line 486
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 487
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_11
    return-void
.end method

.method public switchMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .registers 5

    .line 364
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchMode, name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2b

    const/4 v1, 0x4

    .line 366
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 367
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_2b
    return-void
.end method

.method public switchToOffline(I)V
    .registers 5

    .line 356
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchToOfflineSession, offlineType\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_31

    .line 358
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->setSwitchingOffline(Z)V

    .line 359
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x2c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_31
    return-void
.end method

.method public takePicture()V
    .registers 3

    .line 518
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "takePicture"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->iTrace(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1b

    .line 520
    const-string v0, "[TranMemoryFlow] available memory when takePicture:"

    invoke-static {v0}, Lcom/transsion/camera/utils/MemoryUtils;->logAvailMemoryAsync(Ljava/lang/String;)V

    .line 521
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1b
    return-void
.end method

.method public takePicture(Lcom/transsion/camera/app/common/mode/CameraDeviceControl$ICommandCallback;)V
    .registers 4

    .line 526
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_23

    .line 527
    const-string v0, "[TranMemoryFlow] available memory when takePicture:"

    invoke-static {v0}, Lcom/transsion/camera/utils/MemoryUtils;->logAvailMemoryAsync(Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 529
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 530
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl$ICommandCallback;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_23
    return-void
.end method

.method public takePictureEnded()V
    .registers 1

    .line 740
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 741
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->takePictureEnded()V

    :cond_7
    return-void
.end method

.method public tripodModeChanged(Z)V
    .registers 3

    .line 2397
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_11

    const/16 v0, 0x2d

    .line 2398
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_11
    return-void
.end method

.method public unInit()V
    .registers 3

    const/4 v0, 0x1

    .line 176
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mReleased:Z

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_10

    const/16 v1, 0x14

    .line 178
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 181
    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->beforeUnInit()V

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->unInit()V

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingManager;->setDispatchListener(Lcom/transsion/camera/app/common/setting/ISettingManager$DispatchListener;)V

    .line 184
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mContext:Landroid/content/Context;

    return-void
.end method

.method public unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .registers 3

    .line 650
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_d

    const/16 v0, 0x1b

    .line 651
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_d
    return-void
.end method

.method public unRegisterStateCallback(Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;)V
    .registers 2

    .line 219
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mStateCB:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateAuxPreviewSurface(Ljava/lang/Object;II)V
    .registers 10

    .line 663
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_17

    .line 664
    new-instance v0, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;-><init>(Ljava/lang/Object;IIII)V

    const/16 p1, 0x1f

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 665
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_17
    return-void
.end method

.method public updateAuxPreviewSurfaceStatus(Z)V
    .registers 3

    .line 670
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_11

    const/16 v0, 0x1d

    .line 671
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_11
    return-void
.end method

.method public updateBackgroundPreviewSurface(Ljava/lang/Object;II)V
    .registers 10

    .line 700
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_17

    .line 701
    new-instance v0, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;-><init>(Ljava/lang/Object;IIII)V

    const/16 p1, 0x24

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 702
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_17
    return-void
.end method

.method public updateBackgroundPreviewSurfaceStatus(Z)V
    .registers 3

    .line 707
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_11

    const/16 v0, 0x22

    .line 708
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_11
    return-void
.end method

.method public updateRecordingHint(Z)V
    .registers 3

    .line 2445
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_7

    .line 2446
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateRecordingHint(Z)V

    .line 2448
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_e

    .line 2449
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateRecordingHint(Z)V

    :cond_e
    return-void
.end method

.method public updateScreenFromeType(I)V
    .registers 2

    .line 888
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingManager;->updateScreenFormType(I)V

    return-void
.end method

.method public updateSlavePreviewSurface(Ljava/lang/Object;II)V
    .registers 10

    .line 686
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_17

    .line 687
    new-instance v0, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;-><init>(Ljava/lang/Object;IIII)V

    const/16 p1, 0x27

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 688
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_17
    return-void
.end method

.method public videoSnapShot(Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V
    .registers 3

    .line 587
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_d

    const/16 v0, 0x13

    .line 588
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_d
    return-void
.end method
