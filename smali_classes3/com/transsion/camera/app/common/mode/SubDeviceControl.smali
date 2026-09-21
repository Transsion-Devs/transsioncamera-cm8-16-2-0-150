.class public Lcom/transsion/camera/app/common/mode/SubDeviceControl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/mode/SubDeviceControl$ClosedState;,
        Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;,
        Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;,
        Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;,
        Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewingState;,
        Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;,
        Lcom/transsion/camera/app/common/mode/SubDeviceControl$RecordingState;,
        Lcom/transsion/camera/app/common/mode/SubDeviceControl$SubDeviceHandle;,
        Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;,
        Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;
    }
.end annotation


# static fields
.field private static mPreGoldLocation:Landroid/location/Location;


# instance fields
.field private final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private mAuxPreviewSize:Landroid/util/Size;

.field private mBackgroundPreviewSize:Landroid/util/Size;

.field private mCamera:Lcom/transsion/camera/adapter/CameraProxy;

.field private mCameraAgent:Lcom/transsion/camera/adapter/CameraAgent;

.field private mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

.field private mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

.field private mCaptureCompletedNum:I

.field private final mClosedState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

.field private final mContinueShotCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

.field private final mContinuousShotShutterCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

.field private mCurrentCameraId:Ljava/lang/String;

.field private mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

.field private mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

.field private mFpsRange:Landroid/util/Range;

.field private mHandler:Landroid/os/Handler;

.field private mInfoCallback:Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

.field private volatile mIsRestore:Z

.field private mNotifyCallback:Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

.field private final mOpenedState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

.field private final mOpeningState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

.field private final mPictureCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

.field private final mPreviewCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;

.field private final mPreviewFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

.field private mPreviewSize:Landroid/util/Size;

.field private final mPreviewedState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

.field private final mPreviewingState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

.field private final mRawPictureCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

.field private final mRecordingState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

.field private mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

.field private final mShutterCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAuxPreviewSize(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/util/Size;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mAuxPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBackgroundPreviewSize(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/util/Size;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mBackgroundPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraAgent(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraAgent;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraAgent:Lcom/transsion/camera/adapter/CameraAgent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraOutputSurface(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraOutputSurface;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraUser(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraAgent$Customer;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClosedState(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mClosedState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContinueShotCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mContinueShotCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContinuousShotShutterCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mContinuousShotShutterCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentCameraId(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentState(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFpsRange(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/util/Range;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mFpsRange:Landroid/util/Range;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInfoCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mInfoCallback:Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsRestore(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mIsRestore:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotifyCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mNotifyCallback:Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOpenedState(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mOpenedState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOpeningState(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mOpeningState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPictureCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mPictureCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mPreviewCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewFrameCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mPreviewFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewSize(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/util/Size;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewedState(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mPreviewedState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewingState(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mPreviewingState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRawPictureCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mRawPictureCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecordingState(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mRecordingState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingController(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingDeviceConfigurator(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShutterCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mShutterCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCaptureCompletedNum(Lcom/transsion/camera/app/common/mode/SubDeviceControl;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCaptureCompletedNum:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentCameraId(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentCameraId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentState(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsRestore(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mIsRestore:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPreviewSize(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Landroid/util/Size;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mPreviewSize:Landroid/util/Size;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckCaptureCompleted(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->checkCaptureCompleted()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetLocation(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/location/Location;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getLocation()Landroid/location/Location;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleCameraOpened(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->handleCameraOpened(Lcom/transsion/camera/adapter/CameraProxy;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleOnCameraError(Lcom/transsion/camera/app/common/mode/SubDeviceControl;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->handleOnCameraError(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandlePreviewError(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->handlePreviewError()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misSprdHeavyCapturing(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->isSprdHeavyCapturing()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetFpsRange(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Landroid/util/Range;Ljava/util/function/Consumer;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->setFpsRange(Landroid/util/Range;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SubDevCtrl"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 113
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    .line 116
    new-instance v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$ClosedState;

    const-string v1, "closed"

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$ClosedState;-><init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mClosedState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    .line 117
    new-instance v1, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;

    const-string v2, "openingCamera"

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;-><init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mOpeningState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    .line 118
    new-instance v1, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;

    const-string v2, "opened"

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;-><init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mOpenedState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    .line 119
    new-instance v1, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewingState;

    const-string v2, "startingPreview"

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewingState;-><init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mPreviewingState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    .line 120
    new-instance v1, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;

    const-string v2, "previewed"

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;-><init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mPreviewedState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    .line 121
    new-instance v1, Lcom/transsion/camera/app/common/mode/SubDeviceControl$RecordingState;

    const-string v2, "recording"

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$RecordingState;-><init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mRecordingState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    .line 122
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mFpsRange:Landroid/util/Range;

    const/4 v0, 0x0

    .line 125
    iput v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCaptureCompletedNum:I

    .line 843
    new-instance v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$1;

    const-wide/16 v1, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$1;-><init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;J)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    .line 1895
    new-instance v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$2;-><init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mPreviewCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;

    .line 1906
    new-instance v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$3;-><init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mPreviewFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    .line 1934
    new-instance v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$4;-><init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mShutterCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

    .line 1946
    new-instance v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;-><init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mPictureCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    .line 2044
    new-instance v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$6;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$6;-><init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mRawPictureCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    .line 2114
    new-instance v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$7;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$7;-><init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mContinuousShotShutterCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

    .line 2126
    new-instance v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$8;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$8;-><init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mContinueShotCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    return-void
.end method

.method private checkCaptureCompleted()Z
    .registers 6

    .line 2097
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_f

    :cond_7
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getExtraCaptureCount()I

    move-result v0

    :goto_f
    const/4 v2, 0x1

    if-lez v0, :cond_43

    .line 2100
    iget v3, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCaptureCompletedNum:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCaptureCompletedNum:I

    if-le v3, v0, :cond_1a

    move v1, v2

    .line 2104
    :cond_1a
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[checkCaptureCompleted] mCaptureCompletedNum: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCaptureCompletedNum:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", extraCaptureCount: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", isCaptureCompleted: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 2108
    :cond_43
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->isMTKCaptureFlow()Z

    move-result v0

    if-nez v0, :cond_5b

    :cond_4d
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 2109
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.transsion.camera.feature.mode.doc.DocumentEntry"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5c

    :cond_5b
    return v2

    :cond_5c
    return v1
.end method

.method private configSettingParameters(Ljava/lang/String;Lcom/transsion/camera/adapter/CameraParameters;ZLjava/lang/String;)V
    .registers 7

    if-eqz p2, :cond_3b

    .line 2175
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-nez v0, :cond_7

    goto :goto_3b

    .line 2178
    :cond_7
    invoke-virtual {p2}, Lcom/transsion/camera/adapter/CameraParameters;->clearAll()V

    if-eqz p3, :cond_15

    .line 2180
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->setCameraCapabilities(Ljava/lang/String;Lcom/transsion/camera/adapter/ICameraCapabilities;)V

    .line 2182
    :cond_15
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    if-eqz p1, :cond_26

    .line 2183
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v0, :cond_26

    if-eqz p3, :cond_26

    .line 2184
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_26
    if-eqz p3, :cond_2d

    .line 2188
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->modeAndSettingRestrictionDispatchDone()V

    .line 2191
    :cond_2d
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getDataFlowType()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/transsion/camera/adapter/CameraParameters;->setDataFlowType(I)V

    .line 2192
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    invoke-interface {p0, p2, p4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->configParameters(Lcom/transsion/camera/adapter/CameraParameters;Ljava/lang/String;)I

    :cond_3b
    :goto_3b
    return-void
.end method

.method private getLocation()Landroid/location/Location;
    .registers 9

    .line 726
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    .line 730
    const-string v1, "key_location"

    const/4 v2, 0x0

    if-eqz v0, :cond_5e

    .line 731
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v3, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "on"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    .line 732
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getAutoWatermarkMode()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "value_gold_watermark_on"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 733
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getGoldWatermarkType()Ljava/lang/String;

    move-result-object v0

    .line 734
    const-string v5, "4"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_34

    const-string v5, "3"

    .line 735
    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_35

    :cond_34
    const/4 v2, 0x1

    .line 736
    :cond_35
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getLocation]: locationON = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", goldWatermarkON = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", goldWatermarkType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move v0, v2

    move v2, v4

    goto :goto_60

    :cond_5e
    move v0, v2

    move v3, v0

    .line 740
    :goto_60
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v5, "getLocation start "

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 741
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 742
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v4

    const-string v5, "key_gold_watermark_location"

    invoke-virtual {v4, v5}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    .line 743
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getLocation]: goldLocation = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", location = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v5, 0x0

    if-eqz v2, :cond_f0

    if-eqz v0, :cond_f0

    if-eqz v4, :cond_ac

    .line 748
    sput-object v4, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mPreGoldLocation:Landroid/location/Location;

    .line 749
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[getLocation]: use current gold location"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_ec

    .line 751
    :cond_ac
    sget-object v4, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mPreGoldLocation:Landroid/location/Location;

    if-eqz v4, :cond_b8

    .line 753
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[getLocation]: use pre gold location"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_ec

    .line 755
    :cond_b8
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 756
    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    .line 755
    const-string v3, "key_pro_watermark_location_gson"

    invoke-virtual {v0, v3, v5, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 757
    invoke-static {v0}, Lcom/transsion/camera/utils/LocationUtil;->str2Location(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    sput-object v4, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mPreGoldLocation:Landroid/location/Location;

    .line 759
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getLocation]: use saved mPreGoldLocation = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mPreGoldLocation:Landroid/location/Location;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_ec
    if-eqz v4, :cond_ef

    return-object v4

    :cond_ef
    return-object v1

    :cond_f0
    if-eqz v3, :cond_fb

    .line 765
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v0, "use location"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    :cond_fb
    return-object v5
.end method

.method private handleCameraOpened(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 2

    .line 929
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->onCameraOpened(Lcom/transsion/camera/adapter/CameraProxy;)V

    return-void
.end method

.method private handleOnCameraError(I)V
    .registers 2

    .line 933
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->onCameraError(I)V

    return-void
.end method

.method private handlePreviewError()V
    .registers 1

    .line 937
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->previewError()V

    return-void
.end method

.method private isSprdHeavyCapturing()Z
    .registers 3

    .line 2091
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAiRawSprdSupport:Z

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getRawScene()I

    move-result v0

    if-gtz v0, :cond_30

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 2092
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.mode.stblurmode.STBlurModeEntry"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 2093
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.transsion.camera.feature.mode.litefacebeauty.LiteFaceBeautyModeEntry"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_32

    :cond_30
    const/4 p0, 0x1

    return p0

    :cond_32
    const/4 p0, 0x0

    return p0
.end method

.method private setFpsRange(Landroid/util/Range;Ljava/util/function/Consumer;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 2197
    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method private setTagValue(Ljava/lang/String;)V
    .registers 4

    .line 840
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubDevCtrl_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/debug/Log$Tag;->update(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V
    .registers 2

    .line 789
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-eqz p0, :cond_7

    .line 790
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->addDevicePreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V

    :cond_7
    return-void
.end method

.method public cancelTakePicture()V
    .registers 1

    .line 577
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->cancelTakePicture()V

    return-void
.end method

.method public changeParameter(Ljava/lang/String;)V
    .registers 2

    .line 823
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->changeParameter(Ljava/lang/String;)V

    return-void
.end method

.method public varargs changeParameterByKey([Ljava/lang/String;)V
    .registers 2

    .line 835
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->changeParameterByKey([Ljava/lang/String;)V

    return-void
.end method

.method public checkSurfaceChanged(ILjava/lang/Object;II)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    .line 253
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {p0, p2, p3, p4}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->isPreviewDifferent(Ljava/lang/Object;II)Z

    move-result p0

    return p0

    :cond_a
    const/4 v0, 0x2

    if-ne p1, v0, :cond_16

    .line 255
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    check-cast p2, Landroid/view/Surface;

    invoke-virtual {p0, p2, p3, p4}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->isVideoSurfaceDifferent(Landroid/view/Surface;II)Z

    move-result p0

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public closeCamera()V
    .registers 1

    .line 203
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->closeCamera()V

    return-void
.end method

.method public configCommand(Ljava/lang/String;)V
    .registers 2

    .line 827
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->configCommand(Ljava/lang/String;)V

    return-void
.end method

.method public createOutputChannel(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .registers 3

    .line 362
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->createOutputChannel(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    return-void
.end method

.method public destroyTask()V
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-eqz p0, :cond_7

    .line 151
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy;->destroyTask()V

    :cond_7
    return-void
.end method

.method public enableVideoAutoFlash(Z)V
    .registers 2

    .line 773
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->enableVideoAutoFlash(Z)V

    return-void
.end method

.method public enterCloseState()V
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->enterCloseState()V

    return-void
.end method

.method public enterPreviewStopped()V
    .registers 1

    .line 211
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->enterPreviewStopped()V

    return-void
.end method

.method public getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;
    .registers 1

    .line 223
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 226
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object p0

    return-object p0
.end method

.method public getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;
    .registers 1

    .line 230
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 233
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentCameraId()Ljava/lang/String;
    .registers 1

    .line 215
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public getJpegMaxSize()I
    .registers 1

    .line 809
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-eqz p0, :cond_9

    .line 810
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy;->getJpegMaxSize()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public init(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 4

    .line 128
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 129
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraAgent:Lcom/transsion/camera/adapter/CameraAgent;

    .line 130
    new-instance p2, Lcom/transsion/camera/app/common/mode/SubDeviceControl$SubDeviceHandle;

    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getRequestThread()Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$SubDeviceHandle;-><init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mHandler:Landroid/os/Handler;

    .line 131
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    invoke-virtual {p2}, Lcom/transsion/camera/adapter/CameraAgent$Customer;->updateDynamicPriority()V

    .line 132
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->setTagValue(Ljava/lang/String;)V

    .line 133
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->setTagValue(Ljava/lang/String;)V

    return-void
.end method

.method public isClosed()Z
    .registers 1

    .line 219
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public isVssSupported()Z
    .registers 1

    .line 816
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-eqz p0, :cond_9

    .line 817
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy;->isVssSupported()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public onTemperatureChanged(I)V
    .registers 2

    .line 2167
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-nez p0, :cond_5

    return-void

    .line 2170
    :cond_5
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->onTemperatureChanged(I)V

    return-void
.end method

.method public onZoomValueChanged(Ljava/lang/String;)V
    .registers 2

    .line 831
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->onZoomValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method public openCamera(Ljava/lang/String;)V
    .registers 3

    .line 190
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->setTagValue(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->setTagValue(Ljava/lang/String;)V

    .line 192
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->openCamera(Ljava/lang/String;)V

    return-void
.end method

.method public pause()V
    .registers 2

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    .line 145
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setPause(Z)V

    :cond_8
    return-void
.end method

.method public postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V
    .registers 6

    .line 636
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-eqz v0, :cond_4a

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez v1, :cond_d

    goto :goto_4a

    .line 641
    :cond_d
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    if-eqz p1, :cond_1a

    .line 642
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v1, :cond_1a

    .line 643
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 646
    :cond_1a
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I

    move-result p1

    .line 647
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[postRestriction], configParameters restartpreview:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_44

    .line 649
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->dirty()V

    .line 650
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->updateOutputChannel()V

    return-void

    .line 652
    :cond_44
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setCameraParameters(Lcom/transsion/camera/adapter/CameraParameters;)V

    return-void

    .line 637
    :cond_4a
    :goto_4a
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[postRestriction], mCamera:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceConfigurator:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", settingController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public reConfigureSession()V
    .registers 4

    .line 387
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-eqz v0, :cond_22

    .line 388
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    .line 389
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->dirty()V

    .line 390
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraProxy;->stopPreview()V

    .line 391
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->requestDataChannel()Lcom/transsion/camera/adapter/CameraDataChannel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraProxy;->setCameraDataChannel(Lcom/transsion/camera/adapter/CameraDataChannel;)V

    .line 392
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setCameraParameters(Lcom/transsion/camera/adapter/CameraParameters;)V

    :cond_22
    return-void
.end method

.method public registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .registers 2

    .line 781
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void
.end method

.method public releaseCamera()V
    .registers 2

    .line 196
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    if-eqz v0, :cond_7

    .line 197
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->onPreviewStopped()V

    .line 199
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->releaseCamera()V

    return-void
.end method

.method public reset()V
    .registers 2

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    if-eqz v0, :cond_7

    .line 163
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->reset()V

    .line 165
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_10

    const/16 v0, 0x64

    .line 166
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_10
    return-void
.end method

.method public resetCameraOutputSurface()V
    .registers 1

    .line 171
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    if-eqz p0, :cond_7

    .line 172
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->reset()V

    :cond_7
    return-void
.end method

.method public restoreParameters(Z)V
    .registers 4

    const/4 v0, 0x1

    .line 615
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mIsRestore:Z

    .line 616
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-eqz v0, :cond_25

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    if-eqz v1, :cond_25

    .line 617
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    .line 618
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I

    if-eqz p1, :cond_25

    .line 620
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->stopPreview()V

    .line 621
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->updateOutputChannel()V

    .line 622
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->startPreview()V

    :cond_25
    return-void
.end method

.method public resume()V
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent$Customer;->updateDynamicPriority()V

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-eqz p0, :cond_d

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setPause(Z)V

    :cond_d
    return-void
.end method

.method public setCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;)V
    .registers 3

    .line 181
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mNotifyCallback:Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    .line 182
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mInfoCallback:Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

    return-void
.end method

.method public setCameraOfflineSessionListener(Lcom/transsion/camera/adapter/CameraProxy$CameraOfflineSessionListener;)V
    .registers 2

    .line 186
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->setCameraOfflineSessionListener(Lcom/transsion/camera/adapter/CameraProxy$CameraOfflineSessionListener;)V

    return-void
.end method

.method public setFaceDetectionListener(Lcom/transsion/camera/adapter/CameraProxy$IFaceDetectionListener;)V
    .registers 2

    .line 795
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-eqz p0, :cond_7

    .line 796
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->startFaceDetection(Lcom/transsion/camera/adapter/CameraProxy$IFaceDetectionListener;)V

    :cond_7
    return-void
.end method

.method public setLowConfigReduceLoading(Z)V
    .registers 2

    .line 383
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->setLowConfigReduceLoading(Z)V

    return-void
.end method

.method public setSettingDeviceConfigurator(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;)V
    .registers 2

    .line 177
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    return-void
.end method

.method public setShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V
    .registers 2

    .line 559
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-eqz p0, :cond_7

    .line 560
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->setShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V

    .line 562
    :cond_7
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->setShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V

    .line 563
    invoke-static {}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->getInstance()Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->setShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V

    return-void
.end method

.method public shutterSoundPlay(ILcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V
    .registers 3

    .line 632
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->shutterSoundPlay(ILcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V

    return-void
.end method

.method public shutterSoundPlay(Ljava/lang/String;)V
    .registers 2

    .line 628
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->shutterSoundPlay(Ljava/lang/String;)V

    return-void
.end method

.method public snapShotForVideoHDR()V
    .registers 1

    .line 611
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->snapShotForVideoHDR()V

    return-void
.end method

.method public startContinuousShot(Landroid/content/Context;I)V
    .registers 3

    .line 581
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->startContinuousShot(Landroid/content/Context;I)V

    return-void
.end method

.method public startPreview()V
    .registers 1

    .line 371
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->startPreview()V

    return-void
.end method

.method public startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;Z)V
    .registers 4

    .line 593
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;Z)V

    .line 594
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    if-eqz p0, :cond_c

    .line 595
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->onRecordingStarted()V

    :cond_c
    return-void
.end method

.method public stopContinuousShot()V
    .registers 1

    .line 585
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->stopContinuousShot()V

    return-void
.end method

.method public stopContinuousShotCount()V
    .registers 1

    .line 589
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->stopContinuousShotCount()V

    return-void
.end method

.method public stopPreview()V
    .registers 1

    .line 375
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->stopPreview()V

    return-void
.end method

.method public stopRecording()V
    .registers 2

    .line 600
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->stopRecording()V

    .line 601
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    if-eqz p0, :cond_c

    .line 602
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->onRecordingEnded()V

    :cond_c
    return-void
.end method

.method public stopRepeating()V
    .registers 1

    .line 379
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->stopRepeating()V

    return-void
.end method

.method public switchToOfflineSession(I)V
    .registers 2

    .line 397
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->switchToOfflineSession(I)V

    return-void
.end method

.method public takePicture()V
    .registers 1

    .line 573
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->takePicture()V

    return-void
.end method

.method public takePictureEnded()V
    .registers 2

    .line 801
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    .line 802
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    if-eqz p0, :cond_14

    if-eqz v0, :cond_10

    .line 803
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->isMTKCaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->onTakePictureEnded(Z)V

    :cond_14
    return-void
.end method

.method public takePictureForRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V
    .registers 12

    .line 677
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-eqz v0, :cond_b2

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    if-eqz v1, :cond_b2

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez v1, :cond_e

    goto/16 :goto_b2

    .line 683
    :cond_e
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    if-eqz p1, :cond_1b

    .line 684
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v1, :cond_1b

    .line 685
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 688
    :cond_1b
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I

    move-result p1

    .line 689
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[takePictureForRestriction], configParameters restartpreview:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_72

    .line 691
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->dirty()V

    .line 692
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraProxy;->stopPreview()V

    .line 693
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setPreviewSize(Landroid/util/Size;)V

    .line 694
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mFpsRange:Landroid/util/Range;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/transsion/camera/app/common/mode/SubDeviceControl$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/adapter/CameraParameters;)V

    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->setFpsRange(Landroid/util/Range;Ljava/util/function/Consumer;)V

    .line 695
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->requestDataChannel()Lcom/transsion/camera/adapter/CameraDataChannel;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraProxy;->setCameraDataChannel(Lcom/transsion/camera/adapter/CameraDataChannel;)V

    .line 696
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setCameraParameters(Lcom/transsion/camera/adapter/CameraParameters;)V

    .line 699
    :cond_72
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->onTakePictureStarted()V

    .line 701
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mInfoCallback:Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

    const/4 v0, 0x0

    if-eqz p1, :cond_83

    .line 702
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentCameraId:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;->getOrientationInfo(Ljava/lang/String;)I

    move-result p1

    goto :goto_84

    :cond_83
    move p1, v0

    .line 704
    :goto_84
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/adapter/CameraProxy;->setPictureOrientation(I)V

    .line 705
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraProxy;->setPictureGPSLocation(Landroid/location/Location;)V

    .line 706
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mShutterCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mPictureCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 707
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isNeedDeviceCaptureSound()Z

    move-result v7

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getCurShutterPriority()I

    move-result v8

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 708
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportShutterSound()Z

    move-result v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 706
    invoke-virtual/range {v2 .. v9}, Lcom/transsion/camera/adapter/CameraProxy;->takePicture(Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;ZIZ)V

    .line 709
    iput v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCaptureCompletedNum:I

    return-void

    .line 678
    :cond_b2
    :goto_b2
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[takePictureForRestriction], mCamera:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceConfigurator:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", settingController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .registers 2

    .line 785
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void
.end method

.method public updateAuxPreviewSurface(Ljava/lang/Object;II)V
    .registers 4

    .line 276
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updateAuxPreviewSurface(Ljava/lang/Object;II)V

    return-void
.end method

.method public updateAuxSurfaceModeSupported(Z)V
    .registers 2

    .line 661
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->updateAuxSurfaceModeSupport(Z)V

    return-void
.end method

.method public updateAuxSurfaceStatus(Z)V
    .registers 2

    .line 657
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->updateAuxSurfaceStatus(Z)V

    return-void
.end method

.method public updateBackgroundPreviewSurface(Ljava/lang/Object;II)V
    .registers 4

    .line 284
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updateBackgroundPreviewSurface(Ljava/lang/Object;II)V

    return-void
.end method

.method public updateBackgroundSurfaceModeSupported(Z)V
    .registers 2

    .line 673
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->updateBackgroundSurfaceModeSupport(Z)V

    return-void
.end method

.method public updateBackgroundSurfaceStatus(Z)V
    .registers 2

    .line 669
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->updateBackgroundSurfaceStatus(Z)V

    return-void
.end method

.method public updateCurrentModeAndType(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .registers 3

    .line 288
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-nez p2, :cond_6

    .line 290
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 292
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getOutputDataType()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updateType(I)V

    .line 293
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getDataFlowType()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updateDataFlowType(I)V

    return-void
.end method

.method public updateFocusMode(Ljava/lang/String;)V
    .registers 2

    .line 777
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->updateFocusMode(Ljava/lang/String;)V

    return-void
.end method

.method public updateFpsRange(Landroid/util/Range;)V
    .registers 2

    .line 408
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mFpsRange:Landroid/util/Range;

    return-void
.end method

.method public updateModeSetting(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;ZLjava/lang/String;)V
    .registers 23

    move-object/from16 v0, p0

    .line 297
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-nez v1, :cond_e

    .line 298
    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "configModeSetting mCamera == null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 301
    :cond_e
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v1

    .line 302
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionPluginEnable()I

    move-result v2

    .line 303
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->isProfessionModeEnable()Z

    move-result v3

    .line 304
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->isModeUltrazoomEnable()Z

    move-result v4

    .line 305
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getPictureSize()Landroid/util/Size;

    move-result-object v5

    .line 306
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getPostViewSize()Landroid/util/Size;

    move-result-object v6

    .line 307
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoInterpolationEnable()I

    move-result v7

    .line 308
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionCameraMode()I

    move-result v8

    .line 310
    iget-object v9, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentCameraId:Ljava/lang/String;

    if-eqz v9, :cond_39

    move/from16 v10, p3

    move-object/from16 v11, p4

    .line 311
    invoke-direct {v0, v9, v1, v10, v11}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->configSettingParameters(Ljava/lang/String;Lcom/transsion/camera/adapter/CameraParameters;ZLjava/lang/String;)V

    .line 315
    :cond_39
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionPluginEnable()I

    move-result v9

    .line 316
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->isProfessionModeEnable()Z

    move-result v10

    .line 317
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->isModeUltrazoomEnable()Z

    move-result v11

    .line 318
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getPictureSize()Landroid/util/Size;

    move-result-object v12

    .line 319
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getPostViewSize()Landroid/util/Size;

    move-result-object v13

    .line 320
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoInterpolationEnable()I

    move-result v14

    .line 321
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionCameraMode()I

    move-result v1

    .line 323
    invoke-static {v5, v12}, Lcom/transsion/camera/utils/CameraUtil;->isRadioAndSizeEqual(Landroid/util/Size;Landroid/util/Size;)Z

    move-result v15

    .line 324
    invoke-static {v6, v13}, Lcom/transsion/camera/utils/CameraUtil;->isRadioAndSizeEqual(Landroid/util/Size;Landroid/util/Size;)Z

    move-result v16

    if-ne v2, v9, :cond_6b

    if-nez v15, :cond_6b

    if-nez v16, :cond_6b

    if-ne v7, v14, :cond_6b

    if-ne v8, v1, :cond_6b

    if-ne v3, v10, :cond_6b

    if-eq v4, v11, :cond_161

    :cond_6b
    if-eq v2, v9, :cond_92

    move/from16 p3, v15

    .line 330
    iget-object v15, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    move/from16 v17, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 p4, v11

    const-string v11, "configModeSetting oldPluginEnable:"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " != newPluginEnable:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_98

    :cond_92
    move/from16 v17, v4

    move/from16 p4, v11

    move/from16 p3, v15

    :goto_98
    if-eqz p3, :cond_b8

    .line 333
    iget-object v2, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "or configModeSetting oldPictureSize:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " != newPictureSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_b8
    if-eqz v16, :cond_d8

    .line 336
    iget-object v2, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "or configModeSetting oldPostviewSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " != newPostviewSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_d8
    if-eq v7, v14, :cond_f8

    .line 339
    iget-object v2, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configModeSetting oldInterpolationEnable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " != newInterpolationEnable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_f8
    if-eq v8, v1, :cond_118

    .line 342
    iget-object v2, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configModeSetting oldTranssionCameraMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " != newTranssionCameraMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_118
    if-eq v3, v10, :cond_138

    .line 345
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configModeSetting oldProfessionalModeEnable:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " != newProfessionalModeEnable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_138
    move/from16 v2, p4

    move/from16 v1, v17

    if-eq v1, v2, :cond_15c

    .line 348
    iget-object v3, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configSettingManager oldModeUltrazoomEnable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " != newModeUltrazoomEnable:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 350
    :cond_15c
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->dirty()V

    :cond_161
    if-eqz p1, :cond_169

    .line 352
    invoke-interface/range {p1 .. p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isForceRecreateSession()Z

    move-result v1

    if-nez v1, :cond_171

    :cond_169
    if-eqz p2, :cond_17d

    .line 353
    invoke-interface/range {p2 .. p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isForceRecreateSession()Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 354
    :cond_171
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "isForceRecreateSession"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 355
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->dirty()V

    .line 358
    :cond_17d
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getThumbnailSource()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setModeThumbnailSource(I)V

    return-void
.end method

.method public updatePictureSurface()V
    .registers 21

    move-object/from16 v0, p0

    .line 412
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updatePicSurface()Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object v1

    .line 413
    iget-object v2, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updateQcomPicSurface()Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object v2

    .line 414
    iget-object v3, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updateQcomJpegPicSurface()Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object v3

    .line 415
    iget-object v4, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updatePostAlgoPicSurface()Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object v4

    .line 416
    iget-object v5, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updateYuvPicSurface()Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object v5

    const/4 v6, 0x4

    .line 418
    new-array v6, v6, [I

    .line 419
    iget-object v7, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    const/4 v8, 0x0

    if-eqz v7, :cond_3a

    .line 420
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isRaw10OfflineJNISupport()Z

    move-result v7

    if-eqz v7, :cond_31

    const/16 v7, 0x25

    goto :goto_33

    :cond_31
    const/16 v7, 0x20

    .line 421
    :goto_33
    iget-object v9, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v9, v7}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updateQcomRawSurface(I)[Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object v7

    goto :goto_3b

    :cond_3a
    move-object v7, v8

    .line 423
    :goto_3b
    iget-object v9, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[CapturePerformance] updatePictureSurface baseSurface: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", qcomSurface: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", yuvSurface: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " postAlgoSurface = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v9, -0x1

    const/4 v10, 0x0

    if-nez v1, :cond_73

    .line 427
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v1, v8, v10, v10, v9}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updateImageSurface(Lcom/transsion/camera/adapter/IBGSurface;III)V

    goto :goto_84

    .line 429
    :cond_73
    iget-object v11, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getWidth()I

    move-result v12

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getHeight()I

    move-result v13

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getFormat()I

    move-result v14

    invoke-virtual {v11, v1, v12, v13, v14}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updateImageSurface(Lcom/transsion/camera/adapter/IBGSurface;III)V

    :goto_84
    if-nez v3, :cond_8c

    .line 432
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v1, v8, v10, v10, v9}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updateQcomJpegImageSurface(Lcom/transsion/camera/adapter/IBGSurface;III)V

    goto :goto_9d

    .line 434
    :cond_8c
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getWidth()I

    move-result v11

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getHeight()I

    move-result v12

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getFormat()I

    move-result v13

    invoke-virtual {v1, v3, v11, v12, v13}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updateQcomJpegImageSurface(Lcom/transsion/camera/adapter/IBGSurface;III)V

    :goto_9d
    if-nez v5, :cond_a5

    .line 438
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v1, v8, v10, v10, v9}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updateYuvImageSurface(Lcom/transsion/camera/adapter/IBGSurface;III)V

    goto :goto_b6

    .line 440
    :cond_a5
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getWidth()I

    move-result v3

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getHeight()I

    move-result v11

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getFormat()I

    move-result v12

    invoke-virtual {v1, v5, v3, v11, v12}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updateYuvImageSurface(Lcom/transsion/camera/adapter/IBGSurface;III)V

    .line 442
    :goto_b6
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 443
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v1

    iget-object v3, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getDataFlowType()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setDataFlowType(I)V

    .line 446
    :cond_cf
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/transsion/camera/adapter/CameraParameters;->setISPTuningEnable(I)V

    if-nez v4, :cond_e1

    .line 448
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v1, v8}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updatePostAlgoSurface([Landroid/view/Surface;)V

    goto/16 :goto_268

    .line 450
    :cond_e1
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    .line 451
    iget-object v3, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSupportedRawPictureSizes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 452
    invoke-static {v6, v9}, Ljava/util/Arrays;->fill([II)V

    .line 453
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_268

    .line 454
    iget-object v3, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentCameraId:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getPhysicalCameraIds(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    .line 455
    new-array v5, v10, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 456
    iget-object v9, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updatePictureSurface mCurrentCameraId, ids : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 457
    array-length v9, v5

    if-lez v9, :cond_174

    .line 458
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v9

    iget-boolean v9, v9, Lcom/transsion/camera/utils/CustomConfigUtil;->mPostAlgoStreamIdSupport:Z

    if-eqz v9, :cond_15c

    .line 459
    invoke-interface {v15}, Ljava/util/List;->clear()V

    move v9, v10

    .line 460
    :goto_13e
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v11

    if-ge v9, v11, :cond_15c

    .line 461
    aget-object v11, v5, v9

    invoke-interface {v1, v11}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSupportedRawPictureSizes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 462
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_159

    .line 463
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Size;

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_159
    add-int/lit8 v9, v9, 0x1

    goto :goto_13e

    :cond_15c
    move v9, v10

    .line 467
    :goto_15d
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v11

    if-ge v9, v11, :cond_182

    .line 468
    aget-object v11, v5, v9

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aget-object v12, v5, v9

    invoke-interface {v1, v12}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSensorColorFilterArrange(Ljava/lang/String;)I

    move-result v12

    aput v12, v6, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_15d

    .line 471
    :cond_174
    iget-object v3, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v5, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentCameraId:Ljava/lang/String;

    invoke-interface {v1, v5}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSensorColorFilterArrange(Ljava/lang/String;)I

    move-result v1

    aput v1, v6, v3

    .line 473
    :cond_182
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedISPRawSizes()Ljava/util/List;

    move-result-object v1

    .line 474
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_198

    .line 475
    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[ISPHIDL] ispSupportRawSizes = 0"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 478
    :cond_198
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .line 479
    iget-object v3, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getPostAlgoFormat()I

    move-result v3

    const/16 v5, 0x23

    if-ne v3, v5, :cond_1c7

    .line 480
    new-instance v1, Landroid/util/Size;

    const/16 v3, 0x5a0

    const/16 v5, 0x438

    invoke-direct {v1, v3, v5}, Landroid/util/Size;-><init>(II)V

    .line 481
    iget-object v3, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ispRawSize]  = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1c7
    move-object/from16 v16, v1

    .line 483
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    move-result-object v11

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getSurface()Landroid/view/Surface;

    move-result-object v12

    iget-object v13, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mPreviewSize:Landroid/util/Size;

    new-instance v14, Landroid/util/Size;

    .line 484
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getWidth()I

    move-result v1

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getHeight()I

    move-result v3

    invoke-direct {v14, v1, v3}, Landroid/util/Size;-><init>(II)V

    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 485
    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getPostAlgoFormat()I

    move-result v17

    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    .line 486
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getAppModeId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/utils/CameraUtil;->getModeId(Ljava/lang/String;)I

    move-result v19

    .line 483
    invoke-virtual/range {v11 .. v19}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->startPostAlgo(Landroid/view/Surface;Landroid/util/Size;Landroid/util/Size;Ljava/util/List;Landroid/util/Size;III)[Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    move-result-object v1

    move-object/from16 v3, v16

    if-eqz v1, :cond_237

    .line 487
    array-length v4, v1

    if-lez v4, :cond_237

    .line 488
    array-length v4, v1

    new-array v4, v4, [Landroid/view/Surface;

    .line 489
    array-length v5, v1

    new-array v5, v5, [I

    move v6, v10

    .line 490
    :goto_20c
    array-length v9, v1

    if-ge v6, v9, :cond_222

    .line 491
    aget-object v9, v1, v6

    invoke-virtual {v9}, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->getSurface()Landroid/view/Surface;

    move-result-object v9

    aput-object v9, v4, v6

    .line 492
    aget-object v9, v1, v6

    invoke-virtual {v9}, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->getSensorId()I

    move-result v9

    aput v9, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_20c

    .line 494
    :cond_222
    iget-object v6, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v6, v4}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updatePostAlgoSurface([Landroid/view/Surface;)V

    .line 495
    iget-object v4, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v4, v5}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updatePostAlgoSurfaceSensorId([I)Z

    .line 496
    iget-object v4, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    invoke-virtual {v4}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/transsion/camera/adapter/CameraParameters;->setISPTuningEnable(I)V

    goto :goto_23c

    .line 498
    :cond_237
    iget-object v4, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v4, v8}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updatePostAlgoSurface([Landroid/view/Surface;)V

    .line 500
    :goto_23c
    iget-object v4, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ISPHIDL] updatePictureSurface: postAlgoSurfaces = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ispRawSize = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mPreviewSize = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_268
    :goto_268
    if-nez v2, :cond_270

    .line 506
    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v0, v8}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updateRawImageSurface([Landroid/view/Surface;)V

    return-void

    :cond_270
    if-eqz v7, :cond_274

    .line 508
    array-length v1, v7

    goto :goto_275

    :cond_274
    move v1, v10

    .line 509
    :goto_275
    new-array v3, v1, [Landroid/view/Surface;

    if-eqz v7, :cond_28f

    .line 510
    array-length v4, v7

    if-lez v4, :cond_28f

    .line 511
    :goto_27c
    array-length v4, v7

    if-ge v10, v4, :cond_28f

    .line 512
    aget-object v4, v7, v10

    .line 513
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getSurface()Landroid/view/Surface;

    move-result-object v5

    aput-object v5, v3, v10

    .line 514
    iget-object v5, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    invoke-virtual {v4, v5}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->setCameraProxy(Lcom/transsion/camera/adapter/CameraProxy;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_27c

    .line 517
    :cond_28f
    iget-object v4, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    invoke-virtual {v2, v4}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->setCameraProxy(Lcom/transsion/camera/adapter/CameraProxy;)V

    .line 518
    iget-object v4, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    invoke-virtual {v4, v2}, Lcom/transsion/camera/adapter/CameraProxy;->updateQcomPicSurface(Lcom/transsion/camera/adapter/IBGSurface;)V

    if-lez v1, :cond_2a1

    .line 520
    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updateRawImageSurface([Landroid/view/Surface;)V

    return-void

    .line 522
    :cond_2a1
    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v0, v8}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updateRawImageSurface([Landroid/view/Surface;)V

    return-void
.end method

.method public updatePostViewSurface()V
    .registers 10

    .line 528
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-nez v0, :cond_d

    .line 529
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v0, "updatePostViewSurface mCamera == null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 533
    :cond_d
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedPostViewSizes()Ljava/util/List;

    move-result-object v0

    .line 534
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getPostViewSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object v0

    .line 536
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isThumbnailPostViewSupport()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    .line 537
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updateThumbnailSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object v1

    goto :goto_2e

    :cond_2d
    move-object v1, v2

    :goto_2e
    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v1, :cond_38

    .line 540
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updateThumbnailSurface(Landroid/view/Surface;III)V

    goto :goto_4d

    .line 542
    :cond_38
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getWidth()I

    move-result v7

    .line 543
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getHeight()I

    move-result v8

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getFormat()I

    move-result v1

    .line 542
    invoke-virtual {v5, v6, v7, v8, v1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updateThumbnailSurface(Landroid/view/Surface;III)V

    .line 547
    :goto_4d
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isFastThumbSupport()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 548
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updateFastThumbSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object v0

    goto :goto_5f

    :cond_5e
    move-object v0, v2

    :goto_5f
    if-nez v0, :cond_67

    .line 551
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {p0, v2, v4, v4, v3}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updateFastThumbSurface(Landroid/view/Surface;III)V

    return-void

    .line 553
    :cond_67
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getWidth()I

    move-result v2

    .line 554
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getFormat()I

    move-result v0

    .line 553
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updateFastThumbSurface(Landroid/view/Surface;III)V

    return-void
.end method

.method public updatePreviewSize(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;)V
    .registers 4

    .line 401
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mPreviewSize:Landroid/util/Size;

    .line 402
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mAuxPreviewSize:Landroid/util/Size;

    .line 403
    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mBackgroundPreviewSize:Landroid/util/Size;

    .line 404
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->resetRequestedDataChannelMember()V

    return-void
.end method

.method public updatePreviewSurface(Ljava/lang/Object;II)Z
    .registers 8

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updatePreviewSurface(Ljava/lang/Object;II)Z

    move-result v0

    .line 238
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePreviewSurface needUpdate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", surface = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", height = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", cur id:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " , mCurrentState:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->-$$Nest$fgetmName(Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 240
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p2, :cond_6f

    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isBgCapturing()Z

    move-result p2

    if-eqz p2, :cond_6f

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->-$$Nest$fgetmName(Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "previewed"

    .line 241
    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6f

    .line 242
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "updatePreviewSurface in bg capturing, no need updateOutputChannel"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_6f
    if-eqz v0, :cond_78

    if-eqz p1, :cond_78

    .line 246
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->updateOutputChannel()V

    :cond_78
    return v0
.end method

.method public updateRecordingHint(Z)V
    .registers 2

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-eqz p0, :cond_7

    .line 157
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->updateRecordingHint(Z)V

    :cond_7
    return-void
.end method

.method public updateSlavePreviewSurface(Ljava/lang/Object;II)V
    .registers 4

    .line 280
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updateSlavePreviewSurface(Ljava/lang/Object;II)V

    return-void
.end method

.method public updateSlaveSurfaceModeSupported(Z)V
    .registers 2

    .line 665
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->updateSlaveSurfaceModeSupported(Z)V

    return-void
.end method

.method public updateVideoSurface(Landroid/view/Surface;IIIZ)V
    .registers 12

    .line 266
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updateVideoSurface(Landroid/view/Surface;IIIZ)Z

    move-result p1

    .line 268
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "updateVideoSurface needUpdate:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, ", surface = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", width = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", height = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", videoFrameRate:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_4b

    if-eqz v1, :cond_4b

    .line 271
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->updateOutputChannel()V

    :cond_4b
    return-void
.end method

.method public videoSnapShot(Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V
    .registers 2

    .line 607
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->snapShot(Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V

    return-void
.end method
