.class public Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting$StatusChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final sDefaultDefaultMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFeatureKeys:[Ljava/lang/String;


# instance fields
.field private final mDefaultCacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsModeSupport:Z

.field private mIsPMasterMode:Z

.field private mPlatformConfigType:I

.field private final mStatusChangeListener:Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting$StatusChangeListener;

.field private mSupportModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoMakeupSupport:Z


# direct methods
.method public static synthetic $r8$lambda$8hdOkK1WkT2uIe_dHAxnS_sRbys(Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->lambda$initDefaultMap$0(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 11

    .line 77
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MuFaceBeautySetting"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 86
    const-string v9, "five_senses"

    const-string v10, "muscle_care"

    const-string v2, "soften"

    const-string v3, "eye"

    const-string v4, "face"

    const-string/jumbo v5, "whiten"

    const-string v6, "head"

    const-string v7, "cuttingface"

    const-string v8, "nose"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->sFeatureKeys:[Ljava/lang/String;

    .line 98
    new-instance v0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->sDefaultDefaultMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 76
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->mIsModeSupport:Z

    .line 83
    new-instance v0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting$StatusChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting$StatusChangeListener;-><init>(Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting$StatusChangeListener;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->mSupportModes:Ljava/util/List;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->mDefaultCacheMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;)Ljava/lang/String;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method private getCustomValues()[I
    .registers 5

    .line 485
    sget-object v0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->sFeatureKeys:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 486
    :goto_6
    sget-object v2, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->sFeatureKeys:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_16

    .line 487
    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->getValueByKey(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_16
    return-object v0
.end method

.method private getFaceBeautyValueByDefault(Ljava/lang/String;I)I
    .registers 6

    .line 365
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    .line 366
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getInitGender()Ljava/lang/String;

    move-result-object v1

    .line 368
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->isVideoMode()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 370
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 369
    invoke-static {p1, p0, v0}, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->getVideoFaceBeautyDefaultValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1f

    .line 373
    :cond_17
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 372
    invoke-static {p0, p1, v2, v0, v1}, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->getFaceBeautyDefaultValue(Lcom/transsion/camera/app/common/setting/SettingBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 377
    :goto_1f
    :try_start_1f
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_23} :catch_24

    return p0

    :catch_24
    move-exception p0

    .line 379
    sget-object p1, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getDefaultValue] Exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p2
.end method

.method private getSkinDefaultValue(I)I
    .registers 5

    .line 358
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    .line 359
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getInitGender()Ljava/lang/String;

    move-result-object v1

    .line 360
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->isVideoMode()Z

    move-result v2

    if-eqz v2, :cond_12

    const-string/jumbo v2, "video"

    goto :goto_14

    :cond_12
    const-string v2, "portrait"

    .line 361
    :goto_14
    invoke-static {p0, v2, p1, v1, v0}, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->getFaceBeautySkinDefaultValue(Lcom/transsion/camera/app/common/setting/SettingBase;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getValueByKey(Ljava/lang/String;)I
    .registers 9

    .line 493
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    .line 494
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->mDefaultCacheMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    goto :goto_14

    .line 495
    :cond_10
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 496
    sget-object v3, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getValueByKey] getValueByKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 497
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getModeKey()Ljava/lang/String;

    move-result-object v4

    .line 498
    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 499
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCameraFacing()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 498
    invoke-virtual {v0, p1, v5, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getValueByKey, key: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", defaultValue: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", valueStr: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 504
    :try_start_82
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_86} :catch_87

    return p0

    .line 506
    :catch_87
    sget-object p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "Warning: getValueByKey NumberFormatException !!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method private synthetic lambda$initDefaultMap$0(Ljava/lang/String;)V
    .registers 5

    .line 348
    sget-object v0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->sDefaultDefaultMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 349
    const-string/jumbo v1, "whiten"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    .line 350
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->mDefaultCacheMap:Ljava/util/Map;

    if-nez v0, :cond_17

    goto :goto_1b

    :cond_17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1b
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->getSkinDefaultValue(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 352
    :cond_27
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->mDefaultCacheMap:Ljava/util/Map;

    if-nez v0, :cond_2c

    goto :goto_30

    :cond_2c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_30
    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->getFaceBeautyValueByDefault(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private makeUpOptionOn()Z
    .registers 2

    .line 385
    const-string v0, "key_video_makeup"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private videoMakeUpContrast()Z
    .registers 2

    .line 389
    const-string v0, "key_video_makeup_style"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 390
    invoke-static {p0}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;

    move-result-object p0

    if-nez p0, :cond_16

    .line 392
    sget-object p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v0, "videoMakeUpContrast videoMakeupStyleInfo is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 395
    :cond_16
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->isContrast:Z

    return p0
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 2

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 11

    .line 400
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->videoMakeupSupport()Z

    move-result v0

    .line 401
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->videoMakeUpCombineVideoFaceBeauty()Z

    move-result v1

    .line 402
    sget-object v2, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configParameters videoMakeupSupport: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", videoMakeUpCombineVideoFaceBeauty: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 404
    const-string v3, "off"

    const-string v4, "aiv2"

    const/4 v5, 0x0

    if-eqz v0, :cond_5f

    if-eqz v1, :cond_5f

    .line 405
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->makeUpOptionOn()Z

    move-result v0

    .line 406
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->videoMakeUpContrast()Z

    move-result p0

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configParameters makeUpOptionOn: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", videoMakeUpContrast: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_5b

    if-nez p0, :cond_5b

    .line 410
    invoke-virtual {p1, v4}, Lcom/transsion/camera/adapter/CameraParameters;->setMultiFaceBeautyMode(Ljava/lang/String;)V

    goto :goto_5e

    .line 412
    :cond_5b
    invoke-virtual {p1, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setMultiFaceBeautyMode(Ljava/lang/String;)V

    :goto_5e
    return v5

    .line 417
    :cond_5f
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 418
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->isModeSupport()Z

    move-result v1

    .line 419
    const-string v6, "key_video_facebeauty"

    invoke-virtual {p0, v6}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 420
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "configParameters value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " , videoFaceBeautyValue:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", support = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v1, :cond_182

    .line 424
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9a

    move-object v0, v4

    .line 428
    :cond_9a
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->isVideoMode()Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 429
    const-string/jumbo v1, "video_facebeauty_off"

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_aa

    move-object v0, v3

    .line 433
    :cond_aa
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_video_asd"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 434
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->isVideoMode()Z

    move-result v2

    const-string v6, "on"

    if-eqz v2, :cond_c1

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c1

    return v5

    .line 437
    :cond_c1
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_video_preisp"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 438
    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d6

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->isVideoMode()Z

    move-result v1

    if-eqz v1, :cond_d6

    return v5

    .line 441
    :cond_d6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "contrast_on"

    const-string v6, "custom"

    const/4 v7, 0x1

    const/4 v8, -0x1

    sparse-switch v1, :sswitch_data_184

    goto :goto_10a

    :sswitch_e7
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ee

    goto :goto_10a

    :cond_ee
    const/4 v8, 0x3

    goto :goto_10a

    :sswitch_f0
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f7

    goto :goto_10a

    :cond_f7
    const/4 v8, 0x2

    goto :goto_10a

    :sswitch_f9
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_100

    goto :goto_10a

    :cond_100
    move v8, v7

    goto :goto_10a

    :sswitch_102
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_109

    goto :goto_10a

    :cond_109
    move v8, v5

    :goto_10a
    packed-switch v8, :pswitch_data_196

    goto :goto_163

    .line 449
    :pswitch_10e
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->mSupportModes:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_163

    .line 450
    invoke-virtual {p1, v4}, Lcom/transsion/camera/adapter/CameraParameters;->setMultiFaceBeautyMode(Ljava/lang/String;)V

    .line 451
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v1

    filled-new-array {v7}, [I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setMultiBeautyValue([I)V

    goto :goto_163

    .line 443
    :pswitch_125
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->mSupportModes:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_163

    .line 444
    invoke-virtual {p1, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setMultiFaceBeautyMode(Ljava/lang/String;)V

    .line 445
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v1

    const/16 v2, 0x3e8

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setMultiBeautyValue([I)V

    goto :goto_163

    .line 456
    :pswitch_13e
    invoke-static {p0}, Lcom/transsion/camera/app/common/facebeauty/util/FaceBeautyCustomConfigUtils;->getCustomValues(Lcom/transsion/camera/app/common/setting/SettingBase;)[I

    move-result-object v1

    .line 457
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->mSupportModes:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14d

    .line 458
    invoke-virtual {p1, v6}, Lcom/transsion/camera/adapter/CameraParameters;->setMultiFaceBeautyMode(Ljava/lang/String;)V

    .line 460
    :cond_14d
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setFaceBeautyFeaturesLevel([I)V

    .line 461
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setMultiBeautyValue([I)V

    goto :goto_163

    .line 464
    :pswitch_158
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->mSupportModes:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_163

    .line 465
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setMultiFaceBeautyMode(Ljava/lang/String;)V

    .line 471
    :cond_163
    :goto_163
    const-string v1, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getModeKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_178

    .line 472
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyIntegrationInApp:Z

    if-eqz p0, :cond_178

    goto :goto_179

    :cond_178
    move v7, v5

    :goto_179
    iput-boolean v7, p1, Lcom/transsion/camera/adapter/CameraParameters;->mFaceBeautyPreviewInApp:Z

    .line 473
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setMultiFBMode(Ljava/lang/String;)V

    :cond_182
    return v5

    nop

    :sswitch_data_184
    .sparse-switch
        -0x7daf97c4 -> :sswitch_102
        -0x5069748f -> :sswitch_f9
        0x1ad6f -> :sswitch_f0
        0x2db0a4 -> :sswitch_e7
    .end sparse-switch

    :pswitch_data_196
    .packed-switch 0x0
        :pswitch_158
        :pswitch_13e
        :pswitch_125
        :pswitch_10e
    .end packed-switch
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

    .line 193
    const-string p0, "key_mu_face_beauty"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 1

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

    .line 188
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public declared-synchronized getSettingValue()Ljava/lang/String;
    .registers 5

    monitor-enter p0

    .line 166
    :try_start_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result v0

    .line 168
    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(I)Z

    move-result v0

    .line 170
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->mIsPMasterMode:Z

    if-eqz v1, :cond_24

    if-eqz v0, :cond_18

    .line 172
    const-string v0, "aiv2"

    goto :goto_26

    :catchall_16
    move-exception v0

    goto :goto_36

    .line 174
    :cond_18
    iget v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->mPlatformConfigType:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_21

    .line 175
    const-string v0, "aiv2"

    goto :goto_26

    .line 177
    :cond_21
    const-string v0, "off"

    goto :goto_26

    .line 181
    :cond_24
    const-string v0, "aiv2"

    .line 183
    :goto_26
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_16

    monitor-exit p0

    return-object v0

    :goto_36
    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_16

    throw v0
.end method

.method public getStoreScope()Ljava/lang/String;
    .registers 4

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCameraFacing()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    .line 239
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

    .line 119
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 120
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_e

    .line 121
    const-string p2, "key_makeup_feature"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 123
    :cond_e
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mPlatformConfigType:I

    iput p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->mPlatformConfigType:I

    return-void
.end method

.method public initDefaultMap()V
    .registers 3

    .line 347
    sget-object v0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->sFeatureKeys:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .registers 8
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

    if-eqz p1, :cond_99

    .line 136
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_99

    .line 139
    :cond_a
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 140
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 141
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 142
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 143
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 145
    const-string p2, "key_video_facebeauty"

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 147
    sget-object v0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initValueAndSupport++, value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->isVideoMode()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 149
    const-string/jumbo v1, "video_facebeauty_off"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "off"

    if-eqz v1, :cond_52

    move-object p1, v2

    .line 153
    :cond_52
    const-string/jumbo v1, "video_facebeauty_on"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_82

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_82

    .line 155
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "aiv2"

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v2, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 156
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 p2, 0x2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    const-string v4, "face_beauty_default_feature"

    invoke-virtual {p1, v4, p2, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object p1, v2

    .line 160
    :cond_82
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initValueAndSupport--, value:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    :cond_99
    :goto_99
    return-void
.end method

.method public isModeSupport()Z
    .registers 1

    .line 259
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->mIsModeSupport:Z

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    .line 252
    :try_start_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 253
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->mIsModeSupport:Z

    .line 254
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->mVideoMakeupSupport:Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 255
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 4

    .line 244
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->mIsModeSupport:Z

    .line 246
    const-string p2, "key_video_makeup"

    invoke-static {p3, p2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->mVideoMakeupSupport:Z

    .line 247
    const-string p2, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->mIsPMasterMode:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 7

    .line 217
    sget-object v0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onValueChanged] value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", getValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "custom"

    if-eqz v0, :cond_34

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 219
    :cond_34
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 221
    const-string v0, "contrast_on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5e

    const-string v0, "contrast_off"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 222
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, p1, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 224
    :cond_5e
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->sendSettingChangeRequest()V

    .line 226
    :cond_61
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_74

    .line 227
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportPortraitArchitecture(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_74

    .line 228
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->initDefaultMap()V

    :cond_74
    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 7
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

    .line 280
    sget-object v0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[overrideValues] headerKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,currentValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 284
    const-string v1, "key_video_portrait"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_72

    const-string v1, "key_anti_video"

    .line 285
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_72

    const-string v1, "key_video_quality"

    .line 286
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_72

    const-string v1, "key_360_video_hdr"

    .line 287
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_72

    const-string v1, "key_dol_video_hdr"

    .line 288
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_72

    const-string v1, "key_transsion_filter"

    .line 289
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_72

    const-string v1, "key_video_facebeauty"

    .line 290
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_72

    const-string v1, "key_video_super_night"

    .line 291
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_72

    const-string v1, "key_video_enhance"

    .line 292
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_72

    const-string v1, "key_video_preisp"

    .line 293
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 294
    :cond_72
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_96

    .line 295
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_95

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->isVideoMode()Z

    move-result p1

    if-eqz p1, :cond_95

    .line 296
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->onValueChanged(Ljava/lang/String;)V

    .line 297
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    const/4 p3, 0x0

    invoke-virtual {p1, p2, v0, p0, p3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_95
    return-void

    .line 300
    :cond_96
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .registers 5

    .line 272
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreToSupportedPlatformValue()V

    .line 273
    sget-object v0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreToSupportedPlatformValue,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 275
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

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

    .line 306
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 6

    .line 311
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->isModeSupport()Z

    move-result v0

    .line 312
    sget-object v1, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraCapabilities: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v0, :cond_1d

    return-void

    .line 317
    :cond_1d
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->initDefaultMap()V

    .line 318
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedFaceBeautyModes()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->mSupportModes:Ljava/util/List;

    .line 319
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p1

    .line 320
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result p1

    .line 321
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(I)Z

    move-result p1

    .line 323
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->mIsPMasterMode:Z

    const-string v2, "aiv2"

    if-eqz v0, :cond_55

    if-eqz p1, :cond_43

    .line 325
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->mSupportModes:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5e

    goto :goto_5f

    .line 329
    :cond_43
    iget p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->mPlatformConfigType:I

    const/16 v0, 0x1e

    if-ne p1, v0, :cond_52

    .line 330
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->mSupportModes:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5e

    goto :goto_5f

    .line 334
    :cond_52
    const-string v2, "off"

    goto :goto_5f

    .line 338
    :cond_55
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->mSupportModes:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5e

    goto :goto_5f

    :cond_5e
    const/4 v2, 0x0

    .line 342
    :goto_5f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "defaultValue = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 343
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->mSupportModes:Ljava/util/List;

    invoke-virtual {p0, p1, v2}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

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

    .line 128
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_e

    .line 130
    const-string v1, "key_makeup_feature"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_e
    return-void
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method

.method videoMakeUpCombineVideoFaceBeauty()Z
    .registers 1

    .line 267
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->screenFlip()Z

    move-result p0

    return p0
.end method

.method videoMakeupSupport()Z
    .registers 1

    .line 263
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->mVideoMakeupSupport:Z

    return p0
.end method
