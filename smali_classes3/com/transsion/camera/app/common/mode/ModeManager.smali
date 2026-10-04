.class public Lcom/transsion/camera/app/common/mode/ModeManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;
.implements Lcom/transsion/camera/app/common/battery/IBatteryListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$ISwitchPeriscopeCameraListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IModeDataInfoListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$ICameraReConnectListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IRestartPreviewListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IBGOfflineSwitchCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;,
        Lcom/transsion/camera/app/common/mode/ModeManager$DispatchListener;,
        Lcom/transsion/camera/app/common/mode/ModeManager$GotoActivityListenerImpl;,
        Lcom/transsion/camera/app/common/mode/ModeManager$CameraFirstFrameCallback;,
        Lcom/transsion/camera/app/common/mode/ModeManager$MainHandler;,
        Lcom/transsion/camera/app/common/mode/ModeManager$MyQCResultListener;,
        Lcom/transsion/camera/app/common/mode/ModeManager$ModeChangeHandler;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static mIsNotAfterStop:Z

.field private static mWideRangeConverterProgressList:Ljava/util/List;

.field private static mWideRangeConverterValueList:Ljava/util/List;


# instance fields
.field private final CAMERA_SWITCH_THRESHOLD:I

.field private final SAT_CAMERA_CHANGED_SETTINGS:[Ljava/lang/String;

.field private final mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mAuxSurfaceReady:Z

.field private mBackgroundSurfaceReady:Z

.field private mBatteryStatus:I

.field private mCameraFaceBack:Z

.field private final mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

.field private mContext:Landroid/content/Context;

.field private mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

.field private mCurrentOpenedCamera:Ljava/lang/String;

.field private mCurrentRestoreState:Ljava/lang/String;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDefaultCameraInCurrentFace:Ljava/lang/String;

.field private mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

.field private mDispatchListener:Lcom/transsion/camera/app/common/setting/ISettingManager$DispatchListener;

.field private mGoingToGallery:Z

.field private mGoogleLenClick:Z

.field private mGotoActivityListener:Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;

.field private mGotoActivityListenerImpl:Lcom/transsion/camera/app/common/mode/ModeManager$GotoActivityListenerImpl;

.field private mInCameraSwitch:Z

.field private mInModeSwitch:Z

.field private mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

.field private mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

.field private mIsDeviceControlAvailable:Z

.field private volatile mIsPreviewSizeChanged:Z

.field private mIsResetCurrentMode:Z

.field private mIsSupportFoldUI:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLaunchFromAod:Z

.field private mMainHandler:Landroid/os/Handler;

.field private mModeChangeHandler:Landroid/os/Handler;

.field private final mModeChangeLock:Ljava/lang/Object;

.field private mModeChangeThread:Landroid/os/HandlerThread;

.field private mModeFeatureProvider:Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;

.field private final mModeFeatureSupport:Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;

.field private mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

.field private mModeSupportAuxPreview:Z

.field private mModeSupportBackgroundPreview:Z

.field private mModeSupportSlavePreview:Z

.field private mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

.field private mNeedCheckAIGroup:Z

.field private mNeedCheckOrientation:Z

.field private mNeedSaveCameraId:Z

.field private mNeedSwitchCameraID:Z

.field private mNextCameraId:Ljava/lang/String;

.field private mOfflineSwitchCallback:Lcom/transsion/camera/app/common/IAppUIListener$IBGOfflineSwitchCallback;

.field private mOldPreviewViewType:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

.field private mOrientation:I

.field private mPendingChangeModeName:Ljava/lang/String;

.field private mPreviewFirstFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

.field private mPreviewSize:Landroid/util/Size;

.field private mPreviewSurfaceHeight:I

.field private mPreviewSurfaceObject:Ljava/lang/Object;

.field private mPreviewSurfaceReady:Z

.field private mPreviewSurfaceWidth:I

.field private mPreviewViewType:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

.field private mQuickCaptureManager:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

.field private mReopenCameraBySwitchOffline:Z

.field private mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

.field private mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

.field private mSlaveSurfaceReady:Z

.field private mSpecialModeNameForReset:Ljava/lang/String;

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

.field private final mSurfaceStateListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

.field private mTemperatureStatus:I

.field private mThumbnailTransition:Lcom/transsion/camera/app/common/thumbnailtransition/IThumbnailTransition;

.field private mVIPPreCameraFace:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$2YSCiy86bb7lCj-VMqmLrIZRyNY(Lcom/transsion/camera/app/common/mode/ModeManager;Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->lambda$updatePreviewViewType$5(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KqzKxNeC-_vAQBIyuCrqKUCW5ro(Lcom/transsion/camera/app/common/mode/ModeManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->lambda$addResourcesToContext$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$M6ZJESEV2hjVzOfMelID0xU02xw(Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .registers 2

    .line 329
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updatePreviewViewType(Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YXShWNEEvBc9gGoiwjdegyIoJMs(Lcom/transsion/camera/app/common/mode/ModeManager;Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->lambda$updatePreviewViewType$4(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hBytOWqyh_XIAoejB5zsXol5yPI(Lcom/transsion/camera/app/common/mode/ModeManager;Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->lambda$updatePreviewViewType$3(Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oc-oZ29xRdQVnwDdzsjEvdqo03g(Lcom/transsion/camera/app/common/mode/ModeManager;Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->lambda$updatePreviewViewType$6(Lcom/transsion/camera/app/common/IAppUI;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qWovVWLqoYRxomR6-GVpCpT7WE0(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    const/16 v0, 0x19c

    .line 333
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$s3LE5AEPTV4vEYwoclaIMyV5WMI(Lcom/transsion/camera/app/common/mode/ModeManager;Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->lambda$handlerPreviewViewChanged$7(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x-YjM6L9ODuri2U_gzvjt47juwA(Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 336
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUI;->updatePreviewViewType(Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAppUI(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAuxSurfaceReady(Lcom/transsion/camera/app/common/mode/ModeManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAuxSurfaceReady:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBackgroundSurfaceReady(Lcom/transsion/camera/app/common/mode/ModeManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mBackgroundSurfaceReady:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraFaceBack(Lcom/transsion/camera/app/common/mode/ModeManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/transsion/camera/app/common/mode/ModeManager;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/ICameraMode;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentRestoreState(Lcom/transsion/camera/app/common/mode/ModeManager;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentRestoreState:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceControl(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGotoActivityListener(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mGotoActivityListener:Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainHandler(Lcom/transsion/camera/app/common/mode/ModeManager;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModeChangeHandler(Lcom/transsion/camera/app/common/mode/ModeManager;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModeChangeLock(Lcom/transsion/camera/app/common/mode/ModeManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModeSupportAuxPreview(Lcom/transsion/camera/app/common/mode/ModeManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSupportAuxPreview:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmModeSupportBackgroundPreview(Lcom/transsion/camera/app/common/mode/ModeManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSupportBackgroundPreview:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmModeSupportSlavePreview(Lcom/transsion/camera/app/common/mode/ModeManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSupportSlavePreview:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOfflineSwitchCallback(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/IAppUIListener$IBGOfflineSwitchCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mOfflineSwitchCallback:Lcom/transsion/camera/app/common/IAppUIListener$IBGOfflineSwitchCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewSurfaceHeight(Lcom/transsion/camera/app/common/mode/ModeManager;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewSurfaceHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewSurfaceObject(Lcom/transsion/camera/app/common/mode/ModeManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewSurfaceObject:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewSurfaceReady(Lcom/transsion/camera/app/common/mode/ModeManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewSurfaceReady:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewSurfaceWidth(Lcom/transsion/camera/app/common/mode/ModeManager;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewSurfaceWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingController(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingManager(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/setting/SettingManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSlaveSurfaceReady(Lcom/transsion/camera/app/common/mode/ModeManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSlaveSurfaceReady:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAuxSurfaceReady(Lcom/transsion/camera/app/common/mode/ModeManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAuxSurfaceReady:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBackgroundSurfaceReady(Lcom/transsion/camera/app/common/mode/ModeManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mBackgroundSurfaceReady:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentRestoreState(Lcom/transsion/camera/app/common/mode/ModeManager;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentRestoreState:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmGoogleLenClick(Lcom/transsion/camera/app/common/mode/ModeManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mGoogleLenClick:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInModeSwitch(Lcom/transsion/camera/app/common/mode/ModeManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInModeSwitch:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNeedCheckAIGroup(Lcom/transsion/camera/app/common/mode/ModeManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckAIGroup:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNeedCheckOrientation(Lcom/transsion/camera/app/common/mode/ModeManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckOrientation:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNeedSaveCameraId(Lcom/transsion/camera/app/common/mode/ModeManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedSaveCameraId:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPreviewSize(Lcom/transsion/camera/app/common/mode/ModeManager;Landroid/util/Size;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewSize:Landroid/util/Size;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPreviewSurfaceHeight(Lcom/transsion/camera/app/common/mode/ModeManager;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewSurfaceHeight:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPreviewSurfaceObject(Lcom/transsion/camera/app/common/mode/ModeManager;Ljava/lang/Object;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewSurfaceObject:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPreviewSurfaceReady(Lcom/transsion/camera/app/common/mode/ModeManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewSurfaceReady:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPreviewSurfaceWidth(Lcom/transsion/camera/app/common/mode/ModeManager;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewSurfaceWidth:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSlaveSurfaceReady(Lcom/transsion/camera/app/common/mode/ModeManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSlaveSurfaceReady:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$maddResourcesToContext(Lcom/transsion/camera/app/common/mode/ModeManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->addResourcesToContext()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleModeChanged(Lcom/transsion/camera/app/common/mode/ModeManager;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->handleModeChanged(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleRestoreSettings(Lcom/transsion/camera/app/common/mode/ModeManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->handleRestoreSettings()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSurfaceChanged(Lcom/transsion/camera/app/common/mode/ModeManager;Ljava/lang/Object;II)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/ModeManager;->handleSurfaceChanged(Ljava/lang/Object;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandlerPreviewViewChanged(Lcom/transsion/camera/app/common/mode/ModeManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->handlerPreviewViewChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetSurfaceStatus(Lcom/transsion/camera/app/common/mode/ModeManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->resetSurfaceStatus()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mswitchVideoCamera(Lcom/transsion/camera/app/common/mode/ModeManager;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchVideoCamera(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePreviewViewType(Lcom/transsion/camera/app/common/mode/ModeManager;Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->updatePreviewViewType(Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 125
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ModeManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 198
    sput-boolean v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsNotAfterStop:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;)V
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    .line 598
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    .line 140
    iput-boolean v3, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsDeviceControlAvailable:Z

    .line 141
    new-instance v4, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;Lcom/transsion/camera/app/common/mode/ModeManager-IA;)V

    iput-object v4, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSurfaceStateListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    .line 142
    iput-object v5, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewFirstFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    const/4 v4, 0x2

    .line 145
    iput v4, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->CAMERA_SWITCH_THRESHOLD:I

    const/4 v4, 0x1

    .line 146
    iput-boolean v4, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    .line 147
    const-string v4, "0"

    iput-object v4, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    const/4 v6, -0x1

    .line 152
    iput v6, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mOrientation:I

    .line 154
    iput-boolean v3, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 155
    iput-boolean v3, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsResetCurrentMode:Z

    .line 156
    iput-object v5, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSpecialModeNameForReset:Ljava/lang/String;

    .line 157
    iput-boolean v3, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedSwitchCameraID:Z

    .line 158
    iput-boolean v3, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckOrientation:Z

    .line 159
    iput-boolean v3, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckAIGroup:Z

    .line 160
    iput-object v4, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNextCameraId:Ljava/lang/String;

    .line 176
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeLock:Ljava/lang/Object;

    .line 177
    new-instance v4, Lcom/transsion/camera/app/common/mode/ModeManager$DispatchListener;

    invoke-direct {v4, v0, v5}, Lcom/transsion/camera/app/common/mode/ModeManager$DispatchListener;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;Lcom/transsion/camera/app/common/mode/ModeManager-IA;)V

    iput-object v4, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDispatchListener:Lcom/transsion/camera/app/common/setting/ISettingManager$DispatchListener;

    .line 179
    iput v3, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mBatteryStatus:I

    .line 180
    iput v3, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mTemperatureStatus:I

    .line 183
    iput-object v5, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 184
    iput-boolean v3, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mReopenCameraBySwitchOffline:Z

    .line 188
    iput-boolean v3, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSupportAuxPreview:Z

    .line 190
    const-string v4, "end"

    iput-object v4, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentRestoreState:Ljava/lang/String;

    .line 191
    iput-boolean v3, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInModeSwitch:Z

    .line 192
    iput-boolean v3, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mGoingToGallery:Z

    .line 195
    iput-object v5, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    .line 196
    iput-boolean v3, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mGoogleLenClick:Z

    .line 197
    iput-object v5, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 203
    const-string v20, "key_video_hdr_10_plus"

    const-string v21, "key_auto_focus_switch"

    const-string v6, "key_video_facebeauty"

    const-string v7, "key_video_makeup"

    const-string v8, "key_video_face_beauty_makeup_option"

    const-string v9, "key_video_portrait"

    const-string v10, "key_video_portrait_spot"

    const-string v11, "key_video_enhance"

    const-string v12, "key_video_enhance_yuv"

    const-string v13, "key_video_asd"

    const-string v14, "key_video_preisp"

    const-string v15, "key_com_video_hdr"

    const-string v16, "key_360_video_hdr"

    const-string v17, "key_dol_video_hdr"

    const-string v18, "key_focus"

    const-string v19, "key_single_blur"

    filled-new-array/range {v6 .. v21}, [Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->SAT_CAMERA_CHANGED_SETTINGS:[Ljava/lang/String;

    .line 252
    new-instance v4, Lcom/transsion/camera/app/common/mode/ModeManager$1;

    invoke-direct {v4, v0}, Lcom/transsion/camera/app/common/mode/ModeManager$1;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V

    iput-object v4, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 710
    new-instance v4, Lcom/transsion/camera/app/common/mode/ModeManager$2;

    invoke-direct {v4, v0}, Lcom/transsion/camera/app/common/mode/ModeManager$2;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V

    iput-object v4, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeFeatureSupport:Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;

    .line 723
    new-instance v4, Lcom/transsion/camera/app/common/mode/ModeManager$3;

    invoke-direct {v4, v0}, Lcom/transsion/camera/app/common/mode/ModeManager$3;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V

    iput-object v4, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    .line 1389
    new-instance v4, Lcom/transsion/camera/app/common/mode/ModeManager$GotoActivityListenerImpl;

    invoke-direct {v4, v0}, Lcom/transsion/camera/app/common/mode/ModeManager$GotoActivityListenerImpl;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V

    iput-object v4, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mGotoActivityListenerImpl:Lcom/transsion/camera/app/common/mode/ModeManager$GotoActivityListenerImpl;

    .line 2735
    iput-boolean v3, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAuxSurfaceReady:Z

    .line 2736
    iput-boolean v3, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewSurfaceReady:Z

    .line 599
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v3

    iput-object v3, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    move-object/from16 v3, p1

    .line 600
    iput-object v3, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    .line 601
    iput-object v1, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    move-object/from16 v4, p4

    .line 602
    iput-object v4, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeFeatureProvider:Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;

    move-object/from16 v4, p5

    .line 603
    iput-object v4, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 604
    iput-object v2, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    move-object/from16 v4, p3

    .line 605
    iput-object v4, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 607
    invoke-interface {v2, v1}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getDefaultMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 608
    invoke-static {v3}, Lcom/transsion/camera/utils/DVUtils;->isRequestEnterDV(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 609
    const-string v1, "com.transsion.camera.feature.mode.video.DVVideoModeEntry"

    .line 611
    :cond_c3
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setModeName(Ljava/lang/String;)V

    .line 613
    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    return-void
.end method

.method private addResourcesToContext()V
    .registers 2

    .line 2891
    new-instance v0, Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V

    invoke-static {v0}, Lcom/transsion/camera/app/common/algorithm/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private canSwitch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 2423
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getCameraCount()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_12

    .line 2424
    sget-object p0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "The number of camera is below the threshold."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    .line 2428
    :cond_12
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->sameFacing(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_19

    return v2

    :cond_19
    const/4 p0, 0x1

    return p0
.end method

.method private canTargetModeSupportSAT(Z)Z
    .registers 4

    .line 2419
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0, v1, p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportSAT(Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private checkSupportQuickCapture(Ljava/lang/String;)Z
    .registers 4

    .line 2932
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isQuickCaptureSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    .line 2933
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportQuickCapture:Z

    if-nez v0, :cond_10

    goto :goto_31

    .line 2936
    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->screenFlip()Z

    move-result v0

    if-eqz v0, :cond_1b

    return v1

    .line 2939
    :cond_1b
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    const-string v0, "quick_capture_mode"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2940
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_31

    .line 2941
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_31

    const/4 p0, 0x1

    return p0

    :cond_31
    :goto_31
    return v1
.end method

.method private converWideToSat(I)I
    .registers 5

    .line 2228
    sget-object p0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_SAT_INIT_VALUE:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 2229
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mWideRangeConverterValueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le p1, v0, :cond_1b

    return p1

    .line 2233
    :cond_1b
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mWideRangeConverterValueList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_53

    .line 2234
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mWideRangeConverterValueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v2, p1, :cond_2e

    .line 2236
    sget-object p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mWideRangeConverterProgressList:Ljava/util/List;

    sget-object p1, Lcom/transsion/camera/app/common/mode/ModeManager;->mWideRangeConverterValueList:Ljava/util/List;

    .line 2237
    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :cond_52
    return p0

    .line 2242
    :cond_53
    sget-object p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mWideRangeConverterProgressList:Ljava/util/List;

    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mWideRangeConverterValueList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private convertSatToWide(I)I
    .registers 5

    .line 2248
    sget-object p0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_SAT_INIT_VALUE:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 2249
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mWideRangeConverterProgressList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le p1, v0, :cond_1b

    return p1

    .line 2253
    :cond_1b
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mWideRangeConverterProgressList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_53

    .line 2254
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mWideRangeConverterProgressList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v2, p1, :cond_2e

    .line 2256
    sget-object p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mWideRangeConverterValueList:Ljava/util/List;

    sget-object p1, Lcom/transsion/camera/app/common/mode/ModeManager;->mWideRangeConverterProgressList:Ljava/util/List;

    .line 2257
    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :cond_52
    return p0

    .line 2262
    :cond_53
    sget-object p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mWideRangeConverterValueList:Ljava/util/List;

    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mWideRangeConverterProgressList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static convertZoom(Ljava/lang/String;)I
    .registers 1

    .line 2292
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    const/4 p0, 0x0

    return p0
.end method

.method private createMode(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/ICameraMode;
    .registers 8

    .line 2352
    new-instance v0, Lcom/transsion/camera/app/common/provider/FeatureParameters;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/provider/FeatureParameters;-><init>()V

    .line 2353
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->screenPocket()Z

    move-result v1

    const-string v2, "f0.0"

    if-eqz v1, :cond_1a

    .line 2354
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v3, "key_mu_monomer"

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3b

    .line 2356
    :cond_1a
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result v1

    .line 2357
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    if-eqz v1, :cond_27

    const-string v4, "key_vip_stereo"

    goto :goto_29

    :cond_27
    const-string v4, "key_mu_stereo"

    :goto_29
    if-eqz v1, :cond_2d

    move-object v1, v2

    goto :goto_31

    .line 2358
    :cond_2d
    invoke-static {}, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->getStereoDefaultValue()Ljava/lang/String;

    move-result-object v1

    :goto_31
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    .line 2357
    invoke-virtual {v3, v4, v1, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2360
    :goto_3b
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/provider/FeatureParameters;->setStereoOpen(Z)V

    .line 2361
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/provider/FeatureParameters;->screenFormType(I)V

    .line 2362
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->resetSurfaceStatus()V

    .line 2363
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;Lcom/transsion/camera/app/common/provider/FeatureParameters;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p0

    return-object p0
.end method

.method private createMode(Ljava/lang/String;Lcom/transsion/camera/app/common/provider/FeatureParameters;)Lcom/transsion/camera/app/common/mode/ICameraMode;
    .registers 6

    .line 2371
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[createMode] featureName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",modeParameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2372
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isBgServiceCheckEnable()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2373
    invoke-static {}, Lcom/transsion/camera/utils/debug/CaptureCheckManager;->getInstance()Lcom/transsion/camera/utils/debug/CaptureCheckManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/utils/debug/CaptureCheckManager;->setCurrentMode(Ljava/lang/String;)V

    .line 2375
    :cond_2b
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateCurrentMode(Ljava/lang/String;)V

    .line 2376
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeFeatureProvider:Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-virtual {v0, p1, p0, p2}, Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;->createModeFeatureSync(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/camera/app/common/provider/FeatureParameters;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/mode/ICameraMode;

    return-object p0
.end method

.method private getCameraId(Lcom/transsion/camera/app/common/mode/ICameraMode;)Ljava/lang/String;
    .registers 15

    if-nez p1, :cond_5

    .line 1923
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    return-object p0

    .line 1925
    :cond_5
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCameraId] newMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1927
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedSaveCameraId:Z

    if-eqz v1, :cond_4e

    const/4 p1, 0x0

    .line 1928
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedSaveCameraId:Z

    .line 1929
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCameraId: use saved camera id: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDefaultCameraInCurrentFace: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1931
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    if-eqz p1, :cond_4b

    return-object p1

    :cond_4b
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    return-object p0

    .line 1933
    :cond_4e
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsSupportFoldUI:Z

    if-eqz v1, :cond_7a

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    if-nez v1, :cond_7a

    .line 1934
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result v1

    const-string v2, "1"

    if-nez v1, :cond_78

    .line 1935
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFoldedFrontCameraId()Ljava/lang/String;

    move-result-object v1

    .line 1936
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_75

    .line 1937
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    goto :goto_7a

    .line 1939
    :cond_75
    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    goto :goto_7a

    .line 1942
    :cond_78
    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    .line 1945
    :cond_7a
    :goto_7a
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    .line 1946
    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_94

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 1947
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_94

    move-object v9, v2

    goto :goto_95

    :cond_94
    move-object v9, v1

    .line 1950
    :goto_95
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    iget-boolean v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    iget-object v8, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    iget-boolean v10, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInModeSwitch:Z

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    .line 1951
    invoke-interface {v1}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result v11

    const/4 v12, 0x0

    move-object v4, p1

    .line 1950
    invoke-interface/range {v4 .. v12}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getCameraIdForOpen(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;ZIZ)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_ae

    move-object v9, p1

    .line 1955
    :cond_ae
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getCameraId] default: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", cameraId: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v9
.end method

.method private getCameraIdByReConfig(Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    .line 1860
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCameraIdByReConfig] newMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mVIPPreCameraFace:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentOpenedCamera:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", nextCameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1867
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 1868
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_43

    :goto_41
    move v9, v3

    goto :goto_4e

    .line 1872
    :cond_43
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    if-eqz p2, :cond_4b

    const/4 v1, 0x0

    .line 1875
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    goto :goto_41

    :cond_4b
    const/4 v3, 0x0

    move-object p2, v1

    goto :goto_41

    .line 1878
    :goto_4e
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsSupportFoldUI:Z

    if-eqz v1, :cond_6e

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 1880
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result p2

    if-nez p2, :cond_70

    .line 1881
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p2

    invoke-interface {p2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFoldedFrontCameraId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_70

    :cond_6e
    :goto_6e
    move-object v6, p2

    goto :goto_73

    .line 1888
    :cond_70
    const-string p2, "1"

    goto :goto_6e

    :goto_73
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    iget-boolean v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInModeSwitch:Z

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    .line 1889
    invoke-interface {p2}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result v8

    move-object v1, p1

    .line 1888
    invoke-interface/range {v1 .. v9}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getCameraIdForOpen(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;ZIZ)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8b

    move-object v6, p1

    .line 1893
    :cond_8b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[getCameraIdByReConfig] default: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", cameraId: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v6
.end method

.method private getCameraScope(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 3031
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_32

    .line 3035
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->isVideoMode(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_24

    const-string p0, "VIDEO"

    goto :goto_26

    :cond_24
    const-string p0, "PHOTO"

    :goto_26
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3032
    :cond_32
    :goto_32
    sget-object p0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "cameraId or mode key is null."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3033
    const-string p0, ""

    return-object p0
.end method

.method private getModePreviewType()Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;
    .registers 5

    .line 363
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 365
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    .line 364
    const-string v2, "key_video_hdr_10_plus"

    const-string v3, "off"

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 368
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    .line 367
    const-string v2, "key_hdr_format"

    invoke-virtual {v1, v2, v3, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 370
    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string/jumbo v0, "value_hdr_hlg"

    .line 371
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_40

    goto :goto_43

    .line 374
    :cond_40
    sget-object p0, Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;->GL_SURFACE_VIEW:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    return-object p0

    .line 372
    :cond_43
    :goto_43
    sget-object p0, Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;->SURFACE_VIEW:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    return-object p0
.end method

.method private getOtherFaceCamera(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 2394
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getCameraCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_a

    return-object p1

    .line 2397
    :cond_a
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    if-eqz p1, :cond_42

    .line 2398
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsSupportFoldUI:Z

    if-eqz p1, :cond_3f

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result p0

    if-nez p0, :cond_3f

    .line 2399
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFoldedFrontCameraId()Ljava/lang/String;

    move-result-object p0

    .line 2400
    sget-object p1, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOtherFaceCamera,folderFrontCameraId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p0, :cond_3f

    return-object p0

    .line 2405
    :cond_3f
    const-string p0, "1"

    return-object p0

    .line 2408
    :cond_42
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_52

    const/4 v0, 0x1

    .line 2409
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->canTargetModeSupportSAT(Z)Z

    move-result p0

    if-eqz p0, :cond_52

    return-object p1

    .line 2412
    :cond_52
    const-string p0, "0"

    return-object p0
.end method

.method private getTargetCameraZoom(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 2268
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 2269
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_camera_zoom"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2270
    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->convertZoom(Ljava/lang/String;)I

    move-result v1

    .line 2271
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v2, v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->getEquivalentZoom(Ljava/lang/String;I)I

    move-result v0

    .line 2273
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 2274
    const-string p0, "60"

    goto :goto_4b

    .line 2275
    :cond_23
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 2276
    sget-object p0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    goto :goto_4b

    .line 2278
    :cond_2e
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 2279
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result p0

    .line 2280
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_4b

    .line 2282
    :cond_41
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/CameraRepository;->getDeviceZoom(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 2285
    :goto_4b
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTargetCameraZoom: targetCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " targetDeviceZoom: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0
.end method

.method private handleModeChanged(Ljava/lang/String;)V
    .registers 8

    .line 1220
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    .line 1221
    :goto_f
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeHandler:Landroid/os/Handler;

    if-eqz v3, :cond_1c

    const/16 v4, 0x32

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    move v1, v2

    .line 1222
    :cond_1c
    sget-object v3, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[handleModeChanged] hasMainHandler:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",hasModeHandler:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",mAppUI.isModeTabScrolling():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/IAppUI;->isModeTabScrolling()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v0, :cond_4c

    if-eqz v1, :cond_69

    .line 1223
    :cond_4c
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->isModeTabScrolling()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1224
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1225
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x32

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 1227
    :cond_69
    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->onModeChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method private handleRestoreSettings()V
    .registers 7

    .line 541
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRestoreSettings thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mModeSwitchPolicy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mDeviceControl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    if-eqz v0, :cond_10b

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-nez v0, :cond_3c

    goto/16 :goto_10b

    .line 549
    :cond_3c
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz v0, :cond_43

    .line 550
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resetBgEnable()V

    .line 553
    :cond_43
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 554
    const-string v1, "backmodesstring"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 555
    const-string v1, "backmainmodescount"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 556
    const-string v1, "frontmodesstring"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 557
    const-string v1, "frontmainmodescount"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 559
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result v0

    .line 560
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/IAppUI;->restoreCurrentModeByFacing(I)V

    const/4 v1, 0x1

    .line 561
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->initAppUI(Z)V

    .line 563
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    invoke-interface {v2, v0}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getRestoreModeByFacing(I)Ljava/lang/String;

    move-result-object v0

    .line 564
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setModeName(Ljava/lang/String;)V

    .line 565
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->notModeSwitchCondition(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 566
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->getCameraId(Lcom/transsion/camera/app/common/mode/ICameraMode;)Ljava/lang/String;

    move-result-object v0

    .line 567
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 568
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 569
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 570
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateZoomInfoList(Ljava/lang/String;)V

    return-void

    .line 573
    :cond_a8
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/setting/SettingManager;->getCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/CameraRepository;->nonDefaultCameraInASDMode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_ed

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 574
    invoke-interface {v2, v3, v5}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isInsensorZoomStatus(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result v2

    if-eqz v2, :cond_c3

    goto :goto_ed

    .line 585
    :cond_c3
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getPreviewSize()Landroid/util/Size;

    move-result-object v2

    if-eqz v2, :cond_d5

    .line 586
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2, v3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d5

    move v2, v1

    goto :goto_d6

    :cond_d5
    move v2, v4

    .line 587
    :goto_d6
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->notModeSwitchCondition(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e2

    .line 588
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->restoreParameters(Z)V

    return-void

    :cond_e2
    xor-int/2addr v1, v2

    .line 591
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsPreviewSizeChanged:Z

    .line 592
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsPreviewSizeChanged:Z

    if-nez v1, :cond_114

    .line 593
    invoke-direct {p0, v0, v4}, Lcom/transsion/camera/app/common/mode/ModeManager;->onModeChanged(Ljava/lang/String;Z)V

    return-void

    .line 575
    :cond_ed
    :goto_ed
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->notModeSwitchCondition(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_107

    .line 576
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 577
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 579
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateZoomInfoList(Ljava/lang/String;)V

    return-void

    .line 581
    :cond_107
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->restoreSettingsForWideCamera(Ljava/lang/String;)V

    return-void

    .line 544
    :cond_10b
    :goto_10b
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_114

    const/16 v0, 0x14

    .line 545
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_114
    return-void
.end method

.method private handleSurfaceChanged(Ljava/lang/Object;II)V
    .registers 7

    .line 2706
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->isSecureCamera()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2707
    :cond_12
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsPreviewSizeChanged:Z

    if-eqz v0, :cond_28

    const/4 v0, 0x0

    .line 2708
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsPreviewSizeChanged:Z

    .line 2709
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result v1

    .line 2710
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    invoke-interface {v2, v1}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getRestoreModeByFacing(I)Ljava/lang/String;

    move-result-object v1

    .line 2711
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->onModeChanged(Ljava/lang/String;Z)V

    .line 2714
    :cond_28
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsDeviceControlAvailable:Z

    if-eqz v0, :cond_31

    .line 2715
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setMainPreviewDisplay(Ljava/lang/Object;II)V

    :cond_31
    return-void
.end method

.method private handlerPreviewViewChanged()V
    .registers 4

    .line 2720
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " previewViewChanged current previewViewType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewViewType:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2721
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mOldPreviewViewType:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewViewType:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    if-eq v0, v1, :cond_2c

    .line 2722
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V

    .line 2723
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 2725
    :cond_2c
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewViewType:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mOldPreviewViewType:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    return-void
.end method

.method private initAppUI(Z)V
    .registers 5

    .line 750
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock;)V

    .line 751
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSurfaceStateListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setSurfaceStatusListener(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)V

    .line 752
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeFeatureSupport:Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setModeFeatureSupport(Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;)V

    .line 753
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V

    .line 754
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setCameraSwitchListener(Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;)V

    .line 755
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V

    .line 756
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchTeleCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;)V

    .line 757
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchPeriscopeCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchPeriscopeCameraListener;)V

    .line 758
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchBlurCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;)V

    .line 759
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchDualCamBWCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;)V

    .line 760
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchSatCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;)V

    .line 761
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setCameraReConnectListener(Lcom/transsion/camera/app/common/IAppUIListener$ICameraReConnectListener;)V

    .line 762
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchDualAndMainCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;)V

    .line 763
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setRestartPreviewListener(Lcom/transsion/camera/app/common/IAppUIListener$IRestartPreviewListener;)V

    .line 764
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setModeDataInfoListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeDataInfoListener;)V

    .line 766
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeFeatureProvider:Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;->createModeFeatureResources()Ljava/util/List;

    move-result-object v0

    .line 767
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    invoke-interface {v1, v0, v2}, Lcom/transsion/camera/app/common/IAppUI;->setModeList(Ljava/util/List;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;)V

    .line 768
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateCurrentCamera(Ljava/lang/String;Z)V

    .line 769
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->initCameraInfoTracker(Ljava/util/List;)V

    return-void
.end method

.method private initCameraInfoTracker(Ljava/util/List;)V
    .registers 6

    .line 773
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isLaunchWithDeveloperMode()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 776
    :cond_7
    invoke-static {}, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->getInstance()Lcom/transsion/camera/utils/tuning/TuningFeatureApi;

    move-result-object v0

    .line 777
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 778
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/FeatureResource;

    .line 779
    iget-object v3, v2, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    iget-object v2, v2, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 781
    :cond_28
    invoke-interface {v0, v1}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ICamInfoTracker;->initModeInfo(Ljava/util/Map;)V

    .line 782
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ICamInfoTracker;->setCurrentModeName(Ljava/lang/String;)V

    return-void
.end method

.method private initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V
    .registers 12

    .line 1438
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    if-nez v0, :cond_5

    return-void

    .line 1440
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getSettingGroup()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/SettingManager;->updateModeGroup(J)V

    .line 1442
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->stopPreview()V

    .line 1443
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->checkSupportQuickCapture(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setSupportQuickCapture(Z)V

    .line 1444
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

    iget v8, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mOrientation:I

    move-object v1, p1

    move-object v6, p2

    invoke-interface/range {v1 .. v8}, Lcom/transsion/camera/app/common/mode/ICameraMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 1446
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mThumbnailTransition:Lcom/transsion/camera/app/common/thumbnailtransition/IThumbnailTransition;

    if-eqz p1, :cond_36

    .line 1447
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setThumbnailTransitionManager(Lcom/transsion/camera/app/common/thumbnailtransition/IThumbnailTransition;)V

    .line 1449
    :cond_36
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mQuickCaptureManager:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setQuickCaptureManager(Lcom/transsion/camera/app/common/provider/QuickCaptureManager;)V

    .line 1450
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->modeSupportAuxPreview(Lcom/transsion/camera/app/common/mode/ICameraMode;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSupportAuxPreview:Z

    .line 1451
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setModeSupportAuxPreview(Z)V

    .line 1452
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-boolean p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSupportAuxPreview:Z

    invoke-interface {p1, p2, v6}, Lcom/transsion/camera/app/common/IAppUI;->setAuxPreviewModeSupport(ZLjava/lang/String;)V

    .line 1453
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->modeSupportBackgroundPreview(Lcom/transsion/camera/app/common/mode/ICameraMode;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSupportBackgroundPreview:Z

    .line 1454
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setModeSupportBackgroundPreview(Z)V

    .line 1455
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-boolean p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSupportBackgroundPreview:Z

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUI;->setBackgroundPreviewModeSupport(Z)V

    .line 1456
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->setModeFeatureConfigIfNeeded(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 1457
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->modeSupportSlavePreview(Lcom/transsion/camera/app/common/mode/ICameraMode;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSupportSlavePreview:Z

    .line 1458
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setModeSupportSlavePreview(Z)V

    .line 1459
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mGotoActivityListenerImpl:Lcom/transsion/camera/app/common/mode/ModeManager$GotoActivityListenerImpl;

    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setGotoActivityListener(Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;)V

    .line 1460
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->registerStateCallback(Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;)V

    .line 1461
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->switchMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 1462
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    const/4 p2, 0x0

    invoke-interface {v1, p1, p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    .line 1463
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setInternalStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V

    .line 1464
    iget p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mBatteryStatus:I

    iget v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mTemperatureStatus:I

    invoke-interface {v1, p2, p1, v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onBatteryStatusChanged(ZII)V

    .line 1465
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSurfaceStateListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    invoke-interface {v1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setSurfaceStatusListener(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)V

    return-void
.end method

.method private initModuleTransfer(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 3016
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result v0

    .line 3017
    sget-object v1, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initModuleTransfer cameraId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", RingScreenLight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v0, :cond_29

    goto :goto_45

    .line 3021
    :cond_29
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v1, ""

    .line 3023
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->getCameraScope(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "key_flash_facade"

    invoke-virtual {v0, p1, v1, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3022
    const-string p1, "ringscreenlight"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_46

    :goto_45
    return-void

    .line 3027
    :cond_46
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->onRingScreenLightChange(Z)V

    return-void
.end method

.method private initWideCameraConvertList()V
    .registers 6

    .line 688
    sget-object p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mWideRangeConverterValueList:Ljava/util/List;

    if-nez p0, :cond_b

    .line 689
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sput-object p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mWideRangeConverterValueList:Ljava/util/List;

    .line 691
    :cond_b
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mWideRangeConverterValueList:[I

    .line 692
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mWideRangeConverterValueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    if-eqz p0, :cond_2b

    .line 694
    array-length v1, p0

    move v2, v0

    :goto_1b
    if-ge v2, v1, :cond_2b

    aget v3, p0, v2

    .line 695
    sget-object v4, Lcom/transsion/camera/app/common/mode/ModeManager;->mWideRangeConverterValueList:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 698
    :cond_2b
    sget-object p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mWideRangeConverterProgressList:Ljava/util/List;

    if-nez p0, :cond_36

    .line 699
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sput-object p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mWideRangeConverterProgressList:Ljava/util/List;

    .line 701
    :cond_36
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mWideRangeConverterProgressList:[I

    .line 702
    sget-object v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mWideRangeConverterProgressList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz p0, :cond_54

    .line 704
    array-length v1, p0

    :goto_44
    if-ge v0, v1, :cond_54

    aget v2, p0, v0

    .line 705
    sget-object v3, Lcom/transsion/camera/app/common/mode/ModeManager;->mWideRangeConverterProgressList:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    :cond_54
    return-void
.end method

.method private isCameraFacingBack(Ljava/lang/String;)Z
    .registers 2

    .line 1144
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isKeyguardLocked()Z
    .registers 3

    .line 2996
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_10

    .line 2997
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 2999
    :cond_10
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method private isTeleCamera(Ljava/lang/String;)Z
    .registers 3

    .line 2224
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    .line 2225
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isPreIspFakeTeleCamera(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method private isVideoCameraSupportCurrentQuality()Z
    .registers 5

    .line 1123
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    const/4 v1, 0x6

    .line 1124
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingManager;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    .line 1123
    const-string v3, "key_video_quality"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1125
    const-string v1, "6_60"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    return v2

    .line 1128
    :cond_25
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    .line 1129
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackVideoCamera()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSupportedVideoSizes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 1130
    const-string v1, "_"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1132
    :try_start_3d
    const-string v1, "0"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 1133
    new-instance v1, Landroid/util/Size;

    iget v3, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v1, v3, v0}, Landroid/util/Size;-><init>(II)V

    .line 1134
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_54} :catch_58

    if-eqz p0, :cond_58

    const/4 p0, 0x1

    return p0

    :catch_58
    :cond_58
    return v2
.end method

.method private isVideoMode(Ljava/lang/String;)Z
    .registers 2

    .line 3039
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoModesCategory:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$addResourcesToContext$8()V
    .registers 2

    .line 2892
    invoke-static {}, Lcom/transsion/camera/utils/AssetLoaderUtil;->initResourcesLoader()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2893
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/AssetLoaderUtil;->addResourcesLoader(Landroid/content/Context;)V

    .line 2894
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/utils/AssetLoaderUtil;->addResourcesLoader(Landroid/content/Context;)V

    :cond_14
    const/4 p0, 0x1

    .line 2896
    invoke-static {p0}, Lcom/transsion/camera/utils/AssetLoaderUtil;->setIsLoaderResource(Z)V

    return-void
.end method

.method private synthetic lambda$handlerPreviewViewChanged$7(Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .registers 2

    .line 2723
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewViewType:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onPreviewTypeChanged(Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V

    return-void
.end method

.method private synthetic lambda$updatePreviewViewType$3(Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V
    .registers 4

    .line 331
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda5;-><init>()V

    .line 332
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 334
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V

    .line 335
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$updatePreviewViewType$4(Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .registers 2

    .line 344
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->getModePreviewType()Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updatePreviewViewType(Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V

    return-void
.end method

.method private synthetic lambda$updatePreviewViewType$5(Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .registers 2

    .line 346
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->getModePreviewType()Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updatePreviewViewType(Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V

    return-void
.end method

.method private synthetic lambda$updatePreviewViewType$6(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 358
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewViewType:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUI;->updatePreviewViewType(Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V

    return-void
.end method

.method private loadVIPSelfieDataFromDataStore()V
    .registers 5

    .line 2988
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "vip_selfie_face_id"

    const-string v3, "-1"

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    .line 2989
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadVIPSelfieDataFromDataStore, mVIPPreCameraFace:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2990
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x0

    .line 2991
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    :cond_34
    return-void
.end method

.method private modeSupportAuxPreview(Lcom/transsion/camera/app/common/mode/ICameraMode;)Z
    .registers 2

    if-eqz p1, :cond_a

    .line 1164
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportAuxPreview()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private modeSupportBackgroundPreview(Lcom/transsion/camera/app/common/mode/ICameraMode;)Z
    .registers 2

    if-eqz p1, :cond_a

    .line 1168
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportBackgroundPreview()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private modeSupportSlavePreview(Lcom/transsion/camera/app/common/mode/ICameraMode;)Z
    .registers 2

    if-eqz p1, :cond_a

    .line 1172
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportSlavePreview()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private notModeSwitchCondition(Ljava/lang/String;)Z
    .registers 5

    .line 1085
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_24

    .line 1086
    sget-object p0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onModeChanged] currentMode is same with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 1089
    :cond_24
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result p0

    if-nez p0, :cond_45

    .line 1090
    sget-object p0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onModeChanged] state is not resumed ,can not change to mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    :cond_45
    const/4 p0, 0x0

    return p0
.end method

.method private onModeChanged(Ljava/lang/String;Z)V
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    .line 1244
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v3

    iget-boolean v3, v3, Lcom/transsion/camera/app/common/CommonConfigUtil;->mAppDebugLogEnable:Z

    if-eqz v3, :cond_41

    .line 1245
    sget-object v3, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onModeChanged] called with: modeName = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "], isManualSwitchMode = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "], mInCameraSwitch = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6e

    .line 1247
    :cond_41
    sget-object v3, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onModeChanged] called with: modeName = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "], isManualSwitchMode = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "], mInCameraSwitch = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1249
    :goto_6e
    iget-boolean v3, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    const/16 v4, 0x36

    const/4 v5, 0x0

    if-eqz v3, :cond_90

    .line 1250
    iget-object v0, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v4}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1251
    iget-object v3, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1252
    :try_start_7d
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[onModeChanged] is in camera switch, return"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1253
    iget-object v0, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1254
    monitor-exit v3
    :try_end_8a
    .catchall {:try_start_7d .. :try_end_8a} :catchall_8d

    .line 1255
    iput-object v5, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mPendingChangeModeName:Ljava/lang/String;

    return-void

    :catchall_8d
    move-exception v0

    .line 1254
    :try_start_8e
    monitor-exit v3
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw v0

    .line 1259
    :cond_90
    invoke-direct/range {p0 .. p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->notModeSwitchCondition(Ljava/lang/String;)Z

    move-result v3

    const/16 v6, 0x3eb

    const/4 v7, 0x0

    if-eqz v3, :cond_eb

    .line 1260
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result v0

    if-nez v0, :cond_af

    .line 1261
    iget-object v0, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v2, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v2

    invoke-interface {v0, v2, v7}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    goto :goto_ba

    .line 1263
    :cond_af
    iget-object v0, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v3, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 1265
    :goto_ba
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    iget-object v2, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setModeName(Ljava/lang/String;)V

    .line 1266
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object v0

    const-string v2, "mode_change"

    invoke-interface {v0, v6, v2}, Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;->onActionStart(ILjava/lang/String;)V

    .line 1268
    iget-object v0, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v4}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1269
    iget-object v3, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1270
    :try_start_d8
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "currentMode is same, mModeChangeLock notifyAll"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1271
    iget-object v0, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1272
    monitor-exit v3
    :try_end_e5
    .catchall {:try_start_d8 .. :try_end_e5} :catchall_e8

    .line 1273
    iput-object v5, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mPendingChangeModeName:Ljava/lang/String;

    return-void

    :catchall_e8
    move-exception v0

    .line 1272
    :try_start_e9
    monitor-exit v3
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_e8

    throw v0

    .line 1276
    :cond_eb
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setModeName(Ljava/lang/String;)V

    .line 1277
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object v3

    const-string v4, "mode_change"

    invoke-interface {v3, v6, v4}, Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;->onActionStart(ILjava/lang/String;)V

    .line 1279
    sget-object v3, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onModeChanged], ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v6}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1281
    iput-boolean v7, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedSaveCameraId:Z

    .line 1283
    iget-object v4, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/IAppUI;->changeUIWhenSwitchModeBefore()V

    .line 1285
    iget-object v4, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v6, 0x2

    invoke-interface {v4, v6}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1286
    iget-object v4, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v6, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v6}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v0}, Lcom/transsion/camera/app/common/IAppUI;->updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    iget-object v4, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 1288
    invoke-direct/range {p0 .. p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v6

    iput-object v6, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 1289
    iget-object v8, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-interface {v6, v8}, Lcom/transsion/camera/app/common/mode/ICameraMode;->initContext(Landroid/content/Context;)V

    .line 1291
    invoke-interface {v4}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 1292
    iget-object v6, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/setting/SettingManager;->onCameraClosedBefore()V

    .line 1294
    iget-object v6, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {v1, v6}, Lcom/transsion/camera/app/common/mode/ModeManager;->getCameraId(Lcom/transsion/camera/app/common/mode/ICameraMode;)Ljava/lang/String;

    move-result-object v6

    .line 1295
    iget-object v8, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    invoke-static {v8, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_167

    iget-boolean v8, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mReopenCameraBySwitchOffline:Z

    if-eqz v8, :cond_165

    goto :goto_167

    :cond_165
    move v8, v7

    goto :goto_168

    :cond_167
    :goto_167
    move v8, v9

    .line 1296
    :goto_168
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[onModeChanged] mCurrentOpenedCamera:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " newCameraId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " , needReopenCamera:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " , mNeedReopenCameraForce:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mReopenCameraBySwitchOffline:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1297
    invoke-direct {v1, v6}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateZoomInfoList(Ljava/lang/String;)V

    .line 1298
    iput-boolean v7, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mReopenCameraBySwitchOffline:Z

    if-eqz v8, :cond_1a6

    .line 1300
    iput-boolean v9, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 1301
    iget-object v3, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCameraAsync()V

    .line 1303
    :cond_1a6
    invoke-direct {v1, v4}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    if-eqz v8, :cond_1b2

    .line 1306
    iget-object v3, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v3, v6}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 1307
    iput-object v6, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 1310
    :cond_1b2
    iget-object v3, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    if-eqz v3, :cond_1bf

    .line 1311
    const-string v6, "_"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v7

    goto :goto_1c0

    :cond_1bf
    move-object v3, v5

    .line 1313
    :goto_1c0
    iget-object v6, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {v1, v4, v6}, Lcom/transsion/camera/app/common/mode/ModeManager;->updatePreviewViewType(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 1316
    iget-object v4, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v4, :cond_1ce

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getPreviewSize()Landroid/util/Size;

    move-result-object v4

    goto :goto_1d0

    :cond_1ce
    iget-object v4, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewSize:Landroid/util/Size;

    :goto_1d0
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    if-eqz v4, :cond_1ef

    .line 1317
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v6

    if-lez v6, :cond_1ef

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v6

    if-lez v6, :cond_1ef

    .line 1318
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-double v14, v6

    mul-double/2addr v14, v10

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    move-wide/from16 v16, v10

    int-to-double v10, v4

    div-double/2addr v14, v10

    goto :goto_1f3

    :cond_1ef
    move-wide/from16 v16, v10

    const-wide/16 v14, 0x0

    .line 1319
    :goto_1f3
    iget-object v4, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {v1, v4, v3}, Lcom/transsion/camera/app/common/mode/ModeManager;->initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    .line 1322
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v4

    iget-boolean v4, v4, Lcom/transsion/camera/utils/CustomConfigUtil;->mEnablePreRectChangeAnim:Z

    if-eqz v4, :cond_25b

    const-string v4, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    .line 1323
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25b

    .line 1325
    :try_start_208
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->getModePreviewSize()Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_22c

    .line 1326
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v4

    if-lez v4, :cond_22c

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    if-lez v4, :cond_22c

    .line 1327
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v4

    int-to-double v10, v4

    mul-double v10, v10, v16

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    const-wide/16 v16, 0x0

    int-to-double v12, v4

    div-double/2addr v10, v12

    goto :goto_230

    :catchall_22a
    move-exception v0

    goto :goto_254

    :cond_22c
    const-wide/16 v16, 0x0

    move-wide/from16 v10, v16

    :goto_230
    cmpl-double v4, v10, v16

    if-lez v4, :cond_25b

    cmpg-double v4, v14, v16

    if-lez v4, :cond_246

    sub-double/2addr v10, v14

    .line 1329
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide v12, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v4, v10, v12

    if-lez v4, :cond_25b

    .line 1330
    :cond_246
    iget-object v4, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-interface {v4, v6, v0}, Lcom/transsion/camera/app/common/IAppUI;->setPreviewSize(II)V
    :try_end_253
    .catchall {:try_start_208 .. :try_end_253} :catchall_22a

    goto :goto_25b

    .line 1333
    :goto_254
    sget-object v4, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v6, "onModeChanged: early setPreviewSize failed."

    invoke-static {v4, v6, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1336
    :cond_25b
    :goto_25b
    iget-object v0, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v4, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 1337
    iget-object v0, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 1338
    iget-object v0, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v2, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 1340
    iget-object v0, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->changeUIWhenSwitchModeAfter()V

    .line 1341
    invoke-direct {v1, v3, v9, v7}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateZoom(Ljava/lang/String;ZZ)V

    .line 1342
    iput-object v5, v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mPendingChangeModeName:Ljava/lang/String;

    return-void
.end method

.method private resetSurfaceStatus()V
    .registers 2

    const/4 v0, 0x0

    .line 2729
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAuxSurfaceReady:Z

    .line 2730
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewSurfaceReady:Z

    .line 2731
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mBackgroundSurfaceReady:Z

    .line 2732
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSlaveSurfaceReady:Z

    return-void
.end method

.method private restoreSettingsForWideCamera(Ljava/lang/String;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 1349
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1350
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 1351
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->needRebuildMode()Z

    move-result v1

    .line 1352
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1353
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 1355
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 1357
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    if-eqz v1, :cond_2c

    .line 1358
    :cond_23
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 1359
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 1362
    :cond_2c
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->getCameraId(Lcom/transsion/camera/app/common/mode/ICameraMode;)Ljava/lang/String;

    move-result-object v0

    .line 1363
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v3, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 1364
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 1365
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4b

    if-eqz v1, :cond_43

    goto :goto_4b

    .line 1372
    :cond_43
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    goto :goto_5c

    :cond_4b
    :goto_4b
    if-eqz v0, :cond_56

    .line 1368
    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v3

    goto :goto_57

    :cond_56
    const/4 p1, 0x0

    .line 1370
    :goto_57
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    .line 1374
    :goto_5c
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateZoomInfoList(Ljava/lang/String;)V

    .line 1375
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 1376
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 1377
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void
.end method

.method private sameFacing(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 2435
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result p0

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result p1

    if-ne p0, p1, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private saveVIPSelfieDataToDataStore()V
    .registers 6

    .line 2979
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    if-nez v0, :cond_5

    return-void

    .line 2982
    :cond_5
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 2983
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 2982
    const-string/jumbo v4, "vip_selfie_face_id"

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2984
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveVIPSelfieDataToDataStore, mVIPPreCameraFace:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private screenPocket()Z
    .registers 2

    .line 2367
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result p0

    const/4 v0, 0x6

    if-ne v0, p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method private setModeFeatureConfigIfNeeded(Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .registers 3

    .line 1469
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1470
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeFeatureConfig()Lcom/transsion/camera/app/common/IModeFeatureConfig;

    move-result-object p1

    .line 1471
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUI;->setModeFeatureConfig(Lcom/transsion/camera/app/common/IModeFeatureConfig;)V

    .line 1472
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingManager;->setModeFeatureConfig(Lcom/transsion/camera/app/common/IModeFeatureConfig;)V

    :cond_14
    return-void
.end method

.method private switchBlurCamera(Ljava/lang/String;)V
    .registers 4

    .line 2299
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    if-nez v0, :cond_61

    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_61

    :cond_f
    const/4 v0, 0x1

    .line 2304
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 2305
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 2306
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 2307
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 2308
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 2309
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 2312
    const-string v0, "on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_42

    .line 2313
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackBlackWhitePortraitCamera()Ljava/lang/String;

    move-result-object p1

    goto :goto_48

    .line 2315
    :cond_42
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackBlurCamera()Ljava/lang/String;

    move-result-object p1

    .line 2317
    :goto_48
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 2318
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 2319
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    .line 2321
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 2322
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void

    .line 2300
    :cond_61
    :goto_61
    sget-object p1, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[switchBlurCamera] can not switch blur camera mInCameraSwitch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " mResumed:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2301
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2300
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private switchDualCamBWCamera(Ljava/lang/String;)V
    .registers 4

    .line 2326
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    if-nez v0, :cond_4d

    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_4d

    :cond_f
    const/4 v0, 0x1

    .line 2331
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 2332
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_1a

    const/4 v1, 0x0

    .line 2333
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 2335
    :cond_1a
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 2336
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 2339
    const-string v0, "on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 2340
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBack2XBlurCamera()Ljava/lang/String;

    move-result-object p1

    goto :goto_39

    .line 2342
    :cond_33
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackBlurCamera()Ljava/lang/String;

    move-result-object p1

    .line 2344
    :goto_39
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 2345
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 2346
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 2347
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void

    .line 2327
    :cond_4d
    :goto_4d
    sget-object p1, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[switchDualCamBWCamera] can not switch DualCamBW camera mInCameraSwitch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " mResumed:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2328
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2327
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private switchSatCamera(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 2092
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchSatCamera(Ljava/lang/String;Z)V

    return-void
.end method

.method private switchSatCamera(Ljava/lang/String;Z)V
    .registers 6

    .line 2070
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    if-nez v0, :cond_54

    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentRestoreState:Ljava/lang/String;

    const-string v1, "begin"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_54

    :cond_19
    const/4 v0, 0x1

    .line 2075
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 2076
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_2b

    const/4 v2, 0x0

    .line 2077
    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 2078
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0xc6

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 2080
    :cond_2b
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 2081
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 2082
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateZoom(Ljava/lang/String;ZZ)V

    .line 2083
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateWideCamera(Ljava/lang/String;)V

    .line 2084
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 2085
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 2086
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p2, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updateCurrentCameraId(Ljava/lang/String;)V

    .line 2087
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 2088
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void

    .line 2071
    :cond_54
    :goto_54
    sget-object p1, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[switchSatCamera] can not switch sat camera mInCameraSwitch:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " mResumed:"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2072
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2071
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private switchUnderwaterCamera(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    .line 428
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    const/4 v1, 0x0

    if-nez v0, :cond_87

    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_87

    .line 433
    :cond_11
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[switchUnderwaterCamera]"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 434
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 435
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v2, :cond_22

    .line 436
    invoke-interface {v2, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 438
    :cond_22
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    .line 439
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v3

    .line 440
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 441
    invoke-interface {v4}, Lcom/transsion/camera/app/common/mode/ICameraMode;->needRebuildMode()Z

    move-result v5

    .line 442
    invoke-interface {v4}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 444
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 445
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    if-eqz v5, :cond_49

    .line 446
    :cond_40
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 447
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v4

    iput-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 450
    :cond_49
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v4, :cond_52

    .line 451
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-interface {v4, v2, v6}, Lcom/transsion/camera/app/common/IAppUI;->updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    :cond_52
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v2, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 454
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 455
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    if-eqz v5, :cond_62

    goto :goto_6a

    .line 458
    :cond_62
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, p2, p1, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    goto :goto_6f

    .line 456
    :cond_6a
    :goto_6a
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    .line 460
    :goto_6f
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p2

    invoke-interface {p1, p2, v1}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 461
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 462
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return v0

    .line 429
    :cond_87
    :goto_87
    sget-object p1, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[switchUnderwaterCamera] can not switch video camera mInCameraSwitch:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " mResumed:"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 429
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method private switchVideoCamera(Ljava/lang/String;)V
    .registers 11

    .line 381
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    if-nez v0, :cond_ae

    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportVideoCamera()Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_ae

    .line 386
    :cond_18
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[switchVideoCamera]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 387
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 388
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 389
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 391
    :cond_2a
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    .line 392
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v4

    .line 393
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 394
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->needRebuildMode()Z

    move-result v8

    .line 395
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 397
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 398
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getSwitchMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 400
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    if-eqz v8, :cond_5b

    .line 401
    :cond_52
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 402
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 405
    :cond_5b
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_64

    .line 406
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-interface {v0, v3, v5}, Lcom/transsion/camera/app/common/IAppUI;->updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :cond_64
    const-string v0, "on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_73

    .line 411
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackVideoCamera()Ljava/lang/String;

    move-result-object p1

    goto :goto_79

    .line 413
    :cond_73
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object p1

    .line 415
    :goto_79
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 416
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 417
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    if-eqz v8, :cond_89

    goto :goto_91

    .line 420
    :cond_89
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, v2, p1, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    goto :goto_96

    .line 418
    :cond_91
    :goto_91
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    .line 422
    :goto_96
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 423
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 424
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void

    .line 382
    :cond_ae
    :goto_ae
    sget-object p1, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[switchVideoCamera] can not switch video camera mInCameraSwitch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " mResumed:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 382
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private switchWideAndMacro()V
    .registers 1

    .line 1960
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->updateTopBarUI()V

    return-void
.end method

.method private switchWideCamera(Ljava/lang/String;Z)V
    .registers 4

    .line 1976
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    if-nez v0, :cond_13

    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_13

    .line 1981
    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchWideCameraImpl(Ljava/lang/String;Z)V

    return-void

    .line 1977
    :cond_13
    :goto_13
    sget-object p1, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[switchWideCamera] can not switch wide camera mInCameraSwitch:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " mResumed:"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1978
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1977
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private switchWideCameraImpl(Ljava/lang/String;Z)V
    .registers 13

    .line 1985
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[switchWideCameraImpl]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1986
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 1987
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->resetSurfaceStatus()V

    .line 1988
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    .line 1989
    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1991
    :cond_24
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    .line 1992
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1993
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 1994
    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->needRebuildMode()Z

    move-result v9

    .line 1995
    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    if-eqz p2, :cond_3d

    .line 1998
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCameraAsync()V

    goto :goto_42

    .line 2000
    :cond_3d
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 2002
    :goto_42
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getSwitchMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2004
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    if-eqz v9, :cond_5d

    .line 2005
    :cond_54
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 2006
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 2009
    :cond_5d
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_66

    .line 2010
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-interface {v1, v4, v3}, Lcom/transsion/camera/app/common/IAppUI;->updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2014
    :cond_66
    const-string v1, "replace"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v3, 0x3e

    if-eqz v1, :cond_9c

    .line 2015
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1, v1, v4}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isInsensorZoomStatus(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p1

    if-eqz p1, :cond_83

    .line 2017
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object p1

    goto :goto_89

    .line 2019
    :cond_83
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object p1

    .line 2022
    :goto_89
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_151

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_151

    .line 2023
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto/16 :goto_151

    .line 2025
    :cond_9c
    const-string v1, "on"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c3

    .line 2026
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/CameraRepository;->getWideCamera(Z)Ljava/lang/String;

    move-result-object p1

    .line 2027
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_151

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_151

    .line 2028
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto/16 :goto_151

    .line 2031
    :cond_c3
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_d6

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d6

    .line 2032
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x3f

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 2034
    :cond_d6
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1, v1, v3, v4}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportSAT(Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p1

    .line 2035
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1, v3, v4}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isInsensorZoomStatus(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result v1

    .line 2036
    iget-boolean v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    if-eqz v3, :cond_100

    if-eqz v1, :cond_f9

    .line 2037
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackDefaultCamera()Ljava/lang/String;

    move-result-object p1

    goto :goto_106

    :cond_f9
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackDefaultCamera(Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_106

    .line 2039
    :cond_100
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getFrontDefaultCamera()Ljava/lang/String;

    move-result-object p1

    .line 2042
    :goto_106
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_151

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportVideoCamera()Z

    move-result v1

    if-eqz v1, :cond_151

    .line 2043
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->isVideoCameraSupportCurrentQuality()Z

    move-result v1

    const-string v3, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    if-eqz v1, :cond_12a

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_136

    :cond_12a
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 2044
    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_151

    :cond_136
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    const-string v3, "key_brightbess_value"

    .line 2045
    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/common/setting/SettingManager;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "value_dark"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_151

    .line 2046
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackVideoCamera()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_151

    .line 2047
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    .line 2050
    :cond_151
    :goto_151
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->getTargetCameraZoom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2051
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    const-string v4, "key_camera_zoom"

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/common/setting/SettingManager;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v3

    .line 2052
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_174

    if-eqz v3, :cond_174

    .line 2053
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/setting/SettingManager;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v4

    const-string v6, "key_real_zoom"

    .line 2054
    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    .line 2053
    invoke-virtual {v4, v6, v1, v3, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2056
    :cond_174
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 2057
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 2058
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_191

    if-eqz v9, :cond_184

    goto :goto_191

    .line 2061
    :cond_184
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, p2, v0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    .line 2062
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p2, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updateCurrentCameraId(Ljava/lang/String;)V

    goto :goto_196

    .line 2059
    :cond_191
    :goto_191
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    .line 2064
    :goto_196
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p2

    invoke-interface {p1, p2, v2}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 2065
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 2066
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void
.end method

.method private unInitAppUI()V
    .registers 3

    .line 786
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeFeatureProvider:Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;->destroyModeFeatureResources()V

    .line 787
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock;)V

    .line 788
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setModeFeatureSupport(Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;)V

    .line 789
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V

    .line 790
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setCameraSwitchListener(Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;)V

    .line 791
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V

    .line 792
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setRestartPreviewListener(Lcom/transsion/camera/app/common/IAppUIListener$IRestartPreviewListener;)V

    .line 793
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchTeleCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;)V

    .line 794
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchPeriscopeCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchPeriscopeCameraListener;)V

    .line 795
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchBlurCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;)V

    .line 796
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchDualCamBWCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;)V

    .line 797
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setSurfaceStatusListener(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)V

    .line 798
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchSatCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;)V

    .line 799
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchDualAndMainCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;)V

    return-void
.end method

.method private unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .registers 2

    .line 1432
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->unRegisterStateCallback(Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;)V

    const/4 p0, 0x0

    .line 1433
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setSurfaceStatusListener(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)V

    .line 1434
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->unInit()V

    return-void
.end method

.method private updateMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V
    .registers 4

    .line 2380
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeFeatureProvider:Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;->updateModeFeatureSync(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private updatePreviewViewType(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .registers 6

    .line 343
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V

    .line 344
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 345
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V

    .line 346
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 347
    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getPreviewViewType()Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewViewType:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    .line 348
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getPreviewViewType()Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    move-result-object v0

    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getPreviewViewType()Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    move-result-object v1

    if-eq v0, v1, :cond_74

    .line 349
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 350
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_66

    .line 351
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mode switching with different previewViewType, stop preview first. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getPreviewViewType()Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getPreviewViewType()Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 351
    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 353
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->stopRepeatingRequest()V

    .line 354
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->stopPreview()V

    .line 357
    :cond_66
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V

    .line 358
    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_74
    return-void
.end method

.method private updatePreviewViewType(Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V
    .registers 6

    .line 315
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewViewType:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    .line 316
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewViewType:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    .line 317
    sget-object v1, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " updatePreviewViewType, previewViewType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", oldPreviewViewType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 319
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v2

    if-eqz v2, :cond_5a

    if-eqz v0, :cond_5a

    if-eq v0, p1, :cond_5a

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v2, :cond_5a

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "previewViewType switching, stop preview before UI recreate surface. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->stopRepeatingRequest()V

    .line 326
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->stopPreview()V

    .line 328
    :cond_5a
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V

    .line 329
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 330
    new-instance v0, Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V

    .line 338
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 339
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateWideCamera(Ljava/lang/String;)V
    .registers 9

    .line 2131
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object v0

    .line 2132
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    .line 2133
    sget-object v2, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateWideCamera,currentCamera:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",targetCamera:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2134
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->resetSurfaceStatus()V

    .line 2135
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->SAT_CAMERA_CHANGED_SETTINGS:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_32
    if-ge v4, v3, :cond_44

    aget-object v5, v2, v4

    .line 2136
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v6, v5}, Lcom/transsion/camera/app/common/setting/SettingManager;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v5

    if-eqz v5, :cond_41

    .line 2138
    invoke-interface {v5, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->storeCameraIdBeforeSAT(Ljava/lang/String;)V

    :cond_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    .line 2141
    :cond_44
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v3, "wide_camera"

    if-eqz v2, :cond_63

    .line 2142
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7e

    .line 2143
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/common/setting/SettingManager;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    if-eqz p0, :cond_7e

    .line 2145
    const-string p1, "on"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 2148
    :cond_63
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 2149
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7e

    .line 2150
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/common/setting/SettingManager;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    if-eqz p0, :cond_7e

    .line 2152
    const-string p1, "off"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_7e
    return-void
.end method

.method private updateZoom(Ljava/lang/String;ZZ)V
    .registers 9

    .line 2171
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    const-string v1, "key_camera_zoom"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingManager;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    if-eqz p2, :cond_13

    .line 2176
    sget-object p0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->forceApplyValue(Ljava/lang/String;)V

    return-void

    .line 2179
    :cond_13
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p2

    .line 2180
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v2, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2181
    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->convertZoom(Ljava/lang/String;)I

    move-result v2

    .line 2182
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v3, p2, v2}, Lcom/transsion/camera/app/common/CameraRepository;->getEquivalentZoom(Ljava/lang/String;I)I

    move-result v3

    .line 2183
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v4, p2}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 2184
    div-int/lit16 v3, v2, 0x3e8

    mul-int/lit16 v3, v3, 0x3e8

    invoke-direct {p0, v3}, Lcom/transsion/camera/app/common/mode/ModeManager;->converWideToSat(I)I

    move-result v3

    .line 2187
    :cond_39
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v4, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 2188
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_ac

    .line 2190
    :cond_46
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->isTeleCamera(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 2191
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->isTeleCamera(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_ac

    .line 2192
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->getDeviceZoomRatio(Ljava/lang/String;)F

    move-result p0

    int-to-float p1, v2

    rem-float p2, p1, p0

    float-to-int p2, p2

    if-eqz p2, :cond_68

    div-float/2addr p1, p0

    float-to-int p0, p1

    add-int/lit8 p0, p0, 0x1

    .line 2195
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_66
    move-object v1, p0

    goto :goto_ac

    :cond_68
    div-float/2addr p1, p0

    float-to-int p0, p1

    .line 2197
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_66

    :cond_6f
    if-eqz p3, :cond_a2

    .line 2204
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/common/CameraRepository;->getDeviceZoomRatio(Ljava/lang/String;)F

    move-result p2

    .line 2205
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p3, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8c

    .line 2206
    div-int/lit16 v2, v2, 0x3e8

    mul-int/lit16 v2, v2, 0x3e8

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->convertSatToWide(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_66

    :cond_8c
    int-to-float p0, v2

    rem-float p1, p0, p2

    float-to-int p1, p1

    if-eqz p1, :cond_9b

    div-float/2addr p0, p2

    float-to-int p0, p0

    add-int/lit8 p0, p0, 0x1

    .line 2210
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_66

    :cond_9b
    div-float/2addr p0, p2

    float-to-int p0, p0

    .line 2212
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_66

    .line 2216
    :cond_a2
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0, p1, v3}, Lcom/transsion/camera/app/common/CameraRepository;->getDeviceZoom(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 2220
    :cond_ac
    :goto_ac
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceApplyValue(Ljava/lang/String;)V

    return-void
.end method

.method private updateZoomInfoList(Ljava/lang/String;)V
    .registers 5

    .line 1232
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1234
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getZoomInfoList()Ljava/util/List;

    move-result-object v1

    .line 1235
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeOffsetPadding()I

    move-result v2

    .line 1236
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getZoomItemType()I

    move-result v0

    .line 1237
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_1b

    .line 1238
    invoke-interface {p0, v1, p1, v2, v0}, Lcom/transsion/camera/app/common/IAppUI;->updateZoomInfo(Ljava/util/List;Ljava/lang/String;II)V

    :cond_1b
    return-void
.end method


# virtual methods
.method public currentModeName()Ljava/lang/String;
    .registers 1

    .line 860
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 863
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public destroyTask()V
    .registers 1

    .line 856
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->destroyTask()V

    return-void
.end method

.method public getModeGroup()J
    .registers 3

    .line 3055
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-nez p0, :cond_7

    const-wide/16 v0, 0x3

    return-wide v0

    .line 3058
    :cond_7
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getSettingGroup()J

    move-result-wide v0

    return-wide v0
.end method

.method public getModePreviewSize()Landroid/util/Size;
    .registers 6

    .line 2687
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getModePreviewSize, mCurrentMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mDeviceControl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2689
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz v1, :cond_88

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v1, :cond_88

    .line 2690
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    .line 2691
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v2

    .line 2692
    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSupportedPreviewSizes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 2693
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getModePreviewSize, supportedPreviewSizes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2695
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableDVMode:Z

    if-eqz v0, :cond_81

    .line 2696
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 2697
    :cond_7a
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->initSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 2700
    :cond_81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p0, v2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getPreviewSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object p0

    return-object p0

    :cond_88
    const/4 p0, 0x0

    return-object p0
.end method

.method public getModeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;
    .registers 1

    .line 3048
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-nez p0, :cond_7

    .line 3049
    sget-object p0, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->PHOTO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    return-object p0

    .line 3051
    :cond_7
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    move-result-object p0

    return-object p0
.end method

.method public init(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IApp$IIntentAction;)V
    .registers 6

    .line 617
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    if-nez v0, :cond_6

    goto/16 :goto_177

    .line 618
    :cond_6
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 619
    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    .line 620
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    .line 621
    iput-object p4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

    const/4 p2, 0x1

    .line 622
    iput-boolean p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsDeviceControlAvailable:Z

    .line 623
    new-instance p3, Lcom/transsion/camera/app/common/mode/ModeManager$CameraFirstFrameCallback;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/transsion/camera/app/common/mode/ModeManager$CameraFirstFrameCallback;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;Lcom/transsion/camera/app/common/mode/ModeManager-IA;)V

    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewFirstFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    .line 624
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setFirstFrameCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;)V

    .line 625
    new-instance p3, Lcom/transsion/camera/app/common/mode/ModeManager$MainHandler;

    invoke-direct {p3, p0}, Lcom/transsion/camera/app/common/mode/ModeManager$MainHandler;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V

    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mMainHandler:Landroid/os/Handler;

    .line 627
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getSettingManager()Lcom/transsion/camera/app/common/setting/SettingManager;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    .line 628
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDispatchListener:Lcom/transsion/camera/app/common/setting/ISettingManager$DispatchListener;

    invoke-virtual {p3, v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->setDispatchListener(Lcom/transsion/camera/app/common/setting/ISettingManager$DispatchListener;)V

    .line 629
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 631
    new-instance p3, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    invoke-direct {p3}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;-><init>()V

    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mQuickCaptureManager:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    .line 632
    new-instance v0, Lcom/transsion/camera/app/common/mode/ModeManager$MyQCResultListener;

    invoke-direct {v0, p0, p4}, Lcom/transsion/camera/app/common/mode/ModeManager$MyQCResultListener;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;Lcom/transsion/camera/app/common/mode/ModeManager-IA;)V

    invoke-virtual {p3, v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->setQuickCaptureResultListener(Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;)V

    const/4 p3, 0x0

    .line 634
    invoke-direct {p0, p3}, Lcom/transsion/camera/app/common/mode/ModeManager;->initAppUI(Z)V

    .line 635
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    .line 637
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->initWideCameraConvertList()V

    .line 639
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "CameraModeChangeThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeThread:Landroid/os/HandlerThread;

    .line 640
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 641
    new-instance p1, Lcom/transsion/camera/app/common/mode/ModeManager$ModeChangeHandler;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager$ModeChangeHandler;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeHandler:Landroid/os/Handler;

    .line 643
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p4, v0}, Lcom/transsion/camera/app/common/IAppUI;->updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p4}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p4

    invoke-interface {p1, p4, p3}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 645
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string p4, "key_restore_settings_notify_ui"

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p4, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListenerToFirst(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 647
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string p4, "key_wide_camera_item_seleccted"

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p4, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 649
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string p4, "key_ai_group_photo_camera_id"

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p4, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 651
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string p4, "key_video_camera_change"

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p4, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 653
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string p4, "key_google_lens_click"

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p4, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 655
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string p4, "action_barcode_activity_start"

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p4, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 657
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string p4, "action_gallery_activity_start"

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p4, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 659
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string p4, "action_movie_review_activity_start"

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p4, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 661
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string p4, "action_sleep_activity_start"

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p4, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 663
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string p4, "key_wide_camera_selected"

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p4, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 665
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string p4, "key_when_wide_main_changed"

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p4, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 667
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string p4, "key_zoom_ui_state"

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p4, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 669
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string p4, "key_switch_camera_on_zoom"

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p4, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 672
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string p4, "key_video_hdr_10_plus"

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p4, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 674
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string p4, "key_hdr_format"

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p4, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 677
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_15c

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_15c

    goto :goto_15d

    :cond_15c
    move p2, p3

    :goto_15d
    iput-boolean p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsSupportFoldUI:Z

    .line 678
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_16a

    .line 679
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->loadVIPSelfieDataFromDataStore()V

    .line 682
    :cond_16a
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isOffLineSessionSupport()Z

    move-result p1

    if-eqz p1, :cond_177

    .line 683
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setBGOfflineSwitchCallback(Lcom/transsion/camera/app/common/IAppUIListener$IBGOfflineSwitchCallback;)V

    :cond_177
    :goto_177
    return-void
.end method

.method public isLivePhotoMediaRecorderPrepared()Z
    .registers 1

    .line 3009
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 3012
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isLivePhotoMediaRecorderPrepared()Z

    move-result p0

    return p0
.end method

.method public isModeNeedNotifyNewMedia()Z
    .registers 1

    .line 913
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p0, :cond_9

    .line 914
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isModeNeedNotifyNewMedia()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public modeNotSupportWaitPageMode()Z
    .registers 1

    .line 2928
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isNotSupportWaitPageMode()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public modeSupportPowerSavingMode()Z
    .registers 1

    .line 2924
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportPowerSavingMode()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public notifyRecentAppChanged()V
    .registers 1

    .line 907
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p0, :cond_7

    .line 908
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->recentAppsStart()V

    :cond_7
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .registers 4

    .line 2917
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p0, :cond_9

    .line 2918
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onActivityResult(IILandroid/content/Intent;)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public onBackPressed()Z
    .registers 1

    .line 1059
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onBackPressed()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public onBackPressedForUI()Z
    .registers 1

    .line 1055
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onBackPressedForUI()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public onBatteryStatusChanged(ZII)V
    .registers 5

    .line 2451
    iput p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mBatteryStatus:I

    .line 2452
    iput p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mTemperatureStatus:I

    .line 2453
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz v0, :cond_b

    .line 2454
    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onBatteryStatusChanged(ZII)V

    .line 2456
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    if-eqz p0, :cond_12

    .line 2457
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingManager;->onBatteryStatusChanged(ZII)V

    :cond_12
    return-void
.end method

.method public onCameraStateChanged(I)V
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_30

    .line 1098
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSupportAuxPreview:Z

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setModeSupportAuxPreview(Z)V

    .line 1099
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSupportAuxPreview:Z

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setAuxPreviewModeSupport(ZLjava/lang/String;)V

    .line 1100
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSupportBackgroundPreview:Z

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setModeSupportBackgroundPreview(Z)V

    .line 1101
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSupportBackgroundPreview:Z

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUI;->setBackgroundPreviewModeSupport(Z)V

    .line 1102
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSupportSlavePreview:Z

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setModeSupportSlavePreview(Z)V

    const/4 p1, 0x0

    .line 1103
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    return-void

    :cond_30
    const/4 v0, 0x1

    if-ne p1, v0, :cond_36

    .line 1105
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->resetSurfaceStatus()V

    :cond_36
    return-void
.end method

.method public onCameraSwitch(ZLjava/lang/String;)V
    .registers 14

    .line 1478
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraSwitch: byUser:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", currentMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1479
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    if-eqz v1, :cond_28

    .line 1480
    const-string p0, "[onCameraSwitch] is in camera switch"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1483
    :cond_28
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result v1

    if-nez v1, :cond_4f

    .line 1484
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[onCameraSwitch] state mResumed:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1487
    :cond_4f
    const-string v1, "[onCameraSwitch]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1488
    const-string v1, "onCameraSwitch"

    invoke-static {v1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 1489
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 1490
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object v1

    const/16 v2, 0x3ea

    const-string v3, "camera_switch"

    invoke-interface {v1, v2, v3}, Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;->onActionStart(ILjava/lang/String;)V

    .line 1492
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz p1, :cond_a9

    .line 1495
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v2, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->notifySwitchByUser(Z)V

    .line 1496
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->getOtherFaceCamera(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1497
    invoke-direct {p0, v5, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->canSwitch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_ab

    .line 1498
    new-instance p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {p1, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    .line 1499
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    .line 1500
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "all_camera_damaged"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1499
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 1501
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    .line 1505
    :cond_a9
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNextCameraId:Ljava/lang/String;

    .line 1507
    :cond_ab
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isBgOfflineCapturing()Z

    move-result v3

    const/4 v10, 0x0

    if-eqz v3, :cond_e6

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getOfflineSessionCount()I

    move-result v3

    if-ge v3, v1, :cond_e6

    if-eqz p1, :cond_e6

    .line 1508
    const-string p1, "onCameraSwitch: wait"

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1509
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->resetOfflineState()V

    .line 1510
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v5, v2}, Lcom/transsion/camera/app/common/IAppUI;->updateSwitchCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v10}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1512
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->switchToOffline(I)V

    .line 1513
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->waitOfflineReady()V

    .line 1514
    const-string p1, "onCameraSwitch: wait done"

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1518
    :cond_e6
    const-string p1, "[onCameraSwitch] start."

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1519
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 1520
    iput-boolean v10, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedSaveCameraId:Z

    .line 1522
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_fb

    .line 1523
    invoke-interface {p1, v5, v2}, Lcom/transsion/camera/app/common/IAppUI;->updateSwitchCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v10}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1526
    :cond_fb
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckAIGroup:Z

    if-eqz p1, :cond_11e

    invoke-direct {p0, v5}, Lcom/transsion/camera/app/common/mode/ModeManager;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_11e

    .line 1527
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingManager;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    .line 1528
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/setting/SettingManager;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    .line 1527
    const-string v4, "front_wide_camera"

    const-string v6, "off"

    invoke-virtual {p1, v4, v6, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1529
    iput-boolean v10, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckAIGroup:Z

    .line 1531
    :cond_11e
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1532
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 1533
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->needRebuildMode()Z

    move-result v3

    .line 1534
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 1537
    iget-boolean v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mLaunchFromAod:Z

    if-nez v4, :cond_13c

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportDualVideo()Z

    move-result v4

    if-nez v4, :cond_13a

    goto :goto_13c

    :cond_13a
    move-object p2, v6

    goto :goto_169

    .line 1538
    :cond_13c
    :goto_13c
    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    .line 1539
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    .line 1540
    iget-boolean v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsResetCurrentMode:Z

    if-nez v4, :cond_153

    .line 1541
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    iget-object v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v9, p2

    invoke-interface/range {v4 .. v9}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getSwitchMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_15b

    .line 1542
    :cond_153
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-interface {p2, v4}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getDefaultMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1543
    :goto_15b
    iget-boolean v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsResetCurrentMode:Z

    if-eqz v4, :cond_169

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSpecialModeNameForReset:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_169

    .line 1544
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSpecialModeNameForReset:Ljava/lang/String;

    .line 1547
    :cond_169
    :goto_169
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->resetSurfaceStatus()V

    .line 1548
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCameraAsync()V

    .line 1550
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1551
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17d

    if-eqz v3, :cond_180

    .line 1552
    :cond_17d
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 1555
    :cond_180
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v7, 0x0

    if-eqz p1, :cond_1a7

    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mLaunchFromAod:Z

    if-nez p1, :cond_191

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportDualVideo()Z

    move-result p1

    if-nez p1, :cond_1a7

    .line 1556
    :cond_191
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v7}, Lcom/transsion/camera/app/common/IAppUI;->setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V

    .line 1557
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v8, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-interface {p1, v8, v10}, Lcom/transsion/camera/app/common/IAppUI;->updateCurrentCamera(Ljava/lang/String;Z)V

    .line 1558
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUI;->setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V

    .line 1559
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v5, v2}, Lcom/transsion/camera/app/common/IAppUI;->updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    :cond_1a7
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setModeName(Ljava/lang/String;)V

    .line 1563
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v6, p2}, Lcom/transsion/camera/app/common/IAppUI;->updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1bb

    if-eqz v3, :cond_1c1

    .line 1566
    :cond_1bb
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 1569
    :cond_1c1
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingManager;->onCameraClosedBefore()V

    .line 1570
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->getCameraId(Lcom/transsion/camera/app/common/mode/ICameraMode;)Ljava/lang/String;

    move-result-object p1

    .line 1571
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateZoomInfoList(Ljava/lang/String;)V

    .line 1572
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v2, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 1573
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 1574
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v2, v10}, Lcom/transsion/camera/app/common/mode/ICameraMode;->notifySwitchByUser(Z)V

    .line 1575
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->notifyModeforSwitchDevice()V

    .line 1576
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportDualVideo()Z

    move-result v2

    if-eqz v2, :cond_1eb

    .line 1577
    invoke-direct {p0, p1, v1, v10}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateZoom(Ljava/lang/String;ZZ)V

    .line 1579
    :cond_1eb
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_214

    if-eqz v3, :cond_1f4

    goto :goto_214

    .line 1590
    :cond_1f4
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportDualVideo()Z

    move-result v1

    if-nez v1, :cond_20e

    .line 1591
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, p2, v1, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    .line 1592
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v1

    invoke-interface {p2, v1, v10}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 1594
    :cond_20e
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p2, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updateCurrentCameraId(Ljava/lang/String;)V

    goto :goto_23f

    :cond_214
    :goto_214
    if-eqz p1, :cond_21e

    .line 1582
    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object v7, p2, v10

    .line 1584
    :cond_21e
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, p2, v7}, Lcom/transsion/camera/app/common/mode/ModeManager;->initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    if-eqz p1, :cond_234

    .line 1585
    const-string p1, "1"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_234

    .line 1586
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p2, 0xec

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1588
    :cond_234
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p2

    invoke-interface {p1, p2, v10}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 1596
    :goto_23f
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    if-nez v4, :cond_253

    .line 1598
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_253

    .line 1599
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;->onSwitchMode(Ljava/lang/String;)V

    .line 1602
    :cond_253
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 1603
    const-string p0, "[onCameraSwitch] end."

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onExchangeWideAndMacro()V
    .registers 3

    .line 2681
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[onExchangeWideAndMacro] "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2682
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchWideAndMacro()V

    return-void
.end method

.method public onLongPress()Z
    .registers 1

    .line 1063
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onLongPress()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public onOfflineSwitchFinish(I)V
    .registers 5

    .line 1609
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onOfflineSwitchFinish] ,offlineType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", getActivityResume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1610
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1609
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_55

    .line 1612
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1613
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 1614
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->notifyOfflineReady()V

    return-void

    .line 1618
    :cond_3f
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/common/mode/ModeManager$4;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager$4;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;I)V

    const-string p1, "ReleaseGLSurface"

    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1627
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz p0, :cond_71

    .line 1629
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCameraAsync()V

    return-void

    :cond_55
    const/4 v0, 0x1

    if-ne p1, v0, :cond_67

    .line 1633
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1634
    :try_start_5b
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mReopenCameraBySwitchOffline:Z

    .line 1635
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1636
    monitor-exit v1

    return-void

    :catchall_64
    move-exception p0

    monitor-exit v1
    :try_end_66
    .catchall {:try_start_5b .. :try_end_66} :catchall_64

    throw p0

    :cond_67
    const/4 p0, 0x2

    if-ne p1, p0, :cond_71

    .line 1638
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->notifyOfflineReady()V

    :cond_71
    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 3

    .line 2440
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mOrientation:I

    if-eq v0, p1, :cond_11

    const/4 v0, 0x1

    .line 2441
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckOrientation:Z

    .line 2443
    :cond_11
    iput p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mOrientation:I

    .line 2444
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p0, :cond_1a

    .line 2445
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onOrientationChanged(I)V

    :cond_1a
    return-void
.end method

.method public onSatCameraChanged(I)V
    .registers 7

    .line 2671
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->SAT_CAMERA_CHANGED_SETTINGS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 2672
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v4, v3}, Lcom/transsion/camera/app/common/setting/SettingManager;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 2674
    invoke-interface {v3, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onSatCameraChanged(I)V

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_16
    return-void
.end method

.method public onSingleTapUp()Z
    .registers 1

    .line 1066
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onSingleTapUp()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public onSwitchBlurCamera(Ljava/lang/String;)V
    .registers 5

    .line 2639
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSwitchBlurCamera] value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2640
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchBlurCamera(Ljava/lang/String;)V

    return-void
.end method

.method public onSwitchDualAndMainCamera(Ljava/lang/String;)V
    .registers 11

    .line 2600
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSwitchDualAndMainCamera] value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2601
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    if-nez v1, :cond_b6

    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result v1

    if-nez v1, :cond_26

    goto/16 :goto_b6

    .line 2606
    :cond_26
    const-string v0, "on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 2607
    new-instance v0, Lcom/transsion/camera/app/common/provider/FeatureParameters;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/provider/FeatureParameters;-><init>()V

    .line 2608
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/provider/FeatureParameters;->setStereoOpen(Z)V

    .line 2609
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    .line 2610
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/CameraRepository;->getBackBlurCamera()Ljava/lang/String;

    move-result-object v2

    .line 2611
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/CameraRepository;->getBack2XBlurCamera()Ljava/lang/String;

    move-result-object v3

    .line 2612
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v4

    .line 2613
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v5

    .line 2614
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v6, :cond_63

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_61

    goto :goto_63

    :cond_61
    move v1, v8

    goto :goto_64

    :cond_63
    :goto_63
    move v1, v7

    :goto_64
    if-eqz p1, :cond_6b

    if-eqz v1, :cond_69

    goto :goto_70

    :cond_69
    move-object v2, v3

    goto :goto_70

    :cond_6b
    if-eqz v1, :cond_6f

    move-object v2, v4

    goto :goto_70

    :cond_6f
    move-object v2, v5

    .line 2616
    :goto_70
    iput-boolean v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 2617
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v8}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 2618
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 2619
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 2620
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 2621
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;Lcom/transsion/camera/app/common/provider/FeatureParameters;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 2622
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 2623
    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 2624
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    .line 2625
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v0

    invoke-interface {p1, v0, v8}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 2626
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 2627
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void

    .line 2602
    :cond_b6
    :goto_b6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onSwitchDualAndMainCamera] can not switch blurAndMain camera mInCameraSwitch:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " mResumed:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2603
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2602
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onSwitchDualCamBWCameraListener(Ljava/lang/String;)V
    .registers 5

    .line 2645
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSwitchDualCamBWCamera] value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2646
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchDualCamBWCamera(Ljava/lang/String;)V

    return-void
.end method

.method public onSwitchLogicalCamera(Ljava/lang/String;)V
    .registers 5

    .line 2539
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSwitchLogicalCamera] value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2540
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    if-nez v1, :cond_63

    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_63

    :cond_25
    const/4 v0, 0x1

    .line 2545
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 2546
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_30

    const/4 v1, 0x0

    .line 2547
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 2549
    :cond_30
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 2550
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 2553
    const-string v0, "on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 2554
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBack2XBlurCamera()Ljava/lang/String;

    move-result-object p1

    goto :goto_4f

    .line 2556
    :cond_49
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackBlurCamera()Ljava/lang/String;

    move-result-object p1

    .line 2558
    :goto_4f
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 2559
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 2560
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 2561
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void

    .line 2541
    :cond_63
    :goto_63
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[switchTeleCamera] can not switch tele camera mInCameraSwitch:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " mResumed:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2542
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2541
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onSwitchMode(Ljava/lang/String;)V
    .registers 8

    .line 1177
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwitchMode, modeName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , isBgOfflineCapturing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isBgOfflineCapturing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1178
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isBgOfflineCapturing()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_75

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getOfflineSessionCount()I

    move-result v1

    if-ge v1, v2, :cond_75

    .line 1179
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->switchToOffline(I)V

    .line 1180
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1182
    :try_start_3d
    const-string v3, "onSwitchMode wait"

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1183
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 1184
    const-string v3, "onSwitchMode wait done"

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/InterruptedException; {:try_start_3d .. :try_end_4c} :catch_4f
    .catchall {:try_start_3d .. :try_end_4c} :catchall_4d

    goto :goto_71

    :catchall_4d
    move-exception p0

    goto :goto_73

    :catch_4f
    move-exception v0

    .line 1186
    :try_start_50
    sget-object v3, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ModeChangeHandler, onSwitchMode wait error."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1187
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 1188
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1190
    :goto_71
    monitor-exit v1

    goto :goto_75

    :goto_73
    monitor-exit v1
    :try_end_74
    .catchall {:try_start_50 .. :try_end_74} :catchall_4d

    throw p0

    .line 1193
    :cond_75
    :goto_75
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPendingChangeModeName:Ljava/lang/String;

    .line 1194
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsResetCurrentMode:Z

    if-eqz v0, :cond_83

    .line 1195
    sget-object p0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onSwitchMode mIsResetCurrentMode, do not show preview cover"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1199
    :cond_83
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    if-nez v1, :cond_90

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->notModeSwitchCondition(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_90

    goto :goto_91

    :cond_90
    const/4 v2, 0x0

    :goto_91
    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeChangeFlag(Z)V

    .line 1201
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeHandler:Landroid/os/Handler;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 1202
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_d4

    .line 1204
    :cond_a4
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_d4

    .line 1205
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSwitchMode, process switchAnimate, modeName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1206
    const-string v0, "com.transsion.camera.feature.mode.movie.MovieModeEntry"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 1207
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0x93

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1209
    :cond_cd
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0x35

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1213
    :cond_d4
    :goto_d4
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object v0

    const/16 v2, 0x3eb

    invoke-interface {v0, v2}, Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;->isTargetActionExists(I)Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 1214
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;->onActionCancel(I)V

    .line 1216
    :cond_e7
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSwitchOpticalZoomCamera(Ljava/lang/String;)V
    .registers 5

    .line 2517
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    if-nez v0, :cond_56

    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_56

    :cond_f
    const/4 v0, 0x1

    .line 2522
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 2523
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_1a

    const/4 v1, 0x0

    .line 2524
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 2526
    :cond_1a
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 2527
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 2528
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->resetSurfaceStatus()V

    .line 2529
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSwitchOpticalZoomCamera] switch to cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2530
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 2531
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 2532
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updateCurrentCameraId(Ljava/lang/String;)V

    .line 2533
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 2534
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void

    .line 2518
    :cond_56
    :goto_56
    sget-object p1, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[switchOpticalZoomCamera] can not switch teleZoom camera mInCameraSwitch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " mResumed:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2519
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2518
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onSwitchPeriscopeCamera(Ljava/lang/String;)V
    .registers 5

    .line 2566
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSwitchPeriscopeCamera] value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2567
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    if-nez v1, :cond_91

    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_91

    :cond_25
    const/4 v0, 0x1

    .line 2572
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 2573
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 2574
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 2575
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 2576
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 2577
    const-string v0, "on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 2578
    new-instance v0, Lcom/transsion/camera/app/common/provider/FeatureParameters;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/provider/FeatureParameters;-><init>(Z)V

    .line 2579
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;Lcom/transsion/camera/app/common/provider/FeatureParameters;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p1, :cond_5d

    .line 2582
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBack5XLongFocusCamera()Ljava/lang/String;

    move-result-object p1

    goto :goto_61

    .line 2584
    :cond_5d
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->getCameraId(Lcom/transsion/camera/app/common/mode/ICameraMode;)Ljava/lang/String;

    move-result-object p1

    .line 2586
    :goto_61
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 2587
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    if-eqz p1, :cond_73

    .line 2590
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v1

    goto :goto_74

    :cond_73
    const/4 p1, 0x0

    .line 2592
    :goto_74
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    .line 2593
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 2594
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 2595
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void

    .line 2568
    :cond_91
    :goto_91
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[switchPeriscopeCamera] can not switch periscope camera mInCameraSwitch:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " mResumed:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2569
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2568
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onSwitchSatCameraListener(Ljava/lang/String;)V
    .registers 2

    .line 2651
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchSatCamera(Ljava/lang/String;)V

    return-void
.end method

.method public onSwitchSatCameraListener(Ljava/lang/String;Z)V
    .registers 3

    .line 2656
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchSatCamera(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSwitchUnderwaterCameraListener(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 2666
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchUnderwaterCamera(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onSwitchWideCamera(Ljava/lang/String;Z)V
    .registers 6

    .line 2463
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSwitchWideCamera] value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2464
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchWideCamera(Ljava/lang/String;Z)V

    return-void
.end method

.method public pause(Z)V
    .registers 5

    .line 876
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[pause] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", needAsyncClose: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 877
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    if-eqz v0, :cond_2c

    .line 878
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 880
    :cond_2c
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_35

    const/16 v2, 0x32

    .line 881
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 883
    :cond_35
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->setActivityResume(Z)V

    .line 884
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsDeviceControlAvailable:Z

    .line 885
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 886
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->pause()V

    .line 887
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->pause()V

    .line 888
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isBgOfflineCapturing()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 889
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getOfflineSessionCount()I

    move-result p1

    if-ge p1, v1, :cond_64

    .line 890
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->switchToOffline(I)V

    goto :goto_89

    .line 892
    :cond_64
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->checkNotifyBgOfflineErr()V

    .line 893
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCameraAsync()V

    goto :goto_89

    :cond_6f
    if-eqz p1, :cond_84

    .line 896
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportDualVideo()Z

    move-result p1

    if-eqz p1, :cond_7e

    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mGoogleLenClick:Z

    if-eqz p1, :cond_7e

    goto :goto_84

    .line 899
    :cond_7e
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCameraAsync()V

    goto :goto_89

    .line 897
    :cond_84
    :goto_84
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 902
    :goto_89
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->resetSurfaceStatus()V

    .line 903
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    return-void
.end method

.method public queryCameraModeState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 3004
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-nez p0, :cond_7

    sget-object p0, Lcom/transsion/camera/app/common/IAppUI$UIState;->UNKNOWN:Lcom/transsion/camera/app/common/IAppUI$UIState;

    return-object p0

    .line 3005
    :cond_7
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public resetCurrentMode(Z)V
    .registers 2

    .line 1036
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsResetCurrentMode:Z

    const/4 p1, 0x0

    .line 1037
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSpecialModeNameForReset:Ljava/lang/String;

    return-void
.end method

.method public resetToSpecialMode(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 1041
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsResetCurrentMode:Z

    .line 1042
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSpecialModeNameForReset:Ljava/lang/String;

    return-void
.end method

.method public resume()V
    .registers 9

    .line 943
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[resume] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , mIsResetCurrentMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsResetCurrentMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mVIPPreCameraFace:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 945
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->setActivityResume(Z)V

    .line 946
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsDeviceControlAvailable:Z

    const/4 v1, 0x0

    .line 947
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckOrientation:Z

    .line 948
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mGoogleLenClick:Z

    .line 949
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3, v2}, Lcom/transsion/camera/app/common/IAppUI;->needBuildBlurCoverView(Z)V

    .line 951
    iget-boolean v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedSwitchCameraID:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_62

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNextCameraId:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_62

    .line 952
    iget-boolean v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mLaunchFromAod:Z

    if-nez v3, :cond_5f

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportDualVideo()Z

    move-result v3

    if-nez v3, :cond_62

    .line 953
    :cond_5f
    invoke-virtual {p0, v1, v4}, Lcom/transsion/camera/app/common/mode/ModeManager;->onCameraSwitch(ZLjava/lang/String;)V

    .line 956
    :cond_62
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mLaunchFromAod:Z

    .line 957
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedSwitchCameraID:Z

    .line 958
    iget-boolean v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsResetCurrentMode:Z

    if-eqz v3, :cond_a2

    .line 959
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeHandler:Landroid/os/Handler;

    const/16 v5, 0x32

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 960
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 961
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeLock:Ljava/lang/Object;

    monitor-enter v3

    .line 962
    :try_start_79
    const-string v5, "mIsResetCurrentMode true, mModeChangeLock notifyAll"

    invoke-static {v0, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 963
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 964
    monitor-exit v3
    :try_end_84
    .catchall {:try_start_79 .. :try_end_84} :catchall_9f

    .line 965
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSpecialModeNameForReset:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_95

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-interface {v3, v5}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getDefaultMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_97

    :cond_95
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSpecialModeNameForReset:Ljava/lang/String;

    .line 966
    :goto_97
    invoke-direct {p0, v3, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->onModeChanged(Ljava/lang/String;Z)V

    .line 967
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsResetCurrentMode:Z

    .line 968
    iput-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSpecialModeNameForReset:Ljava/lang/String;

    goto :goto_a2

    :catchall_9f
    move-exception p0

    .line 964
    :try_start_a0
    monitor-exit v3
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_9f

    throw p0

    .line 970
    :cond_a2
    :goto_a2
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPendingChangeModeName:Ljava/lang/String;

    if-eqz v3, :cond_b7

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b7

    .line 971
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPendingChangeModeName:Ljava/lang/String;

    invoke-direct {p0, v3, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->onModeChanged(Ljava/lang/String;Z)V

    .line 974
    :cond_b7
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->resume()V

    .line 975
    iget-boolean v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckAIGroup:Z

    .line 976
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckAIGroup:Z

    .line 977
    iget-boolean v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckOrientation:Z

    .line 978
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckOrientation:Z

    .line 979
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v6}, Lcom/transsion/camera/app/common/mode/ICameraMode;->needUnintModeWhenPause()Z

    move-result v6

    if-eqz v6, :cond_f8

    .line 980
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v6}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 981
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v6}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v6

    iput-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 982
    iget-object v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v7}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/transsion/camera/app/common/mode/ModeManager;->initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    .line 983
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v7}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v7

    invoke-interface {v6, v7, v1}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 984
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {v6, v7}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 988
    :cond_f8
    iget-boolean v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsSupportFoldUI:Z

    if-eqz v6, :cond_10f

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_10f

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    if-eqz v6, :cond_10f

    .line 991
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v6, v4}, Lcom/transsion/camera/app/common/mode/ModeManager;->getCameraIdByReConfig(Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_115

    :cond_10f
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v6}, Lcom/transsion/camera/app/common/mode/ModeManager;->getCameraId(Lcom/transsion/camera/app/common/mode/ICameraMode;)Ljava/lang/String;

    move-result-object v6

    .line 992
    :goto_115
    const-string v7, "58"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_168

    iget-object v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v7}, Lcom/transsion/camera/app/common/IAppUI;->isSecureCamera()Z

    move-result v7

    if-nez v7, :cond_168

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->isKeyguardLocked()Z

    move-result v7

    if-eqz v7, :cond_168

    sget-boolean v7, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsNotAfterStop:Z

    if-eqz v7, :cond_168

    .line 993
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume return cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mAppUI.isSecureCamera:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUI;->isSecureCamera()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isKeyguardLocked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->isKeyguardLocked()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " mIsNotAfterStop:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsNotAfterStop:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 996
    :cond_168
    sput-boolean v2, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsNotAfterStop:Z

    .line 997
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2, v6, v6}, Lcom/transsion/camera/app/common/IAppUI;->updateSwitchCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isSwitchingOffline()Z

    move-result v2

    if-eqz v2, :cond_18f

    .line 1001
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->resetOfflineState()V

    .line 1002
    const-string v2, "Activity resume openCamera wait"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1003
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->waitOfflineReady()V

    .line 1004
    const-string v2, "Activity resume openCamera wait done"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1007
    :cond_18f
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1a5

    const/16 v2, 0xa

    .line 1008
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1009
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isFirstSteadyFrameCome()Z

    move-result v0

    if-nez v0, :cond_1a5

    .line 1010
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1014
    :cond_1a5
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, v6}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 1015
    iput-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 1016
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0, v6}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updateCurrentCameraId(Ljava/lang/String;)V

    .line 1017
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 1018
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_1cb

    if-eqz v6, :cond_1c5

    .line 1021
    const-string v0, "_"

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    goto :goto_1c6

    :cond_1c5
    move-object v0, v4

    .line 1023
    :goto_1c6
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1, v4, v0}, Lcom/transsion/camera/app/common/IAppUI;->updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    :cond_1cb
    iput-boolean v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckAIGroup:Z

    .line 1030
    iput-boolean v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckOrientation:Z

    .line 1031
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->resume()V

    .line 1032
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->initModuleTransfer(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBGOfflineSwitchCallback(Lcom/transsion/camera/app/common/IAppUIListener$IBGOfflineSwitchCallback;)V
    .registers 2

    .line 1422
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mOfflineSwitchCallback:Lcom/transsion/camera/app/common/IAppUIListener$IBGOfflineSwitchCallback;

    return-void
.end method

.method public setCallingPackage(Ljava/lang/String;)V
    .registers 2

    .line 1426
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p0, :cond_7

    .line 1427
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setCallingPackage(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public setGoingToGalleryFlag(Z)V
    .registers 2

    .line 867
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mGoingToGallery:Z

    .line 868
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingManager;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    .line 869
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mGoingToGallery:Z

    if-eqz p0, :cond_17

    if-eqz p1, :cond_17

    .line 870
    const-string p0, "action_gallery_activity_start"

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    .line 871
    invoke-virtual {p1, p0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_17
    return-void
.end method

.method public setGotoActivityListener(Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;)V
    .registers 2

    .line 1418
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mGotoActivityListener:Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;

    return-void
.end method

.method public setInternalStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V
    .registers 2

    .line 1078
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    .line 1079
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p0, :cond_9

    .line 1080
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setInternalStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V

    :cond_9
    return-void
.end method

.method public setLaunchFromAod(Z)V
    .registers 2

    .line 1046
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mLaunchFromAod:Z

    return-void
.end method

.method public setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .registers 2

    .line 1381
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    .line 1383
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p0, :cond_9

    .line 1384
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    :cond_9
    return-void
.end method

.method public setNextCameraId(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 1050
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedSwitchCameraID:Z

    .line 1051
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNextCameraId:Ljava/lang/String;

    return-void
.end method

.method public setThumbnailTransitionManager(Lcom/transsion/camera/app/common/thumbnailtransition/IThumbnailTransition;)V
    .registers 2

    .line 248
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mThumbnailTransition:Lcom/transsion/camera/app/common/thumbnailtransition/IThumbnailTransition;

    return-void
.end method

.method public start()V
    .registers 1

    return-void
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x0

    .line 926
    sput-boolean v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsNotAfterStop:Z

    .line 927
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz v0, :cond_a

    .line 928
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->stop()V

    .line 930
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_1a

    .line 931
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isBgOfflineCapturing()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_1a

    .line 935
    :cond_15
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCameraAsync()V

    :cond_1a
    :goto_1a
    return-void
.end method

.method public switchTeleCameraForSpecifyMode(Ljava/lang/String;)V
    .registers 12

    .line 2469
    const-string v0, "0"

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    const/4 v0, 0x1

    .line 2470
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    .line 2471
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    if-eqz v1, :cond_13

    .line 2472
    sget-object p0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[openWideCamera] in camera switching"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2476
    :cond_13
    sget-object v1, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[switchTeleCameraForSpecifyMode]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2477
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 2478
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->resetSurfaceStatus()V

    .line 2479
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v2, 0x0

    if-eqz v1, :cond_36

    .line 2480
    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 2482
    :cond_36
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    .line 2483
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2484
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 2485
    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->needRebuildMode()Z

    move-result v9

    .line 2486
    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 2488
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 2489
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getSwitchMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2491
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5e

    if-eqz v9, :cond_67

    .line 2492
    :cond_5e
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 2493
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 2496
    :cond_67
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_70

    .line 2497
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-interface {v1, v4, v6}, Lcom/transsion/camera/app/common/IAppUI;->updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2500
    :cond_70
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 2501
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 2502
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedSaveCameraId:Z

    .line 2504
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    if-eqz v9, :cond_82

    goto :goto_8f

    .line 2507
    :cond_82
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, v3, v0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    .line 2508
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updateCurrentCameraId(Ljava/lang/String;)V

    goto :goto_94

    .line 2505
    :cond_8f
    :goto_8f
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    .line 2510
    :goto_94
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 2511
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 2512
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void
.end method

.method public switchWideCameraForSpecifyMode(Ljava/lang/String;)V
    .registers 4

    .line 1965
    const-string v0, "0"

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1966
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    .line 1967
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    if-eqz v1, :cond_13

    .line 1968
    sget-object p0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[openWideCamera] in camera switching"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1971
    :cond_13
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedSaveCameraId:Z

    const/4 v0, 0x0

    .line 1972
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchWideCameraImpl(Ljava/lang/String;Z)V

    return-void
.end method

.method public unInit1()V
    .registers 4

    .line 803
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "key_restore_settings_notify_ui"

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 805
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "key_wide_camera_item_seleccted"

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 807
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "key_ai_group_photo_camera_id"

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 809
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "key_video_camera_change"

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 811
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "key_google_lens_click"

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 813
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "action_barcode_activity_start"

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 815
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "action_gallery_activity_start"

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 817
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "action_movie_review_activity_start"

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 819
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "action_sleep_activity_start"

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 821
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->saveVIPSelfieDataToDataStore()V

    .line 822
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "key_wide_camera_selected"

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 824
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "key_when_wide_main_changed"

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 826
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "key_zoom_ui_state"

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 828
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "key_switch_camera_on_zoom"

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 830
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "key_video_hdr_10_plus"

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 832
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "key_hdr_format"

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 834
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mQuickCaptureManager:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    if-eqz v0, :cond_cd

    .line 835
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->uninit()V

    .line 837
    :cond_cd
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 838
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitAppUI()V

    const/4 v0, 0x0

    .line 840
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewFirstFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    .line 841
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setFirstFrameCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;)V

    return-void
.end method

.method public unInit2()V
    .registers 2

    const/4 v0, 0x0

    .line 845
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsDeviceControlAvailable:Z

    .line 847
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_f

    .line 848
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 849
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_f
    const/4 v0, 0x0

    .line 851
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeThread:Landroid/os/HandlerThread;

    .line 852
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeHandler:Landroid/os/Handler;

    return-void
.end method

.method public updateCapturedNumber(I)V
    .registers 3

    .line 920
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->isModeNeedNotifyNewMedia()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 921
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updateCapturedNumber(I)V

    :cond_b
    return-void
.end method

.method public updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V
    .registers 6

    .line 1070
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateStorageOperator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1071
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    .line 1072
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p0, :cond_20

    .line 1073
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    :cond_20
    return-void
.end method
