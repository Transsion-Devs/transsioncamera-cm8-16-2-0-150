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
.implements Lcom/transsion/camera/app/common/IApp$ModeBgCaptureListener;
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

    .line 330
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

    .line 334
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

    .line 337
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

    .line 126
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ModeManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 199
    sput-boolean v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsNotAfterStop:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;)V
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    .line 604
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    .line 141
    iput-boolean v3, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsDeviceControlAvailable:Z

    .line 142
    new-instance v4, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;Lcom/transsion/camera/app/common/mode/ModeManager-IA;)V

    iput-object v4, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSurfaceStateListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    .line 143
    iput-object v5, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewFirstFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    const/4 v4, 0x2

    .line 146
    iput v4, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->CAMERA_SWITCH_THRESHOLD:I

    const/4 v4, 0x1

    .line 147
    iput-boolean v4, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    .line 148
    const-string v4, "0"

    iput-object v4, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    const/4 v6, -0x1

    .line 153
    iput v6, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mOrientation:I

    .line 155
    iput-boolean v3, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 156
    iput-boolean v3, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsResetCurrentMode:Z

    .line 157
    iput-object v5, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSpecialModeNameForReset:Ljava/lang/String;

    .line 158
    iput-boolean v3, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedSwitchCameraID:Z

    .line 159
    iput-boolean v3, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckOrientation:Z

    .line 160
    iput-boolean v3, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckAIGroup:Z

    .line 161
    iput-object v4, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNextCameraId:Ljava/lang/String;

    .line 177
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeLock:Ljava/lang/Object;

    .line 178
    new-instance v4, Lcom/transsion/camera/app/common/mode/ModeManager$DispatchListener;

    invoke-direct {v4, v0, v5}, Lcom/transsion/camera/app/common/mode/ModeManager$DispatchListener;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;Lcom/transsion/camera/app/common/mode/ModeManager-IA;)V

    iput-object v4, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDispatchListener:Lcom/transsion/camera/app/common/setting/ISettingManager$DispatchListener;

    .line 180
    iput v3, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mBatteryStatus:I

    .line 181
    iput v3, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mTemperatureStatus:I

    .line 184
    iput-object v5, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 185
    iput-boolean v3, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mReopenCameraBySwitchOffline:Z

    .line 189
    iput-boolean v3, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSupportAuxPreview:Z

    .line 191
    const-string v4, "end"

    iput-object v4, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentRestoreState:Ljava/lang/String;

    .line 192
    iput-boolean v3, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInModeSwitch:Z

    .line 193
    iput-boolean v3, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mGoingToGallery:Z

    .line 196
    iput-object v5, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    .line 197
    iput-boolean v3, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mGoogleLenClick:Z

    .line 198
    iput-object v5, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 204
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

    .line 253
    new-instance v4, Lcom/transsion/camera/app/common/mode/ModeManager$1;

    invoke-direct {v4, v0}, Lcom/transsion/camera/app/common/mode/ModeManager$1;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V

    iput-object v4, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 717
    new-instance v4, Lcom/transsion/camera/app/common/mode/ModeManager$2;

    invoke-direct {v4, v0}, Lcom/transsion/camera/app/common/mode/ModeManager$2;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V

    iput-object v4, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeFeatureSupport:Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;

    .line 730
    new-instance v4, Lcom/transsion/camera/app/common/mode/ModeManager$3;

    invoke-direct {v4, v0}, Lcom/transsion/camera/app/common/mode/ModeManager$3;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V

    iput-object v4, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    .line 1381
    new-instance v4, Lcom/transsion/camera/app/common/mode/ModeManager$GotoActivityListenerImpl;

    invoke-direct {v4, v0}, Lcom/transsion/camera/app/common/mode/ModeManager$GotoActivityListenerImpl;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V

    iput-object v4, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mGotoActivityListenerImpl:Lcom/transsion/camera/app/common/mode/ModeManager$GotoActivityListenerImpl;

    .line 2740
    iput-boolean v3, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAuxSurfaceReady:Z

    .line 2741
    iput-boolean v3, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewSurfaceReady:Z

    .line 605
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v3

    iput-object v3, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    move-object/from16 v3, p1

    .line 606
    iput-object v3, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    .line 607
    iput-object v1, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    move-object/from16 v4, p4

    .line 608
    iput-object v4, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeFeatureProvider:Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;

    move-object/from16 v4, p5

    .line 609
    iput-object v4, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 610
    iput-object v2, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    move-object/from16 v4, p3

    .line 611
    iput-object v4, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 613
    invoke-interface {v2, v1}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getDefaultMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 614
    invoke-static {v3}, Lcom/transsion/camera/utils/DVUtils;->isRequestEnterDV(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 615
    const-string v1, "com.transsion.camera.feature.mode.video.DVVideoModeEntry"

    .line 617
    :cond_c3
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setModeName(Ljava/lang/String;)V

    .line 618
    invoke-static {}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->getInstance()Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->setModeName(Ljava/lang/String;)V

    .line 620
    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    return-void
.end method

.method private addResourcesToContext()V
    .registers 2

    .line 2896
    new-instance v0, Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V

    invoke-static {v0}, Lcom/transsion/camera/app/common/algorithm/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private canSwitch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 2420
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getCameraCount()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_12

    .line 2421
    sget-object p0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "The number of camera is below the threshold."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    .line 2425
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

    .line 2416
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

    .line 2937
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isQuickCaptureSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    .line 2938
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportQuickCapture:Z

    if-nez v0, :cond_10

    goto :goto_31

    .line 2941
    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->screenFlip()Z

    move-result v0

    if-eqz v0, :cond_1b

    return v1

    .line 2944
    :cond_1b
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    const-string v0, "quick_capture_mode"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2945
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_31

    .line 2946
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

    .line 2225
    sget-object p0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_SAT_INIT_VALUE:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 2226
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

    .line 2230
    :cond_1b
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mWideRangeConverterValueList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_53

    .line 2231
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

    .line 2233
    sget-object p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mWideRangeConverterProgressList:Ljava/util/List;

    sget-object p1, Lcom/transsion/camera/app/common/mode/ModeManager;->mWideRangeConverterValueList:Ljava/util/List;

    .line 2234
    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :cond_52
    return p0

    .line 2239
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

    .line 2245
    sget-object p0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_SAT_INIT_VALUE:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 2246
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

    .line 2250
    :cond_1b
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mWideRangeConverterProgressList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_53

    .line 2251
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

    .line 2253
    sget-object p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mWideRangeConverterValueList:Ljava/util/List;

    sget-object p1, Lcom/transsion/camera/app/common/mode/ModeManager;->mWideRangeConverterProgressList:Ljava/util/List;

    .line 2254
    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :cond_52
    return p0

    .line 2259
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

    .line 2289
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

    .line 2349
    new-instance v0, Lcom/transsion/camera/app/common/provider/FeatureParameters;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/provider/FeatureParameters;-><init>()V

    .line 2350
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->screenPocket()Z

    move-result v1

    const-string v2, "f0.0"

    if-eqz v1, :cond_1a

    .line 2351
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v3, "key_mu_monomer"

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3b

    .line 2353
    :cond_1a
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result v1

    .line 2354
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

    .line 2355
    :cond_2d
    invoke-static {}, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->getStereoDefaultValue()Ljava/lang/String;

    move-result-object v1

    :goto_31
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    .line 2354
    invoke-virtual {v3, v4, v1, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2357
    :goto_3b
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/provider/FeatureParameters;->setStereoOpen(Z)V

    .line 2358
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/provider/FeatureParameters;->screenFormType(I)V

    .line 2359
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->resetSurfaceStatus()V

    .line 2360
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;Lcom/transsion/camera/app/common/provider/FeatureParameters;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p0

    return-object p0
.end method

.method private createMode(Ljava/lang/String;Lcom/transsion/camera/app/common/provider/FeatureParameters;)Lcom/transsion/camera/app/common/mode/ICameraMode;
    .registers 6

    .line 2368
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

    .line 2369
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isBgServiceCheckEnable()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2370
    invoke-static {}, Lcom/transsion/camera/utils/debug/CaptureCheckManager;->getInstance()Lcom/transsion/camera/utils/debug/CaptureCheckManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/utils/debug/CaptureCheckManager;->setCurrentMode(Ljava/lang/String;)V

    .line 2372
    :cond_2b
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateCurrentMode(Ljava/lang/String;)V

    .line 2373
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

    .line 1920
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    return-object p0

    .line 1922
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

    .line 1924
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedSaveCameraId:Z

    if-eqz v1, :cond_4e

    const/4 p1, 0x0

    .line 1925
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedSaveCameraId:Z

    .line 1926
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

    .line 1928
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    if-eqz p1, :cond_4b

    return-object p1

    :cond_4b
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    return-object p0

    .line 1930
    :cond_4e
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsSupportFoldUI:Z

    if-eqz v1, :cond_7a

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    if-nez v1, :cond_7a

    .line 1931
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result v1

    const-string v2, "1"

    if-nez v1, :cond_78

    .line 1932
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFoldedFrontCameraId()Ljava/lang/String;

    move-result-object v1

    .line 1933
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_75

    .line 1934
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    goto :goto_7a

    .line 1936
    :cond_75
    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    goto :goto_7a

    .line 1939
    :cond_78
    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    .line 1942
    :cond_7a
    :goto_7a
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    .line 1943
    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_94

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 1944
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_94

    move-object v9, v2

    goto :goto_95

    :cond_94
    move-object v9, v1

    .line 1947
    :goto_95
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    iget-boolean v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    iget-object v8, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    iget-boolean v10, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInModeSwitch:Z

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    .line 1948
    invoke-interface {v1}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result v11

    const/4 v12, 0x0

    move-object v4, p1

    .line 1947
    invoke-interface/range {v4 .. v12}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getCameraIdForOpen(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;ZIZ)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_ae

    move-object v9, p1

    .line 1952
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

    .line 1857
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

    .line 1864
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 1865
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_43

    :goto_41
    move v9, v3

    goto :goto_4e

    .line 1869
    :cond_43
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    if-eqz p2, :cond_4b

    const/4 v1, 0x0

    .line 1872
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    goto :goto_41

    :cond_4b
    const/4 v3, 0x0

    move-object p2, v1

    goto :goto_41

    .line 1875
    :goto_4e
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsSupportFoldUI:Z

    if-eqz v1, :cond_6e

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 1877
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result p2

    if-nez p2, :cond_70

    .line 1878
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

    .line 1885
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

    .line 1886
    invoke-interface {p2}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result v8

    move-object v1, p1

    .line 1885
    invoke-interface/range {v1 .. v9}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getCameraIdForOpen(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;ZIZ)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8b

    move-object v6, p1

    .line 1890
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

    .line 3036
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_32

    .line 3040
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

    .line 3037
    :cond_32
    :goto_32
    sget-object p0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "cameraId or mode key is null."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3038
    const-string p0, ""

    return-object p0
.end method

.method private getModePreviewType()Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;
    .registers 5

    .line 364
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 366
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    .line 365
    const-string v2, "key_video_hdr_10_plus"

    const-string v3, "off"

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 369
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    .line 368
    const-string v2, "key_hdr_format"

    invoke-virtual {v1, v2, v3, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 371
    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string/jumbo v0, "value_hdr_hlg"

    .line 372
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_40

    goto :goto_43

    .line 375
    :cond_40
    sget-object p0, Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;->GL_SURFACE_VIEW:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    return-object p0

    .line 373
    :cond_43
    :goto_43
    sget-object p0, Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;->SURFACE_VIEW:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    return-object p0
.end method

.method private getOtherFaceCamera(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 2391
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getCameraCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_a

    return-object p1

    .line 2394
    :cond_a
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    if-eqz p1, :cond_42

    .line 2395
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsSupportFoldUI:Z

    if-eqz p1, :cond_3f

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result p0

    if-nez p0, :cond_3f

    .line 2396
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFoldedFrontCameraId()Ljava/lang/String;

    move-result-object p0

    .line 2397
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

    .line 2402
    :cond_3f
    const-string p0, "1"

    return-object p0

    .line 2405
    :cond_42
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_52

    const/4 v0, 0x1

    .line 2406
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->canTargetModeSupportSAT(Z)Z

    move-result p0

    if-eqz p0, :cond_52

    return-object p1

    .line 2409
    :cond_52
    const-string p0, "0"

    return-object p0
.end method

.method private getTargetCameraZoom(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 2265
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 2266
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_camera_zoom"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2267
    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->convertZoom(Ljava/lang/String;)I

    move-result v1

    .line 2268
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v2, v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->getEquivalentZoom(Ljava/lang/String;I)I

    move-result v0

    .line 2270
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 2271
    const-string p0, "60"

    goto :goto_4b

    .line 2272
    :cond_23
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 2273
    sget-object p0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    goto :goto_4b

    .line 2275
    :cond_2e
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 2276
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result p0

    .line 2277
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_4b

    .line 2279
    :cond_41
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/CameraRepository;->getDeviceZoom(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 2282
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

    .line 1231
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

    .line 1232
    :goto_f
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeHandler:Landroid/os/Handler;

    if-eqz v3, :cond_1c

    const/16 v4, 0x32

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    move v1, v2

    .line 1233
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

    .line 1234
    :cond_4c
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->isModeTabScrolling()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1235
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1236
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x32

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 1238
    :cond_69
    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->onModeChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method private handleRestoreSettings()V
    .registers 7

    .line 542
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

    .line 544
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    if-eqz v0, :cond_120

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-nez v1, :cond_3c

    goto/16 :goto_120

    .line 550
    :cond_3c
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->isSmartModeOrder()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4b

    .line 551
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->updateSmartModeNames()V

    .line 552
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->initAppUI(Z)V

    .line 554
    :cond_4b
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz v0, :cond_52

    .line 555
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resetBgEnable()V

    .line 558
    :cond_52
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 559
    const-string v2, "backmodesstring"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v4, v3, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 560
    const-string v2, "backmainmodescount"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v4, v3, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 561
    const-string v2, "frontmodesstring"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v4, v3, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 562
    const-string v2, "frontmainmodescount"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v4, v3, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 564
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result v0

    .line 565
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2, v0}, Lcom/transsion/camera/app/common/IAppUI;->restoreCurrentModeByFacing(I)V

    .line 566
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->initAppUI(Z)V

    .line 568
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    invoke-interface {v2, v0}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getRestoreModeByFacing(I)Ljava/lang/String;

    move-result-object v0

    .line 569
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setModeName(Ljava/lang/String;)V

    .line 570
    invoke-static {}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->getInstance()Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->setModeName(Ljava/lang/String;)V

    .line 571
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->notModeSwitchCondition(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_bd

    .line 572
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->getCameraId(Lcom/transsion/camera/app/common/mode/ICameraMode;)Ljava/lang/String;

    move-result-object v0

    .line 573
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 574
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 575
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 576
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateZoomInfoList(Ljava/lang/String;)V

    return-void

    .line 579
    :cond_bd
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/setting/SettingManager;->getCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/CameraRepository;->nonDefaultCameraInASDMode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_102

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 580
    invoke-interface {v2, v3, v4}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isInsensorZoomStatus(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result v2

    if-eqz v2, :cond_d8

    goto :goto_102

    .line 591
    :cond_d8
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getPreviewSize()Landroid/util/Size;

    move-result-object v2

    if-eqz v2, :cond_ea

    .line 592
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2, v3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ea

    move v2, v1

    goto :goto_eb

    :cond_ea
    move v2, v5

    .line 593
    :goto_eb
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->notModeSwitchCondition(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f7

    .line 594
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->restoreParameters(Z)V

    return-void

    :cond_f7
    xor-int/2addr v1, v2

    .line 597
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsPreviewSizeChanged:Z

    .line 598
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsPreviewSizeChanged:Z

    if-nez v1, :cond_129

    .line 599
    invoke-direct {p0, v0, v5}, Lcom/transsion/camera/app/common/mode/ModeManager;->onModeChanged(Ljava/lang/String;Z)V

    return-void

    .line 581
    :cond_102
    :goto_102
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->notModeSwitchCondition(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11c

    .line 582
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 583
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 585
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateZoomInfoList(Ljava/lang/String;)V

    return-void

    .line 587
    :cond_11c
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->restoreSettingsForWideCamera(Ljava/lang/String;)V

    return-void

    .line 545
    :cond_120
    :goto_120
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_129

    const/16 v0, 0x14

    .line 546
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_129
    return-void
.end method

.method private handleSurfaceChanged(Ljava/lang/Object;II)V
    .registers 7

    .line 2711
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->isSecureCamera()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2712
    :cond_12
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsPreviewSizeChanged:Z

    if-eqz v0, :cond_28

    const/4 v0, 0x0

    .line 2713
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsPreviewSizeChanged:Z

    .line 2714
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result v1

    .line 2715
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    invoke-interface {v2, v1}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getRestoreModeByFacing(I)Ljava/lang/String;

    move-result-object v1

    .line 2716
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->onModeChanged(Ljava/lang/String;Z)V

    .line 2719
    :cond_28
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsDeviceControlAvailable:Z

    if-eqz v0, :cond_31

    .line 2720
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setMainPreviewDisplay(Ljava/lang/Object;II)V

    :cond_31
    return-void
.end method

.method private handlerPreviewViewChanged()V
    .registers 4

    .line 2725
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

    .line 2726
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mOldPreviewViewType:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewViewType:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    if-eq v0, v1, :cond_2c

    .line 2727
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V

    .line 2728
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 2730
    :cond_2c
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewViewType:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mOldPreviewViewType:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    return-void
.end method

.method private initAppUI(Z)V
    .registers 5

    .line 757
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock;)V

    .line 758
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSurfaceStateListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setSurfaceStatusListener(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)V

    .line 759
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeFeatureSupport:Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setModeFeatureSupport(Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;)V

    .line 760
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V

    .line 761
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setCameraSwitchListener(Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;)V

    .line 762
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V

    .line 763
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchTeleCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;)V

    .line 764
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchPeriscopeCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchPeriscopeCameraListener;)V

    .line 765
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchBlurCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;)V

    .line 766
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchDualCamBWCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;)V

    .line 767
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchSatCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;)V

    .line 768
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setCameraReConnectListener(Lcom/transsion/camera/app/common/IAppUIListener$ICameraReConnectListener;)V

    .line 769
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchDualAndMainCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;)V

    .line 770
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setRestartPreviewListener(Lcom/transsion/camera/app/common/IAppUIListener$IRestartPreviewListener;)V

    .line 771
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setModeDataInfoListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeDataInfoListener;)V

    .line 773
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeFeatureProvider:Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;->createModeFeatureResources()Ljava/util/List;

    move-result-object v0

    .line 774
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    invoke-interface {v1, v0, v2}, Lcom/transsion/camera/app/common/IAppUI;->setModeList(Ljava/util/List;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;)V

    .line 775
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateCurrentCamera(Ljava/lang/String;Z)V

    .line 776
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->initCameraInfoTracker(Ljava/util/List;)V

    return-void
.end method

.method private initCameraInfoTracker(Ljava/util/List;)V
    .registers 6

    .line 780
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isLaunchWithDeveloperMode()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 783
    :cond_7
    invoke-static {}, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->getInstance()Lcom/transsion/camera/utils/tuning/TuningFeatureApi;

    move-result-object v0

    .line 784
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 785
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/FeatureResource;

    .line 786
    iget-object v3, v2, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    iget-object v2, v2, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 788
    :cond_28
    invoke-interface {v0, v1}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ICamInfoTracker;->initModeInfo(Ljava/util/Map;)V

    .line 789
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ICamInfoTracker;->setCurrentModeName(Ljava/lang/String;)V

    return-void
.end method

.method private initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V
    .registers 12

    .line 1430
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    if-nez v0, :cond_5

    return-void

    .line 1432
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getSettingGroup()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/SettingManager;->updateModeGroup(J)V

    .line 1434
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->stopPreview()V

    .line 1435
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->checkSupportQuickCapture(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setSupportQuickCapture(Z)V

    .line 1436
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

    iget v8, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mOrientation:I

    move-object v1, p1

    move-object v6, p2

    invoke-interface/range {v1 .. v8}, Lcom/transsion/camera/app/common/mode/ICameraMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 1438
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mThumbnailTransition:Lcom/transsion/camera/app/common/thumbnailtransition/IThumbnailTransition;

    if-eqz p1, :cond_36

    .line 1439
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setThumbnailTransitionManager(Lcom/transsion/camera/app/common/thumbnailtransition/IThumbnailTransition;)V

    .line 1441
    :cond_36
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mQuickCaptureManager:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setQuickCaptureManager(Lcom/transsion/camera/app/common/provider/QuickCaptureManager;)V

    .line 1442
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->modeSupportAuxPreview(Lcom/transsion/camera/app/common/mode/ICameraMode;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSupportAuxPreview:Z

    .line 1443
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setModeSupportAuxPreview(Z)V

    .line 1444
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-boolean p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSupportAuxPreview:Z

    invoke-interface {p1, p2, v6}, Lcom/transsion/camera/app/common/IAppUI;->setAuxPreviewModeSupport(ZLjava/lang/String;)V

    .line 1445
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->modeSupportBackgroundPreview(Lcom/transsion/camera/app/common/mode/ICameraMode;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSupportBackgroundPreview:Z

    .line 1446
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setModeSupportBackgroundPreview(Z)V

    .line 1447
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-boolean p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSupportBackgroundPreview:Z

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUI;->setBackgroundPreviewModeSupport(Z)V

    .line 1448
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->setModeFeatureConfigIfNeeded(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 1449
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->modeSupportSlavePreview(Lcom/transsion/camera/app/common/mode/ICameraMode;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSupportSlavePreview:Z

    .line 1450
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setModeSupportSlavePreview(Z)V

    .line 1451
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mGotoActivityListenerImpl:Lcom/transsion/camera/app/common/mode/ModeManager$GotoActivityListenerImpl;

    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setGotoActivityListener(Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;)V

    .line 1452
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->registerStateCallback(Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;)V

    .line 1453
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->switchMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 1454
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    const/4 p2, 0x0

    invoke-interface {v1, p1, p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    .line 1455
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setInternalStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V

    .line 1456
    iget p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mBatteryStatus:I

    iget v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mTemperatureStatus:I

    invoke-interface {v1, p2, p1, v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onBatteryStatusChanged(ZII)V

    .line 1457
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSprdPlatform()Z

    move-result p1

    if-eqz p1, :cond_a5

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isOffLineSessionSupport()Z

    move-result p1

    if-nez p1, :cond_a5

    .line 1458
    invoke-interface {v1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeBgCaptureListener(Lcom/transsion/camera/app/common/IApp$ModeBgCaptureListener;)V

    .line 1460
    :cond_a5
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSurfaceStateListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    invoke-interface {v1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setSurfaceStatusListener(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)V

    return-void
.end method

.method private initModuleTransfer(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 3021
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result v0

    .line 3022
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

    .line 3026
    :cond_29
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v1, ""

    .line 3028
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->getCameraScope(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "key_flash_facade"

    invoke-virtual {v0, p1, v1, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3027
    const-string p1, "ringscreenlight"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_46

    :goto_45
    return-void

    .line 3032
    :cond_46
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->onRingScreenLightChange(Z)V

    return-void
.end method

.method private initWideCameraConvertList()V
    .registers 6

    .line 695
    sget-object p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mWideRangeConverterValueList:Ljava/util/List;

    if-nez p0, :cond_b

    .line 696
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sput-object p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mWideRangeConverterValueList:Ljava/util/List;

    .line 698
    :cond_b
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mWideRangeConverterValueList:[I

    .line 699
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mWideRangeConverterValueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    if-eqz p0, :cond_2b

    .line 701
    array-length v1, p0

    move v2, v0

    :goto_1b
    if-ge v2, v1, :cond_2b

    aget v3, p0, v2

    .line 702
    sget-object v4, Lcom/transsion/camera/app/common/mode/ModeManager;->mWideRangeConverterValueList:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 705
    :cond_2b
    sget-object p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mWideRangeConverterProgressList:Ljava/util/List;

    if-nez p0, :cond_36

    .line 706
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sput-object p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mWideRangeConverterProgressList:Ljava/util/List;

    .line 708
    :cond_36
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mWideRangeConverterProgressList:[I

    .line 709
    sget-object v1, Lcom/transsion/camera/app/common/mode/ModeManager;->mWideRangeConverterProgressList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz p0, :cond_54

    .line 711
    array-length v1, p0

    :goto_44
    if-ge v0, v1, :cond_54

    aget v2, p0, v0

    .line 712
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

    .line 1155
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isKeyguardLocked()Z
    .registers 3

    .line 3001
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_10

    .line 3002
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 3004
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

    .line 2221
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    .line 2222
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

    .line 1134
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    const/4 v1, 0x6

    .line 1135
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingManager;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    .line 1134
    const-string v3, "key_video_quality"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1136
    const-string v1, "6_60"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    return v2

    .line 1139
    :cond_25
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    .line 1140
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackVideoCamera()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSupportedVideoSizes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 1141
    const-string v1, "_"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1143
    :try_start_3d
    const-string v1, "0"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 1144
    new-instance v1, Landroid/util/Size;

    iget v3, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v1, v3, v0}, Landroid/util/Size;-><init>(II)V

    .line 1145
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

    .line 3044
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoModesCategory:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$addResourcesToContext$8()V
    .registers 2

    .line 2897
    invoke-static {}, Lcom/transsion/camera/utils/AssetLoaderUtil;->initResourcesLoader()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2898
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/AssetLoaderUtil;->addResourcesLoader(Landroid/content/Context;)V

    .line 2899
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/utils/AssetLoaderUtil;->addResourcesLoader(Landroid/content/Context;)V

    :cond_14
    const/4 p0, 0x1

    .line 2901
    invoke-static {p0}, Lcom/transsion/camera/utils/AssetLoaderUtil;->setIsLoaderResource(Z)V

    return-void
.end method

.method private synthetic lambda$handlerPreviewViewChanged$7(Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .registers 2

    .line 2728
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewViewType:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onPreviewTypeChanged(Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V

    return-void
.end method

.method private synthetic lambda$updatePreviewViewType$3(Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V
    .registers 4

    .line 332
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda5;-><init>()V

    .line 333
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 335
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V

    .line 336
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$updatePreviewViewType$4(Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .registers 2

    .line 345
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->getModePreviewType()Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updatePreviewViewType(Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V

    return-void
.end method

.method private synthetic lambda$updatePreviewViewType$5(Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .registers 2

    .line 347
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->getModePreviewType()Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updatePreviewViewType(Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V

    return-void
.end method

.method private synthetic lambda$updatePreviewViewType$6(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 359
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewViewType:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUI;->updatePreviewViewType(Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V

    return-void
.end method

.method private loadVIPSelfieDataFromDataStore()V
    .registers 5

    .line 2993
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "vip_selfie_face_id"

    const-string v3, "-1"

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    .line 2994
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

    .line 2995
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x0

    .line 2996
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    :cond_34
    return-void
.end method

.method private modeSupportAuxPreview(Lcom/transsion/camera/app/common/mode/ICameraMode;)Z
    .registers 2

    if-eqz p1, :cond_a

    .line 1175
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

    .line 1179
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

    .line 1183
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

    .line 1096
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_24

    .line 1097
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

    .line 1100
    :cond_24
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result p0

    if-nez p0, :cond_45

    .line 1101
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
    .registers 11

    .line 1255
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mAppDebugLogEnable:Z

    if-eqz v0, :cond_3b

    .line 1256
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onModeChanged] called with: modeName = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], isManualSwitchMode = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "], mInCameraSwitch = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_68

    .line 1258
    :cond_3b
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onModeChanged] called with: modeName = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], isManualSwitchMode = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "], mInCameraSwitch = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1260
    :goto_68
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    const/16 v1, 0x36

    const/4 v2, 0x0

    if-eqz v0, :cond_8a

    .line 1261
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1262
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1263
    :try_start_77
    sget-object p1, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "[onModeChanged] is in camera switch, return"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1264
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1265
    monitor-exit v0
    :try_end_84
    .catchall {:try_start_77 .. :try_end_84} :catchall_87

    .line 1266
    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPendingChangeModeName:Ljava/lang/String;

    return-void

    :catchall_87
    move-exception p0

    .line 1265
    :try_start_88
    monitor-exit v0
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    throw p0

    .line 1270
    :cond_8a
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->notModeSwitchCondition(Ljava/lang/String;)Z

    move-result v0

    const/16 v3, 0x3eb

    const/4 v4, 0x0

    if-eqz v0, :cond_ec

    .line 1271
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result v0

    if-nez v0, :cond_a9

    .line 1272
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v0

    invoke-interface {p2, v0, v4}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    goto :goto_b4

    .line 1274
    :cond_a9
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v4

    invoke-interface {v0, v4, p2}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 1276
    :goto_b4
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setModeName(Ljava/lang/String;)V

    .line 1277
    invoke-static {}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->getInstance()Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->setModeName(Ljava/lang/String;)V

    .line 1278
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object p1

    const-string p2, "mode_change"

    invoke-interface {p1, v3, p2}, Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;->onActionStart(ILjava/lang/String;)V

    .line 1280
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1281
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1282
    :try_start_d9
    sget-object p1, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "currentMode is same, mModeChangeLock notifyAll"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1283
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1284
    monitor-exit v0
    :try_end_e6
    .catchall {:try_start_d9 .. :try_end_e6} :catchall_e9

    .line 1285
    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPendingChangeModeName:Ljava/lang/String;

    return-void

    :catchall_e9
    move-exception p0

    .line 1284
    :try_start_ea
    monitor-exit v0
    :try_end_eb
    .catchall {:try_start_ea .. :try_end_eb} :catchall_e9

    throw p0

    .line 1288
    :cond_ec
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setModeName(Ljava/lang/String;)V

    .line 1289
    invoke-static {}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->getInstance()Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->setModeName(Ljava/lang/String;)V

    .line 1290
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object v0

    const-string v1, "mode_change"

    invoke-interface {v0, v3, v1}, Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;->onActionStart(ILjava/lang/String;)V

    .line 1292
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onModeChanged], ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1294
    iput-boolean v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedSaveCameraId:Z

    .line 1296
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->changeUIWhenSwitchModeBefore()V

    .line 1298
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1299
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 1301
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 1302
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-interface {p1, v3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->initContext(Landroid/content/Context;)V

    .line 1304
    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 1305
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingManager;->onCameraClosedBefore()V

    .line 1307
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->getCameraId(Lcom/transsion/camera/app/common/mode/ICameraMode;)Ljava/lang/String;

    move-result-object p1

    .line 1308
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_16f

    iget-boolean v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mReopenCameraBySwitchOffline:Z

    if-eqz v3, :cond_16d

    goto :goto_16f

    :cond_16d
    move v3, v4

    goto :goto_170

    :cond_16f
    :goto_16f
    move v3, v5

    .line 1309
    :goto_170
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[onModeChanged] mCurrentOpenedCamera:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " newCameraId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " , needReopenCamera:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " , mNeedReopenCameraForce:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mReopenCameraBySwitchOffline:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1310
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateZoomInfoList(Ljava/lang/String;)V

    .line 1311
    iput-boolean v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mReopenCameraBySwitchOffline:Z

    if-eqz v3, :cond_1ae

    .line 1313
    iput-boolean v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 1314
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCameraAsync()V

    .line 1316
    :cond_1ae
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    if-eqz v3, :cond_1ba

    .line 1319
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 1320
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 1323
    :cond_1ba
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    if-eqz p1, :cond_1c7

    .line 1324
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v4

    goto :goto_1c8

    :cond_1c7
    move-object p1, v2

    .line 1326
    :goto_1c8
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->updatePreviewViewType(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 1327
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    .line 1328
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 1329
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 1330
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 1332
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->changeUIWhenSwitchModeAfter()V

    .line 1333
    invoke-direct {p0, p1, v5, v4}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateZoom(Ljava/lang/String;ZZ)V

    .line 1334
    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPendingChangeModeName:Ljava/lang/String;

    return-void
.end method

.method private resetSurfaceStatus()V
    .registers 2

    const/4 v0, 0x0

    .line 2734
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAuxSurfaceReady:Z

    .line 2735
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewSurfaceReady:Z

    .line 2736
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mBackgroundSurfaceReady:Z

    .line 2737
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSlaveSurfaceReady:Z

    return-void
.end method

.method private restoreSettingsForWideCamera(Ljava/lang/String;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 1341
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1342
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 1343
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->needRebuildMode()Z

    move-result v1

    .line 1344
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1345
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 1347
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 1349
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    if-eqz v1, :cond_2c

    .line 1350
    :cond_23
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 1351
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 1354
    :cond_2c
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->getCameraId(Lcom/transsion/camera/app/common/mode/ICameraMode;)Ljava/lang/String;

    move-result-object v0

    .line 1355
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v3, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 1356
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 1357
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4b

    if-eqz v1, :cond_43

    goto :goto_4b

    .line 1364
    :cond_43
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    goto :goto_5c

    :cond_4b
    :goto_4b
    if-eqz v0, :cond_56

    .line 1360
    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v3

    goto :goto_57

    :cond_56
    const/4 p1, 0x0

    .line 1362
    :goto_57
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    .line 1366
    :goto_5c
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateZoomInfoList(Ljava/lang/String;)V

    .line 1367
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 1368
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 1369
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void
.end method

.method private sameFacing(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 2432
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

    .line 2984
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    if-nez v0, :cond_5

    return-void

    .line 2987
    :cond_5
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 2988
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 2987
    const-string/jumbo v4, "vip_selfie_face_id"

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2989
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

    .line 2364
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

    .line 1464
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1465
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeFeatureConfig()Lcom/transsion/camera/app/common/IModeFeatureConfig;

    move-result-object p1

    .line 1466
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUI;->setModeFeatureConfig(Lcom/transsion/camera/app/common/IModeFeatureConfig;)V

    .line 1467
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingManager;->setModeFeatureConfig(Lcom/transsion/camera/app/common/IModeFeatureConfig;)V

    :cond_14
    return-void
.end method

.method private switchBlurCamera(Ljava/lang/String;)V
    .registers 4

    .line 2296
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

    .line 2301
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 2302
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 2303
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 2304
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 2305
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 2306
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 2309
    const-string v0, "on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_42

    .line 2310
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackBlackWhitePortraitCamera()Ljava/lang/String;

    move-result-object p1

    goto :goto_48

    .line 2312
    :cond_42
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackBlurCamera()Ljava/lang/String;

    move-result-object p1

    .line 2314
    :goto_48
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 2315
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 2316
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    .line 2318
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 2319
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void

    .line 2297
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

    .line 2298
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2297
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private switchDualCamBWCamera(Ljava/lang/String;)V
    .registers 4

    .line 2323
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

    .line 2328
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 2329
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_1a

    const/4 v1, 0x0

    .line 2330
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 2332
    :cond_1a
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 2333
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 2336
    const-string v0, "on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 2337
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBack2XBlurCamera()Ljava/lang/String;

    move-result-object p1

    goto :goto_39

    .line 2339
    :cond_33
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackBlurCamera()Ljava/lang/String;

    move-result-object p1

    .line 2341
    :goto_39
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 2342
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 2343
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 2344
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void

    .line 2324
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

    .line 2325
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2324
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private switchSatCamera(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 2089
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchSatCamera(Ljava/lang/String;Z)V

    return-void
.end method

.method private switchSatCamera(Ljava/lang/String;Z)V
    .registers 6

    .line 2067
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

    .line 2072
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 2073
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_2b

    const/4 v2, 0x0

    .line 2074
    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 2075
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0xc6

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 2077
    :cond_2b
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 2078
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 2079
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateZoom(Ljava/lang/String;ZZ)V

    .line 2080
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateWideCamera(Ljava/lang/String;)V

    .line 2081
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 2082
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 2083
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p2, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updateCurrentCameraId(Ljava/lang/String;)V

    .line 2084
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 2085
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void

    .line 2068
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

    .line 2069
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2068
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private switchUnderwaterCamera(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    .line 429
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    const/4 v1, 0x0

    if-nez v0, :cond_87

    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_87

    .line 434
    :cond_11
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[switchUnderwaterCamera]"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 435
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 436
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v2, :cond_22

    .line 437
    invoke-interface {v2, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 439
    :cond_22
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    .line 440
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v3

    .line 441
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 442
    invoke-interface {v4}, Lcom/transsion/camera/app/common/mode/ICameraMode;->needRebuildMode()Z

    move-result v5

    .line 443
    invoke-interface {v4}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 445
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 446
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    if-eqz v5, :cond_49

    .line 447
    :cond_40
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 448
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v4

    iput-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 451
    :cond_49
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v4, :cond_52

    .line 452
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-interface {v4, v2, v6}, Lcom/transsion/camera/app/common/IAppUI;->updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :cond_52
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v2, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 455
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 456
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    if-eqz v5, :cond_62

    goto :goto_6a

    .line 459
    :cond_62
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, p2, p1, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    goto :goto_6f

    .line 457
    :cond_6a
    :goto_6a
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    .line 461
    :goto_6f
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p2

    invoke-interface {p1, p2, v1}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 462
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 463
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return v0

    .line 430
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

    .line 431
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 430
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method private switchVideoCamera(Ljava/lang/String;)V
    .registers 11

    .line 382
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

    .line 387
    :cond_18
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[switchVideoCamera]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 388
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 389
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 390
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 392
    :cond_2a
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    .line 393
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v4

    .line 394
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 395
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->needRebuildMode()Z

    move-result v8

    .line 396
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 398
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 399
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getSwitchMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 401
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    if-eqz v8, :cond_5b

    .line 402
    :cond_52
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 403
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 406
    :cond_5b
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_64

    .line 407
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-interface {v0, v3, v5}, Lcom/transsion/camera/app/common/IAppUI;->updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :cond_64
    const-string v0, "on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_73

    .line 412
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackVideoCamera()Ljava/lang/String;

    move-result-object p1

    goto :goto_79

    .line 414
    :cond_73
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object p1

    .line 416
    :goto_79
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 417
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 418
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    if-eqz v8, :cond_89

    goto :goto_91

    .line 421
    :cond_89
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, v2, p1, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    goto :goto_96

    .line 419
    :cond_91
    :goto_91
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    .line 423
    :goto_96
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 424
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 425
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void

    .line 383
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

    .line 384
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 383
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private switchWideAndMacro()V
    .registers 1

    .line 1957
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->updateTopBarUI()V

    return-void
.end method

.method private switchWideCamera(Ljava/lang/String;Z)V
    .registers 4

    .line 1973
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    if-nez v0, :cond_13

    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_13

    .line 1978
    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchWideCameraImpl(Ljava/lang/String;Z)V

    return-void

    .line 1974
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

    .line 1975
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1974
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private switchWideCameraImpl(Ljava/lang/String;Z)V
    .registers 13

    .line 1982
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

    .line 1983
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 1984
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->resetSurfaceStatus()V

    .line 1985
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    .line 1986
    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1988
    :cond_24
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    .line 1989
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1990
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 1991
    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->needRebuildMode()Z

    move-result v9

    .line 1992
    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    if-eqz p2, :cond_3d

    .line 1995
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCameraAsync()V

    goto :goto_42

    .line 1997
    :cond_3d
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 1999
    :goto_42
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getSwitchMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2001
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    if-eqz v9, :cond_5d

    .line 2002
    :cond_54
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 2003
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 2006
    :cond_5d
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_66

    .line 2007
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-interface {v1, v4, v3}, Lcom/transsion/camera/app/common/IAppUI;->updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2011
    :cond_66
    const-string v1, "replace"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v3, 0x3e

    if-eqz v1, :cond_9c

    .line 2012
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1, v1, v4}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isInsensorZoomStatus(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p1

    if-eqz p1, :cond_83

    .line 2014
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object p1

    goto :goto_89

    .line 2016
    :cond_83
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object p1

    .line 2019
    :goto_89
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_151

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_151

    .line 2020
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto/16 :goto_151

    .line 2022
    :cond_9c
    const-string v1, "on"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c3

    .line 2023
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/CameraRepository;->getWideCamera(Z)Ljava/lang/String;

    move-result-object p1

    .line 2024
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_151

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_151

    .line 2025
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto/16 :goto_151

    .line 2028
    :cond_c3
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_d6

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d6

    .line 2029
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x3f

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 2031
    :cond_d6
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1, v1, v3, v4}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportSAT(Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p1

    .line 2032
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1, v3, v4}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isInsensorZoomStatus(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result v1

    .line 2033
    iget-boolean v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    if-eqz v3, :cond_100

    if-eqz v1, :cond_f9

    .line 2034
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackDefaultCamera()Ljava/lang/String;

    move-result-object p1

    goto :goto_106

    :cond_f9
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackDefaultCamera(Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_106

    .line 2036
    :cond_100
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getFrontDefaultCamera()Ljava/lang/String;

    move-result-object p1

    .line 2039
    :goto_106
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_151

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportVideoCamera()Z

    move-result v1

    if-eqz v1, :cond_151

    .line 2040
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

    .line 2041
    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_151

    :cond_136
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    const-string v3, "key_brightbess_value"

    .line 2042
    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/common/setting/SettingManager;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "value_dark"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_151

    .line 2043
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackVideoCamera()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_151

    .line 2044
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    .line 2047
    :cond_151
    :goto_151
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->getTargetCameraZoom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2048
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    const-string v4, "key_camera_zoom"

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/common/setting/SettingManager;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v3

    .line 2049
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_174

    if-eqz v3, :cond_174

    .line 2050
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/setting/SettingManager;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v4

    const-string v6, "key_real_zoom"

    .line 2051
    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    .line 2050
    invoke-virtual {v4, v6, v1, v3, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2053
    :cond_174
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 2054
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 2055
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_191

    if-eqz v9, :cond_184

    goto :goto_191

    .line 2058
    :cond_184
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, p2, v0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    .line 2059
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p2, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updateCurrentCameraId(Ljava/lang/String;)V

    goto :goto_196

    .line 2056
    :cond_191
    :goto_191
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    .line 2061
    :goto_196
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p2

    invoke-interface {p1, p2, v2}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 2062
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 2063
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void
.end method

.method private unInitAppUI()V
    .registers 3

    .line 793
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeFeatureProvider:Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;->destroyModeFeatureResources()V

    .line 794
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock;)V

    .line 795
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setModeFeatureSupport(Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;)V

    .line 796
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V

    .line 797
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setCameraSwitchListener(Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;)V

    .line 798
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V

    .line 799
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setRestartPreviewListener(Lcom/transsion/camera/app/common/IAppUIListener$IRestartPreviewListener;)V

    .line 800
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchTeleCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;)V

    .line 801
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchPeriscopeCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchPeriscopeCameraListener;)V

    .line 802
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchBlurCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;)V

    .line 803
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchDualCamBWCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;)V

    .line 804
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setSurfaceStatusListener(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)V

    .line 805
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchSatCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;)V

    .line 806
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchDualAndMainCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;)V

    return-void
.end method

.method private unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .registers 2

    .line 1424
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->unRegisterStateCallback(Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;)V

    const/4 p0, 0x0

    .line 1425
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setSurfaceStatusListener(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)V

    .line 1426
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->unInit()V

    return-void
.end method

.method private updateMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V
    .registers 4

    .line 2377
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeFeatureProvider:Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;->updateModeFeatureSync(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private updatePreviewViewType(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .registers 6

    .line 344
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V

    .line 345
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 346
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V

    .line 347
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 348
    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getPreviewViewType()Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewViewType:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    .line 349
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getPreviewViewType()Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    move-result-object v0

    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getPreviewViewType()Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    move-result-object v1

    if-eq v0, v1, :cond_74

    .line 350
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 351
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_66

    .line 352
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mode switching with different previewViewType, stop preview first. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
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

    .line 352
    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 354
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->stopRepeatingRequest()V

    .line 355
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->stopPreview()V

    .line 358
    :cond_66
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V

    .line 359
    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_74
    return-void
.end method

.method private updatePreviewViewType(Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V
    .registers 6

    .line 316
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewViewType:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    .line 317
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewViewType:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    .line 318
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

    .line 320
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v2

    if-eqz v2, :cond_5a

    if-eqz v0, :cond_5a

    if-eq v0, p1, :cond_5a

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v2, :cond_5a

    .line 324
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

    .line 326
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->stopRepeatingRequest()V

    .line 327
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->stopPreview()V

    .line 329
    :cond_5a
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V

    .line 330
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 331
    new-instance v0, Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V

    .line 339
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 340
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateWideCamera(Ljava/lang/String;)V
    .registers 9

    .line 2128
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object v0

    .line 2129
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    .line 2130
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

    .line 2131
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->resetSurfaceStatus()V

    .line 2132
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->SAT_CAMERA_CHANGED_SETTINGS:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_32
    if-ge v4, v3, :cond_44

    aget-object v5, v2, v4

    .line 2133
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v6, v5}, Lcom/transsion/camera/app/common/setting/SettingManager;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v5

    if-eqz v5, :cond_41

    .line 2135
    invoke-interface {v5, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->storeCameraIdBeforeSAT(Ljava/lang/String;)V

    :cond_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    .line 2138
    :cond_44
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v3, "wide_camera"

    if-eqz v2, :cond_63

    .line 2139
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7e

    .line 2140
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/common/setting/SettingManager;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    if-eqz p0, :cond_7e

    .line 2142
    const-string p1, "on"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 2145
    :cond_63
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 2146
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7e

    .line 2147
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/common/setting/SettingManager;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    if-eqz p0, :cond_7e

    .line 2149
    const-string p1, "off"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_7e
    return-void
.end method

.method private updateZoom(Ljava/lang/String;ZZ)V
    .registers 9

    .line 2168
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    const-string v1, "key_camera_zoom"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingManager;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    if-eqz p2, :cond_13

    .line 2173
    sget-object p0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->forceApplyValue(Ljava/lang/String;)V

    return-void

    .line 2176
    :cond_13
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p2

    .line 2177
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v2, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2178
    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->convertZoom(Ljava/lang/String;)I

    move-result v2

    .line 2179
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v3, p2, v2}, Lcom/transsion/camera/app/common/CameraRepository;->getEquivalentZoom(Ljava/lang/String;I)I

    move-result v3

    .line 2180
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v4, p2}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 2181
    div-int/lit16 v3, v2, 0x3e8

    mul-int/lit16 v3, v3, 0x3e8

    invoke-direct {p0, v3}, Lcom/transsion/camera/app/common/mode/ModeManager;->converWideToSat(I)I

    move-result v3

    .line 2184
    :cond_39
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v4, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 2185
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_ac

    .line 2187
    :cond_46
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->isTeleCamera(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 2188
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->isTeleCamera(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_ac

    .line 2189
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

    .line 2192
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_66
    move-object v1, p0

    goto :goto_ac

    :cond_68
    div-float/2addr p1, p0

    float-to-int p0, p1

    .line 2194
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_66

    :cond_6f
    if-eqz p3, :cond_a2

    .line 2201
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/common/CameraRepository;->getDeviceZoomRatio(Ljava/lang/String;)F

    move-result p2

    .line 2202
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p3, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8c

    .line 2203
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

    .line 2207
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_66

    :cond_9b
    div-float/2addr p0, p2

    float-to-int p0, p0

    .line 2209
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_66

    .line 2213
    :cond_a2
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0, p1, v3}, Lcom/transsion/camera/app/common/CameraRepository;->getDeviceZoom(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 2217
    :cond_ac
    :goto_ac
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceApplyValue(Ljava/lang/String;)V

    return-void
.end method

.method private updateZoomInfoList(Ljava/lang/String;)V
    .registers 5

    .line 1243
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1245
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getZoomInfoList()Ljava/util/List;

    move-result-object v1

    .line 1246
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeOffsetPadding()I

    move-result v2

    .line 1247
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getZoomItemType()I

    move-result v0

    .line 1248
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_1b

    .line 1249
    invoke-interface {p0, v1, p1, v2, v0}, Lcom/transsion/camera/app/common/IAppUI;->updateZoomInfo(Ljava/util/List;Ljava/lang/String;II)V

    :cond_1b
    return-void
.end method


# virtual methods
.method public currentModeName()Ljava/lang/String;
    .registers 1

    .line 867
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 870
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public destroyTask()V
    .registers 1

    .line 863
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->destroyTask()V

    return-void
.end method

.method public getModeGroup()J
    .registers 3

    .line 3060
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-nez p0, :cond_7

    const-wide/16 v0, 0x3

    return-wide v0

    .line 3063
    :cond_7
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getSettingGroup()J

    move-result-wide v0

    return-wide v0
.end method

.method public getModeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;
    .registers 1

    .line 3053
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-nez p0, :cond_7

    .line 3054
    sget-object p0, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->PHOTO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    return-object p0

    .line 3056
    :cond_7
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    move-result-object p0

    return-object p0
.end method

.method public init(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IApp$IIntentAction;)V
    .registers 6

    .line 624
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    if-nez v0, :cond_6

    goto/16 :goto_177

    .line 625
    :cond_6
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 626
    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    .line 627
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    .line 628
    iput-object p4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

    const/4 p2, 0x1

    .line 629
    iput-boolean p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsDeviceControlAvailable:Z

    .line 630
    new-instance p3, Lcom/transsion/camera/app/common/mode/ModeManager$CameraFirstFrameCallback;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/transsion/camera/app/common/mode/ModeManager$CameraFirstFrameCallback;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;Lcom/transsion/camera/app/common/mode/ModeManager-IA;)V

    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewFirstFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    .line 631
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setFirstFrameCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;)V

    .line 632
    new-instance p3, Lcom/transsion/camera/app/common/mode/ModeManager$MainHandler;

    invoke-direct {p3, p0}, Lcom/transsion/camera/app/common/mode/ModeManager$MainHandler;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V

    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mMainHandler:Landroid/os/Handler;

    .line 634
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getSettingManager()Lcom/transsion/camera/app/common/setting/SettingManager;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    .line 635
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDispatchListener:Lcom/transsion/camera/app/common/setting/ISettingManager$DispatchListener;

    invoke-virtual {p3, v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->setDispatchListener(Lcom/transsion/camera/app/common/setting/ISettingManager$DispatchListener;)V

    .line 636
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 638
    new-instance p3, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    invoke-direct {p3}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;-><init>()V

    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mQuickCaptureManager:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    .line 639
    new-instance v0, Lcom/transsion/camera/app/common/mode/ModeManager$MyQCResultListener;

    invoke-direct {v0, p0, p4}, Lcom/transsion/camera/app/common/mode/ModeManager$MyQCResultListener;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;Lcom/transsion/camera/app/common/mode/ModeManager-IA;)V

    invoke-virtual {p3, v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->setQuickCaptureResultListener(Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;)V

    const/4 p3, 0x0

    .line 641
    invoke-direct {p0, p3}, Lcom/transsion/camera/app/common/mode/ModeManager;->initAppUI(Z)V

    .line 642
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    .line 644
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->initWideCameraConvertList()V

    .line 646
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "CameraModeChangeThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeThread:Landroid/os/HandlerThread;

    .line 647
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 648
    new-instance p1, Lcom/transsion/camera/app/common/mode/ModeManager$ModeChangeHandler;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager$ModeChangeHandler;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeHandler:Landroid/os/Handler;

    .line 650
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p4, v0}, Lcom/transsion/camera/app/common/IAppUI;->updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p4}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p4

    invoke-interface {p1, p4, p3}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 652
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string p4, "key_restore_settings_notify_ui"

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p4, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListenerToFirst(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 654
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string p4, "key_wide_camera_item_seleccted"

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p4, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 656
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string p4, "key_ai_group_photo_camera_id"

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p4, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 658
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string p4, "key_video_camera_change"

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p4, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 660
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string p4, "key_google_lens_click"

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p4, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 662
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string p4, "action_barcode_activity_start"

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p4, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 664
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string p4, "action_gallery_activity_start"

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p4, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 666
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string p4, "action_movie_review_activity_start"

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p4, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 668
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string p4, "action_sleep_activity_start"

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p4, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 670
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string p4, "key_wide_camera_selected"

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p4, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 672
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string p4, "key_when_wide_main_changed"

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p4, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 674
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string p4, "key_zoom_ui_state"

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p4, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 676
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string p4, "key_switch_camera_on_zoom"

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p4, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 679
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string p4, "key_video_hdr_10_plus"

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p4, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 681
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string p4, "key_hdr_format"

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p4, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 684
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

    .line 685
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_16a

    .line 686
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->loadVIPSelfieDataFromDataStore()V

    .line 689
    :cond_16a
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isOffLineSessionSupport()Z

    move-result p1

    if-eqz p1, :cond_177

    .line 690
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setBGOfflineSwitchCallback(Lcom/transsion/camera/app/common/IAppUIListener$IBGOfflineSwitchCallback;)V

    :cond_177
    :goto_177
    return-void
.end method

.method public isLivePhotoMediaRecorderPrepared()Z
    .registers 1

    .line 3014
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 3017
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isLivePhotoMediaRecorderPrepared()Z

    move-result p0

    return p0
.end method

.method public isModeNeedNotifyNewMedia()Z
    .registers 1

    .line 920
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p0, :cond_9

    .line 921
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isModeNeedNotifyNewMedia()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public modeNotSupportWaitPageMode()Z
    .registers 1

    .line 2933
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

    .line 2929
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

    .line 914
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p0, :cond_7

    .line 915
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->recentAppsStart()V

    :cond_7
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .registers 4

    .line 2922
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p0, :cond_9

    .line 2923
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onActivityResult(IILandroid/content/Intent;)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public onBackPressed()Z
    .registers 1

    .line 1070
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

    .line 1066
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

    .line 2448
    iput p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mBatteryStatus:I

    .line 2449
    iput p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mTemperatureStatus:I

    .line 2450
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz v0, :cond_b

    .line 2451
    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onBatteryStatusChanged(ZII)V

    .line 2453
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    if-eqz p0, :cond_12

    .line 2454
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingManager;->onBatteryStatusChanged(ZII)V

    :cond_12
    return-void
.end method

.method public onBgCaptureDone()V
    .registers 3

    .line 2704
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onBgCaptureDone"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2705
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz p0, :cond_e

    .line 2706
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCameraAsync()V

    :cond_e
    return-void
.end method

.method public onCameraStateChanged(I)V
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_30

    .line 1109
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSupportAuxPreview:Z

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setModeSupportAuxPreview(Z)V

    .line 1110
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSupportAuxPreview:Z

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setAuxPreviewModeSupport(ZLjava/lang/String;)V

    .line 1111
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSupportBackgroundPreview:Z

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setModeSupportBackgroundPreview(Z)V

    .line 1112
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSupportBackgroundPreview:Z

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUI;->setBackgroundPreviewModeSupport(Z)V

    .line 1113
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSupportSlavePreview:Z

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setModeSupportSlavePreview(Z)V

    const/4 p1, 0x0

    .line 1114
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    return-void

    :cond_30
    const/4 v0, 0x1

    if-ne p1, v0, :cond_36

    .line 1116
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->resetSurfaceStatus()V

    :cond_36
    return-void
.end method

.method public onCameraSwitch(ZLjava/lang/String;)V
    .registers 14

    .line 1473
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

    .line 1474
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    if-eqz v1, :cond_28

    .line 1475
    const-string p0, "[onCameraSwitch] is in camera switch"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1478
    :cond_28
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result v1

    if-nez v1, :cond_4f

    .line 1479
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

    .line 1482
    :cond_4f
    const-string v1, "[onCameraSwitch]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1483
    const-string v1, "onCameraSwitch"

    invoke-static {v1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 1484
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 1485
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object v1

    const/16 v2, 0x3ea

    const-string v3, "camera_switch"

    invoke-interface {v1, v2, v3}, Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;->onActionStart(ILjava/lang/String;)V

    .line 1487
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz p1, :cond_a9

    .line 1490
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v2, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->notifySwitchByUser(Z)V

    .line 1491
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->getOtherFaceCamera(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1492
    invoke-direct {p0, v5, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->canSwitch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_ab

    .line 1493
    new-instance p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {p1, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    .line 1494
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    .line 1495
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "all_camera_damaged"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1494
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 1496
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    .line 1500
    :cond_a9
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNextCameraId:Ljava/lang/String;

    .line 1502
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

    .line 1503
    const-string p1, "onCameraSwitch: wait"

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1504
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->resetOfflineState()V

    .line 1505
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v5, v2}, Lcom/transsion/camera/app/common/IAppUI;->updateSwitchCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v10}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1507
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->switchToOffline(I)V

    .line 1508
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->waitOfflineReady()V

    .line 1509
    const-string p1, "onCameraSwitch: wait done"

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1513
    :cond_e6
    const-string p1, "[onCameraSwitch] start."

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1514
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 1515
    iput-boolean v10, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedSaveCameraId:Z

    .line 1517
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_fb

    .line 1518
    invoke-interface {p1, v5, v2}, Lcom/transsion/camera/app/common/IAppUI;->updateSwitchCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v10}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1521
    :cond_fb
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckAIGroup:Z

    if-eqz p1, :cond_11e

    invoke-direct {p0, v5}, Lcom/transsion/camera/app/common/mode/ModeManager;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_11e

    .line 1522
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingManager;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    .line 1523
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/setting/SettingManager;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    .line 1522
    const-string v4, "front_wide_camera"

    const-string v6, "off"

    invoke-virtual {p1, v4, v6, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1524
    iput-boolean v10, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckAIGroup:Z

    .line 1526
    :cond_11e
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1527
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 1528
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->needRebuildMode()Z

    move-result v3

    .line 1529
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 1532
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

    .line 1533
    :cond_13c
    :goto_13c
    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    .line 1534
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    .line 1535
    iget-boolean v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsResetCurrentMode:Z

    if-nez v4, :cond_153

    .line 1536
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    iget-object v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v9, p2

    invoke-interface/range {v4 .. v9}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getSwitchMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_15b

    .line 1537
    :cond_153
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-interface {p2, v4}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getDefaultMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1538
    :goto_15b
    iget-boolean v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsResetCurrentMode:Z

    if-eqz v4, :cond_169

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSpecialModeNameForReset:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_169

    .line 1539
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSpecialModeNameForReset:Ljava/lang/String;

    .line 1542
    :cond_169
    :goto_169
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->resetSurfaceStatus()V

    .line 1543
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCameraAsync()V

    .line 1545
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1546
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17d

    if-eqz v3, :cond_180

    .line 1547
    :cond_17d
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 1550
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

    .line 1551
    :cond_191
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v7}, Lcom/transsion/camera/app/common/IAppUI;->setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V

    .line 1552
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v8, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-interface {p1, v8, v10}, Lcom/transsion/camera/app/common/IAppUI;->updateCurrentCamera(Ljava/lang/String;Z)V

    .line 1553
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUI;->setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V

    .line 1554
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v5, v2}, Lcom/transsion/camera/app/common/IAppUI;->updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    :cond_1a7
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setModeName(Ljava/lang/String;)V

    .line 1558
    invoke-static {}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->getInstance()Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->setModeName(Ljava/lang/String;)V

    .line 1559
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v6, p2}, Lcom/transsion/camera/app/common/IAppUI;->updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c2

    if-eqz v3, :cond_1c8

    .line 1562
    :cond_1c2
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 1565
    :cond_1c8
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingManager;->onCameraClosedBefore()V

    .line 1566
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->getCameraId(Lcom/transsion/camera/app/common/mode/ICameraMode;)Ljava/lang/String;

    move-result-object p1

    .line 1567
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateZoomInfoList(Ljava/lang/String;)V

    .line 1568
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v2, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 1569
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 1570
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v2, v10}, Lcom/transsion/camera/app/common/mode/ICameraMode;->notifySwitchByUser(Z)V

    .line 1571
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->notifyModeforSwitchDevice()V

    .line 1572
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportDualVideo()Z

    move-result v2

    if-eqz v2, :cond_1f2

    .line 1573
    invoke-direct {p0, p1, v1, v10}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateZoom(Ljava/lang/String;ZZ)V

    .line 1575
    :cond_1f2
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21b

    if-eqz v3, :cond_1fb

    goto :goto_21b

    .line 1586
    :cond_1fb
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportDualVideo()Z

    move-result v1

    if-nez v1, :cond_215

    .line 1587
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, p2, v1, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    .line 1588
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v1

    invoke-interface {p2, v1, v10}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 1590
    :cond_215
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p2, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updateCurrentCameraId(Ljava/lang/String;)V

    goto :goto_246

    :cond_21b
    :goto_21b
    if-eqz p1, :cond_225

    .line 1578
    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object v7, p2, v10

    .line 1580
    :cond_225
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, p2, v7}, Lcom/transsion/camera/app/common/mode/ModeManager;->initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    if-eqz p1, :cond_23b

    .line 1581
    const-string p1, "1"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23b

    .line 1582
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p2, 0xec

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1584
    :cond_23b
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p2

    invoke-interface {p1, p2, v10}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 1592
    :goto_246
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    if-nez v4, :cond_25a

    .line 1594
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_25a

    .line 1595
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;->onSwitchMode(Ljava/lang/String;)V

    .line 1598
    :cond_25a
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 1599
    const-string p0, "[onCameraSwitch] end."

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onExchangeWideAndMacro()V
    .registers 3

    .line 2678
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[onExchangeWideAndMacro] "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2679
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchWideAndMacro()V

    return-void
.end method

.method public onLongPress()Z
    .registers 1

    .line 1074
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

    .line 1605
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onOfflineSwitchFinish] ,offlineType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", getActivityResume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1606
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1605
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_55

    .line 1608
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1609
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 1610
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->notifyOfflineReady()V

    return-void

    .line 1614
    :cond_3f
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/common/mode/ModeManager$4;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager$4;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;I)V

    const-string p1, "ReleaseGLSurface"

    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1623
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz p0, :cond_71

    .line 1625
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCameraAsync()V

    return-void

    :cond_55
    const/4 v0, 0x1

    if-ne p1, v0, :cond_67

    .line 1629
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1630
    :try_start_5b
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mReopenCameraBySwitchOffline:Z

    .line 1631
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1632
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

    .line 1634
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->notifyOfflineReady()V

    :cond_71
    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 3

    .line 2437
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mOrientation:I

    if-eq v0, p1, :cond_11

    const/4 v0, 0x1

    .line 2438
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckOrientation:Z

    .line 2440
    :cond_11
    iput p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mOrientation:I

    .line 2441
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p0, :cond_1a

    .line 2442
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onOrientationChanged(I)V

    :cond_1a
    return-void
.end method

.method public onSatCameraChanged(I)V
    .registers 7

    .line 2668
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->SAT_CAMERA_CHANGED_SETTINGS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 2669
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v4, v3}, Lcom/transsion/camera/app/common/setting/SettingManager;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 2671
    invoke-interface {v3, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onSatCameraChanged(I)V

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_16
    return-void
.end method

.method public onSingleTapUp()Z
    .registers 1

    .line 1077
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

    .line 2636
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSwitchBlurCamera] value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2637
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchBlurCamera(Ljava/lang/String;)V

    return-void
.end method

.method public onSwitchDualAndMainCamera(Ljava/lang/String;)V
    .registers 11

    .line 2597
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSwitchDualAndMainCamera] value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2598
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    if-nez v1, :cond_b6

    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result v1

    if-nez v1, :cond_26

    goto/16 :goto_b6

    .line 2603
    :cond_26
    const-string v0, "on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 2604
    new-instance v0, Lcom/transsion/camera/app/common/provider/FeatureParameters;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/provider/FeatureParameters;-><init>()V

    .line 2605
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/provider/FeatureParameters;->setStereoOpen(Z)V

    .line 2606
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    .line 2607
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/CameraRepository;->getBackBlurCamera()Ljava/lang/String;

    move-result-object v2

    .line 2608
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/CameraRepository;->getBack2XBlurCamera()Ljava/lang/String;

    move-result-object v3

    .line 2609
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v4

    .line 2610
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v5

    .line 2611
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

    .line 2613
    :goto_70
    iput-boolean v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 2614
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v8}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 2615
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 2616
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 2617
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 2618
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;Lcom/transsion/camera/app/common/provider/FeatureParameters;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 2619
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 2620
    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 2621
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    .line 2622
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v0

    invoke-interface {p1, v0, v8}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 2623
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 2624
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void

    .line 2599
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

    .line 2600
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2599
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onSwitchDualCamBWCameraListener(Ljava/lang/String;)V
    .registers 5

    .line 2642
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSwitchDualCamBWCamera] value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2643
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchDualCamBWCamera(Ljava/lang/String;)V

    return-void
.end method

.method public onSwitchLogicalCamera(Ljava/lang/String;)V
    .registers 5

    .line 2536
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSwitchLogicalCamera] value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2537
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

    .line 2542
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 2543
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_30

    const/4 v1, 0x0

    .line 2544
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 2546
    :cond_30
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 2547
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 2550
    const-string v0, "on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 2551
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBack2XBlurCamera()Ljava/lang/String;

    move-result-object p1

    goto :goto_4f

    .line 2553
    :cond_49
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackBlurCamera()Ljava/lang/String;

    move-result-object p1

    .line 2555
    :goto_4f
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 2556
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 2557
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 2558
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void

    .line 2538
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

    .line 2539
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2538
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onSwitchMode(Ljava/lang/String;)V
    .registers 8

    .line 1188
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

    .line 1189
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isBgOfflineCapturing()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_75

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getOfflineSessionCount()I

    move-result v1

    if-ge v1, v2, :cond_75

    .line 1190
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->switchToOffline(I)V

    .line 1191
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1193
    :try_start_3d
    const-string v3, "onSwitchMode wait"

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1194
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 1195
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

    .line 1197
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

    .line 1198
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 1199
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1201
    :goto_71
    monitor-exit v1

    goto :goto_75

    :goto_73
    monitor-exit v1
    :try_end_74
    .catchall {:try_start_50 .. :try_end_74} :catchall_4d

    throw p0

    .line 1204
    :cond_75
    :goto_75
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPendingChangeModeName:Ljava/lang/String;

    .line 1205
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsResetCurrentMode:Z

    if-eqz v0, :cond_83

    .line 1206
    sget-object p0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onSwitchMode mIsResetCurrentMode, do not show preview cover"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1210
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

    .line 1212
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeHandler:Landroid/os/Handler;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 1213
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_d4

    .line 1215
    :cond_a4
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_d4

    .line 1216
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSwitchMode, process switchAnimate, modeName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1217
    const-string v0, "com.transsion.camera.feature.mode.movie.MovieModeEntry"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 1218
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0x93

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1220
    :cond_cd
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0x35

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1224
    :cond_d4
    :goto_d4
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object v0

    const/16 v2, 0x3eb

    invoke-interface {v0, v2}, Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;->isTargetActionExists(I)Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 1225
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;->onActionCancel(I)V

    .line 1227
    :cond_e7
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSwitchOpticalZoomCamera(Ljava/lang/String;)V
    .registers 5

    .line 2514
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

    .line 2519
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 2520
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_1a

    const/4 v1, 0x0

    .line 2521
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 2523
    :cond_1a
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 2524
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 2525
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->resetSurfaceStatus()V

    .line 2526
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSwitchOpticalZoomCamera] switch to cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2527
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 2528
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 2529
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updateCurrentCameraId(Ljava/lang/String;)V

    .line 2530
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 2531
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void

    .line 2515
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

    .line 2516
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2515
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onSwitchPeriscopeCamera(Ljava/lang/String;)V
    .registers 5

    .line 2563
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSwitchPeriscopeCamera] value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2564
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

    .line 2569
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 2570
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 2571
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 2572
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 2573
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 2574
    const-string v0, "on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 2575
    new-instance v0, Lcom/transsion/camera/app/common/provider/FeatureParameters;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/provider/FeatureParameters;-><init>(Z)V

    .line 2576
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;Lcom/transsion/camera/app/common/provider/FeatureParameters;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p1, :cond_5d

    .line 2579
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBack5XLongFocusCamera()Ljava/lang/String;

    move-result-object p1

    goto :goto_61

    .line 2581
    :cond_5d
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->getCameraId(Lcom/transsion/camera/app/common/mode/ICameraMode;)Ljava/lang/String;

    move-result-object p1

    .line 2583
    :goto_61
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 2584
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    if-eqz p1, :cond_73

    .line 2587
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v1

    goto :goto_74

    :cond_73
    const/4 p1, 0x0

    .line 2589
    :goto_74
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    .line 2590
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 2591
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 2592
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void

    .line 2565
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

    .line 2566
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getActivityResume()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2565
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onSwitchSatCameraListener(Ljava/lang/String;)V
    .registers 2

    .line 2648
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchSatCamera(Ljava/lang/String;)V

    return-void
.end method

.method public onSwitchSatCameraListener(Ljava/lang/String;Z)V
    .registers 3

    .line 2653
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchSatCamera(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSwitchUnderwaterCameraListener(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 2663
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchUnderwaterCamera(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onSwitchWideCamera(Ljava/lang/String;Z)V
    .registers 6

    .line 2460
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSwitchWideCamera] value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2461
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchWideCamera(Ljava/lang/String;Z)V

    return-void
.end method

.method public pause(Z)V
    .registers 5

    .line 883
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

    .line 884
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    if-eqz v0, :cond_2c

    .line 885
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 887
    :cond_2c
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_35

    const/16 v2, 0x32

    .line 888
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 890
    :cond_35
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->setActivityResume(Z)V

    .line 891
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsDeviceControlAvailable:Z

    .line 892
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 893
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->pause()V

    .line 894
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->pause()V

    .line 895
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isBgOfflineCapturing()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 896
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getOfflineSessionCount()I

    move-result p1

    if-ge p1, v1, :cond_64

    .line 897
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->switchToOffline(I)V

    goto :goto_89

    .line 899
    :cond_64
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->checkNotifyBgOfflineErr()V

    .line 900
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCameraAsync()V

    goto :goto_89

    :cond_6f
    if-eqz p1, :cond_84

    .line 903
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportDualVideo()Z

    move-result p1

    if-eqz p1, :cond_7e

    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mGoogleLenClick:Z

    if-eqz p1, :cond_7e

    goto :goto_84

    .line 906
    :cond_7e
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCameraAsync()V

    goto :goto_89

    .line 904
    :cond_84
    :goto_84
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 909
    :goto_89
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->resetSurfaceStatus()V

    .line 910
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    return-void
.end method

.method public queryCameraModeState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 3009
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-nez p0, :cond_7

    sget-object p0, Lcom/transsion/camera/app/common/IAppUI$UIState;->UNKNOWN:Lcom/transsion/camera/app/common/IAppUI$UIState;

    return-object p0

    .line 3010
    :cond_7
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public resetCurrentMode(Z)V
    .registers 2

    .line 1047
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsResetCurrentMode:Z

    const/4 p1, 0x0

    .line 1048
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSpecialModeNameForReset:Ljava/lang/String;

    return-void
.end method

.method public resetToSpecialMode(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 1052
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsResetCurrentMode:Z

    .line 1053
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSpecialModeNameForReset:Ljava/lang/String;

    return-void
.end method

.method public resume()V
    .registers 9

    .line 954
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

    .line 956
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->setActivityResume(Z)V

    .line 957
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsDeviceControlAvailable:Z

    const/4 v1, 0x0

    .line 958
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckOrientation:Z

    .line 959
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mGoogleLenClick:Z

    .line 960
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3, v2}, Lcom/transsion/camera/app/common/IAppUI;->needBuildBlurCoverView(Z)V

    .line 962
    iget-boolean v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedSwitchCameraID:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_62

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNextCameraId:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_62

    .line 963
    iget-boolean v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mLaunchFromAod:Z

    if-nez v3, :cond_5f

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportDualVideo()Z

    move-result v3

    if-nez v3, :cond_62

    .line 964
    :cond_5f
    invoke-virtual {p0, v1, v4}, Lcom/transsion/camera/app/common/mode/ModeManager;->onCameraSwitch(ZLjava/lang/String;)V

    .line 967
    :cond_62
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mLaunchFromAod:Z

    .line 968
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedSwitchCameraID:Z

    .line 969
    iget-boolean v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsResetCurrentMode:Z

    if-eqz v3, :cond_a2

    .line 970
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeHandler:Landroid/os/Handler;

    const/16 v5, 0x32

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 971
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 972
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeLock:Ljava/lang/Object;

    monitor-enter v3

    .line 973
    :try_start_79
    const-string v5, "mIsResetCurrentMode true, mModeChangeLock notifyAll"

    invoke-static {v0, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 974
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 975
    monitor-exit v3
    :try_end_84
    .catchall {:try_start_79 .. :try_end_84} :catchall_9f

    .line 976
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

    .line 977
    :goto_97
    invoke-direct {p0, v3, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->onModeChanged(Ljava/lang/String;Z)V

    .line 978
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsResetCurrentMode:Z

    .line 979
    iput-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSpecialModeNameForReset:Ljava/lang/String;

    goto :goto_a2

    :catchall_9f
    move-exception p0

    .line 975
    :try_start_a0
    monitor-exit v3
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_9f

    throw p0

    .line 981
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

    .line 982
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPendingChangeModeName:Ljava/lang/String;

    invoke-direct {p0, v3, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->onModeChanged(Ljava/lang/String;Z)V

    .line 985
    :cond_b7
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->resume()V

    .line 986
    iget-boolean v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckAIGroup:Z

    .line 987
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckAIGroup:Z

    .line 988
    iget-boolean v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckOrientation:Z

    .line 989
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckOrientation:Z

    .line 990
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v6}, Lcom/transsion/camera/app/common/mode/ICameraMode;->needUnintModeWhenPause()Z

    move-result v6

    if-eqz v6, :cond_f8

    .line 991
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v6}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 992
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v6}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v6

    iput-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 993
    iget-object v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v7}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/transsion/camera/app/common/mode/ModeManager;->initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    .line 994
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v7}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v7

    invoke-interface {v6, v7, v1}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 995
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {v6, v7}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 999
    :cond_f8
    iget-boolean v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsSupportFoldUI:Z

    if-eqz v6, :cond_10f

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_10f

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    if-eqz v6, :cond_10f

    .line 1002
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v6, v4}, Lcom/transsion/camera/app/common/mode/ModeManager;->getCameraIdByReConfig(Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_115

    :cond_10f
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v6}, Lcom/transsion/camera/app/common/mode/ModeManager;->getCameraId(Lcom/transsion/camera/app/common/mode/ICameraMode;)Ljava/lang/String;

    move-result-object v6

    .line 1003
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

    .line 1004
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

    .line 1007
    :cond_168
    sput-boolean v2, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsNotAfterStop:Z

    .line 1008
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2, v6, v6}, Lcom/transsion/camera/app/common/IAppUI;->updateSwitchCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isSwitchingOffline()Z

    move-result v2

    if-eqz v2, :cond_18f

    .line 1012
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->resetOfflineState()V

    .line 1013
    const-string v2, "Activity resume openCamera wait"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1014
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->waitOfflineReady()V

    .line 1015
    const-string v2, "Activity resume openCamera wait done"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1018
    :cond_18f
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1a5

    const/16 v2, 0xa

    .line 1019
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1020
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isFirstSteadyFrameCome()Z

    move-result v0

    if-nez v0, :cond_1a5

    .line 1021
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1025
    :cond_1a5
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, v6}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 1026
    iput-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 1027
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0, v6}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updateCurrentCameraId(Ljava/lang/String;)V

    .line 1028
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 1029
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_1cb

    if-eqz v6, :cond_1c5

    .line 1032
    const-string v0, "_"

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    goto :goto_1c6

    :cond_1c5
    move-object v0, v4

    .line 1034
    :goto_1c6
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1, v4, v0}, Lcom/transsion/camera/app/common/IAppUI;->updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    :cond_1cb
    iput-boolean v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckAIGroup:Z

    .line 1041
    iput-boolean v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckOrientation:Z

    .line 1042
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->resume()V

    .line 1043
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->initModuleTransfer(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBGOfflineSwitchCallback(Lcom/transsion/camera/app/common/IAppUIListener$IBGOfflineSwitchCallback;)V
    .registers 2

    .line 1414
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mOfflineSwitchCallback:Lcom/transsion/camera/app/common/IAppUIListener$IBGOfflineSwitchCallback;

    return-void
.end method

.method public setCallingPackage(Ljava/lang/String;)V
    .registers 2

    .line 1418
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p0, :cond_7

    .line 1419
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setCallingPackage(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public setGoingToGalleryFlag(Z)V
    .registers 2

    .line 874
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mGoingToGallery:Z

    .line 875
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingManager;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    .line 876
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mGoingToGallery:Z

    if-eqz p0, :cond_17

    if-eqz p1, :cond_17

    .line 877
    const-string p0, "action_gallery_activity_start"

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    .line 878
    invoke-virtual {p1, p0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_17
    return-void
.end method

.method public setGotoActivityListener(Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;)V
    .registers 2

    .line 1410
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mGotoActivityListener:Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;

    return-void
.end method

.method public setInternalStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V
    .registers 2

    .line 1089
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    .line 1090
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p0, :cond_9

    .line 1091
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setInternalStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V

    :cond_9
    return-void
.end method

.method public setLaunchFromAod(Z)V
    .registers 2

    .line 1057
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mLaunchFromAod:Z

    return-void
.end method

.method public setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .registers 2

    .line 1373
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    .line 1375
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p0, :cond_9

    .line 1376
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    :cond_9
    return-void
.end method

.method public setNextCameraId(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 1061
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedSwitchCameraID:Z

    .line 1062
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNextCameraId:Ljava/lang/String;

    return-void
.end method

.method public setThumbnailTransitionManager(Lcom/transsion/camera/app/common/thumbnailtransition/IThumbnailTransition;)V
    .registers 2

    .line 249
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

    .line 933
    sput-boolean v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsNotAfterStop:Z

    .line 934
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz v0, :cond_a

    .line 935
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->stop()V

    .line 937
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isBgCapturing()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_25

    .line 941
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_25

    .line 942
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isBgOfflineCapturing()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_25

    .line 946
    :cond_20
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCameraAsync()V

    :cond_25
    :goto_25
    return-void
.end method

.method public switchTeleCameraForSpecifyMode(Ljava/lang/String;)V
    .registers 12

    .line 2466
    const-string v0, "0"

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    const/4 v0, 0x1

    .line 2467
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    .line 2468
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    if-eqz v1, :cond_13

    .line 2469
    sget-object p0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[openWideCamera] in camera switching"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2473
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

    .line 2474
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 2475
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->resetSurfaceStatus()V

    .line 2476
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v2, 0x0

    if-eqz v1, :cond_36

    .line 2477
    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 2479
    :cond_36
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    .line 2480
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2481
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 2482
    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->needRebuildMode()Z

    move-result v9

    .line 2483
    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 2485
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 2486
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getSwitchMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2488
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5e

    if-eqz v9, :cond_67

    .line 2489
    :cond_5e
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 2490
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 2493
    :cond_67
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_70

    .line 2494
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-interface {v1, v4, v6}, Lcom/transsion/camera/app/common/IAppUI;->updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2497
    :cond_70
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 2498
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 2499
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedSaveCameraId:Z

    .line 2501
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    if-eqz v9, :cond_82

    goto :goto_8f

    .line 2504
    :cond_82
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, v3, v0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    .line 2505
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updateCurrentCameraId(Ljava/lang/String;)V

    goto :goto_94

    .line 2502
    :cond_8f
    :goto_8f
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    .line 2507
    :goto_94
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 2508
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 2509
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void
.end method

.method public switchWideCameraForSpecifyMode(Ljava/lang/String;)V
    .registers 4

    .line 1962
    const-string v0, "0"

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1963
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    .line 1964
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    if-eqz v1, :cond_13

    .line 1965
    sget-object p0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[openWideCamera] in camera switching"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1968
    :cond_13
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedSaveCameraId:Z

    const/4 v0, 0x0

    .line 1969
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchWideCameraImpl(Ljava/lang/String;Z)V

    return-void
.end method

.method public unInit1()V
    .registers 4

    .line 810
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "key_restore_settings_notify_ui"

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 812
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "key_wide_camera_item_seleccted"

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 814
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "key_ai_group_photo_camera_id"

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 816
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "key_video_camera_change"

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 818
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "key_google_lens_click"

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 820
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "action_barcode_activity_start"

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 822
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "action_gallery_activity_start"

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 824
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "action_movie_review_activity_start"

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 826
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "action_sleep_activity_start"

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 828
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->saveVIPSelfieDataToDataStore()V

    .line 829
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "key_wide_camera_selected"

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 831
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "key_when_wide_main_changed"

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 833
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "key_zoom_ui_state"

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 835
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "key_switch_camera_on_zoom"

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 837
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "key_video_hdr_10_plus"

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 839
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "key_hdr_format"

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 841
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mQuickCaptureManager:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    if-eqz v0, :cond_cd

    .line 842
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->uninit()V

    .line 844
    :cond_cd
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 845
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitAppUI()V

    const/4 v0, 0x0

    .line 847
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewFirstFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    .line 848
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setFirstFrameCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;)V

    return-void
.end method

.method public unInit2()V
    .registers 2

    const/4 v0, 0x0

    .line 852
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsDeviceControlAvailable:Z

    .line 854
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_f

    .line 855
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 856
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_f
    const/4 v0, 0x0

    .line 858
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeThread:Landroid/os/HandlerThread;

    .line 859
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeHandler:Landroid/os/Handler;

    return-void
.end method

.method public updateCapturedNumber(I)V
    .registers 3

    .line 927
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->isModeNeedNotifyNewMedia()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 928
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updateCapturedNumber(I)V

    :cond_b
    return-void
.end method

.method public updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V
    .registers 6

    .line 1081
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateStorageOperator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1082
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    .line 1083
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p0, :cond_20

    .line 1084
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    :cond_20
    return-void
.end method
