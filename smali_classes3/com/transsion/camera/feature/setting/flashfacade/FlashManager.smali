.class public final Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
.implements Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$ICaptureStateCallback;
.implements Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$IRecordStateCallback;
.implements Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor$IShutterStateCallback;
.implements Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$BrightnessCallback;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mBrightnessMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

.field private final mCaptureStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

.field private final mFeatureValueUpdater:Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;

.field private final mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

.field private final mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

.field private final mFlashFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

.field private final mFlashFeatureRepository:Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;

.field private final mFlashValueRepository:Lcom/transsion/camera/feature/setting/flashfacade/values/FlashValueRepository;

.field private mForceLowlight:Z

.field private mForceLowlightState:Z

.field private mIsAeLockTriggered:Z

.field private mIsContinuousShot:Z

.field private mIsMovieModeFrontNoFlash:Z

.field private mModeKey:Ljava/lang/String;

.field private mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

.field private mPreviewStopped:Z

.field private final mRecordStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;

.field private mSatSupport:Z

.field private final mSelfTimerStatusMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;

.field private mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private final mShutterUIStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mStreamId:I

.field private mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

.field private final mSupportedValuesBuilder:Lcom/transsion/camera/feature/setting/flashfacade/SupportedValuesBuilder;

.field private mVideoRecordingState:Z


# direct methods
.method public static synthetic $r8$lambda$isccZVpSBv_LQsvDZpDmq6QZ6qk(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;[I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->lambda$new$0([I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmIsContinuousShot(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mIsContinuousShot:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsContinuousShot(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mIsContinuousShot:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 67
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FlashManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;)V
    .registers 4

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 98
    iput v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mStreamId:I

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mIsContinuousShot:Z

    .line 104
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mVideoRecordingState:Z

    .line 354
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager$1;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 551
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    .line 107
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    .line 108
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->getInstance()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    .line 109
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mCaptureStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

    .line 110
    new-instance p2, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;

    invoke-direct {p2}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mRecordStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;

    .line 111
    invoke-virtual {p2, p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->setRecordStateCallback(Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$IRecordStateCallback;)V

    .line 112
    new-instance p2, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;

    invoke-direct {p2}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSelfTimerStatusMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;

    .line 113
    new-instance p2, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;

    invoke-direct {p2}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mShutterUIStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;

    .line 114
    invoke-virtual {p2, p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;->setShutterStateCallback(Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor$IShutterStateCallback;)V

    .line 115
    new-instance p2, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mBrightnessMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    .line 116
    new-instance p2, Lcom/transsion/camera/feature/setting/flashfacade/values/FlashValueRepository;

    invoke-direct {p2, p1}, Lcom/transsion/camera/feature/setting/flashfacade/values/FlashValueRepository;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashValueRepository:Lcom/transsion/camera/feature/setting/flashfacade/values/FlashValueRepository;

    .line 117
    new-instance p1, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFeatureRepository:Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;

    .line 118
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    .line 119
    new-instance p1, Lcom/transsion/camera/feature/setting/flashfacade/SupportedValuesBuilder;

    invoke-direct {p1, v0, p2}, Lcom/transsion/camera/feature/setting/flashfacade/SupportedValuesBuilder;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;Lcom/transsion/camera/feature/setting/flashfacade/values/FlashValueRepository;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSupportedValuesBuilder:Lcom/transsion/camera/feature/setting/flashfacade/SupportedValuesBuilder;

    .line 120
    new-instance p1, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFeatureValueUpdater:Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;

    return-void
.end method

.method private isCurrentShouldCloseSfl()Z
    .registers 3

    .line 454
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result v0

    .line 455
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    iget-boolean v1, v1, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mBackWideUnSupportSFL:Z

    if-eqz v1, :cond_1e

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->isWideAngleCamera()Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method private isMainCamera()Z
    .registers 2

    .line 611
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackMainCamera(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isTeleCamera()Z
    .registers 4

    .line 615
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result v0

    .line 616
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    iget v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mStreamId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result v1

    .line 617
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSatSupport:Z

    if-eqz p0, :cond_22

    if-nez v1, :cond_24

    :cond_22
    if-eqz v0, :cond_26

    :cond_24
    const/4 p0, 0x1

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method private isWideAngleCamera()Z
    .registers 4

    .line 622
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result v0

    .line 623
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    iget v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mStreamId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result v1

    .line 624
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSatSupport:Z

    if-eqz p0, :cond_22

    if-nez v1, :cond_24

    :cond_22
    if-eqz v0, :cond_26

    :cond_24
    const/4 p0, 0x1

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$0([I)V
    .registers 4

    if-eqz p1, :cond_29

    .line 552
    array-length v0, p1

    if-lez v0, :cond_29

    const/4 v0, 0x0

    .line 553
    aget p1, p1, v0

    .line 554
    iget v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mStreamId:I

    if-eq v0, p1, :cond_29

    .line 555
    iput p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mStreamId:I

    .line 556
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->sendSettingChangeRequest()V

    .line 557
    sget-object p1, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onStreamIdCallback] mStreamId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mStreamId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method private setStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 3

    .line 544
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSatSupport:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mPreviewStopped:Z

    if-nez v0, :cond_e

    .line 545
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->registerStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V

    return-void

    .line 547
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V

    return-void
.end method

.method private updateLowLightToRearCam(Z)V
    .registers 3

    .line 629
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_low_light_to_rear_cam"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public capturing()Z
    .registers 1

    .line 367
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mCaptureStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->capturing()Z

    move-result p0

    return p0
.end method

.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 4

    .line 245
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager$2;->$SwitchMap$com$transsion$camera$feature$setting$flashfacade$monitor$IBrightnessMonitor$MonitorType:[I

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mBrightnessMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->monitorType()Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_23

    const/4 v1, 0x3

    if-eq v0, v1, :cond_18

    goto :goto_3c

    .line 258
    :cond_18
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mBrightnessMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    .line 259
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mCaptureStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->registerShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V

    goto :goto_3c

    .line 253
    :cond_23
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mBrightnessMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setFlashStateCallback(Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;)V

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mCaptureStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->registerShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V

    goto :goto_3c

    :cond_2e
    const/4 v0, 0x0

    .line 247
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setFlashStateCallback(Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;)V

    .line 248
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mBrightnessMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    .line 249
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mCaptureStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->unregisterShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V

    .line 265
    :goto_3c
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->setStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy;)V

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 4

    .line 238
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setFlashFacade(Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setFlash(Ljava/lang/String;)V

    .line 240
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I

    move-result p0

    return p0
.end method

.method public currentCameraId()Ljava/lang/String;
    .registers 1

    .line 391
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public exposureTimeNotAuto(Ljava/lang/String;)Z
    .registers 4

    if-eqz p1, :cond_10

    const-wide/16 v0, -0x1

    .line 351
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public facingFront()Z
    .registers 1

    .line 395
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public featureSupport(Ljava/lang/String;)Z
    .registers 2

    .line 307
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->featureSupport(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public featureValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 322
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->featureValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public forceLowLight()Z
    .registers 1

    .line 417
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mForceLowlight:Z

    return p0
.end method

.method public forceLowLightState()Z
    .registers 1

    .line 421
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mForceLowlightState:Z

    return p0
.end method

.method public getCurrentCameraType()I
    .registers 3

    .line 595
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->isMainCamera()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 599
    :cond_8
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->isTeleCamera()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x1

    return p0

    .line 603
    :cond_10
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->isWideAngleCamera()Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x2

    return p0

    :cond_18
    return v1
.end method

.method public getFlashConfig()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;
    .registers 1

    .line 387
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    return-object p0
.end method

.method public getFlashFacade()Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;
    .registers 1

    .line 540
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    return-object p0
.end method

.method public getFlashFeatureRepository()Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;
    .registers 1

    .line 571
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFeatureRepository:Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;

    return-object p0
.end method

.method public getIsContinuousShot()Z
    .registers 1

    .line 233
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mIsContinuousShot:Z

    return p0
.end method

.method public getIsMovieModeFrontNoFlash()Z
    .registers 1

    .line 383
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mIsMovieModeFrontNoFlash:Z

    return p0
.end method

.method public getModeKey()Ljava/lang/String;
    .registers 1

    .line 399
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mModeKey:Ljava/lang/String;

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 5

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    iget-boolean v0, v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mFlashFacadeMovieFrontNoFlash:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mIsMovieModeFrontNoFlash:Z

    .line 125
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 126
    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 127
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mRecordStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->init(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSelfTimerStatusMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;->init(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mShutterUIStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;->init(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 131
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "continuous_shot_light_state"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public isAeLockTriggered()Z
    .registers 1

    .line 429
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mIsAeLockTriggered:Z

    return p0
.end method

.method public isBackTeleUnSupport()Z
    .registers 1

    .line 450
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->isTeleCameraUnSupportSFL()Z

    move-result p0

    return p0
.end method

.method public isBackWideUnSupport()Z
    .registers 1

    .line 446
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->isCurrentShouldCloseSfl()Z

    move-result p0

    return p0
.end method

.method public isFrontCameraUnSupportSFL()Z
    .registers 2

    .line 437
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    iget-boolean v0, v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mFacingFrontSupportedSFL:Z

    if-nez v0, :cond_1c

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(I)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public isMainCameraBackUnSupportSFL()Z
    .registers 2

    .line 433
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    iget-boolean v0, v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mFacingBackSupportedSFL:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSatSupport:Z

    if-eqz v0, :cond_20

    iget p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mStreamId:I

    if-nez p0, :cond_20

    :cond_1e
    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public isShutterProcessing()Z
    .registers 1

    .line 379
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mShutterUIStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;->isShutterProcessing()Z

    move-result p0

    return p0
.end method

.method public isTeleCameraUnSupportSFL()Z
    .registers 3

    .line 441
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result v0

    .line 442
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    iget-boolean v1, v1, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mBackTeleUnSupportSFL:Z

    if-eqz v1, :cond_1e

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->isTeleCamera()Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public isoNotAuto(Ljava/lang/String;)Z
    .registers 2

    if-eqz p1, :cond_f

    const/4 p0, -0x1

    .line 346
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public lowLight()Z
    .registers 1

    .line 408
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mBrightnessMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->lowLight()Z

    move-result p0

    return p0
.end method

.method public lowPower()Z
    .registers 2

    .line 333
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "Battery"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryExtStatus(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public lowTemperature()Z
    .registers 2

    .line 339
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "Temperature"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryExtStatus(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_c

    return v0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public onBrightnessDetected(Z)V
    .registers 3

    .line 524
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->updateLowLightToRearCam(Z)V

    .line 525
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->facingFront()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "key_ring_screen_light"

    .line 526
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->featureSupport(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSelfTimerStatusMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;

    .line 527
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;->selfTiming()Z

    move-result v0

    if-eqz v0, :cond_1a

    return-void

    .line 530
    :cond_1a
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->updateLowLightStateToQC(Z)V

    .line 531
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFeatureValueUpdater:Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->brightnessDetected(Z)V

    return-void
.end method

.method public onCaptureStart()V
    .registers 2

    .line 498
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mBrightnessMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->captureStart()V

    .line 499
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFeatureValueUpdater:Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->captureStart()V

    const/4 v0, 0x0

    .line 500
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mPreviewStopped:Z

    return-void
.end method

.method public onModeClosed(Ljava/lang/String;)V
    .registers 2

    .line 296
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->onModeClose(Ljava/lang/String;)V

    return-void
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 4

    .line 290
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    .line 291
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mModeKey:Ljava/lang/String;

    .line 292
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->onModeOpen(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    return-void
.end method

.method public onNextReady()V
    .registers 2

    .line 505
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mBrightnessMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->nextCaptureReady()V

    .line 506
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFeatureValueUpdater:Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->nextCaptureReady()V

    return-void
.end method

.method public onPreviewStarted()V
    .registers 4

    .line 459
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewStarted mVideoRecordingState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mVideoRecordingState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 460
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mRecordStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->reset()V

    .line 461
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mCaptureStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->reset()V

    .line 462
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSelfTimerStatusMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;->reset()V

    .line 463
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mShutterUIStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;->reset()V

    .line 464
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->videoMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_45

    .line 465
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mVideoRecordingState:Z

    if-nez v1, :cond_3d

    .line 466
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mBrightnessMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->startMonitor()V

    goto :goto_4a

    .line 468
    :cond_3d
    const-string v1, "If user stops video recording,reset flag."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 469
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mVideoRecordingState:Z

    goto :goto_4a

    .line 472
    :cond_45
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mBrightnessMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->startMonitor()V

    .line 474
    :goto_4a
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mBrightnessMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->setBrightnessCallback(Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$BrightnessCallback;)V

    .line 475
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mCaptureStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->setCaptureStateCallback(Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$ICaptureStateCallback;)V

    .line 476
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->previewStarted()V

    .line 477
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->notifyNonsupportDualColor(Ljava/lang/String;)V

    .line 478
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mPreviewStopped:Z

    return-void
.end method

.method public onPreviewStopped()V
    .registers 4

    .line 483
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewStopped mVideoRecordingState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mVideoRecordingState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mRecordStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->reset()V

    .line 485
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mCaptureStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->reset()V

    .line 486
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSelfTimerStatusMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;->reset()V

    .line 487
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mShutterUIStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;->reset()V

    .line 488
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mBrightnessMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->stopMonitor()V

    .line 489
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mBrightnessMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->setBrightnessCallback(Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$BrightnessCallback;)V

    .line 490
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mCaptureStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->setCaptureStateCallback(Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$ICaptureStateCallback;)V

    .line 491
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->previewStopped()V

    const/4 v0, 0x1

    .line 492
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mPreviewStopped:Z

    const/4 v0, 0x0

    .line 493
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mVideoRecordingState:Z

    return-void
.end method

.method public onRecordStart()V
    .registers 3

    .line 511
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onRecordStart"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFeatureValueUpdater:Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->recordStart()V

    const/4 v0, 0x1

    .line 513
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mVideoRecordingState:Z

    return-void
.end method

.method public onRecordStop()V
    .registers 3

    .line 518
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onRecordStop"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 519
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFeatureValueUpdater:Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->recordEnd()V

    return-void
.end method

.method public onShutterGuideHide()V
    .registers 1

    .line 581
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFeatureValueUpdater:Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->onShutterGuideHide()V

    return-void
.end method

.method public onShutterGuideShow()V
    .registers 1

    .line 576
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFeatureValueUpdater:Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->onShutterGuideShow()V

    return-void
.end method

.method public pause()V
    .registers 2

    const/4 v0, 0x0

    .line 156
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mForceLowlight:Z

    .line 157
    monitor-enter p0

    .line 158
    :try_start_4
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mRecordStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->reset()V

    .line 159
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mCaptureStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->reset()V

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSelfTimerStatusMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;->reset()V

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mShutterUIStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;->reset()V

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mBrightnessMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->pause()V

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->pause()V

    .line 164
    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public periscopeCamera()Z
    .registers 2

    .line 403
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    .line 404
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getPeriscopeCameraId()Ljava/lang/String;

    move-result-object v0

    .line 403
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public queryValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 326
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 329
    :cond_6
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public recording()Z
    .registers 1

    .line 371
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mRecordStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->recording()Z

    move-result p0

    return p0
.end method

.method public resetBrightness()V
    .registers 1

    .line 536
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFeatureValueUpdater:Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->resetBrightness()V

    return-void
.end method

.method public restoreToDefault()V
    .registers 3

    .line 300
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->lowPower()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->lowTemperature()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 301
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 303
    :cond_13
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->restoreToDefault()V

    return-void
.end method

.method public resume()V
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mRecordStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->reset()V

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mCaptureStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->reset()V

    .line 146
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mShutterUIStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;->reset()V

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSelfTimerStatusMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;->reset()V

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mBrightnessMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->resume()V

    .line 149
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->resume()V

    return-void
.end method

.method public screenFlip()Z
    .registers 1

    .line 315
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 318
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->screenFlip()Z

    move-result p0

    return p0
.end method

.method public sendCommandChangeRequest()V
    .registers 2

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    if-eqz v0, :cond_d

    .line 193
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 2

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    if-eqz v0, :cond_d

    .line 175
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public sendSettingChangeRequestSelf()V
    .registers 2

    .line 180
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    if-eqz v0, :cond_11

    .line 181
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->getKey()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public sendSettingChangeRequestSync()V
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    if-eqz v0, :cond_d

    .line 187
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueSync(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public setAeLockTriggered(Z)V
    .registers 2

    .line 425
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mIsAeLockTriggered:Z

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 7

    .line 199
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mBrightnessMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->facingDetect()V

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->periscopeCamera()Z

    move-result v1

    const-string v2, "off"

    if-eqz v1, :cond_16

    .line 202
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 204
    :cond_16
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V

    .line 205
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSupportedValuesBuilder:Lcom/transsion/camera/feature/setting/flashfacade/SupportedValuesBuilder;

    invoke-virtual {v1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/SupportedValuesBuilder;->build(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 208
    :goto_24
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->videoMode()Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->facingFront()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 209
    :cond_30
    const-string v1, "on"

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 212
    :cond_35
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->getInstance()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mForceRemoveVideoBackAuto:Z

    const-string v3, "auto"

    if-nez v1, :cond_45

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isVideoFlashlightSupportWhenRecording()Z

    move-result v1

    if-eqz v1, :cond_54

    :cond_45
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->videoMode()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->facingFront()Z

    move-result v1

    if-nez v1, :cond_54

    .line 213
    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 216
    :cond_54
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mModeKey:Ljava/lang/String;

    const-string v4, "com.transsion.camera.feature.mode.movie.MovieModeEntry"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6a

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mIsMovieModeFrontNoFlash:Z

    if-eqz v1, :cond_6a

    .line 217
    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 218
    const-string v1, "ringscreenlight"

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 222
    :cond_6a
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->screenFlip()Z

    move-result v1

    if-nez v1, :cond_77

    move-object v2, v3

    .line 228
    :cond_77
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSatModeSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSatSupport:Z

    .line 230
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public setForceLowlight(Z)V
    .registers 2

    .line 412
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mForceLowlight:Z

    .line 413
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mBrightnessMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->lowLight()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mForceLowlightState:Z

    return-void
.end method

.method public setSettingDeviceRequester(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .registers 2

    .line 169
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method public shutterGuideLayoutShow()Z
    .registers 1

    .line 375
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mShutterUIStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;->shutterGuideLayoutShow()Z

    move-result p0

    return p0
.end method

.method public unInit()V
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mRecordStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->unInit()V

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSelfTimerStatusMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;->unInit()V

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mShutterUIStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;->unInit()V

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->unInit()V

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "continuous_shot_light_state"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public updateFacadeValue(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 273
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->updateFacadeValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public updateFacadeValue(Ljava/lang/String;Z)V
    .registers 4

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFeatureValueUpdater:Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashValueRepository:Lcom/transsion/camera/feature/setting/flashfacade/values/FlashValueRepository;

    .line 278
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/values/FlashValueRepository;->getFlashValue(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;

    move-result-object p0

    .line 277
    invoke-virtual {v0, p0, p2}, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->updateFacadeValue(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;Z)V

    return-void
.end method

.method public updateFrontDualFlashInfo(Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;)V
    .registers 2

    .line 567
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->updateFrontDualFlashInfo(Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;)V

    return-void
.end method

.method public updateFrontDualFlashValue(Ljava/lang/String;)V
    .registers 2

    .line 563
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFeatureValueUpdater:Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->updateFrontDualFlashValue(Ljava/lang/String;)V

    return-void
.end method

.method public updateLuminanceInfo(Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;)V
    .registers 2

    .line 286
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->updateLuminanceInfo(Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;)V

    return-void
.end method

.method public updateLuminanceValue(I)V
    .registers 2

    .line 282
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFeatureValueUpdater:Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->updateLuminanceValue(I)V

    return-void
.end method

.method public updateScreenFromType(I)V
    .registers 2

    .line 269
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mBrightnessMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->updateScreenFromType(I)V

    return-void
.end method

.method public videoMode()Z
    .registers 2

    .line 311
    sget-object v0, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    if-ne v0, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public videoModeType()Z
    .registers 1

    .line 585
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->isVideoMode()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method
