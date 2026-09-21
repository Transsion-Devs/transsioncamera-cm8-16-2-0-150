.class public Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final FILTER_DEFAULT:Ljava/lang/String; = "default.png"

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mCloseByMotionCapture:Z

.field private mContext:Landroid/content/Context;

.field protected mFilterPath:Ljava/lang/String;

.field protected mFilterRoot:Ljava/lang/String;

.field private mImageStyleValues:[I

.field private mInit:I

.field protected mIsCloseBySuperDefinition:Z

.field private mIsModeSupport:Z

.field private mIsPhotoFilterRestrictImageStyle:Z

.field private mIsSupportFullSize:Z

.field private mProcessWrapper:Lcom/transsnet/process/wrapper/ProcessWrapper;


# direct methods
.method public static synthetic $r8$lambda$2AMMNDs9FlB0C2NamBGJ_42h3e0(Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;Ljava/lang/String;ZLcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->lambda$setSettingDataStoreTempValue$1(Ljava/lang/String;ZLcom/transsion/camera/app/common/storage/DataStore;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l5A3bH9U95rKIm8GVr1c9IX-t9o(Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;Ljava/lang/String;ZLcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->lambda$setSettingDataStoreValue$0(Ljava/lang/String;ZLcom/transsion/camera/app/common/storage/DataStore;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 58
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ImageStyleBase"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 56
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mFilterRoot:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mFilterPath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mIsCloseBySuperDefinition:Z

    .line 72
    iput-boolean v0, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mIsSupportFullSize:Z

    const/4 v1, -0x1

    .line 73
    iput v1, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mInit:I

    .line 75
    iput-boolean v0, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mIsModeSupport:Z

    const/4 v1, 0x7

    .line 76
    new-array v1, v1, [I

    fill-array-data v1, :array_20

    iput-object v1, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mImageStyleValues:[I

    .line 77
    iput-boolean v0, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mCloseByMotionCapture:Z

    .line 78
    iput-boolean v0, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mIsPhotoFilterRestrictImageStyle:Z

    return-void

    :array_20
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private copyFilterFile(Landroid/content/Context;)V
    .registers 3

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->getResourcePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "default.png"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/utils/FileUtil;->isFileExists(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_23

    .line 371
    sget-object p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "FileExists"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 374
    :cond_23
    sget-object p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "FileExists not"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 376
    const-string p0, ""

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/FileUtil;->getExternalFileDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_43

    .line 378
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "filter"

    invoke-static {p1, v0, p0}, Lcom/transsion/camera/utils/FileUtil;->copyAssets(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    return-void
.end method

.method private getResourcePath(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 383
    const-string p0, "filter"

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/FileUtil;->getExternalFileDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_11

    .line 385
    sget-object p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "getExternalFilesDir null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 388
    :cond_11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSkinColor()Ljava/lang/String;
    .registers 2

    .line 330
    const-string p0, "debug.vendor.sys.oobe.camera_skin"

    const-string/jumbo v0, "white"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTempKey()Ljava/lang/String;
    .registers 2

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_TEMP"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initEnvironment()V
    .registers 4

    .line 348
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mProcessWrapper:Lcom/transsnet/process/wrapper/ProcessWrapper;

    if-nez v0, :cond_b

    .line 349
    new-instance v0, Lcom/transsnet/process/wrapper/ProcessWrapper;

    invoke-direct {v0}, Lcom/transsnet/process/wrapper/ProcessWrapper;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mProcessWrapper:Lcom/transsnet/process/wrapper/ProcessWrapper;

    .line 351
    :cond_b
    iget v0, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mInit:I

    if-gez v0, :cond_3c

    .line 352
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mProcessWrapper:Lcom/transsnet/process/wrapper/ProcessWrapper;

    invoke-virtual {v0}, Lcom/transsnet/process/wrapper/ProcessWrapper;->onInit()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mInit:I

    .line 353
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mProcessWrapper:Lcom/transsnet/process/wrapper/ProcessWrapper;

    const/4 v1, 0x0

    const-string v2, "0"

    invoke-virtual {p0, v1, v2}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->getFilterPath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsnet/process/wrapper/ProcessWrapper;->setFilter(Ljava/lang/String;)Z

    .line 354
    sget-object v0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mProcessWrapper onInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mProcessWrapper:Lcom/transsnet/process/wrapper/ProcessWrapper;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/transsnet/process/wrapper/ProcessWrapper;->updateFilterIntensity(F)V

    .line 356
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mProcessWrapper:Lcom/transsnet/process/wrapper/ProcessWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsnet/process/wrapper/ProcessWrapper;->updateHighlightIntensity(F)V

    .line 357
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mProcessWrapper:Lcom/transsnet/process/wrapper/ProcessWrapper;

    invoke-virtual {p0, v1}, Lcom/transsnet/process/wrapper/ProcessWrapper;->updateShadowIntensity(F)V

    :cond_3c
    return-void
.end method

.method private synthetic lambda$setSettingDataStoreTempValue$1(Ljava/lang/String;ZLcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 10

    .line 486
    invoke-direct {p0}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->getTempKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object v2, p1

    move v5, p2

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private synthetic lambda$setSettingDataStoreValue$0(Ljava/lang/String;ZLcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 10

    .line 471
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object v2, p1

    move v5, p2

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private setSettingDataStoreValue(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 466
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->setSettingDataStoreValue(Ljava/lang/String;Z)V

    return-void
.end method

.method private unInitEnvironment()V
    .registers 3

    .line 339
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mProcessWrapper:Lcom/transsnet/process/wrapper/ProcessWrapper;

    if-eqz v0, :cond_14

    .line 340
    invoke-virtual {v0}, Lcom/transsnet/process/wrapper/ProcessWrapper;->onDestroy()V

    .line 341
    sget-object v0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ProcessSDK mProcessWrapper onDestroy()"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 342
    iput-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mProcessWrapper:Lcom/transsnet/process/wrapper/ProcessWrapper;

    const/4 v0, -0x1

    .line 343
    iput v0, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mInit:I

    :cond_14
    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 2

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 7

    .line 415
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setImageStyle(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_85

    .line 417
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    .line 418
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "null"

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    .line 419
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->isModeSupport()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 420
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setImageStyleId(I)V

    .line 421
    invoke-direct {p0}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->getSkinColor()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "white"

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-eqz v0, :cond_56

    .line 422
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mImageStyleValues:[I

    const/4 v4, 0x2

    aput v4, v0, v3

    goto :goto_6b

    .line 423
    :cond_56
    invoke-direct {p0}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->getSkinColor()Ljava/lang/String;

    move-result-object v0

    const-string v4, "brown"

    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 424
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mImageStyleValues:[I

    aput v2, v0, v3

    goto :goto_6b

    .line 426
    :cond_67
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mImageStyleValues:[I

    aput v1, v0, v3

    .line 429
    :goto_6b
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7d

    .line 430
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mImageStyleValues:[I

    aput v1, p0, v1

    .line 431
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionCusIspAsd([I)V

    goto :goto_8e

    .line 433
    :cond_7d
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mImageStyleValues:[I

    aput v2, p0, v1

    .line 434
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionCusIspAsd([I)V

    goto :goto_8e

    .line 437
    :cond_85
    const-string p0, "0"

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setImageStyleId(I)V

    :goto_8e
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

.method protected getFilterPath(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 278
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mFilterRoot:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "default.png"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 279
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/app/common/CommonConfigUtil;->mTonesAssetSupport:Z

    if-eqz p1, :cond_41

    .line 281
    :try_start_1b
    invoke-static {}, Lcom/transsion/camera/utils/manager/CamAssetManager;->getInstance()Lcom/transsion/camera/utils/manager/CamAssetManager;

    move-result-object p1

    const-string p2, "filter/default.png"

    invoke-virtual {p1, p2}, Lcom/transsion/camera/utils/manager/CamAssetManager;->getAssetPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 282
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_29} :catch_2a

    goto :goto_41

    :catch_2a
    move-exception p1

    .line 284
    sget-object p2, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getFilterPath]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 287
    :cond_41
    :goto_41
    sget-object p1, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getFilterPath path: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 136
    const-string p0, "key_image_style"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 1

    return-object p0
.end method

.method protected getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;
    .registers 7

    .line 447
    invoke-static {}, Lcom/transsion/camera/feature/imagestyle/ImageStyleRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    .line 448
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperDefinitionFilterSupport:Z

    const-string v0, "off"

    const-string v1, "0"

    const-string v2, "off,on"

    if-nez p2, :cond_28

    if-eqz p0, :cond_28

    .line 449
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v3, "key_super_definition"

    if-eqz p2, :cond_25

    const/4 p2, 0x0

    .line 450
    invoke-virtual {p0, v3, p2, p2}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    .line 452
    :cond_25
    invoke-virtual {p0, v3, v0, v2}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :cond_28
    :goto_28
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/utils/CustomConfigUtil;->supportMotionCaptureInAICAM()Z

    move-result p2

    if-eqz p2, :cond_45

    if-eqz p0, :cond_45

    .line 456
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const-string p2, "key_best_moment_detect"

    if-eqz p1, :cond_42

    .line 457
    const-string p1, "on"

    invoke-virtual {p0, p2, p1, v2}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 459
    :cond_42
    invoke-virtual {p0, p2, v0, v2}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_45
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

    .line 131
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getStoreScope()Ljava/lang/String;
    .registers 1

    .line 203
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

    .line 218
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTempSettingValue()Ljava/lang/String;
    .registers 4

    .line 476
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {p0}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->getTempKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 4

    .line 105
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 106
    iput-object p1, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mContext:Landroid/content/Context;

    .line 107
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mFullSizeSupport:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mIsSupportFullSize:Z

    .line 108
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsPhotoFilterRestrictImageStyle:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mIsPhotoFilterRestrictImageStyle:Z

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

    if-eqz p1, :cond_a8

    .line 82
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_a

    goto/16 :goto_a8

    .line 85
    :cond_a
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 86
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 87
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 88
    const-string p2, "0"

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_image_style"

    invoke-virtual {v0, v2, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-virtual {v0, v2, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 92
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v0, "key_super_definition"

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {p2, v0, v2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_4e

    .line 93
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->isFullSizeMode()Z

    move-result p2

    if-nez p2, :cond_4e

    move p2, v1

    goto :goto_4f

    :cond_4e
    move p2, v0

    :goto_4f
    iput-boolean p2, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mIsCloseBySuperDefinition:Z

    .line 94
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v3, "key_best_moment_detect"

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6a

    .line 95
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->isFullSizeMode()Z

    move-result p2

    if-nez p2, :cond_6a

    move v0, v1

    :cond_6a
    iput-boolean v0, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mCloseByMotionCapture:Z

    .line 96
    iget-object p2, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_7c

    .line 97
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 98
    iput v0, p2, Landroid/content/res/Configuration;->fontScale:F

    .line 100
    :cond_7c
    sget-object p2, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initValueAndSupport supportList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mIsCloseBySuperDefinition = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mIsCloseBySuperDefinition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mCloseByMotionCapture:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_a8
    :goto_a8
    return-void
.end method

.method public isCameraFacingBack()Z
    .registers 1

    .line 396
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    .line 397
    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected isFullSizeMode()Z
    .registers 2

    .line 392
    iget-boolean v0, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mIsSupportFullSize:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->isCameraFacingBack()Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isModeSupport()Z
    .registers 1

    .line 126
    iget-boolean p0, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mIsModeSupport:Z

    return p0
.end method

.method public loadGLResourceCallback(I)V
    .registers 2

    return-void
.end method

.method public loadGLResourcesCallback([II)V
    .registers 4

    const/4 v0, 0x0

    .line 270
    aget p1, p1, v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->getFilterPath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mFilterPath:Ljava/lang/String;

    .line 271
    sget-object p1, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mFilterPath = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mFilterPath:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 272
    iget-object p1, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mProcessWrapper:Lcom/transsnet/process/wrapper/ProcessWrapper;

    if-eqz p1, :cond_33

    iget p2, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mInit:I

    const/4 v0, -0x1

    if-le p2, v0, :cond_33

    .line 273
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mFilterPath:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/transsnet/process/wrapper/ProcessWrapper;->setFilter(Ljava/lang/String;)Z

    :cond_33
    return-void
.end method

.method public modeInitCallback(Landroid/content/Context;)V
    .registers 3

    .line 241
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->getResourcePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mFilterRoot:Ljava/lang/String;

    .line 242
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->copyFilterFile(Landroid/content/Context;)V

    .line 243
    sget-object p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "modeInitCallback"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public modeUninitCallback()V
    .registers 2

    .line 248
    invoke-direct {p0}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->unInitEnvironment()V

    .line 249
    sget-object p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "modeUninitCallback"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/SurfaceTexture;III)I
    .registers 6

    .line 223
    iget-boolean p1, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mIsCloseBySuperDefinition:Z

    const/4 v0, 0x0

    if-nez p1, :cond_3b

    iget-boolean p1, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mCloseByMotionCapture:Z

    if-eqz p1, :cond_a

    goto :goto_3b

    .line 227
    :cond_a
    iget p1, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mInit:I

    if-gez p1, :cond_2a

    .line 228
    sget-object p1, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mInit = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mInit:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 229
    invoke-direct {p0}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->initEnvironment()V

    return v0

    .line 232
    :cond_2a
    iget-object p1, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mProcessWrapper:Lcom/transsnet/process/wrapper/ProcessWrapper;

    if-eqz p1, :cond_3a

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mFilterPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsnet/process/wrapper/ProcessWrapper;->setFilter(Ljava/lang/String;)Z

    .line 234
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mProcessWrapper:Lcom/transsnet/process/wrapper/ProcessWrapper;

    invoke-virtual {p0, p2, p3, p4}, Lcom/transsnet/process/wrapper/ProcessWrapper;->onDrawFrame(III)I

    move-result p0

    return p0

    :cond_3a
    return v0

    .line 224
    :cond_3b
    :goto_3b
    sget-object p1, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mIsCloseBySuperDefinition = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mIsCloseBySuperDefinition:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " mCloseByMotionCapture = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mCloseByMotionCapture:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    .line 120
    :try_start_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 121
    iput-boolean p1, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mIsModeSupport:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 122
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

    .line 113
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mIsModeSupport:Z

    return-void
.end method

.method public onRecording(I[F)V
    .registers 3

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 6

    .line 141
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_76

    .line 142
    sget-object v0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onValueChanged value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 143
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->setSettingDataStoreValue(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 150
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->isFullSizeMode()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 151
    const-string v1, "key_super_definition"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 153
    :cond_46
    iget-boolean v1, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mIsPhotoFilterRestrictImageStyle:Z

    if-eqz v1, :cond_5b

    const-string v1, "0"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5b

    .line 154
    const-string v1, "-1"

    const-string v2, "-1,-100"

    const-string v3, "key_filter"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5b
    if-eqz v0, :cond_62

    .line 157
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 159
    :cond_62
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_image_style"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_76
    return-void
.end method

.method public onValueChangedFromUser(Z)V
    .registers 3

    if-eqz p1, :cond_8

    .line 491
    const-string p1, ""

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->setSettingDataStoreTempValue(Ljava/lang/String;Z)V

    :cond_8
    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 8
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

    .line 166
    sget-object p3, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " headerKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " currentValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 167
    const-string v0, "key_filter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "0"

    if-eqz v0, :cond_6e

    .line 168
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v3, "on"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const-string v0, "off_temp"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 169
    invoke-virtual {p0, p2, v1}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->setSettingDataStoreValue(Ljava/lang/String;Z)V

    .line 171
    :cond_40
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, "on_temp"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 172
    invoke-virtual {p0, v3, v1}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->setSettingDataStoreValue(Ljava/lang/String;Z)V

    .line 174
    :cond_55
    iget-boolean v0, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mIsPhotoFilterRestrictImageStyle:Z

    if-eqz v0, :cond_6e

    .line 175
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6e

    const-string v0, "off"

    .line 176
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 177
    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->onValueChanged(Ljava/lang/String;)V

    .line 180
    :cond_6e
    const-string v0, "key_super_definition"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_bc

    .line 181
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->getTempSettingValue()Ljava/lang/String;

    move-result-object p1

    .line 182
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_9a

    .line 183
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p2

    .line 184
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_bc

    .line 185
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_93

    .line 186
    invoke-virtual {p0, p2, v1}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->setSettingDataStoreTempValue(Ljava/lang/String;Z)V

    .line 188
    :cond_93
    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->onValueChanged(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 189
    iput-boolean p1, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mIsCloseBySuperDefinition:Z

    return-void

    .line 192
    :cond_9a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_bc

    .line 193
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[overrideValues] restore tempValue: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->onValueChanged(Ljava/lang/String;)V

    .line 195
    const-string p1, ""

    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->setSettingDataStoreTempValue(Ljava/lang/String;Z)V

    :cond_bc
    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .registers 1

    .line 213
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreToSupportedPlatformValue()V

    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 1

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 3

    .line 407
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 408
    const-string v0, "off"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    const-string v0, "on"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

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

.method protected setSettingDataStoreTempValue(Ljava/lang/String;Z)V
    .registers 6

    .line 484
    sget-object v0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSettingDataStoreTempValue: value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;Ljava/lang/String;Z)V

    .line 486
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected setSettingDataStoreValue(Ljava/lang/String;Z)V
    .registers 5

    .line 470
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;Ljava/lang/String;Z)V

    .line 471
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public surfaceCreatedCallback(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .line 254
    sget-object p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "surfaceCreatedCallback"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceDestroyCallback(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .line 259
    invoke-direct {p0}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->unInitEnvironment()V

    .line 260
    sget-object p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "surfaceDestroyCallback"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 363
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 364
    const-string v0, "0"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->setSettingDataStoreValue(Ljava/lang/String;Z)V

    .line 365
    const-string v0, ""

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->setSettingDataStoreTempValue(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    .line 366
    iput-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->mContext:Landroid/content/Context;

    return-void
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method
