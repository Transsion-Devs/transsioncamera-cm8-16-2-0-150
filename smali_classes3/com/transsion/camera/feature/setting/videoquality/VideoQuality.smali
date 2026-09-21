.class public Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;,
        Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;,
        Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static mIsSupportLiteFaceBeauty:Z


# instance fields
.field private mAntiVideoRestrict4K30FPS:Z

.field private mCreateVideoSurfaceInPhotoMode:Z

.field private mEnhanceSupportVideoQuality:[Ljava/lang/String;

.field private mFaceBeautySupportVideoQuality:[Ljava/lang/String;

.field private mIsOnValueChanging:Z

.field private mIsValueInitiated:Z

.field private mMaxSupportVPSize:Ljava/lang/String;

.field private mNeedNewVideoMemory:Z

.field private mPortraitSupportVideoQuality:[Ljava/lang/String;

.field private mPreispSupportVideoQuality:[Ljava/lang/String;

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

.field private mSpotSupportVideoQuality:[Ljava/lang/String;

.field private mStatusChangeListener:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;

.field private mSuperAntiVideoRestrictionType:I

.field private mSupport60fpsAiFocusVideoQuality:[Ljava/lang/String;

.field private mSupportAntiVideoQuality:[Ljava/lang/String;

.field private mSupportSuperAntiVideoQuality:[Ljava/lang/String;

.field private mSupportSuperAntiVideoV2:Z

.field private mVideoAsdSupportVideoQuality:[Ljava/lang/String;

.field private mVideoFilterSupportVideoQuality:[Ljava/lang/String;

.field private mVideoMakeUpSupportVideoQuality:[Ljava/lang/String;

.field private mVideoQualityMonitor:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsOnValueChanging(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mIsOnValueChanging:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsValueInitiated(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mIsValueInitiated:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingChangeRequester(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoQualityMonitor(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mVideoQualityMonitor:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsOnValueChanging(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mIsOnValueChanging:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mstoreValue(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->storeValue(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 79
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoQuality"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 84
    sput-boolean v0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mIsSupportLiteFaceBeauty:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 78
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mIsOnValueChanging:Z

    .line 83
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mIsValueInitiated:Z

    .line 100
    new-instance v1, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;-><init>(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;Lcom/transsion/camera/feature/setting/videoquality/VideoQuality-IA;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mVideoQualityMonitor:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;

    .line 101
    new-instance v1, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;-><init>(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;Lcom/transsion/camera/feature/setting/videoquality/VideoQuality-IA;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;

    .line 103
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mCreateVideoSurfaceInPhotoMode:Z

    .line 106
    new-instance v0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$1;-><init>(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Ljava/lang/String;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mDefaultValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Ljava/lang/String;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mDefaultValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Ljava/lang/String;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mDefaultValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Ljava/lang/String;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mDefaultValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Ljava/lang/String;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mDefaultValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method private isBackMainCamera()Z
    .registers 2

    .line 637
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackMainCamera(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSupportLiteFaceBeauty()Z
    .registers 1

    .line 121
    sget-boolean v0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mIsSupportLiteFaceBeauty:Z

    return v0
.end method

.method private isValidValue(Ljava/lang/String;)Z
    .registers 2

    .line 604
    const-string p0, "override_values_off"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1c

    const-string/jumbo p0, "value_change_on"

    .line 605
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1c

    const-string/jumbo p0, "value_change_off"

    .line 606
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method private isVideoCameraSupportCurrentQuality(Ljava/lang/String;)Z
    .registers 5

    .line 444
    const-string p0, "6_60"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    return v0

    .line 447
    :cond_a
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getVideoCameraId()Ljava/lang/String;

    move-result-object p0

    .line 448
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    .line 449
    invoke-interface {v1, p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSupportedVideoSizes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 450
    const-string v2, "_"

    invoke-static {p1, v2}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 453
    :try_start_28
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 454
    const-string p0, "0"

    .line 456
    :cond_34
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p0

    .line 457
    new-instance p1, Landroid/util/Size;

    iget v2, p0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget p0, p0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {p1, v2, p0}, Landroid/util/Size;-><init>(II)V

    .line 458
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_49} :catch_4d

    if-eqz p0, :cond_4d

    const/4 p0, 0x1

    return p0

    :catch_4d
    :cond_4d
    return v0
.end method

.method private merge60fpsAiFocusRelation(Lcom/transsion/camera/app/common/relation/Relation;)V
    .registers 4

    .line 389
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mSupport60fpsAiFocusVideoQuality:[Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 390
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    if-eqz p1, :cond_2a

    .line 392
    const-string v0, "key_auto_focus_switch"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    if-eqz p0, :cond_25

    const/4 p0, 0x0

    .line 394
    const-string v1, "off,on"

    invoke-virtual {p1, v0, p0, v1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 396
    :cond_25
    const-string p0, "off"

    invoke-virtual {p1, v0, p0, p0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    return-void
.end method

.method private mergeAntiVideoRelation(Lcom/transsion/camera/app/common/relation/Relation;)V
    .registers 4

    .line 281
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mSupportAntiVideoQuality:[Ljava/lang/String;

    if-eqz v0, :cond_3b

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    if-eqz p1, :cond_3b

    .line 282
    const-string v0, "8"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "key_video_enhance"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3b

    .line 283
    :cond_2e
    const-string p0, "key_anti_video"

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 284
    const-string/jumbo v0, "value_change_off"

    const-string v1, "null"

    invoke-virtual {p1, p0, v0, v1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    return-void
.end method

.method private mergeDolVideoHdrRelation(Lcom/transsion/camera/app/common/relation/Relation;)V
    .registers 4

    .line 409
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast v0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->isDolVideoHdrSupported()Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "8"

    .line 410
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "11"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_27

    .line 411
    :cond_22
    const-string p0, "key_com_video_hdr"

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    :cond_27
    return-void
.end method

.method private mergeFaceBeautyRelation(Lcom/transsion/camera/app/common/relation/Relation;)V
    .registers 3

    .line 311
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mFaceBeautySupportVideoQuality:[Ljava/lang/String;

    if-eqz v0, :cond_19

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    if-eqz p1, :cond_19

    .line 313
    const-string p0, "key_video_facebeauty"

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method private mergePortraitRelation(Lcom/transsion/camera/app/common/relation/Relation;)V
    .registers 3

    .line 319
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mPortraitSupportVideoQuality:[Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 320
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    if-eqz p1, :cond_19

    .line 322
    const-string p0, "key_video_portrait"

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method private mergeSpotRelation(Lcom/transsion/camera/app/common/relation/Relation;)V
    .registers 3

    .line 328
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mSpotSupportVideoQuality:[Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 329
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    if-eqz p1, :cond_19

    .line 331
    const-string p0, "key_video_spot"

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method private mergeSuperAntiVideoRelation(Lcom/transsion/camera/app/common/relation/Relation;)V
    .registers 6

    .line 290
    const-string v0, "key_super_anti_video"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "super"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mSupportSuperAntiVideoQuality:[Ljava/lang/String;

    goto :goto_13

    :cond_11
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mSupportAntiVideoQuality:[Ljava/lang/String;

    .line 291
    :goto_13
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mAntiVideoRestrict4K30FPS:Z

    if-eqz v2, :cond_24

    .line 292
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_68

    :cond_24
    if-eqz v1, :cond_68

    .line 296
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 298
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mSupportSuperAntiVideoV2:Z

    const-string v2, "null"

    if-eqz v1, :cond_5f

    iget v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mSuperAntiVideoRestrictionType:I

    if-nez v1, :cond_5f

    .line 299
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v3, "6_60"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 300
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_55

    goto :goto_5f

    .line 304
    :cond_55
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 305
    const-string/jumbo p0, "value_off_front_g99"

    invoke-virtual {p1, v0, p0, v2}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 301
    :cond_5f
    :goto_5f
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 302
    const-string/jumbo p0, "value_change_off"

    invoke-virtual {p1, v0, p0, v2}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_68
    :goto_68
    return-void
.end method

.method private mergeVideoAsdRelation(Lcom/transsion/camera/app/common/relation/Relation;)V
    .registers 4

    .line 379
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->videoAsdSupportQuality()Z

    move-result v0

    if-eqz v0, :cond_1a

    if-eqz p1, :cond_1a

    .line 381
    const-string v0, "key_video_asd"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string p0, "key_video_super_night"

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    :cond_1a
    return-void
.end method

.method private mergeVideoEnhanceRelation(Lcom/transsion/camera/app/common/relation/Relation;)V
    .registers 4

    .line 338
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mEnhanceSupportVideoQuality:[Ljava/lang/String;

    if-eqz v0, :cond_26

    .line 339
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    if-eqz p1, :cond_26

    .line 341
    const-string v0, "key_video_enhance"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string p0, "key_video_super_night"

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method private mergeVideoEnhanceYUVRelation(Lcom/transsion/camera/app/common/relation/Relation;)V
    .registers 4

    .line 349
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mEnhanceSupportVideoQuality:[Ljava/lang/String;

    if-eqz v0, :cond_26

    .line 350
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    if-eqz p1, :cond_26

    .line 352
    const-string v0, "key_video_enhance_yuv"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string p0, "key_video_super_night_yuv"

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method private mergeVideoFilterRelation(Lcom/transsion/camera/app/common/relation/Relation;)V
    .registers 3

    .line 361
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mVideoFilterSupportVideoQuality:[Ljava/lang/String;

    if-eqz v0, :cond_1e

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    if-eqz p1, :cond_1e

    .line 363
    const-string p0, "key_transsion_filter"

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 364
    const-string p0, "key_video_filter"

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    :cond_1e
    return-void
.end method

.method private mergeVideoMakeUpRelation(Lcom/transsion/camera/app/common/relation/Relation;)V
    .registers 3

    .line 402
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mVideoMakeUpSupportVideoQuality:[Ljava/lang/String;

    if-eqz v0, :cond_19

    if-eqz p1, :cond_19

    .line 403
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    .line 404
    const-string p0, "key_video_makeup"

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method private mergeVideoPreIspRelation(Lcom/transsion/camera/app/common/relation/Relation;)V
    .registers 3

    .line 370
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mPreispSupportVideoQuality:[Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 371
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    if-eqz p1, :cond_19

    .line 373
    const-string p0, "key_video_preisp"

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method private storeValue(Ljava/lang/String;)V
    .registers 5

    .line 502
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 503
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 505
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mNeedNewVideoMemory:Z

    if-eqz v2, :cond_1c

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    goto :goto_20

    :cond_1c
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    :goto_20
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private switchVideoCamera(Ljava/lang/String;)Z
    .registers 8

    .line 427
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getVideoCameraId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    .line 429
    :cond_10
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_brightbess_value"

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 430
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->isVideoCameraSupportCurrentQuality(Ljava/lang/String;)Z

    move-result p1

    .line 431
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x1

    const-string v4, "key_video_camera_change"

    if-eqz v0, :cond_42

    if-eqz p1, :cond_36

    const-string/jumbo v0, "value_light"

    .line 432
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 433
    :cond_36
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "off"

    invoke-virtual {p0, v4, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return v3

    .line 435
    :cond_42
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    const-string v5, "0"

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_67

    if-eqz p1, :cond_67

    const-string/jumbo p1, "value_dark"

    .line 436
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_67

    .line 437
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "on"

    invoke-virtual {p0, v4, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return v3

    :cond_67
    return v1
.end method

.method private videoAsdSupportQuality()Z
    .registers 4

    .line 416
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mVideoAsdSupportVideoQuality:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 419
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_video_quality"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 420
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->isBackMainCamera()Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast v2, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->isVideoSuperNightSupport()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 421
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mVideoAsdSupportVideoQuality:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 423
    :cond_29
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mVideoAsdSupportVideoQuality:[Ljava/lang/String;

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
    .registers 3

    .line 235
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getVideoCameraId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 236
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 237
    const-string p0, "0"

    return-object p0

    .line 239
    :cond_1b
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 221
    const-string p0, "key_video_quality"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 4

    .line 227
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    if-nez v0, :cond_f

    .line 228
    new-instance v0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-direct {v0, p0, v1, v2}, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;-><init>(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 229
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    .line 231
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .registers 1

    .line 244
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

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

    .line 211
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mCreateVideoSurfaceInPhotoMode:Z

    if-eqz p0, :cond_7

    .line 213
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0

    .line 215
    :cond_7
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getStoreScope()Ljava/lang/String;
    .registers 2

    .line 510
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCameraFacing()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 511
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 513
    :cond_19
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getMainFrontCamera()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

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

    .line 469
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

    .line 126
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 127
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mMaxSupportVPSize:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mMaxSupportVPSize:Ljava/lang/String;

    if-nez p1, :cond_f

    .line 128
    const-string p1, "0"

    :cond_f
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mMaxSupportVPSize:Ljava/lang/String;

    .line 129
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportAntiVideoQuality:[Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mSupportAntiVideoQuality:[Ljava/lang/String;

    .line 130
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportSuperAntiVideoQuality:[Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mSupportSuperAntiVideoQuality:[Ljava/lang/String;

    .line 131
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mFaceBeautySupportVideoQuality:[Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mFaceBeautySupportVideoQuality:[Ljava/lang/String;

    .line 132
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mPortraitSupportVideoQuality:[Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mPortraitSupportVideoQuality:[Ljava/lang/String;

    .line 133
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSpotSupportVideoQuality:[Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mSpotSupportVideoQuality:[Ljava/lang/String;

    .line 134
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoEnHanceType:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_52

    const/4 p2, 0x2

    if-eq p1, p2, :cond_49

    const/4 p1, 0x0

    .line 142
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mEnhanceSupportVideoQuality:[Ljava/lang/String;

    goto :goto_5a

    .line 139
    :cond_49
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mEnhanceYUVSupportVideoQuality:[Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mEnhanceSupportVideoQuality:[Ljava/lang/String;

    goto :goto_5a

    .line 136
    :cond_52
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mEnhanceSupportVideoQuality:[Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mEnhanceSupportVideoQuality:[Ljava/lang/String;

    .line 145
    :goto_5a
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoFilterSupportVideoQuality:[Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mVideoFilterSupportVideoQuality:[Ljava/lang/String;

    .line 146
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mCreateVideoSurfaceInPhotoMode:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mCreateVideoSurfaceInPhotoMode:Z

    .line 147
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mPreispSupportVideoQuality:[Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mPreispSupportVideoQuality:[Ljava/lang/String;

    .line 148
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mAntiVideoRestrict4K30FPS:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mAntiVideoRestrict4K30FPS:Z

    .line 149
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupport60fpsAiFocusVideoQuality:[Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mSupport60fpsAiFocusVideoQuality:[Ljava/lang/String;

    .line 150
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoMakeUpSupportVideoQuality:[Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mVideoMakeUpSupportVideoQuality:[Ljava/lang/String;

    .line 151
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsSupportLiteFaceBeauty:Z

    sput-boolean p1, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mIsSupportLiteFaceBeauty:Z

    .line 152
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoAsdSupportVideoQuality:[Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mVideoAsdSupportVideoQuality:[Ljava/lang/String;

    .line 153
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperAntiVideoRestrictionType:I

    iput p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mSuperAntiVideoRestrictionType:I

    .line 154
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportSuperAntiVideoV2:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mSupportSuperAntiVideoV2:Z

    .line 155
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->needNewVideoMemory()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mNeedNewVideoMemory:Z

    .line 156
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_c4

    .line 157
    const-string p2, "key_quality_recover_default"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 158
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_on_quality_change_end"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_c4
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

    .line 194
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 195
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 196
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 197
    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->updateValue(Ljava/lang/String;Ljava/util/List;)V

    .line 198
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 199
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mNeedNewVideoMemory:Z

    if-eqz v1, :cond_22

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    goto :goto_26

    :cond_22
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    :goto_26
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public isModeSupport()Z
    .registers 2

    .line 164
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    const-string v0, "com.transsion.camera.feature.mode.vlog.VlogModeEntry"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 176
    :try_start_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    .line 177
    sget-object p1, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onModeClosed"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 178
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast p1, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->resetStreamId()V

    .line 179
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast p1, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->unInitParametersConfig()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 180
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public onStoreScopeInit(Z)V
    .registers 4

    .line 498
    sget-object p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onStoreScopeInit :] isGlobal "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 6

    .line 249
    sget-object v0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onValueChanged], value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mMaxSupportVPSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mMaxSupportVPSize:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9c

    const/4 v0, 0x1

    .line 251
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mIsOnValueChanging:Z

    .line 252
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mMaxSupportVPSize:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->getCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityRestriction;->getRestriction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 254
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mergeAntiVideoRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 255
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mergeSuperAntiVideoRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 256
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mergeFaceBeautyRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 257
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mergePortraitRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 258
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mergeSpotRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 259
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mergeVideoEnhanceRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 260
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mergeVideoEnhanceYUVRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 261
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mergeVideoFilterRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 262
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mergeVideoAsdRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 263
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mergeVideoPreIspRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 264
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->merge60fpsAiFocusRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 265
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mergeVideoMakeUpRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 266
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mergeDolVideoHdrRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 267
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mVideoQualityMonitor:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->addVideoKey(Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mVideoQualityMonitor:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->print()V

    .line 269
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mNeedNewVideoMemory:Z

    if-eqz v2, :cond_7f

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    goto :goto_83

    :cond_7f
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    :goto_83
    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 271
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    .line 272
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->switchVideoCamera(Ljava/lang/String;)Z

    .line 274
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_9c

    .line 275
    const-string v0, "key_video_quality_state"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9c
    return-void
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

    .line 518
    sget-object v0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 519
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 520
    new-instance v1, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;-><init>(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)V

    .line 521
    iput-object p1, v1, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;->headerKey:Ljava/lang/String;

    .line 522
    iput-object p2, v1, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;->currentValue:Ljava/lang/String;

    .line 523
    iput-object p3, v1, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;->supportValues:Ljava/util/List;

    .line 525
    const-string v2, "mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6a

    iget-object v2, v1, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;->headerKey:Ljava/lang/String;

    const-string v3, "key_time_lapse"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6a

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mVideoQualityMonitor:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;

    iget-object v3, v1, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;->headerKey:Ljava/lang/String;

    .line 526
    invoke-static {v2, v3}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->-$$Nest$misContainAvoidKey(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6a

    .line 527
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mVideoQualityMonitor:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->add(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;)V

    .line 528
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->isValidValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 529
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mVideoQualityMonitor:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;

    invoke-virtual {v1, p2}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->addVideoKey(Ljava/lang/String;)V

    .line 531
    :cond_65
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mVideoQualityMonitor:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->print()V

    :cond_6a
    if-eqz p2, :cond_176

    .line 533
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->isValidValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_176

    .line 534
    const-string v1, "key_video_spot"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_170

    const-string v1, "key_anti_video"

    .line 535
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_170

    const-string v1, "key_super_anti_video"

    .line 536
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_170

    const-string v1, "key_360_video_hdr"

    .line 537
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_170

    const-string v1, "key_dol_video_hdr"

    .line 538
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_170

    const-string v1, "key_transsion_filter"

    .line 539
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_170

    const-string v1, "key_video_filter"

    .line 540
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_170

    const-string v1, "key_video_effect"

    .line 541
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_170

    const-string v1, "key_video_frame"

    .line 542
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_170

    const-string v1, "key_video_enhance"

    .line 543
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_170

    const-string v1, "key_video_enhance_yuv"

    .line 544
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_170

    const-string v1, "key_video_asd"

    .line 545
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_170

    const-string v1, "key_video_super_night"

    .line 546
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_170

    const-string v1, "key_video_super_night_yuv"

    .line 547
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_170

    const-string v1, "key_video_makeup"

    .line 548
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_170

    const-string v1, "key_video_preisp"

    .line 549
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_170

    const-string v1, "com.transsion.camera.feature.mode.video.TimeLapseVideoModeEntry"

    .line 550
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fc

    goto/16 :goto_170

    .line 553
    :cond_fc
    const-string v1, "key_video_portrait"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_121

    .line 554
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mNeedNewVideoMemory:Z

    if-eqz v3, :cond_110

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    goto :goto_114

    :cond_110
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    :goto_114
    const-string/jumbo v4, "video_portrait_video_quality"

    invoke-virtual {v1, v4, p2, v3, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 555
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->storeValue(Ljava/lang/String;)V

    .line 556
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->switchVideoCamera(Ljava/lang/String;)Z

    goto :goto_176

    .line 557
    :cond_121
    const-string v1, "key_video_facebeauty"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_154

    sget-boolean v1, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mIsSupportLiteFaceBeauty:Z

    if-eqz v1, :cond_136

    const-string v1, "key_face_beauty"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_136

    goto :goto_154

    .line 561
    :cond_136
    const-string v1, "com.transsion.camera.feature.mode.dualvideo.DualVideoModeEntry"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_146

    const-string v1, "com.transsion.camera.feature.mode.vlog.VlogModeEntry"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_176

    :cond_146
    if-eqz p3, :cond_150

    .line 562
    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_150

    .line 563
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mDefaultValue:Ljava/lang/String;

    .line 565
    :cond_150
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->storeValue(Ljava/lang/String;)V

    goto :goto_176

    .line 558
    :cond_154
    :goto_154
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mNeedNewVideoMemory:Z

    if-eqz v3, :cond_15f

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    goto :goto_163

    :cond_15f
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    :goto_163
    const-string/jumbo v4, "video_facebeauty_video_quality"

    invoke-virtual {v1, v4, p2, v3, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 559
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->storeValue(Ljava/lang/String;)V

    .line 560
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->switchVideoCamera(Ljava/lang/String;)Z

    goto :goto_176

    .line 551
    :cond_170
    :goto_170
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->storeValue(Ljava/lang/String;)V

    .line 552
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->switchVideoCamera(Ljava/lang/String;)Z

    .line 568
    :cond_176
    :goto_176
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->isValidValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17f

    .line 569
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_17f
    if-eqz p2, :cond_18c

    if-nez v0, :cond_18c

    .line 571
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->isValidValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18c

    .line 572
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->postRestrictionAfterInitialized()V

    :cond_18c
    return-void
.end method

.method public pause()V
    .registers 3

    .line 169
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->pause()V

    .line 170
    sget-object v0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 171
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->resetStreamId()V

    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .registers 5

    .line 578
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mMaxSupportVPSize:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityRestriction;->getRestriction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 579
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mergeFaceBeautyRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 580
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mergePortraitRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 581
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mergeSpotRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 582
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mergeAntiVideoRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 583
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mergeSuperAntiVideoRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 584
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mergeVideoEnhanceRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 585
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mergeVideoEnhanceYUVRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 586
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mergeVideoFilterRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 587
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mergeVideoPreIspRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 588
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mergeVideoAsdRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 589
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->merge60fpsAiFocusRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 590
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mergeVideoMakeUpRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 591
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mergeDolVideoHdrRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    if-eqz v0, :cond_3d

    .line 593
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_3d
    return-void
.end method

.method public reConfigSupportList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 203
    sget-object v0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[reConfigSupportList], supportedVideoQualitySize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 205
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 206
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .registers 1

    .line 599
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreToSupportedPlatformValue()V

    .line 600
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mVideoQualityMonitor:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->-$$Nest$mclearAll(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;)V

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

    .line 184
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_17

    .line 186
    const-string v1, "key_quality_recover_default"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_on_quality_change_end"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 189
    :cond_17
    sget-object p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v0, "unInit"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method

.method public updateValue(Ljava/lang/String;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 473
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mNeedNewVideoMemory:Z

    if-eqz v2, :cond_f

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    goto :goto_13

    :cond_f
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    :goto_13
    invoke-virtual {v0, v1, p1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 474
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mNeedNewVideoMemory:Z

    if-eqz v2, :cond_22

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    goto :goto_26

    :cond_22
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    :goto_26
    const-string/jumbo v3, "video_facebeauty_video_quality"

    invoke-virtual {v1, v3, p1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 475
    sget-boolean v2, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mIsSupportLiteFaceBeauty:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_43

    const-string v2, "key_face_beauty"

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "0"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_43

    move v2, v4

    goto :goto_44

    :cond_43
    move v2, v3

    .line 476
    :goto_44
    const-string v5, "key_video_facebeauty"

    invoke-virtual {p0, v5}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "video_facebeauty_on"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_55

    if-eqz v2, :cond_5c

    :cond_55
    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    move-object p1, v1

    .line 479
    :cond_5c
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_63

    move v3, v4

    .line 481
    :cond_63
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_72

    .line 483
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 484
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mVideoQualityMonitor:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->addVideoKey(Ljava/lang/String;)V

    goto :goto_7e

    .line 487
    :cond_72
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 488
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->storeValue(Ljava/lang/String;)V

    .line 489
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mVideoQualityMonitor:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->addVideoKey(Ljava/lang/String;)V

    move-object v0, p1

    :goto_7e
    if-eqz v3, :cond_8d

    if-eqz v0, :cond_8d

    .line 491
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    if-eqz p1, :cond_8d

    .line 492
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 494
    :cond_8d
    iput-boolean v4, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mIsValueInitiated:Z

    return-void
.end method
