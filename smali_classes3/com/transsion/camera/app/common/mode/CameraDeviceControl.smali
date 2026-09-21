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

    .line 559
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$ICommandCallback;->onExecuted()V

    :cond_5
    return-void
.end method

.method public static synthetic $r8$lambda$Ka4ENFngXe925gWgPmdN2TrIJ90(Lcom/transsion/camera/app/common/mode/CameraDeviceControl$ICommandCallback;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 577
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

.method static bridge synthetic -$$Nest$mhandleSnapShotForVideoHDR(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleSnapShotForVideoHDR()V

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

    .line 63
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CameraDeviceControl"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 119
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$1;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->CAMERA_OPEN_STRATEGY_IN_MONKEY:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 66
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 67
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mClosing:Z

    .line 69
    new-instance v2, Lcom/transsion/camera/utils/StateWait;

    invoke-direct {v2}, Lcom/transsion/camera/utils/StateWait;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCaptureOfflineLock:Lcom/transsion/camera/utils/StateWait;

    .line 70
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mReleased:Z

    const/4 v2, 0x1

    .line 74
    iput v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mDeviceState:I

    .line 76
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mTotalDeviceCount:I

    .line 77
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    .line 78
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    .line 80
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mNeedOpenSlave:Z

    .line 81
    const-string v3, "device_main"

    iput-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    .line 82
    iput-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mLastSetParameterDevice:Ljava/lang/String;

    .line 83
    iput-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurMainDevice:Ljava/lang/String;

    .line 84
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainPreviewStopped:Z

    .line 85
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlavePreviewStopped:Z

    .line 89
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    .line 91
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mModeChanged:Z

    .line 94
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mIsModeSettingReady:Z

    .line 97
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mStateCB:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 104
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    const-string v2, "opened"

    invoke-direct {v0, p0, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mOpenedState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    .line 105
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    const-string v2, "closed"

    invoke-direct {v0, p0, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mClosedState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    .line 106
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    const-string v2, "startcreatsession"

    invoke-direct {v0, p0, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mStartCreatSessionState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    .line 107
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    const-string v2, "startpreviewing"

    invoke-direct {v0, p0, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mStartPreviewingState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    .line 108
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    const-string v2, "startpreviewed"

    invoke-direct {v0, p0, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mStartPreviewedState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    .line 109
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    const-string v2, "firstframe"

    invoke-direct {v0, p0, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mFirstFrameState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mChangeParameterLock:Ljava/lang/Object;

    .line 112
    const-string v0, "key_camera_zoom"

    const-string v2, "key_asd"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->ASD_ZOOM_HANDLER_TOKEN:[Ljava/lang/String;

    .line 113
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mIsZooming:Z

    .line 2016
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainControlInfoCallback:Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

    .line 2044
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mDeviceStateCallback:Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    .line 2201
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$4;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraOfflineSessionListener:Lcom/transsion/camera/adapter/CameraProxy$CameraOfflineSessionListener;

    .line 2309
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    return-void
.end method

.method private checkCameraId(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1382
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p0

    if-eqz p0, :cond_f

    return-object p1

    .line 1386
    :cond_f
    const-string p0, "0"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    const-string p0, "1"

    .line 1387
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

    .line 2311
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkStreamIdResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    .line 2312
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingManager;->updateStreamIds([I)V

    return-void
.end method

.method private getExceptKeyByPolicy()Ljava/lang/String;
    .registers 3

    .line 2500
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mArrayId:[Ljava/lang/String;

    if-eqz v0, :cond_13

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_e

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isDifferentSideCombination()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2501
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

    .line 2397
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    const-string v1, "key_flash"

    if-nez v0, :cond_b

    return-object v1

    .line 2401
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

    .line 1850
    :cond_3
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    .line 1851
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getDeviceType()I

    move-result v0

    if-nez v0, :cond_21

    .line 1852
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObject()Ljava/lang/Object;

    move-result-object v0

    .line 1853
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectHeight()I

    move-result p1

    .line 1852
    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateAuxPreviewSurface(Ljava/lang/Object;II)V

    :cond_21
    :goto_21
    return-void
.end method

.method private handleAuxSurfaceModeSupported(Z)V
    .registers 2

    .line 1840
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1841
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateAuxSurfaceModeSupported(Z)V

    :cond_7
    return-void
.end method

.method private handleBackgroundPreviewSurface(Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;)V
    .registers 4

    if-nez p1, :cond_3

    goto :goto_21

    .line 1894
    :cond_3
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    .line 1895
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getDeviceType()I

    move-result v0

    if-nez v0, :cond_21

    .line 1896
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObject()Ljava/lang/Object;

    move-result-object v0

    .line 1897
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectHeight()I

    move-result p1

    .line 1896
    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateBackgroundPreviewSurface(Ljava/lang/Object;II)V

    :cond_21
    :goto_21
    return-void
.end method

.method private handleBackgroundSurfaceModeSupported(Z)V
    .registers 2

    .line 1884
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1885
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateBackgroundSurfaceModeSupported(Z)V

    :cond_7
    return-void
.end method

.method private handleCancelTakePicture()V
    .registers 1

    .line 1688
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1689
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->cancelTakePicture()V

    :cond_7
    return-void
.end method

.method private handleChangeDualVideoFPS(Landroid/util/Range;)V
    .registers 3

    .line 2471
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2472
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->setLimitFpsRange(Landroid/util/Range;)V

    :cond_13
    return-void
.end method

.method private handleChangeParameter(Ljava/lang/String;)V
    .registers 6

    .line 1711
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

    .line 1712
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    const-string v1, "device_main"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1713
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_85

    .line 1714
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->changeParameter(Ljava/lang/String;)V

    return-void

    .line 1716
    :cond_32
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    const-string v2, "device_slave"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1717
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_85

    .line 1718
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->changeParameter(Ljava/lang/String;)V

    return-void

    .line 1720
    :cond_44
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    const-string v3, "device_both"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 1721
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mLastSetParameterDevice:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    .line 1722
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 1723
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_5f

    .line 1724
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->changeParameter(Ljava/lang/String;)V

    .line 1726
    :cond_5f
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_85

    .line 1727
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->changeParameterByKey([Ljava/lang/String;)V

    return-void

    .line 1729
    :cond_6b
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mLastSetParameterDevice:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 1730
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_7a

    .line 1731
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->changeParameter(Ljava/lang/String;)V

    .line 1733
    :cond_7a
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_85

    .line 1734
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->changeParameterByKey([Ljava/lang/String;)V

    :cond_85
    return-void
.end method

.method private varargs handleChangeParameterByKey([Ljava/lang/String;)V
    .registers 4

    .line 1776
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    const-string v1, "device_main"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1777
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_23

    .line 1778
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->changeParameterByKey([Ljava/lang/String;)V

    return-void

    .line 1780
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    const-string v1, "device_slave"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1781
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_23

    .line 1782
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->changeParameterByKey([Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method private handleCheckDisplayChanged(Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;)V
    .registers 7

    if-nez p1, :cond_3

    goto :goto_3d

    .line 1991
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_3d

    .line 1992
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectType()I

    move-result v1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObject()Ljava/lang/Object;

    move-result-object v2

    .line 1993
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectHeight()I

    move-result v4

    .line 1992
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->checkSurfaceChanged(ILjava/lang/Object;II)Z

    move-result v0

    .line 1994
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

    .line 1996
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleSetSessionDisplay(Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;)V

    return-void

    .line 1998
    :cond_37
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleStopPreview()V

    .line 1999
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleStartPreview()V

    :cond_3d
    :goto_3d
    return-void
.end method

.method private handleCloseCamera()V
    .registers 4

    .line 1449
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

    .line 1458
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isBgCapturing()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1459
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->removeCaptureInfo(Z)V

    .line 1462
    :cond_30
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_43

    .line 1463
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->reset()V

    .line 1464
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    .line 1465
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->releaseCamera()V

    .line 1468
    :cond_43
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_4f

    .line 1469
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->reset()V

    .line 1470
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->releaseCamera()V

    .line 1473
    :cond_4f
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_56

    .line 1474
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->closeCamera()V

    .line 1476
    :cond_56
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    const/4 v2, 0x0

    if-eqz v0, :cond_60

    .line 1477
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->closeCamera()V

    .line 1478
    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    .line 1480
    :cond_60
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/setting/SettingManager;->updateStreamIds([I)V

    .line 1481
    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mPreviewSize:Landroid/util/Size;

    .line 1482
    const-string v0, "device_main"

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    .line 1483
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mLastSetParameterDevice:Ljava/lang/String;

    .line 1485
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mTotalDeviceCount:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_79

    .line 1486
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraAgent;->setOpenDoubleDevice(Z)V

    .line 1488
    :cond_79
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mTotalDeviceCount:I

    return-void
.end method

.method private handleConfigCommand(Ljava/lang/String;)V
    .registers 5

    .line 1741
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

    .line 1742
    const-string v0, "key_face_detection"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1743
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_2f

    .line 1744
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->configCommand(Ljava/lang/String;)V

    .line 1746
    :cond_2f
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_5a

    .line 1747
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->configCommand(Ljava/lang/String;)V

    return-void

    .line 1751
    :cond_37
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    const-string v1, "device_main"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1752
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_5a

    .line 1753
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->configCommand(Ljava/lang/String;)V

    return-void

    .line 1755
    :cond_49
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    const-string v1, "device_slave"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1756
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_5a

    .line 1757
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->configCommand(Ljava/lang/String;)V

    :cond_5a
    return-void
.end method

.method private handleContinuousDone()V
    .registers 2

    .line 1982
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1983
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

    .line 2465
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2466
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->enablePreviewStream(Z)V

    :cond_13
    return-void
.end method

.method private handleEnableVideoAutoFlash(Z)V
    .registers 2

    .line 1822
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1823
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->enableVideoAutoFlash(Z)V

    :cond_7
    return-void
.end method

.method private handleOpenCamera(Ljava/lang/String;)V
    .registers 6

    if-nez p1, :cond_4

    goto/16 :goto_af

    .line 1416
    :cond_4
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_28

    .line 1418
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

    .line 1422
    :cond_28
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mArrayId:[Ljava/lang/String;

    .line 1423
    array-length p1, v0

    iput p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mTotalDeviceCount:I

    .line 1424
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mOpenedState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->reset()V

    .line 1425
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mClosedState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->reset()V

    .line 1426
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mStartCreatSessionState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->reset()V

    .line 1427
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mStartPreviewingState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->reset()V

    .line 1428
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mStartPreviewedState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->reset()V

    .line 1429
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mFirstFrameState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->reset()V

    .line 1430
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    const/4 v1, 0x0

    if-eqz p1, :cond_79

    .line 1431
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

    .line 1432
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 1435
    :cond_79
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mNeedOpenSlave:Z

    .line 1436
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraAgent;->setOpenDoubleDevice(Z)V

    .line 1437
    iget p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mTotalDeviceCount:I

    const/4 v1, 0x1

    if-le p1, v1, :cond_af

    .line 1438
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraAgent;->setOpenDoubleDevice(Z)V

    .line 1439
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-nez p1, :cond_ad

    .line 1440
    new-instance p1, Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-direct {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    .line 1441
    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->init(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 1442
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mDeviceStateCallback:Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainControlInfoCallback:Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

    invoke-virtual {p1, v0, v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->setCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;)V

    .line 1444
    :cond_ad
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mNeedOpenSlave:Z

    :cond_af
    :goto_af
    return-void
.end method

.method private handleReConfigureSession()V
    .registers 1

    .line 1527
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1528
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->reConfigureSession()V

    :cond_7
    return-void
.end method

.method private handleRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .registers 2

    .line 1964
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1965
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    :cond_7
    return-void
.end method

.method private handleRestoreParameters(Z)V
    .registers 3

    .line 1947
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_7

    .line 1948
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->restoreParameters(Z)V

    .line 1950
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p1, :cond_13

    .line 1951
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->releaseCamera()V

    .line 1952
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->closeCamera()V

    :cond_13
    const/4 p1, 0x1

    .line 1954
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mTotalDeviceCount:I

    return-void
.end method

.method private handleSetCaptureTag(I)V
    .registers 3

    .line 1976
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1977
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->setCaptureTag(I)V

    :cond_13
    return-void
.end method

.method private handleSetCaptureZSLTimestamps([J)V
    .registers 3

    .line 2005
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2006
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->setCaptureZSLTimestamps([J)V

    :cond_13
    return-void
.end method

.method private handleSetFaceDetectionListener(Lcom/transsion/camera/adapter/CameraProxy$IFaceDetectionListener;)V
    .registers 2

    .line 1903
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1904
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->setFaceDetectionListener(Lcom/transsion/camera/adapter/CameraProxy$IFaceDetectionListener;)V

    :cond_7
    return-void
.end method

.method private handleSetSessionDisplay(Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;)V
    .registers 10

    if-nez p1, :cond_4

    goto/16 :goto_11c

    .line 1549
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

    .line 1550
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f9

    .line 1552
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    const/4 v3, 0x0

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v1, :cond_46

    move v1, v2

    goto :goto_47

    :cond_46
    move v1, v3

    .line 1554
    :goto_47
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getDeviceType()I

    move-result v4

    const/4 v5, 0x6

    if-nez v4, :cond_71

    .line 1555
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v4, :cond_a2

    if-eqz v1, :cond_60

    .line 1556
    iget v6, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mDeviceState:I

    if-ne v6, v5, :cond_60

    .line 1557
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->stopPreview()V

    .line 1558
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainPreviewStopped:Z

    .line 1559
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainControlInfo:Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    goto :goto_a2

    .line 1561
    :cond_60
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObject()Ljava/lang/Object;

    move-result-object v2

    .line 1562
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectWidth()I

    move-result v6

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectHeight()I

    move-result p1

    .line 1561
    invoke-virtual {v4, v2, v6, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updatePreviewSurface(Ljava/lang/Object;II)Z

    move-result p1

    goto :goto_a3

    .line 1566
    :cond_71
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getDeviceType()I

    move-result v4

    if-ne v4, v2, :cond_a2

    .line 1567
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v4, :cond_a2

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->isClosed()Z

    move-result v4

    if-nez v4, :cond_a2

    if-eqz v1, :cond_91

    .line 1568
    iget v4, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mDeviceState:I

    if-ne v4, v5, :cond_91

    .line 1569
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->stopPreview()V

    .line 1570
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlavePreviewStopped:Z

    .line 1571
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveControlInfo:Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    goto :goto_a2

    .line 1573
    :cond_91
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObject()Ljava/lang/Object;

    move-result-object v4

    .line 1574
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectWidth()I

    move-result v6

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectHeight()I

    move-result p1

    .line 1573
    invoke-virtual {v2, v4, v6, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updatePreviewSurface(Ljava/lang/Object;II)Z

    :cond_a2
    :goto_a2
    move p1, v3

    :goto_a3
    if-eqz v1, :cond_ee

    .line 1579
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainPreviewStopped:Z

    if-eqz v1, :cond_ee

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlavePreviewStopped:Z

    if-eqz v1, :cond_ee

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mDeviceState:I

    if-ne v1, v5, :cond_ee

    .line 1580
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainControlInfo:Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObject()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainControlInfo:Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    .line 1581
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectWidth()I

    move-result v2

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainControlInfo:Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectHeight()I

    move-result v4

    .line 1580
    invoke-virtual {p1, v1, v2, v4}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updatePreviewSurface(Ljava/lang/Object;II)Z

    move-result p1

    .line 1582
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v1, :cond_ea

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->isClosed()Z

    move-result v1

    if-nez v1, :cond_ea

    .line 1583
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveControlInfo:Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObject()Ljava/lang/Object;

    move-result-object v2

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveControlInfo:Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    .line 1584
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectWidth()I

    move-result v4

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveControlInfo:Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectHeight()I

    move-result v5

    .line 1583
    invoke-virtual {v1, v2, v4, v5}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updatePreviewSurface(Ljava/lang/Object;II)Z

    .line 1586
    :cond_ea
    iput-boolean v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainPreviewStopped:Z

    .line 1587
    iput-boolean v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlavePreviewStopped:Z

    :cond_ee
    if-eqz p1, :cond_11c

    .line 1591
    const-string p1, "GLPreview Create done and Inflate other UI."

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1592
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->onModeSettingReady()V

    return-void

    .line 1594
    :cond_f9
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11c

    .line 1595
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObject()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Landroid/view/Surface;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getVideoFrameRate()I

    move-result v4

    .line 1596
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectWidth()I

    move-result v5

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectHeight()I

    move-result v6

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getPrepareSuccess()Z

    move-result v7

    .line 1595
    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateVideoSurface(Landroid/view/Surface;IIIZ)V

    :cond_11c
    :goto_11c
    return-void
.end method

.method private handleShutterSoundPlay(ILcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V
    .registers 5

    .line 1921
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurMainDevice:Ljava/lang/String;

    const-string v1, "device_main"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1922
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_19

    .line 1923
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->shutterSoundPlay(ILcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V

    return-void

    .line 1926
    :cond_12
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_19

    .line 1927
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->shutterSoundPlay(ILcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V

    :cond_19
    return-void
.end method

.method private handleShutterSoundPlay(Ljava/lang/String;)V
    .registers 4

    .line 1909
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurMainDevice:Ljava/lang/String;

    const-string v1, "device_main"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1910
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_19

    .line 1911
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->shutterSoundPlay(Ljava/lang/String;)V

    return-void

    .line 1914
    :cond_12
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_19

    .line 1915
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->shutterSoundPlay(Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method private handleSlavePreviewSurface(Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;)V
    .registers 4

    if-nez p1, :cond_3

    goto :goto_21

    .line 1869
    :cond_3
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    .line 1870
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getDeviceType()I

    move-result v0

    if-nez v0, :cond_21

    .line 1871
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObject()Ljava/lang/Object;

    move-result-object v0

    .line 1872
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectHeight()I

    move-result p1

    .line 1871
    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateSlavePreviewSurface(Ljava/lang/Object;II)V

    :cond_21
    :goto_21
    return-void
.end method

.method private handleSlaveSurfaceModeSupported(Z)V
    .registers 2

    .line 1859
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1860
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateSlaveSurfaceModeSupported(Z)V

    :cond_7
    return-void
.end method

.method private handleSnapShot(Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V
    .registers 2

    .line 1810
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1811
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->videoSnapShot(Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V

    :cond_7
    return-void
.end method

.method private handleSnapShotForVideoHDR()V
    .registers 1

    .line 1816
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1817
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->snapShotForVideoHDR()V

    :cond_7
    return-void
.end method

.method private handleStartContinuousShot(I)V
    .registers 3

    .line 1694
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_9

    .line 1695
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->startContinuousShot(Landroid/content/Context;I)V

    :cond_9
    return-void
.end method

.method private handleStartPreview()V
    .registers 1

    .line 1509
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1510
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->startPreview()V

    :cond_7
    return-void
.end method

.method private handleStartRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;Z)V
    .registers 4

    .line 1796
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_c

    .line 1797
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;Z)V

    const/16 p1, 0x65

    .line 1798
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->hookDisturbStatus(I)V

    :cond_c
    return-void
.end method

.method private handleStopContinuousShot()V
    .registers 1

    .line 1700
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1701
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->stopContinuousShot()V

    :cond_7
    return-void
.end method

.method private handleStopContinuousShotCount()V
    .registers 1

    .line 1705
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1706
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->stopContinuousShotCount()V

    :cond_7
    return-void
.end method

.method private handleStopFaceDetection()V
    .registers 2

    .line 1539
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1540
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

    .line 1515
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1516
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->stopPreview()V

    :cond_7
    return-void
.end method

.method private handleStopRecording()V
    .registers 2

    .line 1803
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_c

    .line 1804
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->stopRecording()V

    const/16 v0, 0x68

    .line 1805
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->hookDisturbStatus(I)V

    :cond_c
    return-void
.end method

.method private handleStopRepeating()V
    .registers 1

    .line 1521
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1522
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->stopRepeating()V

    :cond_7
    return-void
.end method

.method private handleSwitchMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .registers 4

    const/4 v0, 0x1

    .line 1601
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mModeChanged:Z

    const/4 v0, 0x0

    .line 1602
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mIsZooming:Z

    .line 1603
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mNextMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 1605
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

    .line 1606
    iget p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mDeviceState:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_28

    const/4 v0, 0x6

    if-ne p1, v0, :cond_35

    .line 1608
    :cond_28
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 1609
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mNextMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 1610
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->switchMode()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1612
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->startWithMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    :cond_35
    return-void
.end method

.method private handleSwitchOfflineSession(I)V
    .registers 2

    .line 1533
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1534
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->switchToOfflineSession(I)V

    :cond_7
    return-void
.end method

.method private handleSwitchParameters(Ljava/lang/String;)V
    .registers 5

    .line 1939
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSwitchParameters deviceName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1940
    const-string v0, "device_both"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1941
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mLastSetParameterDevice:Ljava/lang/String;

    .line 1943
    :cond_22
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    return-void
.end method

.method private handleTakePicture()V
    .registers 1

    .line 1682
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1683
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->takePicture()V

    :cond_7
    return-void
.end method

.method private handleTakePictureForRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V
    .registers 2

    .line 1958
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1959
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->takePictureForRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_7
    return-void
.end method

.method private handleTripodModeChanged(Z)V
    .registers 5

    .line 2477
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTripodModeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2478
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 2479
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->tripodMode(Z)V

    :cond_29
    return-void
.end method

.method private handleUnInit()V
    .registers 3

    .line 1499
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "handleUnInit mHandler = null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1500
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 1501
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1503
    :cond_f
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    .line 1504
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    .line 1505
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    return-void
.end method

.method private handleUnRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .registers 2

    .line 1970
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1971
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    :cond_7
    return-void
.end method

.method private handleUpdateAuxSurfaceStatus(Z)V
    .registers 2

    .line 1834
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1835
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateAuxSurfaceStatus(Z)V

    :cond_7
    return-void
.end method

.method private handleUpdateBackgroundSurfaceStatus(Z)V
    .registers 2

    .line 1878
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1879
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateBackgroundSurfaceStatus(Z)V

    :cond_7
    return-void
.end method

.method private handleUpdateFocusMode(Ljava/lang/String;)V
    .registers 2

    .line 1828
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1829
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateFocusMode(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private handleUpdateSessionSize(Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .registers 8

    .line 1618
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz v0, :cond_127

    if-eq v0, p1, :cond_8

    goto/16 :goto_127

    .line 1624
    :cond_8
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->isClosed()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 1625
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "handleUpdateSessionSize mMainDevice.isClosed"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1630
    :cond_1a
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p1, :cond_23

    .line 1631
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object p1

    goto :goto_24

    :cond_23
    const/4 p1, 0x0

    .line 1633
    :goto_24
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSatModeSupport()Z

    move-result v0

    .line 1634
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object p1

    .line 1635
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getPreviewSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object v1

    .line 1636
    sget-object v2, Lcom/transsion/camera/utils/FeatureSupport;->sDbgPrevSizeStr:Ljava/lang/String;

    invoke-static {v2}, Lcom/transsion/camera/utils/FeatureSupport;->getDbgSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v2

    if-eqz v2, :cond_3b

    move-object v1, v2

    .line 1640
    :cond_3b
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v2, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getPostViewSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAuxPreviewSize:Landroid/util/Size;

    .line 1641
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getFpsRange()Landroid/util/Range;

    move-result-object v2

    .line 1642
    sget v3, Lcom/transsion/camera/utils/FeatureSupport;->sDbgPrevFpsMax:I

    const/4 v4, 0x5

    if-le v3, v4, :cond_5b

    .line 1643
    new-instance v2, Landroid/util/Range;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1645
    :cond_5b
    invoke-static {v1, p1}, Lcom/transsion/camera/utils/CameraUtil;->getMinSizeForSupport(Landroid/util/Size;Ljava/util/List;)Landroid/util/Size;

    move-result-object p1

    .line 1646
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

    .line 1648
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1, v3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f1

    .line 1649
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v3, :cond_a4

    .line 1650
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAuxPreviewSize:Landroid/util/Size;

    invoke-virtual {v3, v1, v4, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updatePreviewSize(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;)V

    .line 1652
    :cond_a4
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v3, :cond_b5

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->isClosed()Z

    move-result v3

    if-nez v3, :cond_b5

    .line 1653
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAuxPreviewSize:Landroid/util/Size;

    invoke-virtual {v3, v1, v4, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updatePreviewSize(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;)V

    .line 1655
    :cond_b5
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/transsion/camera/app/common/IAppUI;->setPreviewSize(II)V

    .line 1656
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAuxPreviewSize:Landroid/util/Size;

    if-eqz v3, :cond_e2

    .line 1657
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lcom/transsion/camera/app/common/IAppUI;->setAuxPreviewLensSupport(ZLjava/lang/String;)V

    .line 1658
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

    .line 1661
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-interface {v0, v3, v4}, Lcom/transsion/camera/app/common/IAppUI;->setBackgroundPreviewSize(II)V

    .line 1664
    :cond_f1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mPreviewSize:Landroid/util/Size;

    invoke-interface {v0, v3, v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updatePreviewSize(Landroid/util/Size;Landroid/util/Size;)V

    .line 1665
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mPreviewSize:Landroid/util/Size;

    .line 1666
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mBackgroundPreviewSize:Landroid/util/Size;

    .line 1668
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p1, :cond_10d

    .line 1669
    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateFpsRange(Landroid/util/Range;)V

    .line 1670
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updatePictureSurface()V

    .line 1671
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updatePostViewSurface()V

    .line 1674
    :cond_10d
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p1, :cond_126

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->isClosed()Z

    move-result p1

    if-nez p1, :cond_126

    .line 1675
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateFpsRange(Landroid/util/Range;)V

    .line 1676
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updatePictureSurface()V

    .line 1677
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updatePostViewSurface()V

    :cond_126
    return-void

    .line 1619
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

    .line 1763
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    const-string v1, "device_main"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1764
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_23

    .line 1765
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->onZoomValueChanged(Ljava/lang/String;)V

    return-void

    .line 1767
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    const-string v1, "device_slave"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1768
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_23

    .line 1769
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->onZoomValueChanged(Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method private handlerPostRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V
    .registers 2

    .line 1933
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 1934
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_7
    return-void
.end method

.method private isDifferentSideCombination()Z
    .registers 3

    .line 2496
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

    .line 2329
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2330
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->enter()V

    .line 2333
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2334
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->enter()V

    .line 2337
    :cond_22
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->getCount()I

    move-result v0

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mTotalDeviceCount:I

    if-ge v0, v1, :cond_64

    .line 2338
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

    .line 2339
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->getCount()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", total:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mTotalDeviceCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2338
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 2343
    :cond_64
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->reset()V

    const/4 p0, 0x1

    return p0
.end method

.method private notifyCameraError(I)V
    .registers 2

    .line 2323
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraErrorListener:Lcom/transsion/camera/app/common/IApp$ICameraErrorListener;

    if-eqz p0, :cond_7

    .line 2324
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IApp$ICameraErrorListener;->onCameraError(I)V

    :cond_7
    return-void
.end method

.method private notifyCameraState(I)V
    .registers 3

    .line 2316
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mDeviceState:I

    .line 2317
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

    .line 2318
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;->onCameraStateChanged(I)V

    goto :goto_8

    :cond_18
    return-void
.end method

.method private notifyCaptureOfflineLock(I)V
    .registers 2

    if-nez p1, :cond_7

    .line 2197
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCaptureOfflineLock:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/StateWait;->notifyState()V

    :cond_7
    return-void
.end method

.method private declared-synchronized onModeSettingReady()V
    .registers 2

    monitor-enter p0

    .line 2349
    :try_start_1
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mIsModeSettingReady:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 2350
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mIsModeSettingReady:Z

    .line 2351
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->onModeSettingReady()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_e

    goto :goto_10

    :catchall_e
    move-exception v0

    goto :goto_12

    .line 2353
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

    .line 2364
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCameraId(Ljava/lang/String;)V

    .line 2365
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->getCameraName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCameraNameValue(Ljava/lang/String;)V

    .line 2366
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p0

    if-eqz p0, :cond_2f

    .line 2368
    invoke-static {}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->getInstance()Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;

    move-result-object p1

    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->setFacing(I)V

    :cond_2f
    return-void
.end method

.method private declared-synchronized resetModeSettingReady()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 2357
    :try_start_2
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mIsModeSettingReady:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 2358
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

    .line 2011
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 2012
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->setLowConfigReduceLoading(Z)V

    :cond_7
    return-void
.end method

.method private startWithMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .registers 10

    .line 2259
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

    .line 2260
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->updateTranssionCameraMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 2261
    invoke-static {}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->getInstance()Lcom/transsion/camera/thub/TranSchedManagerProxy;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->setCamTranSched(I)V

    .line 2262
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/VideoQualityUtils;->setCameraFacing(Ljava/lang/String;Ljava/lang/String;)V

    .line 2263
    const-string v0, "startWithMode"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 2264
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_61

    .line 2265
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateCurrentModeAndType(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 2267
    :cond_61
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_68

    .line 2268
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateCurrentModeAndType(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 2271
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

    .line 2283
    :cond_7d
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-virtual {v0, v1, v5}, Lcom/transsion/camera/app/common/setting/SettingManager;->updateMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 2284
    const-string v0, "device_slave"

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurMainDevice:Ljava/lang/String;

    .line 2285
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_95

    .line 2286
    invoke-virtual {v0, p1, p2, v4, v3}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateModeSetting(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;ZLjava/lang/String;)V

    .line 2289
    :cond_95
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_ce

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_ce

    .line 2290
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateModeSetting(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;ZLjava/lang/String;)V

    goto :goto_ce

    .line 2273
    :cond_a5
    :goto_a5
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-virtual {v0, v5, v6}, Lcom/transsion/camera/app/common/setting/SettingManager;->updateMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 2274
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurMainDevice:Ljava/lang/String;

    .line 2275
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_bb

    .line 2276
    invoke-virtual {v0, p1, p2, v4, v3}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateModeSetting(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;ZLjava/lang/String;)V

    .line 2279
    :cond_bb
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_ce

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_ce

    .line 2280
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getExceptKeyByPolicy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateModeSetting(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;ZLjava/lang/String;)V

    .line 2294
    :cond_ce
    :goto_ce
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_d7

    .line 2295
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    .line 2299
    :cond_d7
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ICameraControl$IModeConfig;->onSettingReady()V

    .line 2300
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->resetModeSettingReady()V

    const/4 v0, 0x4

    .line 2301
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->notifyCameraState(I)V

    .line 2302
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_ea

    .line 2303
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->createOutputChannel(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 2305
    :cond_ea
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void
.end method

.method private switchMode()Z
    .registers 8

    .line 1396
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mModeChanged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_58

    .line 1397
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_f
    move-object v0, v2

    .line 1398
    :goto_10
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mNextMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz v3, :cond_19

    invoke-interface {v3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1a

    :cond_19
    move-object v3, v2

    .line 1399
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

    .line 1400
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mNextMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iput-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 1401
    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mNextMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 1402
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mModeChanged:Z

    .line 1403
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

    .line 1404
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

    .line 2374
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 2375
    new-instance v1, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$5;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$5;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/Object;)V

    .line 2384
    monitor-enter v0

    .line 2385
    :try_start_b
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_19

    if-eqz p0, :cond_23

    const-wide/16 v1, 0x1f4

    .line 2388
    :try_start_15
    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_1b
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_23

    :catchall_19
    move-exception p0

    goto :goto_25

    .line 2390
    :catch_1b
    :try_start_1b
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "waitDone interrupted"

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2393
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

    .line 754
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 755
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->addPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V

    :cond_7
    return-void
.end method

.method public cancelTakePicture()V
    .registers 3

    .line 566
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_10

    const/16 v1, 0xb

    .line 567
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 568
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->waitDone()V

    :cond_10
    return-void
.end method

.method public cancelTakePicture(Lcom/transsion/camera/app/common/mode/CameraDeviceControl$ICommandCallback;)V
    .registers 4

    .line 573
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 574
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 575
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl$ICommandCallback;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public checkDisplayChanged(ILandroid/view/Surface;IIIZ)V
    .registers 13

    .line 432
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1f

    .line 433
    new-instance v0, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, p2

    move v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;-><init>(Ljava/lang/Object;IIII)V

    .line 434
    invoke-virtual {v0, p5}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->setVideoFrameRate(I)V

    .line 435
    invoke-virtual {v0, p6}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->setPrepareSuccess(Z)V

    .line 436
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x33

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1f
    return-void
.end method

.method public checkNotifyBgOfflineErr()V
    .registers 3

    .line 1492
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "checkNotifyBgOfflineErr"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1493
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p0, :cond_e

    .line 1494
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->checkNotifyBgOfflineErr()V

    :cond_e
    return-void
.end method

.method public closeCamera()V
    .registers 3

    .line 327
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isSwitchingOffline()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 329
    const-string p0, "closeCamera return because isSwitchingOffline"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 333
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_27

    const/4 v1, 0x3

    .line 334
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 335
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 336
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->waitDone()V

    :cond_27
    return-void
.end method

.method public closeCameraAsync()V
    .registers 5

    .line 358
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "closeCameraAsync"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isSwitchingOffline()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 360
    const-string p0, "closeCameraAsync return because isSwitchingOffline"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 364
    :cond_13
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mReleased:Z

    if-eqz v1, :cond_1d

    .line 365
    const-string p0, "closeCameraAsync return because has mReleased"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 368
    :cond_1d
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    .line 369
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    const/4 v3, 0x3

    if-eqz v2, :cond_4d

    invoke-interface {v2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isBgCapturing()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 370
    const-string v2, "closeCameraAsync delay 8s because of BgCapturing"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_36

    .line 372
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->enterPreviewStopped()V

    :cond_36
    if-eqz v1, :cond_59

    const/16 v0, 0x9

    .line 375
    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 376
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v2, 0x1f40

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_4d
    if-eqz v1, :cond_59

    .line 379
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 380
    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_59
    return-void
.end method

.method public closeCameraAsyncWhenDestroy()V
    .registers 4

    .line 341
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "closeCameraAsyncWhenDestroy+"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isSwitchingOffline()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 343
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCaptureOfflineLock:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/StateWait;->resetState()V

    .line 345
    :try_start_12
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCaptureOfflineLock:Lcom/transsion/camera/utils/StateWait;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/utils/StateWait;->waitState(J)V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception v0

    .line 347
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 350
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2f

    const/4 v1, 0x3

    .line 351
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 352
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 354
    :cond_2f
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "closeCameraAsyncWhenDestroy-"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public destroyTask()V
    .registers 1

    .line 321
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 322
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->destroyTask()V

    :cond_7
    return-void
.end method

.method public doPictureSizeUpdate(Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .registers 5

    .line 441
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

    .line 442
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Request_Camera"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 443
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4b

    const/4 v1, 0x5

    .line 444
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 445
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_4b
    return-void

    .line 448
    :cond_4c
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleUpdateSessionSize(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    return-void
.end method

.method public dualVideoFPSChange(Landroid/util/Range;)V
    .registers 3

    .line 2452
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_d

    const/16 v0, 0x2c

    .line 2453
    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_d
    return-void
.end method

.method public enablePreviewStream(Z)V
    .registers 3

    .line 2446
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_11

    const/16 v0, 0x2a

    .line 2447
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

    .line 665
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_11

    const/16 v0, 0x19

    .line 666
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_11
    return-void
.end method

.method public enterCloseState()V
    .registers 1

    .line 265
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 266
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->enterCloseState()V

    :cond_7
    return-void
.end method

.method public getCurrentCameraId()Ljava/lang/String;
    .registers 1

    .line 766
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_9

    .line 767
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getJpegMaxSize()I
    .registers 1

    .line 2517
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_9

    .line 2518
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

    .line 842
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[getAvailableFocalLengths] cameraId == null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 843
    new-array p0, p0, [F

    return-object p0

    .line 845
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

    .line 253
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getOfflineSessionCount()I

    move-result p0

    return p0
.end method

.method public getOrientation(ILjava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    .line 857
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getOrientation(ILjava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public getOrientation(ILjava/lang/String;Z)I
    .registers 7

    const/4 v0, 0x0

    if-nez p2, :cond_b

    .line 862
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[getOrientation] mCurrentCameraId == null, so return 0"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 865
    :cond_b
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p2

    .line 866
    invoke-interface {p2}, Lcom/transsion/camera/adapter/ICameraInfo;->getSensorOrientation()I

    move-result v1

    .line 867
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

    .line 869
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

    .line 875
    :cond_45
    invoke-static {p1, v1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getRotation(IIZ)I

    move-result p0

    return p0
.end method

.method public getPreviewSize()Landroid/util/Size;
    .registers 4

    .line 453
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

    .line 454
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method public getSensorPhysicalSize(Ljava/lang/String;)Landroid/util/SizeF;
    .registers 2

    if-nez p1, :cond_b

    .line 850
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[getAvailableFocalLengths] cameraId == null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 853
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

    .line 213
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    return-object p0
.end method

.method public getSupportedHighFpsResolutions()Ljava/util/List;
    .registers 2

    .line 824
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    const/4 v0, 0x0

    if-eqz p0, :cond_10

    .line 825
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 826
    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedHighFpsResolutions()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_10
    return-object v0
.end method

.method public getSupportedHighSpeedFpsRanges()Ljava/util/List;
    .registers 2

    .line 815
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    const/4 v0, 0x0

    if-eqz p0, :cond_10

    .line 816
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 817
    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedHighSpeedFpsRanges()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_10
    return-object v0
.end method

.method public getSupportedHighSpeedSizesAndFPS()Ljava/util/List;
    .registers 2

    .line 806
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    const/4 v0, 0x0

    if-eqz p0, :cond_10

    .line 807
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 808
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

    .line 880
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[getVideoHintOrientation] mCurrentCameraId == null, so return 0"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 883
    :cond_b
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p2

    .line 884
    invoke-interface {p2}, Lcom/transsion/camera/adapter/ICameraInfo;->getSensorOrientation()I

    move-result v1

    .line 886
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingManager;->isVipMode()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2c

    .line 887
    invoke-interface {p2}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result p2

    if-nez p2, :cond_33

    :goto_2a
    move v0, v3

    goto :goto_33

    .line 889
    :cond_2c
    invoke-interface {p2}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result p2

    if-ne p2, v3, :cond_33

    goto :goto_2a

    .line 892
    :cond_33
    :goto_33
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->needFlipForVideoMirror()Z

    move-result p0

    if-eqz p0, :cond_3e

    .line 893
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getRotation(IIZ)I

    move-result p0

    return p0

    :cond_3e
    if-eqz p3, :cond_42

    xor-int/lit8 v0, v0, 0x1

    .line 900
    :cond_42
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getRotation(IIZ)I

    move-result p0

    return p0
.end method

.method public hookDisturbStatus(I)V
    .registers 4

    .line 1788
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    const-string v1, "key_mood_light"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingManager;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 1789
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->isModeSupport()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1790
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1791
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/CameraUtil;->hookDisturbStatus(Landroid/content/Context;I)V

    :cond_27
    return-void
.end method

.method public init(Ljava/lang/String;Landroid/content/Context;Lcom/transsion/camera/app/common/setting/SettingManager;)V
    .registers 4

    .line 140
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mContext:Landroid/content/Context;

    .line 141
    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    .line 142
    new-instance p2, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;

    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p3

    invoke-virtual {p3}, Lcom/transsion/camera/adapter/CameraAgent;->getRequestThread()Landroid/os/HandlerThread;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    .line 143
    new-instance p2, Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-direct {p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    .line 144
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->init(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 145
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mDeviceStateCallback:Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainControlInfoCallback:Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->setCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;)V

    return-void
.end method

.method public isBgOfflineCapturing()Z
    .registers 2

    .line 257
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

    .line 796
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    const/4 v0, 0x0

    if-eqz p0, :cond_11

    .line 797
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 798
    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isHighSpeedVideoSupport()Z

    move-result p0

    return p0

    :cond_10
    return v0

    .line 800
    :cond_11
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "isHighSpeedVideoSupport cameraCapabilities is null"

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method public isOffLineSessionSupport()Z
    .registers 1

    .line 261
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->isOffLineSessionSupport()Z

    move-result p0

    return p0
.end method

.method public isSuperDefinitionSupport()Z
    .registers 1

    .line 935
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_f

    .line 936
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 938
    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSupportedSuperDefinition()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public isSwitchingOffline()Z
    .registers 1

    .line 271
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->isSwitchingOffline()Z

    move-result p0

    return p0
.end method

.method public isVideoSuperNightSupport()Z
    .registers 1

    .line 925
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_f

    .line 926
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 928
    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isVideoSuperNightSupport()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public isVssSupported()Z
    .registers 1

    .line 914
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_9

    .line 915
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->isVssSupported()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public needFlipForVideoMirror()Z
    .registers 1

    .line 904
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_f

    .line 905
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 907
    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraCapabilities;->needFlipForVideoMirror()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public onContinuousShotDone()V
    .registers 2

    .line 602
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_d

    const/16 v0, 0x32

    .line 603
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_d
    return-void
.end method

.method public onTemperatureChanged(I)V
    .registers 2

    .line 206
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-nez p0, :cond_5

    return-void

    .line 209
    :cond_5
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->onTemperatureChanged(I)V

    return-void
.end method

.method public openCamera(Ljava/lang/String;)V
    .registers 7

    if-nez p1, :cond_4

    goto/16 :goto_7c

    .line 284
    :cond_4
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 285
    array-length v1, v0

    const-string v2, "openCamera cameraId:"

    if-nez v1, :cond_29

    .line 286
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

    .line 290
    :cond_29
    sget-object v1, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 291
    const-string v1, "[TranMemoryFlow] available memory when openCamera :"

    invoke-static {v1}, Lcom/transsion/camera/utils/MemoryUtils;->logAvailMemoryAsync(Ljava/lang/String;)V

    .line 292
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_45
    if-ge v3, v1, :cond_5a

    aget-object v4, v0, v3

    .line 293
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->checkCameraId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_57

    .line 294
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "openCamera has no camera, return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_57
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 299
    :cond_5a
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isSwitchingOffline()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 300
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "openCamera return because isSwitchingOffline"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 307
    :cond_68
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    if-eqz v1, :cond_74

    .line 309
    invoke-virtual {v1, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 314
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

    .line 315
    :cond_7d
    :goto_7d
    aget-object p1, v0, v2

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->processAnalyticsCameraId(Ljava/lang/String;)V

    return-void
.end method

.method public pause()V
    .registers 3

    .line 172
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 173
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraAgent;->setPause(Z)V

    const/4 v0, 0x0

    .line 174
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mIsZooming:Z

    .line 175
    const-string v0, "[TranMemoryFlow] available memory when pause:"

    invoke-static {v0}, Lcom/transsion/camera/utils/MemoryUtils;->logAvailMemoryAsync(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_23

    .line 177
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->pause()V

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->resetCameraOutputSurface()V

    .line 180
    :cond_23
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_2f

    .line 181
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->pause()V

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->resetCameraOutputSurface()V

    .line 184
    :cond_2f
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_37

    const/4 v0, 0x2

    .line 185
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_37
    return-void
.end method

.method public reConfigureSession()V
    .registers 2

    .line 2484
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_f

    if-eqz p0, :cond_f

    const/16 v0, 0x2b

    .line 2486
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_f
    return-void
.end method

.method public registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .registers 3

    .line 677
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_d

    const/16 v0, 0x1a

    .line 678
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_d
    return-void
.end method

.method public registerStateCallback(Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;)V
    .registers 2

    .line 229
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mStateCB:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removePendingCommand()V
    .registers 4

    .line 779
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    .line 780
    const-string v1, "key_face_detection"

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 781
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const-string v0, "key_focus"

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_12
    return-void
.end method

.method public requestChangeCommand(Ljava/lang/String;)V
    .registers 4

    .line 477
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    const/16 v1, 0xf

    .line 478
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 479
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_12
    return-void
.end method

.method public requestChangeSettingValue(Ljava/lang/String;)V
    .registers 5

    .line 459
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestChangeSettingValue, key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_36

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_36

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mReleased:Z

    if-nez v0, :cond_36

    .line 461
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 462
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 463
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_36
    return-void
.end method

.method public varargs requestChangeSettingValueJustSelf([Ljava/lang/String;)V
    .registers 5

    .line 495
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mIsZooming:Z

    if-eqz v0, :cond_5

    goto :goto_4e

    .line 498
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

    .line 499
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4e

    .line 501
    const-string v1, "key_camera_zoom"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x10

    if-eqz v1, :cond_44

    const-string v1, "key_asd"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 502
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->ASD_ZOOM_HANDLER_TOKEN:[Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 503
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->ASD_ZOOM_HANDLER_TOKEN:[Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 505
    :cond_44
    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 506
    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_4e
    :goto_4e
    return-void
.end method

.method public requestChangeSettingValueSync(Ljava/lang/String;)V
    .registers 5

    .line 469
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestChangeSettingValueSync, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mChangeParameterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 471
    :try_start_19
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleChangeParameter(Ljava/lang/String;)V

    .line 472
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
    .registers 3

    .line 485
    iput-boolean p2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mIsZooming:Z

    .line 486
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_f

    const/16 p2, 0x31

    .line 488
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 489
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_f
    return-void
.end method

.method public restoreParameters(Z)V
    .registers 5

    .line 746
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

    .line 747
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_34

    const/16 v1, 0x15

    .line 748
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 749
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
    .registers 4

    .line 149
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraAgent;->setPause(Z)V

    .line 151
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSprdPlatform()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz v0, :cond_47

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isOffLineSessionSupport()Z

    move-result v0

    if-nez v0, :cond_47

    .line 152
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPhotosSupportProcessingApi:Z

    if-eqz v0, :cond_25

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->removeCaptureInfo(Z)V

    .line 155
    :cond_25
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isBgCapturing()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_47

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 156
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "Activity resume should remove msg_close_camera!"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->enterCloseState()V

    .line 159
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 163
    :cond_47
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_4e

    .line 164
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->resume()V

    .line 166
    :cond_4e
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_55

    .line 167
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->resume()V

    :cond_55
    return-void
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 202
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method public setBGOfflineSwitchCallback(Lcom/transsion/camera/app/common/IAppUIListener$IBGOfflineSwitchCallback;)V
    .registers 4

    .line 275
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "setBGOfflineSwitchCallback"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 276
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mOfflineSwitchCallback:Lcom/transsion/camera/app/common/IAppUIListener$IBGOfflineSwitchCallback;

    return-void
.end method

.method public setCameraDisconnectedListerner(Lcom/transsion/camera/app/common/IApp$ICameraDisconnectedListener;)V
    .registers 2

    .line 221
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraDisconnectedListerner:Lcom/transsion/camera/app/common/IApp$ICameraDisconnectedListener;

    return-void
.end method

.method public setCameraErrorListener(Lcom/transsion/camera/app/common/IApp$ICameraErrorListener;)V
    .registers 2

    .line 217
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraErrorListener:Lcom/transsion/camera/app/common/IApp$ICameraErrorListener;

    return-void
.end method

.method public setCameraOfflineSessionListener()V
    .registers 2

    .line 249
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraOfflineSessionListener:Lcom/transsion/camera/adapter/CameraProxy$CameraOfflineSessionListener;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->setCameraOfflineSessionListener(Lcom/transsion/camera/adapter/CameraProxy$CameraOfflineSessionListener;)V

    return-void
.end method

.method public setCaptureTag(I)V
    .registers 3

    .line 945
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_11

    const/16 v0, 0x2f

    .line 946
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

    .line 951
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_d

    const/16 v0, 0x30

    .line 952
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_d
    return-void
.end method

.method public setFaceDetectionListener(Lcom/transsion/camera/adapter/CameraProxy$IFaceDetectionListener;)V
    .registers 3

    .line 760
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_d

    const/16 v0, 0x26

    .line 761
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_d
    return-void
.end method

.method public setFirstFrameCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;)V
    .registers 2

    .line 225
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mFirstFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    return-void
.end method

.method public setLowConfigParameter(Z)V
    .registers 3

    .line 539
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_11

    const/16 v0, 0x34

    .line 540
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

    .line 401
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

    .line 402
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_34

    .line 403
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

    .line 404
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_34
    return-void
.end method

.method public setMediaRecordDisplay(Landroid/view/Surface;IIIZ)V
    .registers 13

    .line 418
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

    .line 419
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5c

    .line 420
    new-instance v1, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p3

    move v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;-><init>(Ljava/lang/Object;IIII)V

    .line 421
    invoke-virtual {v1, p2}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->setVideoFrameRate(I)V

    .line 422
    invoke-virtual {v1, p5}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->setPrepareSuccess(Z)V

    .line 423
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    if-eq p1, p2, :cond_59

    .line 424
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x6

    invoke-virtual {p0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 426
    :cond_59
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleSetSessionDisplay(Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;)V

    :cond_5c
    return-void
.end method

.method public setModeSupportAuxPreview(Z)V
    .registers 4

    .line 689
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_16

    const/16 v1, 0x1e

    .line 690
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 691
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

    .line 726
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_16

    const/16 v1, 0x24

    .line 727
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 728
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

    .line 709
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 710
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateSlaveSurfaceModeSupported(Z)V

    :cond_7
    return-void
.end method

.method public setShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V
    .registers 2

    .line 237
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 238
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->setShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V

    :cond_7
    return-void
.end method

.method public setSlavePreviewDisplay(Ljava/lang/Object;II)V
    .registers 10

    .line 409
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

    .line 410
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_34

    .line 411
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

    .line 412
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_34
    return-void
.end method

.method public shutterSoundPlay(ILcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V
    .registers 3

    .line 649
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleShutterSoundPlay(ILcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V

    return-void
.end method

.method public shutterSoundPlay(Ljava/lang/String;)V
    .registers 2

    .line 645
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleShutterSoundPlay(Ljava/lang/String;)V

    return-void
.end method

.method public startContinuousShot(I)V
    .registers 3

    .line 589
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_18

    .line 590
    const-string v0, "[TranMemoryFlow] available memory when startContinuousShot:"

    invoke-static {v0}, Lcom/transsion/camera/utils/MemoryUtils;->logAvailMemoryAsync(Ljava/lang/String;)V

    .line 591
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

    .line 519
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_c

    const/4 v0, 0x7

    .line 520
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_c
    return-void
.end method

.method public startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V
    .registers 3

    const/4 v0, 0x1

    .line 626
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;Z)V

    return-void
.end method

.method public startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;Z)V
    .registers 4

    .line 630
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_18

    .line 631
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->startVideo()V

    .line 632
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x11

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 633
    iput p2, p0, Landroid/os/Message;->arg1:I

    .line 634
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_18
    return-void
.end method

.method public stopContinuousShot()V
    .registers 2

    .line 596
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_d

    const/16 v0, 0xd

    .line 597
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_d
    return-void
.end method

.method public stopContinuousShotCount()V
    .registers 2

    .line 608
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_d

    const/16 v0, 0x21

    .line 609
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_d
    return-void
.end method

.method public stopFaceDetection()V
    .registers 3

    .line 532
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopFaceDetection"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 533
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_14

    const/16 v0, 0x22

    .line 534
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_14
    return-void
.end method

.method public stopPreview()V
    .registers 3

    .line 525
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 526
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_14

    const/16 v0, 0x8

    .line 527
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_14
    return-void
.end method

.method public stopRecording()V
    .registers 2

    .line 639
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_d

    const/16 v0, 0x12

    .line 640
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_d
    return-void
.end method

.method public stopRepeatingRequest()V
    .registers 2

    .line 583
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_d

    const/16 v0, 0x9

    .line 584
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_d
    return-void
.end method

.method public switchDeviceParameters(Ljava/lang/String;)V
    .registers 4

    .line 512
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    .line 513
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 514
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_11
    return-void
.end method

.method public switchMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .registers 5

    .line 393
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

    .line 394
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2b

    const/4 v1, 0x4

    .line 395
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 396
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_2b
    return-void
.end method

.method public switchToOffline(I)V
    .registers 5

    .line 385
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchToOfflineSession, offlineType\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_31

    .line 387
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->setSwitchingOffline(Z)V

    .line 388
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x2d

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

    .line 545
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "takePicture"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->iTrace(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1b

    .line 547
    const-string v0, "[TranMemoryFlow] available memory when takePicture:"

    invoke-static {v0}, Lcom/transsion/camera/utils/MemoryUtils;->logAvailMemoryAsync(Ljava/lang/String;)V

    .line 548
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

    .line 553
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_23

    .line 554
    const-string v0, "[TranMemoryFlow] available memory when takePicture:"

    invoke-static {v0}, Lcom/transsion/camera/utils/MemoryUtils;->logAvailMemoryAsync(Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 556
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 557
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl$ICommandCallback;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_23
    return-void
.end method

.method public takePictureEnded()V
    .registers 1

    .line 773
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_7

    .line 774
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->takePictureEnded()V

    :cond_7
    return-void
.end method

.method public tripodModeChanged(Z)V
    .registers 3

    .line 2459
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_11

    const/16 v0, 0x2e

    .line 2460
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

    .line 190
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mReleased:Z

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_10

    const/16 v1, 0x14

    .line 192
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 195
    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->beforeUnInit()V

    .line 196
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->unInit()V

    .line 197
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingManager;->setDispatchListener(Lcom/transsion/camera/app/common/setting/ISettingManager$DispatchListener;)V

    .line 198
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mContext:Landroid/content/Context;

    return-void
.end method

.method public unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .registers 3

    .line 683
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_d

    const/16 v0, 0x1b

    .line 684
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_d
    return-void
.end method

.method public unRegisterStateCallback(Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;)V
    .registers 2

    .line 233
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mStateCB:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateAuxPreviewSurface(Ljava/lang/Object;II)V
    .registers 10

    .line 696
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_17

    .line 697
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

    .line 698
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_17
    return-void
.end method

.method public updateAuxPreviewSurfaceStatus(Z)V
    .registers 3

    .line 703
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_11

    const/16 v0, 0x1d

    .line 704
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

    .line 733
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_17

    .line 734
    new-instance v0, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;-><init>(Ljava/lang/Object;IIII)V

    const/16 p1, 0x25

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 735
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_17
    return-void
.end method

.method public updateBackgroundPreviewSurfaceStatus(Z)V
    .registers 3

    .line 740
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_11

    const/16 v0, 0x23

    .line 741
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

    .line 2507
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_7

    .line 2508
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateRecordingHint(Z)V

    .line 2510
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_e

    .line 2511
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateRecordingHint(Z)V

    :cond_e
    return-void
.end method

.method public updateScreenFromeType(I)V
    .registers 2

    .line 921
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingManager;->updateScreenFormType(I)V

    return-void
.end method

.method public updateSlavePreviewSurface(Ljava/lang/Object;II)V
    .registers 10

    .line 719
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_17

    .line 720
    new-instance v0, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;-><init>(Ljava/lang/Object;IIII)V

    const/16 p1, 0x28

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 721
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_17
    return-void
.end method

.method public videoHDRSnapShot()V
    .registers 2

    .line 620
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_d

    const/16 v0, 0x20

    .line 621
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_d
    return-void
.end method

.method public videoSnapShot(Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V
    .registers 3

    .line 614
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_d

    const/16 v0, 0x13

    .line 615
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_d
    return-void
.end method
