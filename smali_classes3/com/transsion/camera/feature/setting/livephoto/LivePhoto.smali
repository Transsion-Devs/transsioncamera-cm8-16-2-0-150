.class public Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCloseBySuperDefinition:Z

.field private mClosedByAIFrame:Z

.field private mClosedByAIZoomSR:Z

.field private mClosedByGroupCapture:Z

.field private mClosedBySuperNight:Z

.field private mIgnoreSuperDefinition:Z

.field private mIsCameraStable:Z

.field private mIsGroupCaptureIconShow:Z

.field private mModeSupportLivePhoto:Z

.field private final mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mResetByAllSwitchOff:Z

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
        }
    .end annotation
.end field

.field private mSuperNightLightState:Ljava/lang/String;

.field private mSuperNightSwitch:Z


# direct methods
.method public static synthetic $r8$lambda$PD3I2MFMet9ECxVsxzf_xeWPE00(Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmModeSupportLivePhoto(Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mModeSupportLivePhoto:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 60
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "LivePhoto"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mIsCameraStable:Z

    .line 72
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mSuperNightSwitch:Z

    .line 255
    new-instance v0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto$1;-><init>(Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    .line 324
    new-instance v0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;)Lcom/transsion/camera/app/common/setting/StatusMonitor;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;)Lcom/transsion/camera/app/common/setting/StatusMonitor;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;)Lcom/transsion/camera/app/common/setting/StatusMonitor;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;)Lcom/transsion/camera/app/common/setting/StatusMonitor;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-object p0
.end method

.method private handleResetByAllSwitchOff()V
    .registers 2

    const/4 v0, 0x0

    .line 405
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mResetByAllSwitchOff:Z

    .line 406
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->handleStateChanged()V

    return-void
.end method

.method private handleStateChanged()V
    .registers 2

    const/4 v0, 0x1

    .line 410
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mIgnoreSuperDefinition:Z

    .line 411
    const-string v0, "on"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method private isCameraFacingBack()Z
    .registers 1

    .line 419
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    .line 420
    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isSupportFullSize()Z
    .registers 1

    .line 415
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->isCameraFacingBack()Z

    move-result p0

    if-nez p0, :cond_10

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mFullSizeSupport:Z

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 325
    const-string v0, "key_super_night_lite_switch_state"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 326
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mSuperNightLightState:Ljava/lang/String;

    .line 328
    :cond_a
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mIsCameraStable:Z

    if-nez v1, :cond_16

    .line 329
    sget-object p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "camera is not stable, not allow change state"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 332
    :cond_16
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "key_super_definition"

    const-string/jumbo v2, "value_super_night_lite_switch_on"

    const-string v3, "off"

    const/4 v4, 0x1

    const-string v5, "on"

    const/4 v6, 0x0

    if-eqz v0, :cond_90

    .line 333
    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 334
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 335
    iput-boolean v4, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mClosedBySuperNight:Z

    .line 336
    iput-boolean v4, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mIgnoreSuperDefinition:Z

    .line 337
    invoke-virtual {p0, v3}, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->onValueChanged(Ljava/lang/String;)V

    goto :goto_90

    .line 340
    :cond_3f
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    iget-boolean v7, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mIsGroupCaptureIconShow:Z

    if-eqz v7, :cond_5d

    iget-object v7, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v8, "key_group_capture_icon_state"

    .line 342
    invoke-virtual {v7}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    .line 341
    invoke-virtual {v7, v8, v5, v9}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5d

    move v7, v4

    goto :goto_5e

    :cond_5d
    move v7, v6

    .line 343
    :goto_5e
    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->isSupportFullSize()Z

    move-result v0

    if-eqz v0, :cond_6c

    :cond_6a
    if-eqz v7, :cond_75

    .line 344
    :cond_6c
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mClosedBySuperNight:Z

    if-eqz p1, :cond_121

    .line 345
    iput-boolean v6, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mClosedBySuperNight:Z

    .line 346
    iput-boolean v4, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mResetByAllSwitchOff:Z

    return-void

    .line 350
    :cond_75
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mResetByAllSwitchOff:Z

    if-eqz v0, :cond_7d

    .line 351
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->handleResetByAllSwitchOff()V

    return-void

    .line 354
    :cond_7d
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mClosedBySuperNight:Z

    if-eqz v0, :cond_90

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 355
    iput-boolean v6, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mClosedBySuperNight:Z

    .line 356
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->handleStateChanged()V

    .line 361
    :cond_90
    :goto_90
    const-string v0, "key_group_capture_switch_state"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 362
    const-string/jumbo v0, "value_group_capture_switch_on"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 363
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 364
    iput-boolean v4, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mClosedByGroupCapture:Z

    .line 365
    iput-boolean v4, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mIgnoreSuperDefinition:Z

    .line 366
    invoke-virtual {p0, v3}, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->onValueChanged(Ljava/lang/String;)V

    goto :goto_fc

    .line 369
    :cond_b3
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mSuperNightSwitch:Z

    if-eqz v1, :cond_cc

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v7, "key_super_night_lite"

    invoke-interface {v1, v7}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_cc

    goto :goto_d8

    .line 373
    :cond_cc
    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e1

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->isSupportFullSize()Z

    move-result v0

    if-nez v0, :cond_e1

    .line 374
    :goto_d8
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mClosedByGroupCapture:Z

    if-eqz p1, :cond_121

    .line 375
    iput-boolean v4, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mResetByAllSwitchOff:Z

    .line 376
    iput-boolean v6, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mClosedByGroupCapture:Z

    return-void

    .line 380
    :cond_e1
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mResetByAllSwitchOff:Z

    if-eqz v0, :cond_e9

    .line 381
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->handleResetByAllSwitchOff()V

    return-void

    .line 384
    :cond_e9
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mClosedByGroupCapture:Z

    if-eqz v0, :cond_fc

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 385
    iput-boolean v6, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mClosedByGroupCapture:Z

    .line 386
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->handleStateChanged()V

    .line 391
    :cond_fc
    :goto_fc
    const-string v0, "key_live_photo_switch"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_113

    .line 392
    const-string/jumbo v0, "value_live_photo_interaction_off"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_113

    .line 393
    iput-boolean v6, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mClosedBySuperNight:Z

    .line 394
    iput-boolean v6, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mClosedByGroupCapture:Z

    .line 395
    iput-boolean v6, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mCloseBySuperDefinition:Z

    .line 399
    :cond_113
    const-string v0, "key_super_night_lite_switch"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_121

    .line 400
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mSuperNightSwitch:Z

    :cond_121
    return-void
.end method

.method private postLivPhotoRestriction(Ljava/lang/String;)V
    .registers 4

    .line 425
    invoke-static {}, Lcom/transsion/camera/feature/setting/livephoto/LivePhotoRestriction;->getLivePhotoRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    .line 426
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mIgnoreSuperDefinition:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    .line 427
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mIgnoreSuperDefinition:Z

    .line 428
    const-string v0, "key_super_definition"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 430
    :cond_15
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 2

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 5

    .line 235
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mModeSupportLivePhoto:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 236
    const-string v0, "on"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 237
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setLivePhotoMode(I)V

    .line 238
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setLivePhotoValue(Ljava/lang/String;)V

    goto :goto_21

    .line 240
    :cond_1e
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setLivePhotoMode(I)V

    :goto_21
    return v1
.end method

.method public bridge synthetic forceApplyValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceApplyValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic forceUpdateValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceUpdateValue(Ljava/lang/String;)V

    return-void
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 141
    const-string p0, "key_live_photo"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 1

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .registers 1

    .line 252
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public bridge synthetic getSeekBarValue(I)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSeekBarValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .registers 1

    .line 136
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getSupport()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 212
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getTempSettingValue()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getTempSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 4

    .line 78
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 79
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_super_night_lite_switch_state"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 80
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_group_capture_switch_state"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 81
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_live_photo"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 82
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_live_photo_switch"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 83
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_super_night_lite_switch"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method protected declared-synchronized initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 98
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 99
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 100
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 104
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->setValue(Ljava/lang/String;)V

    goto :goto_27

    :catchall_22
    move-exception p1

    goto :goto_2c

    .line 106
    :cond_24
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->setValue(Ljava/lang/String;)V

    .line 108
    :goto_27
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_22

    .line 109
    monitor-exit p0

    return-void

    :goto_2c
    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_22

    throw p1
.end method

.method public notifyCameraStable(Z)V
    .registers 3

    .line 315
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->notifyCameraStable(Z)V

    .line 316
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mIsCameraStable:Z

    if-eqz p1, :cond_20

    .line 317
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mModeSupportLivePhoto:Z

    if-eqz p1, :cond_20

    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mClosedBySuperNight:Z

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mSuperNightLightState:Ljava/lang/String;

    const-string/jumbo v0, "value_super_night_lite_switch_off"

    .line 318
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_20

    const/4 p1, 0x0

    .line 319
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mClosedBySuperNight:Z

    .line 320
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->handleStateChanged()V

    :cond_20
    return-void
.end method

.method public notifyGroupCaptureIconHide()V
    .registers 2

    .line 309
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->notifyGroupCaptureIconHide()V

    const/4 v0, 0x0

    .line 310
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mIsGroupCaptureIconShow:Z

    return-void
.end method

.method public notifyGroupCaptureIconShow()V
    .registers 2

    .line 303
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->notifyGroupCaptureIconShow()V

    const/4 v0, 0x1

    .line 304
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mIsGroupCaptureIconShow:Z

    return-void
.end method

.method public onCameraIdChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    .line 118
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->onCameraIdChanged(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    .line 130
    :try_start_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 131
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mModeSupportLivePhoto:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 132
    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 4

    .line 123
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mModeSupportLivePhoto:Z

    .line 125
    sget-object p1, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onModeOpened, mModeSupportLivePhoto: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mModeSupportLivePhoto:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized onValueChanged(Ljava/lang/String;)V
    .registers 10

    monitor-enter p0

    .line 146
    :try_start_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 147
    sget-object v0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onValueChanged value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->setValue(Ljava/lang/String;)V

    .line 149
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 150
    invoke-direct {p0, v4}, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->postLivPhotoRestriction(Ljava/lang/String;)V

    .line 151
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_41

    goto :goto_44

    :catchall_41
    move-exception v0

    move-object p1, v0

    goto :goto_46

    .line 153
    :cond_44
    :goto_44
    monitor-exit p0

    return-void

    :goto_46
    :try_start_46
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_41

    throw p1
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 162
    sget-object v0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[overrideValues] headerKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", currentValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",supportValues = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 164
    const-string v0, "key_super_definition"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "on"

    const-string v4, "off"

    if-eqz v0, :cond_5e

    .line 165
    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 166
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 167
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d3

    .line 168
    invoke-virtual {p0, v4}, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->onValueChanged(Ljava/lang/String;)V

    .line 169
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mCloseBySuperDefinition:Z

    return-void

    .line 172
    :cond_4a
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mCloseBySuperDefinition:Z

    if-eqz p1, :cond_d3

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d3

    .line 173
    invoke-virtual {p0, v3}, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->onValueChanged(Ljava/lang/String;)V

    .line 174
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mCloseBySuperDefinition:Z

    return-void

    .line 177
    :cond_5e
    const-string v0, "key_ai_frame"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 178
    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7c

    .line 179
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 180
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d3

    .line 181
    invoke-virtual {p0, v4}, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->onValueChanged(Ljava/lang/String;)V

    .line 182
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mClosedByAIFrame:Z

    return-void

    .line 185
    :cond_7c
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mClosedByAIFrame:Z

    if-eqz p1, :cond_d3

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d3

    .line 186
    invoke-virtual {p0, v3}, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->onValueChanged(Ljava/lang/String;)V

    .line 187
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mClosedByAIFrame:Z

    return-void

    .line 190
    :cond_90
    const-string v0, "key_ai_zoom_sr"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 191
    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_ae

    .line 192
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 193
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d3

    .line 194
    invoke-virtual {p0, v4}, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->onValueChanged(Ljava/lang/String;)V

    .line 195
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mClosedByAIZoomSR:Z

    return-void

    .line 198
    :cond_ae
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string p2, "key_super_night_lite"

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 199
    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mClosedByAIZoomSR:Z

    if-eqz p2, :cond_d3

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_d3

    .line 200
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d3

    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mSuperNightSwitch:Z

    if-eqz p1, :cond_d3

    .line 201
    invoke-virtual {p0, v3}, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->onValueChanged(Ljava/lang/String;)V

    .line 202
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mClosedByAIZoomSR:Z

    :cond_d3
    return-void

    .line 206
    :cond_d4
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public pause()V
    .registers 2

    .line 297
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->pause()V

    const/4 v0, 0x0

    .line 298
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mCloseBySuperDefinition:Z

    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .registers 2

    .line 157
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->postLivPhotoRestriction(Ljava/lang/String;)V

    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .registers 2

    .line 286
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreToSupportedPlatformValue()V

    const/4 v0, 0x0

    .line 287
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mClosedBySuperNight:Z

    .line 288
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mClosedByGroupCapture:Z

    .line 289
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mCloseBySuperDefinition:Z

    .line 290
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mClosedByAIFrame:Z

    .line 291
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mClosedByAIZoomSR:Z

    .line 292
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mResetByAllSwitchOff:Z

    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 1

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 4

    .line 227
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 228
    const-string v0, "off"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    const-string v1, "on"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setRealZoomValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRealZoomValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2

    .line 113
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 88
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_super_night_lite_switch_state"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_group_capture_switch_state"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_live_photo"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_live_photo_switch"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_super_night_lite_switch"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method
