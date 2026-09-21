.class public Lcom/transsion/camera/feature/setting/asd/Asd;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

.field private final mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

.field private mAsdParameterConfig:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

.field private final mAsdSettingFeatures:Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;

.field private mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mFakeCameraStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

.field private mFilterValue:Ljava/lang/String;

.field private mFlashValue:Ljava/lang/String;

.field private mIsAsdMode:Z

.field private mIsBeautyMode:Z

.field private mIsHdrMode:Z

.field private mIsModeSupport:Z

.field private mIsMotionCaptureMode:Z

.field private mIsPMasterMode:Z

.field private mIsQuickVideoStart:Z

.field private mIsSTBlurMode:Z

.field private mIsStreetPhotoMode:Z

.field private mIsSuperNightMode:Z

.field private mIsTimelapsePhotoMode:Z

.field private mIsUltraMode:Z

.field private mIsVsdofMode:Z

.field private mLivePhotoValue:Ljava/lang/String;

.field private mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

.field private mMonomerSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private final mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mSuperNightLiteStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

.field private mWideCameraValue:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAsdGlobalFeatures(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAsdModeFeatures(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAsdParameterConfig(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdParameterConfig:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAsdSettingFeatures(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdSettingFeatures:Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWideCameraValue(Lcom/transsion/camera/feature/setting/asd/Asd;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mWideCameraValue:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmFilterValue(Lcom/transsion/camera/feature/setting/asd/Asd;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFilterValue:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFlashValue(Lcom/transsion/camera/feature/setting/asd/Asd;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFlashValue:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsQuickVideoStart(Lcom/transsion/camera/feature/setting/asd/Asd;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsQuickVideoStart:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLivePhotoValue(Lcom/transsion/camera/feature/setting/asd/Asd;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mLivePhotoValue:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWideCameraValue(Lcom/transsion/camera/feature/setting/asd/Asd;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mWideCameraValue:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$misAsdSupport(Lcom/transsion/camera/feature/setting/asd/Asd;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isAsdSupport()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misNightShotSupport(Lcom/transsion/camera/feature/setting/asd/Asd;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isNightShotSupport()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/setting/asd/Asd;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 79
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Asd"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/asd/Asd;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 113
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsModeSupport:Z

    .line 101
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsSTBlurMode:Z

    .line 102
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsSuperNightMode:Z

    .line 103
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsVsdofMode:Z

    .line 104
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsTimelapsePhotoMode:Z

    .line 105
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsPMasterMode:Z

    .line 106
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsAsdMode:Z

    .line 107
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsBeautyMode:Z

    .line 108
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsHdrMode:Z

    .line 109
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsMotionCaptureMode:Z

    .line 110
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsUltraMode:Z

    .line 111
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsStreetPhotoMode:Z

    .line 413
    new-instance v0, Lcom/transsion/camera/feature/setting/asd/Asd$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/asd/Asd$1;-><init>(Lcom/transsion/camera/feature/setting/asd/Asd;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 531
    new-instance v0, Lcom/transsion/camera/feature/setting/asd/Asd$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/asd/Asd$2;-><init>(Lcom/transsion/camera/feature/setting/asd/Asd;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    .line 114
    new-instance v0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    .line 115
    new-instance v0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    .line 116
    new-instance v0, Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdSettingFeatures:Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method private getFlashKey()Ljava/lang/String;
    .registers 4

    .line 255
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const-string v2, "key_flash_facade"

    invoke-virtual {v0, v2, v1, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_14

    return-object v2

    .line 258
    :cond_14
    const-string p0, "key_flash"

    return-object p0
.end method

.method private initModeFeatures([Ljava/lang/String;)V
    .registers 7

    .line 339
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_d3

    aget-object v2, p1, v1

    .line 340
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_15

    .line 341
    iput-boolean v4, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsModeSupport:Z

    goto/16 :goto_cf

    .line 342
    :cond_15
    const-string v3, "key_asd_enhance"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 343
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    invoke-virtual {v2, v4}, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->setModeSupportASDEnhance(Z)V

    goto/16 :goto_cf

    .line 344
    :cond_24
    const-string v3, "key_fake_asd_camera"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 345
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    invoke-virtual {v2, v4}, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->setModeSupportFakeCamera(Z)V

    goto/16 :goto_cf

    .line 346
    :cond_33
    const-string v3, "key_setting_smart_denoise"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 348
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    invoke-virtual {v2, v4}, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->setModeSupportSmartDenoise(Z)V

    goto/16 :goto_cf

    .line 349
    :cond_42
    const-string v3, "key_super_resolution"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 350
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    invoke-virtual {v2, v4}, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->setModeSupportSuperResolution(Z)V

    goto/16 :goto_cf

    .line 351
    :cond_51
    const-string v3, "key_filter"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 352
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    invoke-virtual {v2, v4}, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->setModeSupportFilter(Z)V

    goto/16 :goto_cf

    .line 353
    :cond_60
    const-string v3, "key_high_resolution"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 354
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    invoke-virtual {v2, v4}, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->setModeSupportHighResolution(Z)V

    goto :goto_cf

    .line 355
    :cond_6e
    const-string v3, "key_portraitmode_enhance"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 356
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    invoke-virtual {v2, v4}, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->setModeSupportPortraitEnhance(Z)V

    goto :goto_cf

    .line 357
    :cond_7c
    const-string v3, "key_super_night_light"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 358
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    invoke-virtual {v2, v4}, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->setModeSupportSuperNightLight(Z)V

    goto :goto_cf

    .line 359
    :cond_8a
    const-string v3, "key_super_night"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_98

    .line 360
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    invoke-virtual {v2, v4}, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->setModeSupportSuperNight(Z)V

    goto :goto_cf

    .line 361
    :cond_98
    const-string v3, "ai_raw_lite"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a6

    .line 362
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    invoke-virtual {v2, v4}, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->setModeSupportAiRawLite(Z)V

    goto :goto_cf

    .line 363
    :cond_a6
    const-string v3, "key_night_3dnr"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b4

    .line 364
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    invoke-virtual {v2, v4}, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->setModeSupportNight3DNR(Z)V

    goto :goto_cf

    .line 365
    :cond_b4
    const-string v3, "key_magic_sky_type"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c2

    .line 366
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    invoke-virtual {v2, v4}, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->setModeSupportMagicSky(Z)V

    goto :goto_cf

    .line 367
    :cond_c2
    const-string v3, "key_live_photo"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cf

    .line 368
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    invoke-virtual {v2, v4}, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->setModeSupportLivePhoto(Z)V

    :cond_cf
    :goto_cf
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_d3
    return-void
.end method

.method private isAsdSupport()Z
    .registers 5

    .line 204
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsModeSupport:Z

    .line 205
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isTurboFusionSupport()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_40

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    .line 206
    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isSuperAiRawSupport()Z

    move-result v1

    if-nez v1, :cond_40

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    .line 207
    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isFilterSupportAsd()Z

    move-result v1

    if-nez v1, :cond_40

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    .line 208
    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isTranssionFilterSupport()Z

    move-result v1

    if-nez v1, :cond_40

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    .line 209
    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->isModeSupportFilter()Z

    move-result v1

    if-eqz v1, :cond_40

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFilterValue:Ljava/lang/String;

    const-string v3, "0"

    .line 210
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_40

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFilterValue:Ljava/lang/String;

    const-string v3, "-1"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_40

    move v0, v2

    .line 213
    :cond_40
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsQuickVideoStart:Z

    if-eqz v1, :cond_45

    move v0, v2

    .line 216
    :cond_45
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isAsdMode()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isLivePhotoSupportAsd()Z

    move-result p0

    if-nez p0, :cond_59

    .line 217
    sget-object p0, Lcom/transsion/camera/feature/setting/asd/Asd;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "isAsdSupport: live photo not support asd, ret set false"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    :cond_59
    return v0
.end method

.method private isBackMainCamera()Z
    .registers 3

    .line 662
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStreamIds()[I

    move-result-object v0

    .line 663
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_18

    .line 664
    array-length v1, v0

    if-lez v1, :cond_18

    const/4 p0, 0x0

    .line 665
    aget p0, v0, p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 668
    :cond_18
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackMainCamera(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isLivePhotoSupportAsd()Z
    .registers 3

    .line 645
    const-string v0, "off"

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mLivePhotoValue:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    .line 646
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->getLivePhotoAlgorithmType()I

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x1

    return p0
.end method

.method private isNightShotSupport()Z
    .registers 3

    .line 281
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isPlatformMfnrSupport()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFlashValue:Ljava/lang/String;

    const-string v1, "off"

    .line 282
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFlashValue:Ljava/lang/String;

    const-string v1, "auto"

    .line 283
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFlashValue:Ljava/lang/String;

    const-string v1, "on"

    .line 284
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFlashValue:Ljava/lang/String;

    const-string/jumbo v1, "torch"

    .line 285
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFlashValue:Ljava/lang/String;

    const-string v0, "ringscreenlight"

    .line 286
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3c

    goto :goto_3e

    :cond_3c
    const/4 p0, 0x0

    return p0

    :cond_3e
    :goto_3e
    const/4 p0, 0x1

    return p0
.end method

.method private registerKeyToMonitor()V
    .registers 4

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_78

    .line 141
    const-string v1, "key_flash"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_flash_facade"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_filter"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string/jumbo v1, "wide_camera"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_super_definition"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 146
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_super_night_lite"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_super_night_lite_switch"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_quick_video_action"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_setting_barcode"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_setting_qrcode"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "capture_state"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_celebrity_scene"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_live_photo"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_78
    return-void
.end method

.method private unRegisterKeyToMonitor()V
    .registers 4

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_78

    .line 159
    const-string v1, "key_flash"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_flash_facade"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_filter"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string/jumbo v1, "wide_camera"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_super_definition"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 164
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_super_night_lite"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_super_night_lite_switch"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_quick_video_action"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_setting_barcode"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_setting_qrcode"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "capture_state"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_celebrity_scene"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_live_photo"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_78
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

.method public getGlobalFeatures()Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;
    .registers 1

    .line 676
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 243
    const-string p0, "key_asd"

    return-object p0
.end method

.method public getModeFeatures()Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;
    .registers 1

    .line 680
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    return-object p0
.end method

.method public getModeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;
    .registers 1

    .line 672
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 5

    .line 263
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdParameterConfig:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    if-nez v0, :cond_81

    .line 264
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->isNeedASDShot2ShotSkipPolicy()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 265
    new-instance v0, Lcom/transsion/camera/feature/setting/asd/background/TapsAsdParameterConfig;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-direct {v0, p0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/background/TapsAsdParameterConfig;-><init>(Lcom/transsion/camera/feature/setting/asd/Asd;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    goto :goto_21

    .line 266
    :cond_18
    new-instance v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-direct {v0, p0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;-><init>(Lcom/transsion/camera/feature/setting/asd/Asd;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    :goto_21
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdParameterConfig:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    .line 267
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->getFlashKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "auto"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFlashValue:Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v1, "-1"

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_filter"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFilterValue:Ljava/lang/String;

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v1, "off"

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_live_photo"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mLivePhotoValue:Ljava/lang/String;

    .line 270
    sget-object v0, Lcom/transsion/camera/feature/setting/asd/Asd;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getParametersConfigure mFlashValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFlashValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mFilterValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFilterValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mLivePhotoValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mLivePhotoValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 274
    :cond_81
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdParameterConfig:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isAsdSupport()Z

    move-result v1

    if-eqz v1, :cond_97

    const-string v1, "0"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_97

    const/4 v1, 0x0

    goto :goto_98

    :cond_97
    const/4 v1, 0x1

    :goto_98
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshAsdStateImmediately(I)V

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdParameterConfig:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isNightShotSupport()Z

    move-result v1

    if-eqz v1, :cond_a5

    const/4 v1, 0x2

    goto :goto_a6

    :cond_a5
    const/4 v1, 0x3

    :goto_a6
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshAsdStateImmediately(I)V

    .line 276
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdSettingFeatures:Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isNightShotSupport()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;->setNightShotOpenState(Z)V

    .line 277
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdParameterConfig:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .registers 1

    .line 520
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public bridge synthetic getSeekBarValue(I)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSeekBarValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSettingFeatures()Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;
    .registers 1

    .line 684
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdSettingFeatures:Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .registers 1

    .line 230
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getStoreScope()Ljava/lang/String;
    .registers 1

    .line 410
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

    .line 405
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

    .line 122
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    const/4 p1, -0x1

    .line 124
    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->getSuperResolutionDebug(I)I

    move-result p1

    .line 125
    sget-object p2, Lcom/transsion/camera/feature/setting/asd/Asd;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ASD init, mSuperResolutionDebug: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 127
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->registerKeyToMonitor()V

    .line 129
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_fake_asd_camera_status"

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFakeCameraStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    .line 130
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_super_night_lite"

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mSuperNightLiteStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

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

    .line 177
    sget-object v0, Lcom/transsion/camera/feature/setting/asd/Asd;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initValueAndSupport], platformSupportedValues: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", default value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mIsModeSupport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsModeSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object v1

    const-string v2, "key_mu_monomer"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mMonomerSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 181
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object v1

    const-string v2, "key_mu_face_beauty"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 183
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsModeSupport:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_9a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v2, :cond_54

    goto :goto_9a

    .line 188
    :cond_54
    const-string v1, "0"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 189
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdParameterConfig:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshAsdStateImmediately(I)V

    goto :goto_68

    .line 191
    :cond_62
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdParameterConfig:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshAsdStateImmediately(I)V

    .line 194
    :goto_68
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 195
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 196
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 197
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 198
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, p2, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 199
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 200
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[initValueAndSupport], DataStore.getValue: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 184
    :cond_9a
    :goto_9a
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdParameterConfig:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshAsdStateImmediately(I)V

    return-void
.end method

.method public isAISuperDefinitionAlgoSupport()Z
    .registers 2

    .line 639
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isAiSuperDefinitionAlgoSupport()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsAsdMode:Z

    if-eqz v0, :cond_1b

    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 641
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    return p0
.end method

.method public isAISuperResolutionSupport()Z
    .registers 2

    .line 635
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isAiSuperResolutionSupport()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsAsdMode:Z

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public isAsdMode()Z
    .registers 1

    .line 578
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsAsdMode:Z

    return p0
.end method

.method public isBeautyMode()Z
    .registers 1

    .line 582
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsBeautyMode:Z

    return p0
.end method

.method public isFaceBeautyOn()Z
    .registers 2

    .line 625
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_1c

    .line 626
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->isModeSupport()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_mu_face_beauty"

    .line 627
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "off"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public isFrontCamera()Z
    .registers 1

    .line 631
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isFullSizeMode()Z
    .registers 2

    .line 558
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isFullSizeSupport()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isFrontCamera()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public isHDRMode()Z
    .registers 1

    .line 586
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsHdrMode:Z

    return p0
.end method

.method public isLightSuperNightSupport()Z
    .registers 2

    .line 650
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->isModeSupportSuperNightLight()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isSuperNightLiteSupportFrontCamera()Z

    move-result v0

    if-nez v0, :cond_28

    .line 651
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isSuperNightLiteSupportBackWideCamera()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 652
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 654
    :cond_23
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isBackMainCamera()Z

    move-result p0

    return p0

    .line 658
    :cond_28
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->isModeSupportSuperNightLight()Z

    move-result p0

    return p0
.end method

.method public isModeSupport()Z
    .registers 1

    .line 225
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsModeSupport:Z

    return p0
.end method

.method public isMotionCaptureMode()Z
    .registers 1

    .line 590
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsMotionCaptureMode:Z

    return p0
.end method

.method public isPMasterMode()Z
    .registers 1

    .line 594
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsPMasterMode:Z

    return p0
.end method

.method public isPMasterModeWithDualCam()Z
    .registers 2

    .line 606
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 607
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsPMasterMode:Z

    if-eqz p0, :cond_20

    .line 608
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isBlurCamera(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1e

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/CameraRepository;->is2XBlurCamera(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_20

    :cond_1e
    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public isPMasterModeWithSingleBlur()Z
    .registers 2

    .line 612
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsPMasterMode:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mMonomerSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_20

    .line 614
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->isModeSupport()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_mu_monomer"

    .line 615
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "f0.0"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public isSTBlurMode()Z
    .registers 1

    .line 562
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsSTBlurMode:Z

    return p0
.end method

.method public isSingleBlurOn()Z
    .registers 2

    .line 619
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mMonomerSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_1c

    .line 620
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->isModeSupport()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_mu_monomer"

    .line 621
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "f0.0"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public isStreetPhotoMode()Z
    .registers 1

    .line 602
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsStreetPhotoMode:Z

    return p0
.end method

.method public isSuperNightMode()Z
    .registers 1

    .line 566
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsSuperNightMode:Z

    return p0
.end method

.method public isTimelapsePhotoMode()Z
    .registers 1

    .line 574
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsTimelapsePhotoMode:Z

    return p0
.end method

.method public isUltraHDMode()Z
    .registers 1

    .line 598
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsUltraMode:Z

    return p0
.end method

.method public isVsdofMode()Z
    .registers 1

    .line 570
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsVsdofMode:Z

    return p0
.end method

.method public onFakeCameraStatusChanged(Ljava/lang/String;)V
    .registers 3

    .line 554
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFakeCameraStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    const-string v0, "key_fake_asd_camera_status"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 317
    :try_start_2
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsModeSupport:Z

    .line 318
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsQuickVideoStart:Z

    .line 319
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsSTBlurMode:Z

    .line 320
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsSuperNightMode:Z

    .line 321
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsVsdofMode:Z

    .line 322
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsTimelapsePhotoMode:Z

    .line 323
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsAsdMode:Z

    .line 324
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsPMasterMode:Z

    .line 325
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsBeautyMode:Z

    .line 326
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsHdrMode:Z

    .line 327
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsMotionCaptureMode:Z

    .line 328
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsUltraMode:Z

    .line 329
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsStreetPhotoMode:Z

    .line 330
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    .line 331
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdParameterConfig:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    if-eqz p1, :cond_2a

    const/4 v1, 0x1

    .line 332
    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshAsdStateImmediately(I)V

    goto :goto_2a

    :catchall_28
    move-exception p1

    goto :goto_38

    .line 334
    :cond_2a
    :goto_2a
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdSettingFeatures:Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;->setNightLiteOpened(Z)V

    .line 335
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->onFakeCameraStatusChanged(Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_2 .. :try_end_36} :catchall_28

    .line 336
    monitor-exit p0

    return-void

    :goto_38
    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_28

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 6

    .line 291
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 292
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    .line 294
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->reset()V

    const/4 p2, 0x0

    .line 295
    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsModeSupport:Z

    .line 297
    invoke-direct {p0, p3}, Lcom/transsion/camera/feature/setting/asd/Asd;->initModeFeatures([Ljava/lang/String;)V

    .line 299
    const-string p3, "com.transsion.camera.feature.mode.stblurmode.STBlurModeEntry"

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsSTBlurMode:Z

    .line 300
    const-string p3, "com.transsion.camera.feature.mode.supernight.SuperNightModeEntry"

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v0, 0x1

    if-nez p3, :cond_2c

    const-string p3, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    .line 301
    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2a

    goto :goto_2c

    :cond_2a
    move p3, p2

    goto :goto_2d

    :cond_2c
    :goto_2c
    move p3, v0

    :goto_2d
    iput-boolean p3, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsSuperNightMode:Z

    .line 302
    const-string p3, "com.transsion.camera.feature.mode.vsdof.SdofPhotoModeEntry"

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsVsdofMode:Z

    .line 303
    const-string p3, "com.transsion.camera.feature.mode.timelapsemode.TimelapsePhotoModeEntry"

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsTimelapsePhotoMode:Z

    .line 304
    const-string p3, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsAsdMode:Z

    .line 305
    const-string p3, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsPMasterMode:Z

    .line 306
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    invoke-virtual {v1, p3}, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->setPMaterMode(Z)V

    .line 307
    const-string p3, "com.transsion.camera.feature.mode.facebeauty.FaceBeautyModeEntry"

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_64

    const-string p3, "com.transsion.camera.feature.mode.makeup.MakeUpModeEntry"

    .line 308
    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_65

    :cond_64
    move p2, v0

    :cond_65
    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsBeautyMode:Z

    .line 309
    const-string p2, "com.transsion.camera.feature.mode.hdrmode.HdrModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsHdrMode:Z

    .line 310
    const-string p2, "com.transsion.camera.feature.mode.motioncapture.MotionCaptureModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsMotionCaptureMode:Z

    .line 311
    const-string p2, "com.transsion.camera.feature.mode.ultrahd.UltraHDModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsUltraMode:Z

    .line 312
    const-string p2, "com.transsion.camera.feature.mode.streetphoto.StreetPhotoModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsStreetPhotoMode:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 6

    .line 395
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 396
    sget-object v0, Lcom/transsion/camera/feature/setting/asd/Asd;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onValueChanged old value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " new value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 399
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdParameterConfig:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->sendSettingChangeRequest()V

    :cond_42
    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 5
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

    .line 387
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSupportedPlatformValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSupportedPlatformValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    return-void

    .line 390
    :cond_15
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public pause()V
    .registers 4

    .line 375
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->pause()V

    .line 376
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 378
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_10
    const/4 v0, 0x0

    .line 380
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsQuickVideoStart:Z

    const/4 v0, 0x0

    .line 381
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mWideCameraValue:Ljava/lang/String;

    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .registers 1

    .line 525
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->postRestrictionAfterInitialized()V

    .line 526
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdParameterConfig:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    if-eqz p0, :cond_a

    .line 527
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->updateState()V

    :cond_a
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

.method public setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V
    .registers 2

    .line 512
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 513
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdParameterConfig:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    if-eqz p0, :cond_b

    const/4 p1, 0x0

    .line 514
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshToUI(Z)V

    :cond_b
    return-void
.end method

.method public setSettingGroup(J)V
    .registers 5

    .line 235
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMacroModeSkipPolicySupport:Z

    if-eqz v0, :cond_c

    const-wide/32 v0, 0x2000000

    or-long/2addr p1, v0

    .line 238
    :cond_c
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSettingGroup(J)V

    return-void
.end method

.method public unInit()V
    .registers 1

    .line 135
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 136
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->unRegisterKeyToMonitor()V

    return-void
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method

.method public updateSuperNightLiteValue(I)V
    .registers 4

    const/4 v0, 0x1

    .line 247
    const-string v1, "key_super_night_lite"

    if-ne p1, v0, :cond_d

    .line 248
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mSuperNightLiteStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    const-string p1, "on"

    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 250
    :cond_d
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mSuperNightLiteStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    const-string p1, "off"

    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
