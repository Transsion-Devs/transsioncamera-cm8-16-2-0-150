.class public Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"


# static fields
.field public static final ASD_CLOSE:I = 0x1

.field public static final ASD_OPEN:I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mIs360HdrSupport:Z

.field private mIsDolHdrSupport:Z

.field private mIsModeSupport:Z

.field private mIsVideoSuperNightModeSupport:Z

.field private mIsVideoSuperNightYUVModeSupport:Z

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
        }
    .end annotation
.end field

.field private mValue:Ljava/lang/String;

.field private mVideoAsdSupportVideoQuality:[Ljava/lang/String;

.field private mVideoAsdSupportWideCamera:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmSettingChangeRequester(Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;)Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 60
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoAsd"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    .line 324
    new-instance v0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd$1;-><init>(Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    .line 340
    new-instance v0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd$2;-><init>(Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method private isBackMainCamera()Z
    .registers 2

    .line 396
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackMainCamera(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isCameraFacingBack()Z
    .registers 1

    .line 251
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isQualifiedToRecoverQuality()Z
    .registers 2

    .line 198
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object p0

    const-string v0, "key_video_quality"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/setting/SettingBase;

    if-eqz p0, :cond_1e

    .line 200
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getDefaultValue()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x6

    .line 201
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/CameraUtil;->compareQuality(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method private isSupportSatWidCamera()Z
    .registers 3

    .line 306
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mVideoAsdSupportWideCamera:Z

    if-eqz v0, :cond_13

    .line 307
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 309
    :cond_13
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSatNewStreamId:I

    .line 310
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_39

    const/4 p0, 0x1

    return p0

    :cond_39
    const/4 p0, 0x0

    return p0
.end method

.method private isSupportWideCamera()Z
    .registers 2

    .line 302
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mVideoAsdSupportWideCamera:Z

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method private mergeVideoQualityRelation(Lcom/transsion/camera/app/common/relation/Relation;Ljava/lang/String;Z)V
    .registers 5

    .line 234
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->videoAsdSupportQuality()Z

    move-result p0

    if-eqz p0, :cond_38

    if-eqz p1, :cond_38

    .line 236
    const-string p0, "key_video_quality"

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    if-eqz p3, :cond_38

    .line 238
    const-string p3, "on"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string v0, "null"

    if-eqz p3, :cond_20

    .line 239
    const-string/jumbo p2, "value_change_on"

    invoke-virtual {p1, p0, p2, v0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 240
    :cond_20
    const-string p3, "off"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_38

    .line 241
    const-string/jumbo p2, "value_change_off"

    invoke-virtual {p1, p0, p2, v0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string p0, "key_anti_video"

    invoke-virtual {p1, p0, p2, v0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string p0, "key_super_anti_video"

    invoke-virtual {p1, p0, p2, v0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    return-void
.end method

.method private postRelation(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    const/4 v0, 0x1

    .line 220
    invoke-static {p1, v0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdRestriction;->getRestriction(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 221
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->unSupportVideoHDR(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1d

    const-string p2, "on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 222
    const-string p2, "key_360_video_hdr"

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 223
    const-string p2, "key_com_video_hdr"

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 225
    :cond_1d
    const-string p2, "off"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2f

    .line 226
    const-string p2, "key_anti_video"

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 227
    const-string p2, "key_super_anti_video"

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 229
    :cond_2f
    invoke-direct {p0, v0, p1, p3}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mergeVideoQualityRelation(Lcom/transsion/camera/app/common/relation/Relation;Ljava/lang/String;Z)V

    .line 230
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method private setCheckValues(Ljava/lang/String;)V
    .registers 3

    .line 284
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mValue:Ljava/lang/String;

    .line 285
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->getSupport()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 286
    const-string p1, "off"

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mValue:Ljava/lang/String;

    .line 288
    :cond_10
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mValue:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private storeValue(Ljava/lang/String;)V
    .registers 5

    .line 139
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->setCheckValues(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    const-string v2, "key_video_asd"

    invoke-virtual {v0, v2, p1, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
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

.method public getCameraId()Ljava/lang/String;
    .registers 1

    .line 261
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 125
    const-string p0, "key_video_asd"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 4

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    if-nez v0, :cond_f

    .line 132
    new-instance v0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-direct {v0, p0, v1, v2}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;-><init>(Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 133
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    .line 135
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .registers 1

    .line 321
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

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

    .line 120
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

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

    .line 266
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

    .line 76
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 77
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoAsdSupportVideoQuality:[Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mVideoAsdSupportVideoQuality:[Ljava/lang/String;

    .line 78
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_record_state"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 79
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_ae_af_lock_state"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 80
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isVideoAsdSupportWideCamera()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mVideoAsdSupportWideCamera:Z

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
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

    .line 85
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 86
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 87
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 88
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 89
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_video_asd"

    invoke-virtual {p1, v2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mValue:Ljava/lang/String;

    if-nez p1, :cond_1f

    .line 91
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mValue:Ljava/lang/String;

    .line 93
    :cond_1f
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mValue:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->setCheckValues(Ljava/lang/String;)V

    return-void
.end method

.method public isDolHdrSupport()Z
    .registers 3

    .line 379
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->isCameraFacingBack()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 380
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mIsDolHdrSupport:Z

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoModeSupportBack360hdr:Z

    if-nez v0, :cond_14

    const/4 v1, 0x1

    :cond_14
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mIsDolHdrSupport:Z

    goto :goto_19

    .line 382
    :cond_17
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mIsDolHdrSupport:Z

    .line 384
    :goto_19
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mIsDolHdrSupport:Z

    return p0
.end method

.method public isFrontCamera()Z
    .registers 1

    .line 392
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isIs360HdrSupport()Z
    .registers 1

    .line 388
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mIs360HdrSupport:Z

    return p0
.end method

.method public isModeSupport()Z
    .registers 1

    .line 316
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mIsModeSupport:Z

    return p0
.end method

.method isSupportCamera()Z
    .registers 4

    .line 292
    sget-object v0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCameraId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->getCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 293
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontMainCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6e

    .line 294
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontFolderCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6e

    .line 295
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackMainCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6e

    .line 296
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6e

    .line 297
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->isSupportWideCamera()Z

    move-result v0

    if-nez v0, :cond_6e

    .line 298
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->isSupportSatWidCamera()Z

    move-result p0

    if-eqz p0, :cond_6c

    goto :goto_6e

    :cond_6c
    const/4 p0, 0x0

    return p0

    :cond_6e
    :goto_6e
    const/4 p0, 0x1

    return p0
.end method

.method public isVideoSuperNightSupported()Z
    .registers 1

    .line 371
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mIsVideoSuperNightModeSupport:Z

    return p0
.end method

.method public isVideoSuperNightYUVSupported()Z
    .registers 1

    .line 375
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mIsVideoSuperNightYUVModeSupport:Z

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 108
    :try_start_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 109
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mIsModeSupport:Z

    .line 110
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mIsVideoSuperNightModeSupport:Z

    .line 111
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mIsVideoSuperNightYUVModeSupport:Z

    .line 112
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mIsDolHdrSupport:Z

    .line 113
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mIs360HdrSupport:Z

    .line 114
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast p1, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->refreshAsdStateImmediately(I)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 116
    monitor-exit p0

    return-void

    :catchall_22
    move-exception p1

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 4

    .line 98
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mIsModeSupport:Z

    .line 100
    const-string p1, "key_video_super_night"

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mIsVideoSuperNightModeSupport:Z

    .line 101
    const-string p1, "key_video_super_night_yuv"

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mIsVideoSuperNightYUVModeSupport:Z

    .line 102
    const-string p1, "key_dol_video_hdr"

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mIsDolHdrSupport:Z

    .line 103
    const-string p1, "key_360_video_hdr"

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mIs360HdrSupport:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 6

    .line 208
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 209
    sget-object v0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onVideoEnhanceValueChanged] value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 210
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->setCheckValues(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    const/4 v1, 0x6

    .line 212
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_video_quality"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 211
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->postRelation(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    .line 214
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mValue:Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "key_video_asd"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p1, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4e
    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 13
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

    .line 146
    sget-object v0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[overrideValues] headerKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,currentValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", supportValues: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 149
    const-string v1, "off"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "key_super_anti_video"

    const-string v4, "key_anti_video"

    const-string v5, "key_video_quality"

    if-nez v2, :cond_5e

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 150
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    new-instance v6, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v7, "key_video_asd"

    invoke-direct {v6, v7, v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v7, "override_values_off"

    const-string v8, "null"

    invoke-virtual {v6, v5, v7, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v6

    .line 152
    invoke-virtual {v6, v4, v7, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v6

    .line 153
    invoke-virtual {v6, v3, v7, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v6

    .line 150
    invoke-interface {v2, v6}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 155
    :cond_5e
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    if-eqz p2, :cond_ff

    .line 156
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_ff

    if-nez p3, :cond_7d

    .line 158
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->unSupportVideoHDR(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_ff

    .line 159
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->postRelation(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 163
    :cond_7d
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_85

    goto/16 :goto_ff

    .line 166
    :cond_85
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->storeValue(Ljava/lang/String;)V

    return-void

    .line 168
    :cond_89
    const-string v2, "key_video_facebeauty"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e2

    const-string v2, "key_video_portrait"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e2

    const-string v2, "key_video_spot"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e2

    const-string v2, "key_video_filter"

    .line 169
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e2

    const-string v2, "key_video_effect"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e2

    const-string v2, "key_video_frame"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e2

    const-string v2, "key_flash_facade"

    .line 170
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e2

    const-string v2, "key_transsion_filter"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e2

    .line 171
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e2

    const-string v2, "key_video_makeup"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_de

    goto :goto_e2

    .line 186
    :cond_de
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void

    :cond_e2
    :goto_e2
    if-eqz p2, :cond_ff

    .line 173
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ee

    .line 174
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->storeValue(Ljava/lang/String;)V

    return-void

    .line 177
    :cond_ee
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_f5

    goto :goto_ff

    .line 180
    :cond_f5
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->storeValue(Ljava/lang/String;)V

    .line 181
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    if-eqz p0, :cond_ff

    .line 182
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_ff
    :goto_ff
    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .registers 3

    .line 192
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->isQualifiedToRecoverQuality()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_17

    .line 193
    const-string v1, "key_quality_recover_default"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_17
    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .registers 2

    .line 278
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreToSupportedPlatformValue()V

    .line 279
    const-string v0, "off"

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mValue:Ljava/lang/String;

    .line 280
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->setCheckValues(Ljava/lang/String;)V

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

.method public unInit()V
    .registers 4

    .line 271
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 272
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_record_state"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 273
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_ae_af_lock_state"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method unSupportVideoHDR(Ljava/lang/String;)Z
    .registers 2

    const/4 p0, 0x6

    .line 255
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    const/4 p0, 0x5

    .line 256
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    const/4 p0, 0x4

    .line 257
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    const/4 p0, 0x1

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method

.method public videoAsdSupportQuality()Z
    .registers 4

    .line 360
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mVideoAsdSupportVideoQuality:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 363
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_video_quality"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->isBackMainCamera()Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast v2, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->isVideoSuperNightSupport()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 365
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mVideoAsdSupportVideoQuality:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 367
    :cond_29
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->mVideoAsdSupportVideoQuality:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3f

    const-string p0, "8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3f

    const/4 p0, 0x1

    return p0

    :cond_3f
    return v1
.end method
