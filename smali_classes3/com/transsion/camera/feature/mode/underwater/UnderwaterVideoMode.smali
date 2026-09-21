.class public Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;
.super Lcom/transsion/camera/app/common/mode/CommonVideoMode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$ThermalThrottleChangeListenerImpl;,
        Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$VideoPreviewCallBackChangeListener;
    }
.end annotation


# static fields
.field private static final CLASS_VSS_PREVIEW:Ljava/lang/String; = "com.transsion.camera.base_business.vss_sdk.VSSPreview"

.field private static final DEBUG_PREVIEW_SIZE:Landroid/util/Size;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCountDownListener:Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;

.field private mDrainageSoundCallback:Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;

.field protected volatile mIsGLRecording:Z

.field private volatile mIsVideoPreviewCallbackInit:Z

.field private final mPauseResumeListener:Landroid/view/View$OnClickListener;

.field private mPreviewBackgroundOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private mPreviewBackgroundSupport:Z

.field private final mStableMonitorProxy:Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;

.field private mStableStatus:I

.field private mStopByLongPressedPower:Z

.field private mStopByPause:Z

.field private mSwitchModeOnResume:Z

.field private final mThermalThrottleListener:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$ThermalThrottleChangeListenerImpl;

.field protected mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

.field private volatile mVideoEffectOn:Z

.field private volatile mVideoFilterOn:Z

.field private volatile mVideoFrameOn:Z

.field private volatile mVideoHdrOn:Z

.field private final mVideoSnapShotListener:Landroid/view/View$OnClickListener;


# direct methods
.method public static synthetic $r8$lambda$713VEjvjnoI7j3nhdvNvSwBerDY(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->lambda$init$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$pxoAsem_VueVmniQr_Ni30G6c8Q(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->lambda$initVideoModeUI$1(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmDrainageSoundCallback(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mDrainageSoundCallback:Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStopByLongPressedPower(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mStopByLongPressedPower:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwitchModeOnResume(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mSwitchModeOnResume:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmStopByLongPressedPower(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mStopByLongPressedPower:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSwitchModeOnResume(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mSwitchModeOnResume:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 100
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "UnderwaterVideoMode"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 102
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x5a0

    const/16 v2, 0x438

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->DEBUG_PREVIEW_SIZE:Landroid/util/Size;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/camera/app/common/provider/FeatureParameters;)V
    .registers 5

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 101
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    const/4 p2, 0x0

    .line 105
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mVideoHdrOn:Z

    .line 106
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mVideoFilterOn:Z

    .line 107
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mVideoEffectOn:Z

    .line 108
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mVideoFrameOn:Z

    .line 109
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mIsGLRecording:Z

    .line 110
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mIsVideoPreviewCallbackInit:Z

    .line 111
    iput p2, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mStableStatus:I

    .line 116
    new-instance v0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$ThermalThrottleChangeListenerImpl;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$ThermalThrottleChangeListenerImpl;-><init>(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mThermalThrottleListener:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$ThermalThrottleChangeListenerImpl;

    .line 117
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mStopByLongPressedPower:Z

    .line 120
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mStopByPause:Z

    .line 121
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mSwitchModeOnResume:Z

    .line 491
    new-instance p1, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$3;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$3;-><init>(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mPauseResumeListener:Landroid/view/View$OnClickListener;

    .line 498
    new-instance p1, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$4;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$4;-><init>(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mVideoSnapShotListener:Landroid/view/View$OnClickListener;

    if-eqz p3, :cond_38

    .line 126
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/provider/FeatureParameters;->screenFormType()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    .line 128
    :cond_38
    new-instance p1, Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;

    .line 129
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mDXOTestSupport:Z

    if-eqz p2, :cond_4a

    new-instance p2, Lcom/transsion/camera/app/common/gsensor/StableMonitor;

    sget-object p3, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-direct {p2, p3}, Lcom/transsion/camera/app/common/gsensor/StableMonitor;-><init>(Landroid/content/Context;)V

    goto :goto_4f

    :cond_4a
    new-instance p2, Lcom/transsion/camera/app/common/gsensor/StableMonitorStub;

    invoke-direct {p2}, Lcom/transsion/camera/app/common/gsensor/StableMonitorStub;-><init>()V

    :goto_4f
    invoke-direct {p1, p2}, Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;-><init>(Lcom/transsion/camera/app/common/gsensor/IStableMonitor;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mStableMonitorProxy:Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;

    return-void
.end method

.method static synthetic access$001(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;II)Z
    .registers 3

    .line 99
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onShutterClick(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)V
    .registers 1

    .line 99
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->stopRecordingByForce()V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)V
    .registers 1

    .line 99
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->stopRecordingByForce()V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)V
    .registers 1

    .line 99
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->pauseResumeRecording()V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)Z
    .registers 1

    .line 99
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mInTakingPicture:Z

    return p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)Landroid/os/Handler;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mHandle:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$802(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;Z)Z
    .registers 2

    .line 99
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mInTakingPicture:Z

    return p1
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)V
    .registers 1

    .line 99
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->videoSnapShot()V

    return-void
.end method

.method private createVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;
    .registers 4

    .line 524
    new-instance v0, Lcom/transsion/camera/app/common/ui/VideoUISpec;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;-><init>()V

    const-wide/16 v1, 0x0

    .line 525
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setRecordingTotalSize(J)V

    const/4 v1, 0x1

    .line 526
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setSupportedPause(Z)V

    .line 527
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isVssSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setSupportedVss(Z)V

    .line 528
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mPauseResumeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setPauseResumeListener(Landroid/view/View$OnClickListener;)V

    .line 529
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mVideoSnapShotListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setVideoSnapShotListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private initDVModePreviewCover()V
    .registers 4

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-nez v0, :cond_5

    return-void

    .line 141
    :cond_5
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getModeInflateRoot()Landroid/view/ViewGroup;

    move-result-object v0

    .line 142
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v1, Lcom/transsion/camera/R$layout;->include_dvmode_preview_cover:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 144
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initVideoModeUI(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/VideoUISpec;)V
    .registers 5

    .line 409
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->onCreateVideoUI()Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    .line 410
    new-instance p1, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$1;-><init>(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mCountDownListener:Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;

    .line 435
    new-instance p1, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mDrainageSoundCallback:Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;

    .line 452
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->initVideoUI(Lcom/transsion/camera/app/common/ui/VideoUISpec;)V

    .line 453
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->setModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;)V

    .line 454
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->getSeparateCaptureNumber()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->updateCapturedNumber(ZI)V

    .line 455
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    const/4 p2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->updateVolumeKeyPrompt(IZ)V

    .line 456
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result p1

    const/4 p2, 0x6

    .line 457
    iget v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    if-ne p2, v1, :cond_44

    .line 458
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getAodUIOrientation()I

    move-result p1

    .line 460
    :cond_44
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_fold_switch_preview"

    invoke-interface {p2, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 461
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-virtual {v1, p2}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->updateSwitchPreviewValue(Ljava/lang/String;)V

    .line 462
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    invoke-virtual {p2, v1, p1}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->setScreenFormType(II)V

    .line 463
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 464
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->updateLowLight(Z)V

    .line 465
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    new-instance p2, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$2;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$2;-><init>(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)V

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->setOnRecordingTimeFullListener(Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI$OnRecordingTimeFullListener;)V

    return-void
.end method

.method private declared-synchronized initVideoPreviewCallback()V
    .registers 4

    monitor-enter p0

    .line 693
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initVideoPreviewCallback], mIsVideoHDRInited="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mIsVideoPreviewCallbackInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsVideoPreviewCallbackInit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mIsVideoPreviewCallbackInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 695
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mIsVideoPreviewCallbackInit:Z

    if-eqz v0, :cond_32

    .line 696
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[initVideoPreviewCallback], return"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    .line 697
    monitor-exit p0

    return-void

    :catchall_30
    move-exception v0

    goto :goto_37

    :cond_32
    const/4 v0, 0x1

    .line 699
    :try_start_33
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mIsVideoPreviewCallbackInit:Z
    :try_end_35
    .catchall {:try_start_33 .. :try_end_35} :catchall_30

    .line 700
    monitor-exit p0

    return-void

    :goto_37
    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_30

    throw v0
.end method

.method private isVideoBeautyOn()Z
    .registers 2

    .line 667
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_video_facebeauty"

    .line 668
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 667
    const-string/jumbo v0, "video_facebeauty_on"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private isVideoMakeUpOn()Z
    .registers 2

    .line 662
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_video_makeup"

    .line 663
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 662
    const-string v0, "on"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private isVideoPortraitOn()Z
    .registers 2

    .line 672
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_video_portrait"

    .line 673
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 672
    const-string v0, "on"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$init$0(I)V
    .registers 8

    .line 164
    iget v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mStableStatus:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_7

    if-ne v1, p1, :cond_b

    :cond_7
    if-eq v1, v0, :cond_42

    if-ne v1, p1, :cond_42

    .line 166
    :cond_b
    iput p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mStableStatus:I

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_42

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tripodModeChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, p1, :cond_24

    move v5, v4

    goto :goto_25

    :cond_24
    move v5, v3

    :goto_25
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-ne v1, p1, :cond_34

    move v3, v4

    :cond_34
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->tripodModeChanged(Z)V

    .line 170
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const-string p1, "key_asd"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    :cond_42
    return-void
.end method

.method private synthetic lambda$initVideoModeUI$1(Z)V
    .registers 5

    .line 436
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchUnderwaterCamera after playDrainageSound success = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isActivityPaused = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 437
    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUI;->isActivityPaused()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 436
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 438
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mStopByLongPressedPower:Z

    if-eqz p1, :cond_6b

    .line 439
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->isActivityPaused()Z

    move-result p1

    if-nez p1, :cond_6b

    .line 440
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->exitModeOnMoreTab()V

    .line 441
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideSwitcher(Z)V

    .line 442
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerFromUnderwater(Z)V

    .line 443
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isCameraFacingBack()Z

    move-result p1

    if-eqz p1, :cond_59

    .line 444
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/R$string;->back_cam_mode_default:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUI;->switchModeByOverlayGuide(Ljava/lang/String;)V

    return-void

    .line 446
    :cond_59
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/R$string;->front_cam_mode_default:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUI;->switchModeByOverlayGuide(Ljava/lang/String;)V

    return-void

    .line 449
    :cond_6b
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.transsion.camera.feature.mode.underwater.UnderwaterModeEntry"

    invoke-interface {p1, p0, v0}, Lcom/transsion/camera/app/common/IAppUI;->switchUnderwaterCamera(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateVideoTheramalWaring()V
    .registers 5

    .line 317
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_video_quality"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_anti_video"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 319
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_super_anti_video"

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 321
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v3, 0x8

    .line 322
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    const-string v3, "6_60"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 323
    :cond_2e
    const-string v0, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 324
    :cond_3c
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoThermalWaringSupport:Z

    if-eqz v0, :cond_46

    const/4 v0, 0x1

    goto :goto_47

    :cond_46
    const/4 v0, 0x0

    .line 321
    :goto_47
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->setVideoThermalWaringSupport(Z)V

    return-void
.end method


# virtual methods
.method protected addVideoToDataBase(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;IJ)V
    .registers 5

    .line 688
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->addVideoToDataBase(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;IJ)V

    .line 689
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToIdle()V

    return-void
.end method

.method public getDataFlowType()I
    .registers 3

    .line 602
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_video_super_night"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_13

    const/4 p0, 0x3

    goto :goto_14

    :cond_13
    move p0, v0

    .line 605
    :goto_14
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;->algorithmSupport()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isForceTaintDetectRemove()Z

    move-result v1

    if-nez v1, :cond_25

    const/4 v0, 0x4

    .line 608
    :cond_25
    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .registers 5

    .line 358
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 359
    const-string v0, "key_tran_plugin"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    const-string v0, "key_night_hawk"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    const-string v0, "key_secondary_screen"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeSettingUIEntries()[Ljava/lang/String;

    move-result-object v0

    .line 363
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getModeFeatures, modeFeatures:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 364
    const-string p0, "nonsupport_luminance_adjust"

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    const-string p0, "key_anti_video"

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 367
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .registers 1

    .line 353
    invoke-static {}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoRestriction;->getRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0
.end method

.method protected getOpenCamerId(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 8

    .line 816
    invoke-virtual {p0, p2, p3, p4}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isSupportSAT(Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p0

    if-nez p0, :cond_12

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    .line 817
    const-string p5, "0"

    .line 821
    :cond_12
    sget-object p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getOpenCameraId: cameraId = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p5
.end method

.method protected getOverrideSize()Landroid/util/Size;
    .registers 1

    .line 562
    sget-boolean p0, Lcom/transsion/camera/utils/FeatureSupport;->DEBUG_VIDEO_PREVIEW_SIZE_TO_1440_X_1080:Z

    if-eqz p0, :cond_7

    .line 563
    sget-object p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->DEBUG_PREVIEW_SIZE:Landroid/util/Size;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreviewSize(Ljava/util/List;)Landroid/util/Size;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    const/16 v0, 0x780

    .line 588
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameWidth:I

    const/16 v0, 0x438

    .line 589
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameHeight:I

    .line 590
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreviewSize mVideoFrameWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mVideoFrameHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 592
    new-instance v5, Landroid/util/Size;

    iget v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameWidth:I

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameHeight:I

    invoke-direct {v5, v0, v1}, Landroid/util/Size;-><init>(II)V

    .line 593
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameHeight:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    float-to-double v3, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    const/4 v8, 0x1

    move-object v2, p1

    .line 594
    invoke-static/range {v2 .. v10}, Lcom/transsion/camera/utils/CameraUtil;->findBestMatchSize(Ljava/util/List;DLandroid/util/Size;DZIZ)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getSettingGroup()J
    .registers 5

    .line 613
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getSettingGroup()J

    move-result-wide v0

    const-wide v2, 0x100000000L

    or-long/2addr v0, v2

    return-wide v0
.end method

.method protected getShutterTypeSelftimerOff()I
    .registers 1

    const/16 p0, 0x1e

    return p0
.end method

.method protected getShutterTypeSelftimerOn()I
    .registers 1

    const/16 p0, 0x1e

    return p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .registers 8

    .line 151
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 152
    const-string p2, "key_update_top_bar_ui"

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 153
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->createVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object p4

    invoke-direct {p0, p2, p4}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->initVideoModeUI(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/VideoUISpec;)V

    .line 154
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableDVMode:Z

    if-eqz p2, :cond_20

    .line 155
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->initDVModePreviewCover()V

    .line 157
    :cond_20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$integer;->aod_preview_background_type:I

    .line 158
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    const/4 p2, 0x1

    const/4 p4, 0x0

    if-ne p1, p2, :cond_2f

    goto :goto_30

    :cond_2f
    move p2, p4

    .line 159
    :goto_30
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mPreviewBackgroundSupport:Z

    .line 160
    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewBackgroundOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mPreviewBackgroundOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    .line 162
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mStableMonitorProxy:Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;->init()V

    .line 163
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mStableMonitorProxy:Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;

    new-instance p2, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)V

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;->setStatusCallback(Lcom/transsion/camera/app/common/gsensor/IStableMonitor$IStatusCallback;)V

    .line 174
    invoke-static {}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->getInstance()Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mThermalThrottleListener:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$ThermalThrottleChangeListenerImpl;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->addThermalThrottleChangeListener(Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;)V

    .line 175
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, p4}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideSwitcher(Z)V

    .line 176
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, p4}, Lcom/transsion/camera/app/common/IAppUI;->setThumbnailClickable(Z)V

    .line 177
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, p4}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerFromUnderwater(Z)V

    .line 178
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    new-instance p2, Landroid/content/Intent;

    const-string p3, "com.transsion.camera.MODE_CHANGED_ACTION"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "key_cam_mode"

    const-string/jumbo p4, "val_underwater"

    .line 179
    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 178
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 181
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mDrainageSoundCallback:Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mCountDownListener:Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->registerReceiver(Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;)V

    .line 182
    sget-object p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "init: init UnderwaterVideoMode"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public isModeNeedNotifyNewMedia()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method protected isModeSupport360VideoHDR(Landroid/content/Context;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method protected isModeSupportVSS()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isNotSupportWaitPageMode()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportBackgroundPreview()Z
    .registers 2

    .line 709
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mPreviewBackgroundSupport:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pocketScreen()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportPowerSavingMode()Z
    .registers 1

    .line 704
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->flipScreen()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isSupportShutterSound()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected isVideoFileValid()Z
    .registers 5

    .line 405
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->getRecordingTotalDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long p0, v0, v2

    if-ltz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 5

    .line 714
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    if-eqz v0, :cond_7

    .line 715
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->notifyCameraOperateAction(I)V

    .line 717
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFirstSteadyFrame notifyCameraOperateAction action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eq p1, v0, :cond_68

    const/16 v0, 0xa

    if-eq p1, v0, :cond_56

    const/16 v0, 0x1c

    const/4 v2, 0x1

    if-eq p1, v0, :cond_40

    const/16 v0, 0x13e

    if-eq p1, v0, :cond_3a

    const/16 v0, 0x13f

    if-eq p1, v0, :cond_34

    goto :goto_67

    .line 733
    :cond_34
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->enablePreviewStream(Z)V

    return-void

    .line 730
    :cond_3a
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->enablePreviewStream(Z)V

    return-void

    .line 736
    :cond_40
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "stopDrainageSound & switchUnderwaterCamera after ACTION_ACTIVITY_PAUSE"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 737
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mStopByPause:Z

    .line 738
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mDrainageSoundCallback:Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->stopDrainageSound(Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;Z)Z

    .line 739
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->stopCountDown(Z)Z

    return-void

    .line 720
    :cond_56
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    if-eqz p1, :cond_67

    .line 721
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isVssSupported()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setSupportedVss(Z)V

    :cond_67
    :goto_67
    return-void

    :cond_68
    const/16 p1, 0x19

    .line 725
    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->onShutterClick(II)Z

    return-void
.end method

.method protected notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V
    .registers 4

    .line 391
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    .line 392
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    if-nez v0, :cond_1e

    .line 394
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[notifyToVideoUI] mUnderwaterUI is null when :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 397
    :cond_1e
    sget-object v1, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne v1, p1, :cond_29

    .line 398
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->createVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->initVideoUI(Lcom/transsion/camera/app/common/ui/VideoUISpec;)V

    .line 400
    :cond_29
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->updateUIState(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return-void
.end method

.method public onBackPressed()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic onCaptureSequenceCompleted(IJ)V
    .registers 4

    .line 0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;->onCaptureSequenceCompleted(IJ)V

    return-void
.end method

.method protected onCreateVideoHelper()Lcom/transsion/camera/app/common/mode/CommonVideoHelper;
    .registers 1

    .line 134
    new-instance p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoHelper;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoHelper;-><init>()V

    return-object p0
.end method

.method protected onCreateVideoUI()Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;
    .registers 8

    .line 488
    new-instance v0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v6, 0x1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUI;Z)V

    return-object v0
.end method

.method public onMediaRecorderPreparing()V
    .registers 2

    .line 329
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onMediaRecorderPreparing()V

    .line 330
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->setRecordingOrientation(I)V

    return-void
.end method

.method public onMediaRecorderProcessing()V
    .registers 3

    .line 195
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onMediaRecorderProcessing()V

    .line 196
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_super_anti_video"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "super"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 197
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->updateRecordingStatus()V

    :cond_18
    return-void
.end method

.method public onMediaRecorderStarted()V
    .registers 4

    .line 307
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_e

    .line 308
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    const-wide/32 v1, 0x927c0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->setLimitRecorderTime(J)V

    goto :goto_15

    .line 310
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->setLimitRecorderTime(J)V

    .line 312
    :goto_15
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->updateVideoTheramalWaring()V

    .line 313
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onMediaRecorderStarted()V

    return-void
.end method

.method public onMediaRecorderStopping(IZ)V
    .registers 4

    if-nez p1, :cond_7

    .line 542
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->hideInfo()V

    .line 544
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onMediaRecorderStopping(IZ)V

    const/16 p1, 0xc9

    .line 545
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    return-void
.end method

.method public bridge synthetic onModeCaptureProgressed(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
    .registers 3

    .line 0
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onModeCaptureProgressed(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 372
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onOrientationChanged(I)V

    .line 373
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->onOrientationChanged(I)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 378
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->onScreenFormChanged(IZ)V

    .line 379
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->onScreenFormChanged(IZ)V

    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 286
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    sget-object v0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingChanged: key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " , mVideoHdrOn:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mVideoHdrOn:Z

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " , mVideoFilterOn:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mVideoFilterOn:Z

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " , mVideoEffectOn:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mVideoEffectOn:Z

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " , mVideoFrameOn:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mVideoFrameOn:Z

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 290
    const-string p2, "key_update_top_bar_ui"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_60

    .line 291
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->updateTopBarUI()V

    .line 292
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->updateHelpGuide()V

    .line 293
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->updatePopSettingUI()V

    :cond_60
    return-void
.end method

.method public onSettingReady()V
    .registers 3

    .line 299
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onSettingReady()V

    .line 300
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast v0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_algorithm_migrate"

    .line 302
    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 301
    const-string v1, "on"

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    .line 300
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->algorithmMigrate(Z)V

    return-void
.end method

.method public onShutterClick(II)Z
    .registers 6

    .line 772
    sget-object v0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterClick curPriority = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", keyCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mSettingController.getCameraId() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 773
    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 772
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 774
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->isPowerLongPressed()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_36

    return v2

    :cond_36
    const/16 v1, 0x18

    if-eq p2, v1, :cond_59

    const/16 v1, 0x19

    if-eq p2, v1, :cond_40

    const/4 p0, 0x0

    return p0

    .line 784
    :cond_40
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onShutterClick(II)Z

    move-result p0

    .line 785
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onShutterClick super.onShutterClick KEYCODE_VOLUME_DOWN result = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0

    .line 779
    :cond_59
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->videoSnapShot()V

    .line 780
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->startCapture()V

    .line 781
    const-string p0, "onShutterClick super.onShutterClick KEYCODE_VOLUME_UP videoSnapShot"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2
.end method

.method public onShutterLongClick(II)Z
    .registers 6

    .line 795
    sget-object v0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterLongClick curPriority = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", keyCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 796
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->isPowerLongPressed()Z

    move-result v1

    if-eqz v1, :cond_28

    const/4 p0, 0x1

    return p0

    :cond_28
    const/16 v1, 0x18

    if-eq p2, v1, :cond_32

    const/16 v1, 0x19

    if-eq p2, v1, :cond_32

    const/4 p0, 0x0

    return p0

    .line 802
    :cond_32
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onShutterClick(II)Z

    move-result p0

    .line 803
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onShutterLongClick super.onShutterClick result = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method public onSingleTapUp()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method protected onSnapShotStart()V
    .registers 2

    .line 520
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->playCaptureAnimation(Landroid/content/Context;)V

    return-void
.end method

.method protected onVideoFileSaved(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 3

    .line 570
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onVideoFileSaved(Landroid/net/Uri;Ljava/lang/String;)V

    .line 571
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mHandle:Landroid/os/Handler;

    new-instance p2, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$5;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$5;-><init>(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onVideoMediaRecorderInfoConstruct(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;)V
    .registers 6

    .line 384
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v0

    .line 385
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onVideoMediaRecorderInfoConstruct], setMaxFileSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 386
    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->setMaxFileSize(J)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    return-void
.end method

.method public pause()V
    .registers 6

    .line 258
    invoke-static {}, Lcom/transsion/camera/utils/StatusBarUtils;->enable()V

    .line 259
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const-string v1, "pause on UnderwaterVideoMode"

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/transsion/camera/utils/UnderwaterUtils;->writeUnderwaterSetting(Landroid/content/Context;ILjava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.transsion.camera.MODE_CHANGED_ACTION"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "key_cam_mode"

    const-string/jumbo v4, "val_not_underwater"

    .line 261
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 260
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 262
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->pause()V

    .line 263
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mStableMonitorProxy:Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;->stop()V

    .line 264
    iput v2, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mStableStatus:I

    .line 265
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    if-eqz v0, :cond_51

    .line 266
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopDrainageSound after pause"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mDrainageSoundCallback:Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->stopDrainageSound(Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;Z)Z

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->stopCountDown(Z)Z

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->setZoomState(Z)V

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->setPause(Z)V

    .line 271
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->hideInfo()V

    :cond_51
    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public resume()V
    .registers 6

    .line 236
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->resume()V

    .line 237
    sget-object v0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume mStopByPause = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mStopByPause:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 238
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mStopByPause:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_33

    .line 239
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mStopByPause:Z

    .line 240
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mSwitchModeOnResume:Z

    .line 241
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.transsion.camera.feature.mode.underwater.UnderwaterModeEntry"

    invoke-interface {v0, v2, v3}, Lcom/transsion/camera/app/common/IAppUI;->switchUnderwaterCamera(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_60

    .line 243
    :cond_33
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v3, 0x7b

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 244
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    if-eqz v0, :cond_41

    .line 245
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->setPause(Z)V

    .line 247
    :cond_41
    iput v2, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mStableStatus:I

    .line 248
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mStableMonitorProxy:Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;->start()V

    .line 249
    invoke-static {}, Lcom/transsion/camera/utils/StatusBarUtils;->disable()V

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.transsion.camera.MODE_CHANGED_ACTION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "key_cam_mode"

    const-string/jumbo v4, "val_underwater"

    .line 251
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 250
    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 253
    :goto_60
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const-string v0, "resume on UnderwaterVideoMode"

    invoke-static {p0, v1, v0}, Lcom/transsion/camera/utils/UnderwaterUtils;->writeUnderwaterSetting(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method protected sendNotification(Landroid/content/Context;)V
    .registers 2

    .line 556
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->sendNotification(Landroid/content/Context;)V

    return-void
.end method

.method protected showInfo(I)V
    .registers 2

    .line 535
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->showInfo(I)V

    return-void
.end method

.method protected showRemainingRecordingTime(Ljava/lang/String;)V
    .registers 2

    .line 550
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->showRemainingRecordingTime(Ljava/lang/String;)V

    .line 551
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->showRemainingTime(Ljava/lang/String;)V

    return-void
.end method

.method protected supportVSSGLRecording()Z
    .registers 1

    .line 762
    const-string p0, "com.transsion.camera.base_business.vss_sdk.VSSPreview"

    invoke-static {p0}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method protected supportedLockStateBackCamera()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .registers 2

    .line 618
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->isVideoBeautyOn()Z

    move-result v0

    if-nez v0, :cond_31

    .line 619
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->isVideoPortraitOn()Z

    move-result v0

    if-nez v0, :cond_31

    .line 620
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->isVideoMakeUpOn()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_31

    .line 625
    :cond_13
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->aeLockSupport()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->afLockSupport()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 626
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AE_AF_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0

    .line 628
    :cond_22
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->aeLockSupport()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->afLockSupport()Z

    move-result p0

    if-nez p0, :cond_3a

    .line 629
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AE_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0

    .line 621
    :cond_31
    :goto_31
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->aeLockSupport()Z

    move-result p0

    if-eqz p0, :cond_3a

    .line 622
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AE_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0

    .line 632
    :cond_3a
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0
.end method

.method protected supportedLockStateFrontCamera()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .registers 2

    .line 644
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->isVideoBeautyOn()Z

    move-result v0

    if-nez v0, :cond_31

    .line 645
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->isVideoPortraitOn()Z

    move-result v0

    if-nez v0, :cond_31

    .line 646
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->isVideoMakeUpOn()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_31

    .line 651
    :cond_13
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->aeLockSupport()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->afLockSupport()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 652
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AE_AF_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0

    .line 654
    :cond_22
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->aeLockSupport()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->afLockSupport()Z

    move-result p0

    if-nez p0, :cond_3a

    .line 655
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AE_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0

    .line 647
    :cond_31
    :goto_31
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->aeLockSupport()Z

    move-result p0

    if-eqz p0, :cond_3a

    .line 648
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AE_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0

    .line 658
    :cond_3a
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0
.end method

.method public unInit()V
    .registers 5

    .line 203
    invoke-static {}, Lcom/transsion/camera/utils/StatusBarUtils;->enable()V

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.transsion.camera.MODE_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "key_cam_mode"

    const-string/jumbo v3, "val_not_underwater"

    .line 205
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 204
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 206
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->unInit()V

    const/4 v0, 0x0

    .line 207
    iput v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mStableStatus:I

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mStableMonitorProxy:Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;->setStatusCallback(Lcom/transsion/camera/app/common/gsensor/IStableMonitor$IStatusCallback;)V

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mStableMonitorProxy:Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;->unInit()V

    .line 211
    const-string v0, "key_update_top_bar_ui"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    if-eqz v0, :cond_3a

    .line 213
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->unInitVideoUI()V

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->unRegisterReceiver()V

    .line 217
    :cond_3a
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mPreviewBackgroundOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_41

    .line 218
    invoke-interface {v0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeUninit()V

    .line 220
    :cond_41
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->isModeSupport360VideoHDR(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 221
    const-string v0, "key_360_video_hdr"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 224
    :cond_4e
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isCameraFacingBack()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 225
    const-string v0, "key_dol_video_hdr"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 227
    :cond_59
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 228
    invoke-static {}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->getInstance()Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mThermalThrottleListener:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$ThermalThrottleChangeListenerImpl;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->removeThermalThrottleChangeListener(Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;)V

    .line 229
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUI;->setThumbnailClickable(Z)V

    .line 231
    sget-object p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "init: unInit UnderwaterVideoMode"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateCapturedNumber(I)V
    .registers 3

    .line 345
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->updateCapturedNumber(I)V

    .line 346
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    if-eqz p0, :cond_b

    const/4 v0, 0x0

    .line 347
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->updateCapturedNumber(ZI)V

    :cond_b
    return-void
.end method

.method protected updateLowLight(Z)V
    .registers 2

    .line 187
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateLowLight(Z)V

    .line 188
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    if-eqz p0, :cond_a

    .line 189
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->updateLowLight(Z)V

    :cond_a
    return-void
.end method
