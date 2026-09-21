.class public Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/longexposure/ICapturePreviewCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoMode;",
        "Lcom/transsion/camera/feature/mode/longexposure/ICapturePreviewCallback;"
    }
.end annotation


# static fields
.field private static final STABLE_STATE_INTERVAL:J = 0x3e8L


# instance fields
.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mCaptureListener:Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureListener;

.field private mCurrentSceneLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

.field private mLongExposureCapture:Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;

.field private mLongExposurePreview:Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;

.field private mLongExposureUI:Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;

.field private final mMainHandler:Landroid/os/Handler;

.field private mReady:Z

.field private mResultMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;

.field private final mRunnable:Ljava/lang/Runnable;

.field private mSceneManager:Lcom/transsion/camera/feature/mode/longexposure/capture/SceneManager;

.field private mStableHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/StableHelper;

.field private mStableState:I

.field private final mStatusCallBack:Lcom/transsion/camera/app/common/gsensor/IStableMonitor$IStatusCallback;

.field private mThumbNailType:I

.field private mTwilightMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;


# direct methods
.method public static synthetic $r8$lambda$G9jv8crPF49ZT23TKPyXTT36O5E(Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->lambda$new$0(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmLongExposureCapture(Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;)Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mLongExposureCapture:Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLongExposurePreview(Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;)Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mLongExposurePreview:Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLongExposureUI(Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;)Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mLongExposureUI:Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainHandler(Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStableState(Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mStableState:I

    return p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 129
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

    .line 73
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mMainHandler:Landroid/os/Handler;

    const/4 p1, 0x2

    .line 82
    iput p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mThumbNailType:I

    .line 84
    sget-object p1, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mCurrentSceneLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    const/4 p1, 0x0

    .line 85
    iput p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mStableState:I

    .line 87
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mReady:Z

    .line 89
    new-instance p1, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode$1;-><init>(Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mCaptureListener:Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureListener;

    .line 419
    new-instance p1, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mStatusCallBack:Lcom/transsion/camera/app/common/gsensor/IStableMonitor$IStatusCallback;

    .line 424
    new-instance p1, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode$2;-><init>(Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method private synthetic lambda$new$0(I)V
    .registers 2

    .line 420
    iput p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mStableState:I

    .line 421
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mLongExposureUI:Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->onStatusUpdate(I)V

    return-void
.end method


# virtual methods
.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .registers 4

    .line 232
    new-instance v0, Lcom/transsion/camera/app/common/mode/CaptureInfo;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureOrientation:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needMirror()Z

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->autoWatermark()Z

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/mode/CaptureInfo;-><init>(IZZ)V

    return-object v0
.end method

.method public createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;"
        }
    .end annotation

    .line 257
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureImageProcessor;

    invoke-direct {v0, p0, p0, p0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;Lcom/transsion/camera/feature/mode/longexposure/ICapturePreviewCallback;)V

    return-object v0
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .registers 1

    .line 70
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method protected getBackMaxZoomRatio()I
    .registers 1

    .line 441
    sget p0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_10X:I

    return p0
.end method

.method protected getBackZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 2

    .line 436
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getBackZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object p0

    const/4 v0, 0x2

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ZoomConfig;->setSupportedZoomTypes([I)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object p0

    return-object p0
.end method

.method public getDataFlowType()I
    .registers 2

    const/4 p0, 0x3

    const/4 v0, 0x0

    .line 237
    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .registers 2

    .line 209
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    const-string p1, "key_long_exposure_scene"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    const-string p1, "key_long_exposure_tripod"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    const-string p1, "key_long_exposure_capture_state"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    const-string p1, "key_secondary_screen"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    const-string p1, "key_edit_watermark"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    const-string p1, "key_gold_watermark"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    const-string p1, "key_pro_watermark"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    const-string p1, "key_limit_face_detection"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 219
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .registers 3

    .line 224
    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureModeRestriction;->getRelation()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p0

    const-string v0, "on"

    const/4 v1, 0x0

    .line 225
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    .line 226
    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureModeRestriction;->getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    return-object p0
.end method

.method public getSettingGroup()J
    .registers 5

    .line 204
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getSettingGroup()J

    move-result-wide v0

    const-wide/32 v2, 0x400000

    or-long/2addr v0, v2

    return-wide v0
.end method

.method protected getShutterTypeSelftimerOff()I
    .registers 1

    const/16 p0, 0x18

    return p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .registers 8

    .line 136
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 138
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 139
    new-instance p5, Lcom/transsion/camera/feature/mode/longexposure/capture/SceneManager;

    invoke-direct {p5}, Lcom/transsion/camera/feature/mode/longexposure/capture/SceneManager;-><init>()V

    iput-object p5, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mSceneManager:Lcom/transsion/camera/feature/mode/longexposure/capture/SceneManager;

    .line 141
    new-instance p5, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;

    invoke-direct {p5, p4, p2}, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    iput-object p5, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mResultMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;

    .line 142
    new-instance p5, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;

    invoke-direct {p5, p4}, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    iput-object p5, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mTwilightMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;

    .line 144
    new-instance p5, Lcom/transsion/camera/feature/mode/longexposure/helper/StableHelper;

    invoke-direct {p5, p1}, Lcom/transsion/camera/feature/mode/longexposure/helper/StableHelper;-><init>(Landroid/content/Context;)V

    iput-object p5, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mStableHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/StableHelper;

    .line 145
    invoke-virtual {p5}, Lcom/transsion/camera/feature/mode/longexposure/helper/StableHelper;->init()V

    .line 147
    new-instance p5, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;

    iget-object p6, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mTwilightMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;

    invoke-direct {p5, p1, p3, p6}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;)V

    iput-object p5, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mLongExposureUI:Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;

    .line 148
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p6

    invoke-virtual {p5, p6}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->init(Landroid/view/LayoutInflater;)V

    .line 149
    iget-object p5, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mLongExposureUI:Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;

    invoke-virtual {p5, p2}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 150
    iget-object p5, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mLongExposureUI:Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;

    iget p6, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    invoke-virtual {p5, p6, p7}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->setScreenFormTypeAndOrientation(II)V

    .line 152
    new-instance p5, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;

    iget-object p6, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mSceneManager:Lcom/transsion/camera/feature/mode/longexposure/capture/SceneManager;

    invoke-direct {p5, p3, p6}, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;-><init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/longexposure/capture/SceneManager;)V

    iput-object p5, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mLongExposurePreview:Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;

    .line 153
    invoke-virtual {p5}, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->modeInit()V

    move-object p5, p2

    move-object p2, p1

    .line 155
    new-instance p1, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;

    iget-object p6, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mResultMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;

    iget-object p7, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mTwilightMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;

    invoke-direct/range {p1 .. p7}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mLongExposureCapture:Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;

    .line 157
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mCaptureListener:Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureListener;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->setCaptureListener(Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureListener;)V

    .line 158
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mLongExposureCapture:Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mLongExposureUI:Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->setTimerListener(Lcom/transsion/camera/feature/mode/longexposure/capture/ITimerListener;)V

    .line 159
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mLongExposureCapture:Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mLongExposureUI:Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->setStarSearchListener(Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener;)V

    .line 161
    const-string p1, "key_long_exposure_scene"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 162
    const-string p1, "key_long_exposure_tripod"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    return-void
.end method

.method protected isNeedContinuousHint()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isNeedDeviceCaptureSound()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected isShot2ShotEnable()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected isTpPictureToVideoSupport()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public notifyPictureTaken([BZIJ)I
    .registers 12

    .line 355
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mLongExposureCapture:Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->pictureTaken()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, -0x1

    return p0

    :cond_a
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    .line 358
    invoke-super/range {v0 .. v5}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->notifyPictureTaken([BZIJ)I

    move-result p0

    return p0
.end method

.method public onBackPressed()Z
    .registers 1

    .line 329
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mLongExposureCapture:Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->backPressed()Z

    move-result p0

    return p0
.end method

.method public onModeCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 348
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onModeCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    .line 349
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mResultMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->updateCaptureResult(Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    .line 350
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mLongExposureCapture:Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->captureComplete()V

    return-void
.end method

.method public onModeCaptureFailed(Z[J)V
    .registers 3

    .line 342
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onModeCaptureFailed(Z[J)V

    .line 343
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mLongExposureCapture:Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->captureFail()V

    return-void
.end method

.method public onModeCaptureStarted(JLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
    .registers 7

    .line 334
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onModeCaptureStarted] mImageProcessor.onCaptureStarted(),type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mThumbNailType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 335
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->onCaptureStarted(JLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    .line 336
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p3, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    iget v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mThumbNailType:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1, p1, p2}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->onCaptureStarted(IZJ)V

    .line 337
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mLongExposureCapture:Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->onCaptureStart()V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 393
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onOrientationChanged(I)V

    .line 394
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mLongExposureUI:Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->onOrientationChanged(I)V

    return-void
.end method

.method public onPreviewData([BIII)V
    .registers 6

    .line 406
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mSceneManager:Lcom/transsion/camera/feature/mode/longexposure/capture/SceneManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/SceneManager;->getScene()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/SceneManager;->picTraceMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 407
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mLongExposurePreview:Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->onPreviewData([BIII)V

    :cond_11
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 4

    .line 399
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->onScreenFormChanged(IZ)V

    .line 400
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mLongExposureUI:Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->onScreenFormChanged(IZ)V

    .line 401
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mLongExposureCapture:Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->stopCapture()V

    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 262
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v0, "key_long_exposure_scene"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 264
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->updateTopBarUI()V

    .line 265
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->updatePopSettingUI()V

    .line 266
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mSceneManager:Lcom/transsion/camera/feature/mode/longexposure/capture/SceneManager;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/capture/SceneManager;->updateScene(Ljava/lang/String;)V

    .line 267
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mLongExposureUI:Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->updateScene(Ljava/lang/String;)V

    .line 268
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mLongExposureCapture:Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->updateCaptureScene(Ljava/lang/String;)V

    .line 269
    invoke-static {p2}, Lcom/transsion/camera/feature/mode/longexposure/capture/SceneManager;->picTraceMode(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2d

    sget-object p1, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AF_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    goto :goto_2f

    :cond_2d
    sget-object p1, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    :goto_2f
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mCurrentSceneLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-void

    .line 270
    :cond_32
    const-string v0, "key_long_exposure_tripod"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_75

    .line 271
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mLongExposureUI:Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->updateTripod(Ljava/lang/String;)V

    .line 272
    const-string p1, "on"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5b

    .line 273
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mStableHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/StableHelper;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/longexposure/helper/StableHelper;->start()V

    .line 274
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mStableHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/StableHelper;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mStatusCallBack:Lcom/transsion/camera/app/common/gsensor/IStableMonitor$IStatusCallback;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/helper/StableHelper;->setStatusCallback(Lcom/transsion/camera/app/common/gsensor/IStableMonitor$IStatusCallback;)V

    .line 275
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mMainHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6d

    .line 277
    :cond_5b
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mStableHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/StableHelper;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/helper/StableHelper;->setStatusCallback(Lcom/transsion/camera/app/common/gsensor/IStableMonitor$IStatusCallback;)V

    .line 278
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mStableHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/StableHelper;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/longexposure/helper/StableHelper;->stop()V

    .line 279
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mMainHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 281
    :goto_6d
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mLongExposureCapture:Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;

    if-eqz p0, :cond_75

    const/4 p1, 0x0

    .line 282
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->setCurrentStableState(I)V

    :cond_75
    return-void
.end method

.method public onSettingReady()V
    .registers 3

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onSettingReady"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 168
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingReady()V

    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mReady:Z

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->updateTopBarUI()V

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_long_exposure_scene"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mSceneManager:Lcom/transsion/camera/feature/mode/longexposure/capture/SceneManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/SceneManager;->updateScene(Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mLongExposureUI:Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->updateScene(Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mLongExposureCapture:Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->updateCaptureScene(Ljava/lang/String;)V

    .line 176
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/SceneManager;->picTraceMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    sget-object v0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AF_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    goto :goto_34

    :cond_32
    sget-object v0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    :goto_34
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mCurrentSceneLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_long_exposure_tripod"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mLongExposureUI:Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->updateTripod(Ljava/lang/String;)V

    .line 180
    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mStableHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/StableHelper;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/helper/StableHelper;->start()V

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mStableHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/StableHelper;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mStatusCallBack:Lcom/transsion/camera/app/common/gsensor/IStableMonitor$IStatusCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/helper/StableHelper;->setStatusCallback(Lcom/transsion/camera/app/common/gsensor/IStableMonitor$IStatusCallback;)V

    .line 185
    :cond_57
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mResultMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->startMonitor()V

    .line 186
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mTwilightMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;->startMonitor()V

    return-void
.end method

.method protected onShutterClickBefore(I)Z
    .registers 5

    .line 319
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterClickBefore Ready: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 320
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterClickBefore(I)Z

    move-result p1

    if-eqz p1, :cond_3e

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mReady:Z

    if-eqz p1, :cond_3e

    .line 321
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mLongExposureCapture:Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->shutterClick()Z

    move-result p1

    .line 322
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shutterClick consumed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3e
    const/4 p0, 0x0

    return p0
.end method

.method public onShutterDown()V
    .registers 2

    .line 311
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterDown()V

    .line 312
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mReady:Z

    if-eqz v0, :cond_c

    .line 313
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mLongExposureCapture:Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->shutterDown()V

    :cond_c
    return-void
.end method

.method public onThumbNailTypeConfirmed(I[IJ)V
    .registers 5

    .line 383
    iput p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mThumbNailType:I

    return-void
.end method

.method public pause()V
    .registers 6

    .line 299
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->pause()V

    .line 300
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mStableHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/StableHelper;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/helper/StableHelper;->pause()V

    .line 301
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mLongExposureCapture:Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->pause()V

    .line 302
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mResultMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->stopMonitor()V

    .line 303
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mTwilightMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;->stopMonitor()V

    .line 304
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 305
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 304
    const-string v3, "key_enter_long_exposure_mode"

    const-string v4, "off"

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 306
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0xd6

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

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

    .line 289
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->resume()V

    .line 290
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mStableHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/StableHelper;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/helper/StableHelper;->resume()V

    .line 291
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mLongExposureCapture:Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->resume()V

    .line 292
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 293
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 292
    const-string v3, "key_enter_long_exposure_mode"

    const-string v4, "on"

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 294
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x7b

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method protected supportedLockStateBackCamera()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .registers 2

    .line 413
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->afLockSupport()Z

    move-result v0

    if-nez v0, :cond_9

    .line 414
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0

    .line 416
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mCurrentSceneLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0
.end method

.method public unInit()V
    .registers 3

    .line 191
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->unInit()V

    const/4 v0, 0x0

    .line 192
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mReady:Z

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mStableHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/StableHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/helper/StableHelper;->setStatusCallback(Lcom/transsion/camera/app/common/gsensor/IStableMonitor$IStatusCallback;)V

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mStableHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/StableHelper;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/helper/StableHelper;->unInit()V

    .line 195
    const-string v0, "key_long_exposure_scene"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 196
    const-string v0, "key_long_exposure_tripod"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mLongExposureUI:Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->unInit()V

    .line 198
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mLongExposurePreview:Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->modeUnInit()V

    .line 199
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public updateYuvPicSurface()Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 4

    .line 242
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->getDataFlowType()I

    move-result v0

    .line 243
    invoke-static {v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->yuvCapture(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 244
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "no need yuv image surface"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 247
    :cond_13
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getPreviewSize()Landroid/util/Size;

    move-result-object v0

    if-nez v0, :cond_21

    .line 249
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "pictureSize is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 252
    :cond_21
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    const/16 v1, 0x23

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->updateYuvPicSurface(Landroid/util/Size;IZ)Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object p0

    return-object p0
.end method
