.class public Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting$StatusChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentFaceNumber:I

.field private mGenderAttributeCallback:Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;

.field private mIsFacingFront:Z

.field private mIsModeSupport:Z

.field private mIsPMasterMode:Z

.field private mIsPreviewStart:Z

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private final mStatusChangeListener:Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting$StatusChangeListener;


# direct methods
.method public static synthetic $r8$lambda$PeaCxwXAt7vkXuU_S1UHmHYlNTw(Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;[Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->lambda$new$0([Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsPreviewStart(Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->mIsPreviewStart:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 44
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MakeUpSetting"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 42
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->mIsModeSupport:Z

    .line 48
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->mIsFacingFront:Z

    .line 49
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->mIsPreviewStart:Z

    .line 50
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->mIsPMasterMode:Z

    .line 51
    iput v0, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->mCurrentFaceNumber:I

    .line 53
    new-instance v0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting$StatusChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting$StatusChangeListener;-><init>(Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting$StatusChangeListener;

    .line 217
    new-instance v0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting$1;-><init>(Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    .line 238
    new-instance v0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->mGenderAttributeCallback:Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;)Ljava/lang/String;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;)Lcom/transsion/camera/app/common/setting/StatusMonitor;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;)Lcom/transsion/camera/app/common/setting/StatusMonitor;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;)Lcom/transsion/camera/app/common/setting/StatusMonitor;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;)Lcom/transsion/camera/app/common/setting/StatusMonitor;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-object p0
.end method

.method private getDefaultIntensity(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 320
    invoke-static {p1, p2}, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->getMakeUpDefaultIntensity(Ljava/lang/String;Ljava/lang/String;)F

    move-result p0

    .line 321
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDefaultPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 325
    const-string p0, "portrait"

    const-string v0, "preview"

    invoke-static {p1, p0, p2, v0}, Lcom/transsion/camera/app/common/portraitdefault/DefaultResource;->getMakeupPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getMakeUpValueByDefault()Ljava/lang/String;
    .registers 9

    .line 272
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->screenFlip()Z

    move-result v0

    const-string/jumbo v1, "{\"intensityArray\":[0.6,0.6],\"isContrast\":false,\"keyArray\":[],\"path\":\"\",\"styleNumber\":0,\"feature\":noeffect}"

    if-eqz v0, :cond_a

    return-object v1

    .line 276
    :cond_a
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->makeupDefaultClose()Z

    move-result v0

    if-eqz v0, :cond_15

    return-object v1

    .line 280
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->mContext:Landroid/content/Context;

    .line 281
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 280
    const-string v2, "makeup_default_value_template"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 283
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/utils/CustomConfigUtil;->isAIMakeupSupport()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 284
    const-string v1, "ai"

    .line 285
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    .line 284
    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->getDefaultIntensity(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 286
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 287
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "zhigan"

    invoke-direct {p0, v3, v4}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->getDefaultPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, p0, v3, v4}, [Ljava/lang/Object;

    move-result-object p0

    .line 286
    invoke-virtual {v2, v0, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 290
    :cond_5d
    const-string v1, "style_01"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->getDefaultIntensity(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 292
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 294
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "nude"

    invoke-direct {p0, v3, v4}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->getDefaultPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v1, v3, v6, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 293
    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 295
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 297
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "nativemuscle"

    invoke-direct {p0, v4, v6}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->getDefaultPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v1, v4, v7, v6}, [Ljava/lang/Object;

    move-result-object v4

    .line 296
    invoke-virtual {v3, v0, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 298
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 300
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "firstlove"

    invoke-direct {p0, v6, v7}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->getDefaultPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v6, 0x9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v1, p0, v6, v7}, [Ljava/lang/Object;

    move-result-object p0

    .line 299
    invoke-virtual {v4, v0, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 304
    sget v0, Lcom/transsion/camera/utils/AreaUtil;->AREA_CODE:I

    if-eq v0, v5, :cond_c8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c7

    return-object p0

    :cond_c7
    return-object v2

    :cond_c8
    return-object v3
.end method

.method private synthetic lambda$new$0([Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V
    .registers 4

    if-eqz p1, :cond_10

    .line 239
    array-length v0, p1

    if-lez v0, :cond_10

    .line 240
    iget v0, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->mCurrentFaceNumber:I

    array-length v1, p1

    if-eq v0, v1, :cond_10

    .line 241
    array-length p1, p1

    iput p1, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->mCurrentFaceNumber:I

    .line 242
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->sendSettingChangeRequest()V

    :cond_10
    return-void
.end method

.method private updateMakeUpOpen(Ljava/lang/String;)V
    .registers 3

    .line 180
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isLaunchWithDeveloperMode()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_26

    :cond_7
    if-eqz p1, :cond_26

    .line 183
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->isModeSupport()Z

    move-result p0

    if-eqz p0, :cond_26

    .line 184
    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 186
    invoke-static {}, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->getInstance()Lcom/transsion/camera/utils/tuning/TuningFeatureApi;

    move-result-object p1

    .line 187
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->feature:Ljava/lang/String;

    const-string v0, "noeffect"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-interface {p1, p0}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ICamInfoTracker;->setMakeUpOpen(Z)V

    :cond_26
    :goto_26
    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 3

    .line 355
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->mIsPMasterMode:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->mIsModeSupport:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->mIsPreviewStart:Z

    if-eqz v0, :cond_12

    .line 356
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->mGenderAttributeCallback:Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->addGenderAttributeCallback(Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;)V

    return-void

    .line 358
    :cond_12
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->mGenderAttributeCallback:Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->removeGenderAttributeCallback(Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;)V

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 7

    .line 330
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->isModeSupport()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_68

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->isFacingFront()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->screenFlip()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->isVipMode()Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_68

    .line 336
    :cond_1a
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 337
    sget-object v2, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MakeUpParams configParameters value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 338
    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;

    move-result-object v0

    if-nez v0, :cond_3b

    return v1

    .line 342
    :cond_3b
    iget-boolean v1, v0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->isContrast:Z

    const/4 v2, 0x0

    if-nez v1, :cond_67

    .line 343
    iget v1, v0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->styleNumber:I

    const/4 v3, 0x1

    if-eqz v1, :cond_47

    move v1, v3

    goto :goto_48

    :cond_47
    move v1, v2

    .line 344
    :goto_48
    iget p0, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->mCurrentFaceNumber:I

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setCurrentFaces(I)V

    .line 345
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setIncreaseFrequencyEnable(I)V

    .line 346
    iget p0, v0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->styleNumber:I

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setMakeUpMode(I)V

    .line 347
    iget-object p0, v0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->intensityArray:[F

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setMakeUpIntensitys([F)V

    .line 348
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    iget p1, v0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->styleNumber:I

    iget-object v0, v0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->intensityArray:[F

    aget v0, v0, v3

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setMakeUpValue(IF)V

    :cond_67
    return v2

    .line 331
    :cond_68
    :goto_68
    sget-object p1, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configParameters, MakeUp is not support, isFacingFront:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->isFacingFront()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", is screenFlip:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->screenFlip()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isVipMode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->isVipMode()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 331
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

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

    .line 151
    const-string p0, "key_makeup_feature"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 1

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .registers 1

    .line 214
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

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

    .line 141
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public declared-synchronized getSettingValue()Ljava/lang/String;
    .registers 5

    monitor-enter p0

    .line 167
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public getStoreScope()Ljava/lang/String;
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCameraFacing()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

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

    .line 195
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

.method public declared-synchronized getValue()Ljava/lang/String;
    .registers 5

    monitor-enter p0

    .line 162
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 4

    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 58
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->mContext:Landroid/content/Context;

    .line 59
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_10

    .line 60
    const-string p2, "key_mu_face_beauty"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting$StatusChangeListener;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_10
    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .registers 3
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

    .line 75
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 77
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 78
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;

    move-result-object p2

    if-eqz p2, :cond_23

    .line 81
    iget-object p2, p2, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->feature:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1f

    goto :goto_23

    .line 84
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->setValue(Ljava/lang/String;)V

    goto :goto_2a

    .line 82
    :cond_23
    :goto_23
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getDefaultValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->setValue(Ljava/lang/String;)V

    .line 86
    :goto_2a
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->updateMakeUpOpen(Ljava/lang/String;)V

    .line 87
    sget-object p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "initValueAndSupport"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected isFacingFront()Z
    .registers 1

    .line 248
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->mIsFacingFront:Z

    return p0
.end method

.method public isModeSupport()Z
    .registers 4

    .line 135
    sget-object v0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isModeSupport,mIsModeSupport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->mIsModeSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 136
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->mIsModeSupport:Z

    return p0
.end method

.method public onCameraIdChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    .line 124
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->onCameraIdChanged(Ljava/lang/String;[Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->mIsModeSupport:Z

    return-void
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    .line 115
    :try_start_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 116
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->mIsModeSupport:Z

    .line 117
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->mIsFacingFront:Z

    .line 118
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->mIsPMasterMode:Z

    .line 119
    iput p1, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->mCurrentFaceNumber:I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 120
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 4

    .line 105
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->mIsModeSupport:Z

    .line 107
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCameraFacing()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->mIsFacingFront:Z

    .line 108
    const-string p2, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->mIsPMasterMode:Z

    .line 109
    sget-object p1, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onModeOpened mIsModeSupport:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->mIsModeSupport:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " , mIsFacingFront:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->mIsFacingFront:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", mIsPMasterMode:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->mIsPMasterMode:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onModeUpdate([Ljava/lang/String;)V
    .registers 3

    .line 130
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->mIsModeSupport:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 3

    .line 172
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 173
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->setValue(Ljava/lang/String;)V

    .line 174
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->updateMakeUpOpen(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->sendSettingChangeRequest()V

    :cond_13
    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .registers 5

    .line 205
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreToSupportedPlatformValue()V

    .line 206
    sget-object v0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreToSupportedPlatformValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 208
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->getValue()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_4d
    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 2

    .line 253
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 5

    .line 258
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->isModeSupport()Z

    move-result p1

    if-eqz p1, :cond_48

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->isFacingFront()Z

    move-result p1

    if-nez p1, :cond_19

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->screenFlip()Z

    move-result p1

    if-nez p1, :cond_19

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->isVipMode()Z

    move-result p1

    if-nez p1, :cond_19

    goto :goto_48

    .line 263
    :cond_19
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->getMakeUpValueByDefault()Ljava/lang/String;

    move-result-object p1

    .line 264
    sget-object v0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraCapabilities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 266
    const-string/jumbo v1, "{\"intensityArray\":[0.6,0.6],\"isContrast\":false,\"keyArray\":[],\"path\":\"\",\"styleNumber\":0,\"feature\":noeffect}"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    const-string/jumbo v1, "{\"intensityArray\":[0.6,0.6],\"isContrast\":false,\"keyArray\":[\"Filter_ALL\",\"Makeup_ALL\"],\"path\":\"style_makeup/zhigan\",\"styleNumber\":11,\"feature\":zhigan}"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void

    .line 259
    :cond_48
    :goto_48
    sget-object p1, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraCapabilities, MakeUp is not support, isFacingFront:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->isFacingFront()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", is screenFlip:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->screenFlip()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isVipMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->isVipMode()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 259
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

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
    .registers 5

    .line 156
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 66
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_e

    .line 68
    const-string v1, "key_mu_face_beauty"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_e
    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->mContext:Landroid/content/Context;

    return-void
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method
