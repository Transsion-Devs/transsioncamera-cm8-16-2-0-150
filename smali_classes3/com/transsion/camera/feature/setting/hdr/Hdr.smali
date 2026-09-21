.class public Lcom/transsion/camera/feature/setting/hdr/Hdr;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
.implements Lcom/transsion/camera/feature/setting/hdr/IHdr$Listener;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCloseByFlashSnapLite:Z

.field private mDefaultValueWithMarket:Z

.field private mDspSupport:Z

.field private mIsFromIntent:Z

.field private mIsHdrAsdBothSupport:Z

.field private mIsModeSupport:Z

.field private mIsModeSupportLivePhoto:Z

.field private mIsStreetPhotoMode:Z

.field private mLivePhotoAlgorithmType:I

.field private mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mStatusListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStreetPhotoHdrValue:Ljava/lang/String;

.field private mTranssionHdr:Z


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 37
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Hdr"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mDefaultValueWithMarket:Z

    .line 44
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mIsStreetPhotoMode:Z

    .line 47
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mTranssionHdr:Z

    .line 48
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mDspSupport:Z

    .line 49
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mCloseByFlashSnapLite:Z

    .line 274
    new-instance v0, Lcom/transsion/camera/feature/setting/hdr/Hdr$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/hdr/Hdr$1;-><init>(Lcom/transsion/camera/feature/setting/hdr/Hdr;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    .line 392
    new-instance v0, Lcom/transsion/camera/feature/setting/hdr/Hdr$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/hdr/Hdr$2;-><init>(Lcom/transsion/camera/feature/setting/hdr/Hdr;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mStatusListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/hdr/Hdr;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/hdr/Hdr;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method private handleHdrRestriction(Z)V
    .registers 8

    .line 241
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->isShot2shotNeed()Z

    move-result v1

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/hdr/HdrRestriction;->getHdrRestriction(Z)Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    if-eqz p1, :cond_78

    .line 243
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mIsModeSupport:Z

    if-eqz v1, :cond_78

    .line 244
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mIsHdrAsdBothSupport:Z

    const-string v2, "off"

    const-string v3, "key_asd"

    const-string v4, "auto"

    if-nez v1, :cond_37

    .line 245
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v5, "0,1,auto"

    if-eqz v1, :cond_2c

    .line 246
    invoke-virtual {p1, v3, v4, v5}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    .line 247
    :cond_2c
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 248
    const-string v1, "1"

    invoke-virtual {p1, v3, v1, v5}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_37
    :goto_37
    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getHighDefinitionBackCamera()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_65

    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 252
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getHighDefinitionFrontCamera()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 253
    :cond_65
    const-string v0, "key_super_definition"

    const-string v1, "off,on"

    invoke-virtual {p1, v0, v2, v1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_6c
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mCloseByFlashSnapLite:Z

    if-eqz v0, :cond_73

    .line 256
    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 258
    :cond_73
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_78
    return-void
.end method

.method private isAsdEnable()Z
    .registers 3

    .line 426
    const-string v0, "key_asd"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 427
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "0"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method private isShot2shotNeed()Z
    .registers 1

    .line 422
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mDspSupport:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private memorySupportHDR()Z
    .registers 6

    .line 406
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getTotalMemory()J

    move-result-wide v0

    .line 407
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_filter"

    invoke-interface {p0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 408
    sget-object v2, Lcom/transsion/camera/feature/setting/hdr/Hdr;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "memorySupportHDR totalMemory = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " filterValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3a

    .line 410
    const-string v0, "0"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3a

    const/4 p0, 0x0

    return p0

    :cond_3a
    const/4 p0, 0x1

    return p0
.end method

.method private parseIntentOnCreate(Landroid/content/Intent;)V
    .registers 3

    .line 268
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 269
    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 270
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "android.media.action.VIDEO_CAPTURE"

    .line 271
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p1, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p1, 0x1

    :goto_20
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mIsFromIntent:Z

    return-void
.end method

.method private removeExclusionOverrides()V
    .registers 2

    .line 263
    const-string v0, "key_flash"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->removeOverride(Ljava/lang/String;)V

    .line 264
    const-string v0, "key_flash_facade"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->removeOverride(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 2

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 9

    .line 340
    sget-object v0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configParameters mTranssionHdr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mTranssionHdr:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , hdrValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , mIsModeSupport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mIsModeSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_ee

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mIsModeSupport:Z

    if-nez v0, :cond_3f

    goto/16 :goto_ee

    .line 344
    :cond_3f
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mIsStreetPhotoMode:Z

    if-eqz v0, :cond_49

    .line 345
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mStreetPhotoHdrValue:Ljava/lang/String;

    .line 348
    :cond_49
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_live_photo"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 349
    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mIsModeSupportLivePhoto:Z

    const-string v4, "off"

    if-eqz v3, :cond_6b

    if-eqz v0, :cond_6b

    iget v0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mLivePhotoAlgorithmType:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6b

    .line 351
    invoke-virtual {p1, v4}, Lcom/transsion/camera/adapter/CameraParameters;->setPhotoHDRMode(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionHDR(I)V

    return v1

    .line 356
    :cond_6b
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setHdrValue(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v3, "auto"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9e

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->isAsdEnable()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 358
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mTranssionHdr:Z

    if-nez v0, :cond_9d

    .line 359
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->memorySupportHDR()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 360
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setPhotoHDRMode(Ljava/lang/String;)V

    goto :goto_9d

    .line 362
    :cond_9a
    invoke-virtual {p1, v4}, Lcom/transsion/camera/adapter/CameraParameters;->setPhotoHDRMode(Ljava/lang/String;)V

    :cond_9d
    :goto_9d
    return v1

    .line 368
    :cond_9e
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    sget-object v5, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    const/4 v6, 0x0

    if-eq v0, v5, :cond_ed

    .line 369
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mTranssionHdr:Z

    if-eqz v0, :cond_dc

    .line 370
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 371
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mCloseByFlashSnapLite:Z

    if-nez p0, :cond_bc

    const/4 p0, 0x1

    .line 372
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionHDR(I)V

    goto :goto_ed

    .line 374
    :cond_bc
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionHDR(I)V

    goto :goto_ed

    .line 376
    :cond_c0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 377
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionHDR(I)V

    goto :goto_ed

    .line 378
    :cond_ce
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_ed

    .line 379
    invoke-virtual {p1, v6}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionHDR(I)V

    goto :goto_ed

    .line 382
    :cond_dc
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->memorySupportHDR()Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 383
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setPhotoHDRMode(Ljava/lang/String;)V

    goto :goto_ed

    .line 385
    :cond_ea
    invoke-virtual {p1, v4}, Lcom/transsion/camera/adapter/CameraParameters;->setPhotoHDRMode(Ljava/lang/String;)V

    :cond_ed
    :goto_ed
    return v6

    :cond_ee
    :goto_ee
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

    .line 118
    const-string p0, "key_hdr"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 1

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .registers 1

    .line 197
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

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

    .line 113
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getStoreScope()Ljava/lang/String;
    .registers 1

    .line 210
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

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

    .line 237
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
    .registers 5

    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 56
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsHdrAsdBothSupport:Z

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mIsHdrAsdBothSupport:Z

    .line 57
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mHdrDefaultValueWithMarket:Z

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mDefaultValueWithMarket:Z

    .line 58
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p3, "key_filter"

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mStatusListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p2, p3, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 59
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mLivePhotoAlgorithmType:I

    iput p2, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mLivePhotoAlgorithmType:I

    .line 61
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->parseIntentOnCreate(Landroid/content/Intent;)V

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .registers 5
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

    .line 72
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 74
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 75
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v0, "key_hdr"

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 76
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mIsFromIntent:Z

    if-eqz v0, :cond_22

    .line 77
    const-string p1, "off"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    return-void

    .line 80
    :cond_22
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    return-void
.end method

.method public isModeSupport()Z
    .registers 1

    .line 98
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mIsModeSupport:Z

    return p0
.end method

.method public isZsdHdrSupported()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onHdrValueChanged()V
    .registers 4

    .line 186
    sget-object v0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHdrValueChanged, value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public onModeClosed(Ljava/lang/String;)V
    .registers 4

    .line 103
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mIsModeSupport:Z

    .line 105
    const-string v1, "com.transsion.camera.feature.mode.streetphoto.StreetPhotoModeEntry"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 106
    const-string p1, "off"

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mStreetPhotoHdrValue:Ljava/lang/String;

    .line 108
    :cond_12
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mIsModeSupportLivePhoto:Z

    return-void
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 4

    .line 87
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 88
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    .line 89
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mIsModeSupport:Z

    .line 90
    const-string p2, "key_live_photo"

    invoke-static {p3, p2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mIsModeSupportLivePhoto:Z

    .line 91
    const-string p2, "com.transsion.camera.feature.mode.streetphoto.StreetPhotoModeEntry"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mIsStreetPhotoMode:Z

    .line 92
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 93
    const-string p1, "off"

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mStreetPhotoHdrValue:Ljava/lang/String;

    :cond_29
    return-void
.end method

.method public onPreviewStateChanged(Z)V
    .registers 3

    .line 179
    const-string p1, "auto"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 180
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 9

    .line 222
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 223
    sget-object v0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onHdrValueChanged] value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 225
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->removeExclusionOverrides()V

    const/4 v0, 0x1

    .line 226
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->handleHdrRestriction(Z)V

    .line 227
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mIsStreetPhotoMode:Z

    if-nez v0, :cond_3c

    .line 228
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v2, "key_hdr"

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 231
    :cond_3c
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->onHdrValueChanged()V

    :cond_3f
    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 12
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

    .line 129
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->isModeSupport()Z

    move-result v0

    if-nez v0, :cond_e

    .line 130
    sget-object p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "HDR is not supported in current mode."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 133
    :cond_e
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mIsStreetPhotoMode:Z

    if-eqz v0, :cond_16

    if-eqz p2, :cond_16

    .line 135
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mStreetPhotoHdrValue:Ljava/lang/String;

    .line 138
    :cond_16
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSupportedPlatformValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "off"

    const-string v2, "auto"

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSupportedPlatformValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    if-eqz p3, :cond_40

    .line 139
    invoke-interface {p3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 140
    invoke-interface {p3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 141
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    move-object p2, v1

    .line 145
    :cond_40
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 146
    sget-object v3, Lcom/transsion/camera/feature/setting/hdr/Hdr;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[overrideValues] headerKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", currentValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",supportValues = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 148
    const-string v3, "key_flash"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "key_asd_enhance"

    const-string v6, "key_filter"

    const-string v7, "key_flash_facade"

    if-nez v4, :cond_92

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_92

    .line 149
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_92

    .line 150
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a4

    if-eqz p2, :cond_a4

    .line 151
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a4

    .line 152
    :cond_92
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    goto :goto_e3

    :cond_9f
    if-eqz p2, :cond_a4

    .line 156
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->onValueChanged(Ljava/lang/String;)V

    .line 160
    :cond_a4
    const-string v0, "key_super_definition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    if-eqz p2, :cond_b1

    .line 162
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->onValueChanged(Ljava/lang/String;)V

    .line 166
    :cond_b1
    const-string v1, "key_best_moment_detect"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 167
    const-string p1, "0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mCloseByFlashSnapLite:Z

    return-void

    .line 171
    :cond_c2
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e3

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e3

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e3

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e3

    .line 172
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e3

    .line 173
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_e3
    :goto_e3
    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .registers 3

    .line 203
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_f

    const/4 v0, 0x0

    .line 204
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->handleHdrRestriction(Z)V

    :cond_f
    return-void
.end method

.method public resetRestriction(Ljava/lang/String;)V
    .registers 4

    .line 214
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->isShot2shotNeed()Z

    move-result v0

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/hdr/HdrRestriction;->getHdrRestriction(Z)Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    .line 216
    sget-object v0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[resetRestriction] hdr"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 217
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 1

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 10

    .line 295
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    sget-object v1, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    const/4 v2, 0x1

    const-string v3, "off"

    if-ne v0, v1, :cond_e

    .line 296
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedVideoHDRModes()Ljava/util/List;

    move-result-object v0

    goto :goto_64

    .line 299
    :cond_e
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedPhotoHDRModes()Ljava/util/List;

    move-result-object v0

    .line 300
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedTranssionHDR()Ljava/util/List;

    move-result-object v1

    .line 301
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_24

    .line 302
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 303
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mTranssionHdr:Z

    .line 306
    :cond_24
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedAsdModes()Ljava/util/List;

    move-result-object v1

    .line 307
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_64

    .line 308
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 309
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    :cond_37
    const-string v1, "auto"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    iget-boolean v4, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mDefaultValueWithMarket:Z

    if-eqz v4, :cond_63

    .line 314
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->getMarket()Ljava/lang/String;

    move-result-object v4

    .line 315
    sget-object v5, Lcom/transsion/camera/feature/setting/hdr/Hdr;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDefaultValue market: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 316
    const-string v5, "gttg"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_63

    goto :goto_64

    :cond_63
    move-object v3, v1

    .line 324
    :cond_64
    :goto_64
    invoke-virtual {p0, v0, v3}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v2, :cond_74

    .line 333
    invoke-virtual {p0, v3}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->resetRestriction(Ljava/lang/String;)V

    .line 335
    :cond_74
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isDspSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mDspSupport:Z

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
    .registers 3

    .line 66
    sget-object v0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_filter"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mStatusListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method
