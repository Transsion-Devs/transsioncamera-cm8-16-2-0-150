.class public Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoMode;"
    }
.end annotation


# instance fields
.field private isSupportFingerprintCapture:Z

.field private final m3AController:Lcom/transsion/camera/feature/common/I3AController;

.field private mAeAfLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

.field private mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

.field private mBurstPMKPreview:Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

.field private mBurstPMKUI:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

.field private final mDirectionListener:Lcom/transsion/camera/feature/burstpmk/IBurstPMKUI$IDirectionListener;

.field private mIsSupportAELock:Z

.field private mPreviewMaxWidth:I

.field private mPreviewSize:Landroid/util/Size;

.field private final mStatusListener:Lcom/transsion/camera/feature/common/ICapture$IStatusListener;

.field private final mThumbnailOperator:Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;

.field private mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAeAfLockState(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mAeAfLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBurstPMKCapture(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBurstPMKPreview(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKPreview:Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBurstPMKUI(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKUI:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAeAfLockState(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;Lcom/transsion/camera/app/common/mode/IAeAfLock$State;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mAeAfLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 200
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 64
    iput-boolean p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mIsSupportAELock:Z

    .line 67
    new-instance p1, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;-><init>(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mStatusListener:Lcom/transsion/camera/feature/common/ICapture$IStatusListener;

    .line 134
    new-instance p1, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$2;-><init>(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mThumbnailOperator:Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;

    .line 154
    new-instance p1, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$3;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$3;-><init>(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mDirectionListener:Lcom/transsion/camera/feature/burstpmk/IBurstPMKUI$IDirectionListener;

    .line 178
    new-instance p1, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$4;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$4;-><init>(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->m3AController:Lcom/transsion/camera/feature/common/I3AController;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;[B)V
    .registers 2

    .line 53
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updateThumbnailView([B)V

    return-void
.end method

.method static synthetic access$2200(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;Z)V
    .registers 2

    .line 53
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->lock3A(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;Z)V
    .registers 2

    .line 53
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->lock3A(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method


# virtual methods
.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;"
        }
    .end annotation

    .line 444
    new-instance p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/NullImageProcessor;-><init>()V

    return-object p0
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .registers 1

    .line 53
    invoke-virtual {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method public deleteLargerSize(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 390
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .line 391
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mPreviewMaxWidth:I

    if-gt v2, v3, :cond_9

    .line 392
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_21
    return-object v0
.end method

.method protected getContinuousShotNotSupportMessage()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDataFlowType()I
    .registers 2

    const/4 p0, 0x1

    const/4 v0, 0x4

    .line 429
    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0
.end method

.method public getModeFeatureConfig()Lcom/transsion/camera/app/common/IModeFeatureConfig;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .registers 2

    .line 246
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 247
    const-string p1, "key_shutter_sound_optional"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 249
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .registers 4

    .line 415
    invoke-static {}, Lcom/transsion/camera/feature/burstpmk/BurstPMKRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v0

    const-string v1, "on"

    const/4 v2, 0x1

    .line 416
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 417
    iget-boolean v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->isSupportFingerprintCapture:Z

    if-nez v1, :cond_16

    .line 418
    const-string v1, "key_fingerprint_capture"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2, v2}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :cond_16
    iget-boolean p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mIsSupportAELock:Z

    if-nez p0, :cond_21

    .line 421
    const-string p0, "key_exposure"

    sget-object v1, Lcom/transsion/camera/utils/SettingInfo;->EXPOSURE_ZERO:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :cond_21
    invoke-static {}, Lcom/transsion/camera/feature/burstpmk/BurstPMKRestriction;->getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    return-object v0
.end method

.method protected getOpenCamerId(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 8

    .line 315
    const-string p0, "0"

    return-object p0
.end method

.method public getPreviewSize(Ljava/util/List;)Landroid/util/Size;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 400
    invoke-virtual {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->getScreenSize()Landroid/util/Size;

    move-result-object v0

    .line 401
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-double v3, v0

    div-double/2addr v1, v3

    .line 402
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->deleteLargerSize(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-super {p0, p1, v1, v2, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getPreviewSizeMatch64(Ljava/util/List;DZ)Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mPreviewSize:Landroid/util/Size;

    .line 403
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPreviewSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 404
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method protected getScreenSize()Landroid/util/Size;
    .registers 4

    .line 409
    new-instance p0, Landroid/util/Size;

    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getMainScreenSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getMainScreenSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 410
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getMainScreenSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getMainScreenSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method public getSettingGroup()J
    .registers 5

    .line 241
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getSettingGroup()J

    move-result-wide v0

    const-wide/32 v2, 0x200000

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .registers 8

    .line 207
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 209
    new-instance p6, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    invoke-direct {p6, p3}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;-><init>(Lcom/transsion/camera/app/common/IAppUI;)V

    iput-object p6, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    sget p7, Lcom/transsion/camera/feature/panoramawideselfie/R$bool;->is_support_ae_lock:I

    invoke-virtual {p6, p7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p6

    iput-boolean p6, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mIsSupportAELock:Z

    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    sget p7, Lcom/transsion/camera/feature/panoramawideselfie/R$integer;->panorama_preview_max_width:I

    invoke-virtual {p6, p7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p6

    iput p6, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mPreviewMaxWidth:I

    .line 215
    new-instance p6, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    iget-object p7, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    invoke-direct {p6, p3, p7}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;-><init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;)V

    iput-object p6, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKUI:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    .line 216
    iget-object p7, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mDirectionListener:Lcom/transsion/camera/feature/burstpmk/IBurstPMKUI$IDirectionListener;

    invoke-virtual {p6, p7}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->setDirectionListener(Lcom/transsion/camera/feature/burstpmk/IBurstPMKUI$IDirectionListener;)V

    .line 217
    iget-object p6, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKUI:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    invoke-virtual {p6}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->initView()V

    .line 218
    iget-object p6, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string p7, "key_fold_switch_preview"

    invoke-interface {p6, p7}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 219
    iget-object p7, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKUI:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    invoke-virtual {p7, p6}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->updateSwitchPreviewValue(Ljava/lang/String;)V

    .line 220
    iget-object p7, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    invoke-virtual {p7, p6}, Lcom/transsion/camera/feature/common/BaseUISpec;->updateSwitchPreviewValue(Ljava/lang/String;)V

    .line 222
    new-instance p6, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    iget-object p7, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    invoke-direct {p6, p3, p7}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;-><init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;)V

    iput-object p6, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKPreview:Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    .line 223
    invoke-virtual {p6}, Lcom/transsion/camera/feature/common/BasePreview;->modeInit()V

    move-object p6, p2

    .line 225
    new-instance p2, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    move-object p3, p5

    move-object p5, p4

    iget-object p4, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->m3AController:Lcom/transsion/camera/feature/common/I3AController;

    iget-object p7, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    invoke-direct/range {p2 .. p7}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;-><init>(Ljava/lang/String;Lcom/transsion/camera/feature/common/I3AController;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    .line 227
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/camera/feature/panoramawideselfie/R$array;->high_platform:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    sget-object p3, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    .line 228
    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "highPlatform: "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p6, ", Build.HARDWARE: "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/transsion/camera/feature/panoramawideselfie/R$bool;->panorama_support_fingerprint_capture:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->isSupportFingerprintCapture:Z

    .line 230
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->init(Z)V

    .line 231
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    iget-object p2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKUI:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->registerMoveListener(Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IMoveListener;)V

    .line 232
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    iget-object p2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKPreview:Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->registerMoveListener(Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IMoveListener;)V

    .line 233
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    iget-object p2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKPreview:Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->setThumbnailListener(Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IThumbnailListener;)V

    .line 234
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    iget-object p2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKUI:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->setSpeedListener(Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$ISpeedListener;)V

    .line 235
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    iget-object p2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mStatusListener:Lcom/transsion/camera/feature/common/ICapture$IStatusListener;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/common/BaseCapture;->setStatusListener(Lcom/transsion/camera/feature/common/ICapture$IStatusListener;)V

    .line 236
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mThumbnailOperator:Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/common/BaseCapture;->setThumbnailOperator(Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;)V

    return-void
.end method

.method protected isShot2ShotEnable()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public needUnintModeWhenPause()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public onBackPressed()Z
    .registers 2

    .line 340
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseCapture;->stopCapture()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 343
    :cond_a
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onFirstSteadyFrame()V
    .registers 3

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onFirstSteadyFrame"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKUI:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    if-eqz v0, :cond_e

    .line 171
    invoke-virtual {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->readyUI()V

    .line 173
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKPreview:Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    if-eqz p0, :cond_15

    .line 174
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BasePreview;->readyUI()V

    :cond_15
    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 5

    .line 365
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onOrientationChanged(I)V

    .line 366
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseCapture;->stopCapture()Z

    .line 367
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->onOrientationChanged(I)V

    .line 368
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->getScreenSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->calculateThumbnailSize(Landroid/util/Size;Landroid/util/Size;)V

    .line 369
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKUI:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->updateOrientation(I)V

    .line 370
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKPreview:Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/common/BasePreview;->updateOrientation(I)V

    .line 371
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->updateOrientation(I)V

    .line 372
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v2, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    iget v1, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    iget p0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    invoke-direct {v1, v2, p0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->setThumbnailSize(Landroid/graphics/Point;Landroid/graphics/Point;)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 5

    .line 379
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->onScreenFormChanged(IZ)V

    .line 380
    iget-object p2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/common/BaseCapture;->stopCapture()Z

    .line 381
    iget-object p2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/feature/common/BaseUISpec;->onScreenFormChanged(I)V

    .line 382
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget-object p2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->getScreenSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->calculateThumbnailSize(Landroid/util/Size;Landroid/util/Size;)V

    .line 383
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    new-instance p2, Landroid/graphics/Point;

    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    iget v0, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    invoke-direct {p2, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    new-instance v0, Landroid/graphics/Point;

    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    iget p0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->setThumbnailSize(Landroid/graphics/Point;Landroid/graphics/Point;)V

    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 270
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v0, "key_fold_switch_preview"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 272
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKUI:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    if-eqz p1, :cond_12

    .line 273
    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->updateSwitchPreviewValue(Ljava/lang/String;)V

    .line 275
    :cond_12
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    if-eqz p1, :cond_24

    .line 276
    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/common/BaseUISpec;->updateSwitchPreviewValue(Ljava/lang/String;)V

    .line 277
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget-object p2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->getScreenSize()Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->calculateThumbnailSize(Landroid/util/Size;Landroid/util/Size;)V

    :cond_24
    return-void
.end method

.method public onSettingReady()V
    .registers 6

    .line 284
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingReady()V

    .line 285
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->onOrientationChanged(I)V

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->getScreenSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->calculateThumbnailSize(Landroid/util/Size;Landroid/util/Size;)V

    .line 287
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKUI:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->updateOrientation(I)V

    .line 288
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKPreview:Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/common/BasePreview;->updateOrientation(I)V

    .line 289
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->updateOrientation(I)V

    .line 290
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    new-instance v1, Landroid/graphics/Point;

    iget-object v2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v3, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    iget v2, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    invoke-direct {v1, v3, v2}, Landroid/graphics/Point;-><init>(II)V

    new-instance v2, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v4, v3, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    iget v3, v3, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    invoke-direct {v2, v4, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->setThumbnailSize(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseCapture;->createDataStream()V

    .line 294
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_5b

    .line 295
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    .line 296
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    :cond_5b
    return-void
.end method

.method public onShutterClick(II)Z
    .registers 5

    .line 348
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-gtz p1, :cond_1a

    .line 349
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "onShutterClick space in not enough"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->showLowStorageHint()V

    const/4 p0, 0x0

    return p0

    .line 354
    :cond_1a
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->isModeTabScrolling()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2b

    .line 355
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "isModeTabScrolling return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p2

    .line 359
    :cond_2b
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->shutterClick()V

    return p2
.end method

.method public pause()V
    .registers 3

    .line 327
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->pause()V

    .line 328
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_c

    .line 329
    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    .line 330
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    .line 332
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKUI:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseUI;->pause()V

    .line 333
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKPreview:Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BasePreview;->pause()V

    .line 334
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseCapture;->destroyDataStream()V

    .line 335
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->stopCapture()Z

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

    .line 320
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->resume()V

    .line 321
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKUI:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseUI;->resume()V

    .line 322
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKPreview:Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BasePreview;->resume()V

    return-void
.end method

.method public setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .registers 2

    .line 264
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 265
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void
.end method

.method protected supportedLockStateBackCamera()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .registers 2

    .line 462
    iget-boolean v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mIsSupportAELock:Z

    if-eqz v0, :cond_9

    .line 463
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->supportedLockStateBackCamera()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object p0

    return-object p0

    .line 465
    :cond_9
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->afLockSupport()Z

    move-result p0

    if-nez p0, :cond_12

    .line 466
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0

    .line 468
    :cond_12
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AF_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0
.end method

.method protected supportedLockStateFrontCamera()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .registers 2

    .line 454
    iget-boolean v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mIsSupportAELock:Z

    if-eqz v0, :cond_9

    .line 455
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->supportedLockStateFrontCamera()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object p0

    return-object p0

    .line 457
    :cond_9
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0
.end method

.method public unInit()V
    .registers 3

    .line 254
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->unInit()V

    .line 255
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKUI:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->unRegisterMoveListener(Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IMoveListener;)V

    .line 256
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKPreview:Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->unRegisterMoveListener(Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IMoveListener;)V

    .line 257
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKUI:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->unInitView()V

    .line 258
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKPreview:Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BasePreview;->modeUnInit()V

    .line 259
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->unInit()V

    return-void
.end method

.method public updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V
    .registers 3

    .line 308
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    .line 309
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/common/BaseCapture;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V

    return-void
.end method
