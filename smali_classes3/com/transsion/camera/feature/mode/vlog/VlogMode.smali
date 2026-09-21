.class public Lcom/transsion/camera/feature/mode/vlog/VlogMode;
.super Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/IVlogOperator;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDraftStore:Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;

.field private mFreeShotList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mSaverListener:Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;

.field private mTemplateWrapData:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

.field private mVlogInfo:Lcom/transsion/camera/feature/mode/vlog/VlogInfo;

.field private mVlogManager:Lcom/transsion/camera/feature/mode/vlog/VlogManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmVlogInfo(Lcom/transsion/camera/feature/mode/vlog/VlogMode;)Lcom/transsion/camera/feature/mode/vlog/VlogInfo;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mVlogInfo:Lcom/transsion/camera/feature/mode/vlog/VlogInfo;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 71
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/vlog/VlogMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 80
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;-><init>(Ljava/lang/String;)V

    .line 363
    new-instance p1, Lcom/transsion/camera/feature/mode/vlog/VlogMode$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/vlog/VlogMode$1;-><init>(Lcom/transsion/camera/feature/mode/vlog/VlogMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mSaverListener:Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/vlog/VlogMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/vlog/VlogMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/vlog/VlogMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/vlog/VlogMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/vlog/VlogMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/mode/vlog/VlogMode;)Landroid/content/Context;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/mode/vlog/VlogMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/mode/vlog/VlogMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method


# virtual methods
.method public destroyTask()V
    .registers 3

    .line 206
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "destroyTask"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mVlogManager:Lcom/transsion/camera/feature/mode/vlog/VlogManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->destroy()V

    const/4 v0, 0x0

    .line 208
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mVlogManager:Lcom/transsion/camera/feature/mode/vlog/VlogManager;

    return-void
.end method

.method protected getBackMaxZoomRatio()I
    .registers 2

    .line 421
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isForceZoom10XForVideo()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 422
    sget p0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_10X:I

    return p0

    .line 424
    :cond_9
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportTeleCamera()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 425
    sget p0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_15X:I

    return p0

    .line 427
    :cond_16
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getBackMaxZoomRatio()I

    move-result p0

    return p0
.end method

.method protected getBackZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 6

    .line 432
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getBackZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v0

    const/4 v1, 0x0

    .line 433
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomConfig;->setTranslateZoomUIOnRecording(Z)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v0

    const/4 v1, 0x1

    .line 434
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomConfig;->setOrientationFixed(Z)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v0

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mIsVideoRecording:Z

    .line 435
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/ZoomConfig;->setZoomRangeLimited(Z)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v0

    .line 437
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mVlogManager:Lcom/transsion/camera/feature/mode/vlog/VlogManager;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->isZoomUISupported()Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v2, 0x4

    const/16 v3, 0x8

    const/4 v4, 0x2

    .line 438
    filled-new-array {v4, v2, v3}, [I

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/ZoomConfig;->setSupportedZoomTypes([I)Lcom/transsion/camera/app/common/ZoomConfig;

    .line 442
    :cond_27
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ZoomConfig;->getCurrentLensType()I

    move-result v2

    if-ne v2, v1, :cond_42

    .line 443
    sget v1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_RATIO_UNIT:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    .line 444
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getBackWideCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/CameraRepository;->getDeviceZoomRatio(Ljava/lang/String;)F

    move-result p0

    mul-float/2addr v1, p0

    float-to-int p0, v1

    .line 445
    sget v1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_2X:I

    invoke-virtual {v0, p0, v1}, Lcom/transsion/camera/app/common/ZoomConfig;->setLimitedZoomRange(II)Lcom/transsion/camera/app/common/ZoomConfig;

    return-object v0

    .line 446
    :cond_42
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ZoomConfig;->getCurrentLensType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_64

    .line 447
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/ZoomConfig;->getLensInfoByType(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v1

    .line 448
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getCurrentRatio()I

    move-result v2

    if-lez v2, :cond_58

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getCurrentRatio()I

    move-result v1

    goto :goto_5c

    :cond_58
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getBaseRatio()I

    move-result v1

    .line 449
    :goto_5c
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->getBackMaxZoomRatio()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/ZoomConfig;->setLimitedZoomRange(II)Lcom/transsion/camera/app/common/ZoomConfig;

    return-object v0

    .line 451
    :cond_64
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomRatioFor13M:Z

    if-nez p0, :cond_7d

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomRatioFor8M:Z

    if-eqz p0, :cond_75

    goto :goto_7d

    .line 454
    :cond_75
    sget p0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_1X:I

    sget v1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_10X:I

    invoke-virtual {v0, p0, v1}, Lcom/transsion/camera/app/common/ZoomConfig;->setLimitedZoomRange(II)Lcom/transsion/camera/app/common/ZoomConfig;

    return-object v0

    .line 452
    :cond_7d
    :goto_7d
    sget p0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_1X:I

    sget v1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_4X:I

    invoke-virtual {v0, p0, v1}, Lcom/transsion/camera/app/common/ZoomConfig;->setLimitedZoomRange(II)Lcom/transsion/camera/app/common/ZoomConfig;

    return-object v0
.end method

.method protected getFrontZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 2

    .line 412
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getFrontZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v0

    .line 413
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mVlogManager:Lcom/transsion/camera/feature/mode/vlog/VlogManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->isZoomUISupported()Z

    move-result p0

    if-eqz p0, :cond_15

    const/16 p0, 0x8

    .line 414
    filled-new-array {p0}, [I

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ZoomConfig;->setSupportedZoomTypes([I)Lcom/transsion/camera/app/common/ZoomConfig;

    :cond_15
    return-object v0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .registers 2

    .line 113
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    const-string p1, "key_tran_plugin"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    const-string p1, "key_tran_plugin_mode_can_support"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    const-string p1, "key_night_hawk"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    const-string p1, "key_anti_video"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    const-string p1, "key_super_anti_video"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    const-string p1, "key_frame_select"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getPreviewSize(Ljava/util/List;)Landroid/util/Size;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 256
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/feature/vlog/R$integer;->vlog_mode_support_video_quality:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 258
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->qualityValid(I)Z

    move-result p1

    if-nez p1, :cond_29

    .line 259
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v0, "videoQuality is invalid."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 260
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/feature/vlog/R$integer;->vlog_mode_support_video_quality:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->setQuality(I)V

    .line 263
    :cond_29
    new-instance p1, Landroid/util/Size;

    const/16 v0, 0x780

    const/16 v1, 0x438

    invoke-direct {p1, v0, v1}, Landroid/util/Size;-><init>(II)V

    .line 265
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPreviewSize previewSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1
.end method

.method public getSettingGroup()J
    .registers 5

    .line 108
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->getSettingGroup()J

    move-result-wide v0

    const-wide/32 v2, 0x80000

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .registers 17

    .line 87
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    const/4 p2, 0x1

    .line 89
    invoke-interface {p3, p2}, Lcom/transsion/camera/app/common/IAppUI;->setVolumeIntercept(Z)V

    .line 90
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->getShutterTypeSelftimerOff()I

    move-result p2

    invoke-interface {p3, p2}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateShutterType(I)V

    const/4 p2, 0x0

    .line 91
    invoke-interface {p3, p2}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideSwitcher(Z)V

    .line 92
    invoke-interface {p3, p2}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideHintLayout(Z)V

    .line 94
    sget-object p2, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->initialize(Landroid/app/Application;)V

    .line 95
    new-instance p2, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-direct {p2, p4}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mDraftStore:Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;

    .line 96
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mVideoRecorder:Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mDraftStore:Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;

    .line 97
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v5

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    iget v8, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    move-object v7, p0

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v8}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;ILcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/feature/mode/vlog/IVlogOperator;I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mVlogManager:Lcom/transsion/camera/feature/mode/vlog/VlogManager;

    .line 98
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->init()V

    return-void
.end method

.method public needRebuildMode()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .registers 11

    .line 302
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->isSecureCamera()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    if-nez p3, :cond_d

    return v1

    .line 310
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult requestCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", resultCode: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-eq p2, p1, :cond_90

    const/4 v0, 0x2

    if-eq p2, v0, :cond_33

    goto/16 :goto_137

    .line 343
    :cond_33
    const-string p2, "key_current_page"

    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 345
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mDraftStore:Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->init()V

    if-ne v0, p2, :cond_81

    .line 347
    const-string p2, "back_template_item"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mTemplateWrapData:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    .line 349
    sget-object p2, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityResult, Template title: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mTemplateWrapData:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    .line 350
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getTemplateItem()Lcom/cutsame/solution/template/model/TemplateItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cutsame/solution/template/model/TemplateItem;->getShortTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", composeState: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mTemplateWrapData:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getComposeState()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 349
    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 351
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mVlogManager:Lcom/transsion/camera/feature/mode/vlog/VlogManager;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mTemplateWrapData:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {p2, p0}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->enterCutSameRecorderAgain(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V

    goto/16 :goto_137

    .line 353
    :cond_81
    const-string p2, "free_shot_back_segment_list"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mFreeShotList:Ljava/util/List;

    .line 354
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mVlogManager:Lcom/transsion/camera/feature/mode/vlog/VlogManager;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->enterFreeShotRecorderAgain(Ljava/util/List;)V

    goto/16 :goto_137

    .line 315
    :cond_90
    const-string/jumbo p2, "vlog_video_temp_path"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 317
    :try_start_97
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mVlogHelper:Lcom/transsion/camera/feature/mode/vlog/VlogHelper;

    invoke-virtual {p3, p2}, Lcom/transsion/camera/feature/mode/vlog/VlogHelper;->getVideoInfo(Ljava/lang/String;)Lcom/transsion/camera/feature/mode/vlog/VlogInfo;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mVlogInfo:Lcom/transsion/camera/feature/mode/vlog/VlogInfo;
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9f} :catch_a0

    goto :goto_a5

    :catch_a0
    move-exception v0

    move-object p3, v0

    .line 319
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 321
    :goto_a5
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mVlogHelper:Lcom/transsion/camera/feature/mode/vlog/VlogHelper;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mVlogInfo:Lcom/transsion/camera/feature/mode/vlog/VlogInfo;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 322
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v1

    const-string v2, "key_location"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 321
    invoke-virtual {p3, p2, v0, v1}, Lcom/transsion/camera/feature/mode/vlog/VlogHelper;->createContentValues(Ljava/lang/String;Lcom/transsion/camera/feature/mode/vlog/VlogInfo;Landroid/location/Location;)Landroid/content/ContentValues;

    move-result-object p3

    .line 323
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/vlog/R$integer;->vlog_mode_support_video_quality:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 325
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 326
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->getInstance()Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->getVlogOperationBundle()Landroid/os/Bundle;

    move-result-object v6

    .line 327
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mVlogInfo:Lcom/transsion/camera/feature/mode/vlog/VlogInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/VlogInfo;->getDuration()J

    move-result-wide v4

    const-string v2, "key_video_duration"

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->video(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    .line 328
    const-string v0, "_data"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mCurrentFile:Ljava/lang/String;

    .line 329
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mSaverListener:Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;

    invoke-interface {v0, p3, p2, v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->addVideoSaveRequest(Landroid/content/ContentValues;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V

    .line 330
    sget-object p3, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_SAVING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, p3}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    .line 331
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x66

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-interface {p3, v2, v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 332
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mDraftStore:Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;

    invoke-virtual {p3}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->delete()V

    .line 333
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bumptech/glide/Glide;->clearMemory()V

    .line 334
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mTemplateWrapData:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    if-eqz p3, :cond_112

    .line 336
    invoke-virtual {p3}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->reset()V

    .line 338
    :cond_112
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mVlogManager:Lcom/transsion/camera/feature/mode/vlog/VlogManager;

    invoke-virtual {p3}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->enterHomePage()V

    .line 340
    sget-object p3, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult, tempPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", vlogInfo: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mVlogInfo:Lcom/transsion/camera/feature/mode/vlog/VlogInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_137
    return p1
.end method

.method public onBackPressed()Z
    .registers 1

    .line 237
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mVlogManager:Lcom/transsion/camera/feature/mode/vlog/VlogManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onBackPressedForUI()Z
    .registers 2

    .line 242
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mVlogManager:Lcom/transsion/camera/feature/mode/vlog/VlogManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->onBackPressedForUI()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 246
    :cond_a
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onBatteryStatusChanged(ZII)V
    .registers 4

    .line 224
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CameraMode;->onBatteryStatusChanged(ZII)V

    .line 225
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mVlogManager:Lcom/transsion/camera/feature/mode/vlog/VlogManager;

    if-eqz p0, :cond_a

    .line 226
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->onBatteryStatusChanged(ZII)V

    :cond_a
    return-void
.end method

.method public onCameraStateChanged(I)V
    .registers 2

    .line 144
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->onCameraStateChanged(I)V

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mVlogManager:Lcom/transsion/camera/feature/mode/vlog/VlogManager;

    if-eqz p0, :cond_a

    .line 146
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->onCameraStateChanged(I)V

    :cond_a
    return-void
.end method

.method public bridge synthetic onCaptureSequenceCompleted(IJ)V
    .registers 4

    .line 0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;->onCaptureSequenceCompleted(IJ)V

    return-void
.end method

.method public onFirstSteadyFrame()V
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mVlogManager:Lcom/transsion/camera/feature/mode/vlog/VlogManager;

    if-eqz p0, :cond_7

    .line 162
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->onFirstSteadyFrame()V

    :cond_7
    return-void
.end method

.method public onMediaRecorderProcessing()V
    .registers 1

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

    .line 218
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onOrientationChanged(I)V

    .line 219
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mVlogManager:Lcom/transsion/camera/feature/mode/vlog/VlogManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->updateOrientation(I)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 152
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->onScreenFormChanged(IZ)V

    .line 154
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mVlogManager:Lcom/transsion/camera/feature/mode/vlog/VlogManager;

    if-eqz p0, :cond_a

    .line 155
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->onScreenFormChanged(IZ)V

    :cond_a
    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 176
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v0, "key_fold_switch_preview"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 178
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mVlogManager:Lcom/transsion/camera/feature/mode/vlog/VlogManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->updateSwitchPreviewValue(Ljava/lang/String;Z)V

    :cond_11
    return-void
.end method

.method public onSettingReady()V
    .registers 1

    .line 168
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->onSettingReady()V

    .line 169
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mVlogManager:Lcom/transsion/camera/feature/mode/vlog/VlogManager;

    if-eqz p0, :cond_a

    .line 170
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->onSettingReady()V

    :cond_a
    return-void
.end method

.method public onShutterClick(II)Z
    .registers 3

    .line 251
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mVlogManager:Lcom/transsion/camera/feature/mode/vlog/VlogManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->onShutterClick()Z

    move-result p0

    return p0
.end method

.method public pause()V
    .registers 2

    .line 199
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->pause()V

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mVlogManager:Lcom/transsion/camera/feature/mode/vlog/VlogManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->pause()V

    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mPaused:Z

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
    .registers 2

    .line 190
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->resume()V

    .line 193
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->initialize(Landroid/app/Application;)V

    .line 194
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mVlogManager:Lcom/transsion/camera/feature/mode/vlog/VlogManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->resume()V

    return-void
.end method

.method public setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .registers 2

    .line 103
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void
.end method

.method protected showInfo(I)V
    .registers 2

    .line 232
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mVlogManager:Lcom/transsion/camera/feature/mode/vlog/VlogManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->showInfo(I)V

    return-void
.end method

.method public startToCompose(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;",
            ">;)V"
        }
    .end annotation

    .line 271
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "startToCompose for cut same"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 273
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mTemplateWrapData:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    const/4 v0, 0x1

    .line 274
    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->setComposeState(I)V

    .line 275
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mDraftStore:Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->updateComposeState(I)V

    .line 277
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const-string v2, "com.transsion.camera.app.PortraitReviewActivity"

    invoke-static {v2}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    const-string v1, "review_fragment"

    const-string/jumbo v2, "vlog_editor"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->isSecureCamera()Z

    move-result v1

    const-string v2, "isSecureCamera"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 280
    const-string v1, "edit_template_item"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 281
    const-string p1, "key_current_page"

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    const-string p1, "replace_template_list"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 283
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mGotoActivityListener:Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;

    const/16 p1, 0x64

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;->onGotoActivity(Landroid/content/Intent;I)V

    return-void
.end method

.method public startToCompose(Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;",
            ">;)V"
        }
    .end annotation

    .line 288
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "startToCompose for free shot"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 290
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mFreeShotList:Ljava/util/List;

    .line 291
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const-string v2, "com.transsion.camera.app.PortraitReviewActivity"

    invoke-static {v2}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 292
    const-string v1, "review_fragment"

    const-string/jumbo v2, "vlog_editor"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->isSecureCamera()Z

    move-result v1

    const-string v2, "isSecureCamera"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 294
    const-string v1, "key_current_page"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 295
    const-string v1, "replace_template_list"

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 296
    const-string p2, "free_shot_segment_list"

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 297
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mGotoActivityListener:Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;

    const/16 p1, 0x65

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;->onGotoActivity(Landroid/content/Intent;I)V

    return-void
.end method

.method public unInit()V
    .registers 5

    .line 126
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->unInit()V

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mVlogManager:Lcom/transsion/camera/feature/mode/vlog/VlogManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->unInit()V

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mDraftStore:Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->unInit()V

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mDraftStore:Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;

    .line 132
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUI;->setVolumeIntercept(Z)V

    .line 133
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideSwitcher(Z)V

    .line 134
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1, v3}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideHintLayout(Z)V

    .line 135
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->couldShowWideCamera(Z)V

    .line 136
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->showWideCamera()V

    .line 137
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v3, v2, v2, v3}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideShutterPanel(ZZIZ)V

    .line 139
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->unInit()V

    return-void
.end method

.method public updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V
    .registers 3

    .line 184
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->mVlogManager:Lcom/transsion/camera/feature/mode/vlog/VlogManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V

    return-void
.end method
