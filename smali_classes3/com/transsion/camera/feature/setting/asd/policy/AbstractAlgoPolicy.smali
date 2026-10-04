.class public abstract Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/setting/asd/policy/IAlgoPolicy;


# static fields
.field protected static final OFF:I = 0x0

.field protected static final ON:I = 0x1


# instance fields
.field private final mAlgorithmBackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAlgorithmFrontMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAlgorithmWideMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

.field protected mAsdEnhanceValues:[I

.field protected final mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

.field protected mAsdHwFeatures:Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;

.field protected mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

.field protected final mAsdSettingFeatures:Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;

.field protected mAsdSettingValue:Ljava/lang/String;

.field protected mBrightnessValue:I

.field protected mCaptureEndFlag:Z

.field protected mCapturingFlag:Z

.field protected mCurrentIlluminationType:I

.field protected mEffect:I

.field protected mHalIlluminationType:I

.field protected mISO:I

.field protected mIsInSensorZoomMode:Z

.field protected mLowLightEnable:Z

.field protected mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field protected mSoftMFNREnable:Z

.field protected mStreamId:I

.field protected mSuperResolutionEnable:Z

.field private final mTag:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/asd/Asd;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 8

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAlgorithmBackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 87
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAlgorithmFrontMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 88
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAlgorithmWideMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v3, 0x7

    .line 97
    new-array v3, v3, [I

    fill-array-data v3, :array_68

    iput-object v3, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdEnhanceValues:[I

    const/4 v3, -0x1

    .line 98
    iput v3, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mEffect:I

    .line 99
    iput v3, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mHalIlluminationType:I

    .line 100
    iput v3, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mCurrentIlluminationType:I

    const/4 v4, 0x0

    .line 102
    iput v4, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mBrightnessValue:I

    .line 103
    iput v3, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mStreamId:I

    .line 105
    iput-boolean v4, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSuperResolutionEnable:Z

    .line 106
    iput-boolean v4, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSoftMFNREnable:Z

    .line 107
    iput-boolean v4, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mLowLightEnable:Z

    .line 109
    iput-boolean v4, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mCapturingFlag:Z

    .line 110
    iput-boolean v4, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mIsInSensorZoomMode:Z

    .line 115
    new-instance v3, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 116
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    .line 117
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 118
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->getGlobalFeatures()Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    .line 119
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->getModeFeatures()Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    .line 120
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->getSettingFeatures()Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdSettingFeatures:Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;

    .line 121
    new-instance p1, Lcom/transsion/camera/feature/setting/asd/AsdConfig;

    invoke-direct {p1, v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdConfig;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 122
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->addAsdConfigIfNeed()V

    .line 123
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->updateSkinType()V

    return-void

    nop

    :array_68
    .array-data 4
        0x0
        0x0
        0x64
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private addAsdConfigIfNeed()V
    .registers 9

    .line 592
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAsdConfigSupportBack:[[I

    .line 593
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    const/4 v4, 0x1

    if-ge v3, v1, :cond_25

    aget-object v5, v0, v3

    .line 594
    array-length v6, v5

    if-le v6, v4, :cond_22

    .line 595
    iget-object v6, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAlgorithmBackMap:Ljava/util/concurrent/ConcurrentHashMap;

    aget v7, v5, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aget v4, v5, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 598
    :cond_25
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAsdConfigSupportFront:[[I

    .line 599
    array-length v1, v0

    move v3, v2

    :goto_2d
    if-ge v3, v1, :cond_48

    aget-object v5, v0, v3

    .line 600
    array-length v6, v5

    if-le v6, v4, :cond_45

    .line 601
    iget-object v6, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAlgorithmFrontMap:Ljava/util/concurrent/ConcurrentHashMap;

    aget v7, v5, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aget v5, v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 604
    :cond_48
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAsdConfigSupportWide:[[I

    .line 605
    array-length v1, v0

    move v3, v2

    :goto_50
    if-ge v3, v1, :cond_6b

    aget-object v5, v0, v3

    .line 606
    array-length v6, v5

    if-le v6, v4, :cond_68

    .line 607
    iget-object v6, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAlgorithmWideMap:Ljava/util/concurrent/ConcurrentHashMap;

    aget v7, v5, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aget v5, v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_68
    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    :cond_6b
    return-void
.end method

.method private getSkinColor()Ljava/lang/String;
    .registers 2

    .line 548
    const-string p0, "debug.vendor.sys.oobe.camera_skin"

    const-string/jumbo v0, "white"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isFilterOn()Z
    .registers 3

    .line 493
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_filter"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 494
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isAsdMode()Z

    move-result p0

    if-eqz p0, :cond_22

    const-string p0, "0"

    .line 495
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_22

    const-string p0, "-1"

    .line 496
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method private isFlashSnapLiteEnable()Z
    .registers 6

    .line 669
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_best_moment_detect"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 670
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 671
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const-string v3, "key_bm_detect_icon_visible"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 670
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz v0, :cond_2f

    if-eqz p0, :cond_2f

    const/4 p0, 0x1

    return p0

    :cond_2f
    const/4 p0, 0x0

    return p0
.end method

.method private isTranssionAINRAvailable(Lcom/transsion/camera/adapter/CameraParameters;I)Z
    .registers 11

    .line 424
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isTranssionAINRSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 425
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "isTranssionAINRAvailable, AINR is not supported , so return!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 429
    :cond_11
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->getZoomValue()I

    move-result v0

    .line 431
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->getAINRZoomRangeList()[I

    move-result-object v2

    .line 432
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdHwFeatures:Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->isHwSupportFastSuperNight()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3c

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    .line 433
    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/asd/Asd;->isLightSuperNightSupport()Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdSettingFeatures:Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;

    .line 434
    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;->isNightLiteOpened()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 435
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isNightScene()Z

    move-result v3

    if-eqz v3, :cond_3c

    move v3, v4

    goto :goto_3d

    :cond_3c
    move v3, v1

    .line 437
    :goto_3d
    iget-object v5, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[isInTranssionAINRMode] : , zoomValue :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", isNightAvailable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mISO: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mISO:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mBrightnessValue: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mBrightnessValue:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", AiShutter: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getAisMode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mStreamId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mStreamId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", illuminationType :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mSuperResolutionOpend: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdSettingFeatures:Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;

    .line 443
    invoke-virtual {v7}, Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;->isSuperResolutionOpend()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 437
    invoke-static {v5, v6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v3, :cond_9e

    return v1

    .line 449
    :cond_9e
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/asd/Asd;->isPMasterMode()Z

    move-result v3

    if-eqz v3, :cond_b9

    .line 450
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isHDRScene(I)Z

    move-result p1

    if-eqz p1, :cond_ad

    return v1

    .line 454
    :cond_ad
    iget p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mISO:I

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->getTranssionAINRLimitISO()I

    move-result p0

    if-le p1, p0, :cond_b8

    return v4

    :cond_b8
    return v1

    .line 457
    :cond_b9
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/asd/Asd;->isAsdMode()Z

    move-result v3

    if-nez v3, :cond_c2

    return v1

    .line 461
    :cond_c2
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getAisMode()I

    move-result p1

    if-ne p1, v4, :cond_d4

    .line 462
    iget p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mISO:I

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->getTranssionAINRMaxISO()I

    move-result p0

    if-ge p1, p0, :cond_d3

    return v4

    :cond_d3
    return v1

    .line 465
    :cond_d4
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isHDRScene(I)Z

    move-result p1

    if-eqz p1, :cond_db

    return v1

    .line 469
    :cond_db
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdSettingFeatures:Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;->isSuperResolutionOpend()Z

    move-result p1

    if-eqz p1, :cond_ef

    .line 470
    iget p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mISO:I

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->getTranssionAINRLimitISO()I

    move-result p0

    if-le p1, p0, :cond_ee

    return v4

    :cond_ee
    return v1

    .line 473
    :cond_ef
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isFilterOn()Z

    move-result p1

    if-eqz p1, :cond_101

    .line 474
    iget p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mISO:I

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->getTranssionAINRLimitISO()I

    move-result p0

    if-le p1, p0, :cond_100

    return v4

    :cond_100
    return v1

    .line 477
    :cond_101
    aget p1, v2, v1

    const/4 p2, 0x2

    if-lt v0, p1, :cond_115

    aget p1, v2, p2

    if-ge v0, p1, :cond_115

    iget p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mISO:I

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->getTranssionAINRLimitISO()I

    move-result v3

    if-le p1, v3, :cond_115

    return v4

    .line 481
    :cond_115
    aget p1, v2, p2

    if-lt v0, p1, :cond_129

    const/4 p1, 0x3

    aget p1, v2, p1

    if-ge v0, p1, :cond_129

    iget p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mBrightnessValue:I

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->getTranssionAINRMaxBV()I

    move-result p2

    if-ge p1, p2, :cond_129

    return v4

    .line 485
    :cond_129
    iget p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mISO:I

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->getTranssionAINRMaxISO()I

    move-result p0

    if-le p1, p0, :cond_134

    return v4

    :cond_134
    return v1
.end method

.method private parseIntSafely(Ljava/lang/String;)I
    .registers 3

    .line 552
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 553
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "parseIntSafely: value is empty, use ZOOM_1X"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 554
    sget p0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_1X:I

    return p0

    .line 558
    :cond_10
    :try_start_10
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_14} :catch_15

    return p0

    .line 560
    :catch_15
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "parseIntSafely failed, use ZOOM_1X"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 561
    sget p0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_1X:I

    return p0
.end method

.method private setParameters(Lcom/transsion/camera/adapter/CameraParameters;I)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_13a

    if-eq p2, v0, :cond_fe

    const/4 v2, 0x2

    if-eq p2, v2, :cond_c9

    const/16 v2, 0x65

    if-eq p2, v2, :cond_b0

    packed-switch p2, :pswitch_data_154

    const/4 p2, -0x1

    .line 309
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setTranssionHDR(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 310
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 311
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setMiddleNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 312
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setTranssionSmartDenoise(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 313
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->isModeSupportHighResolution()Z

    move-result p2

    if-nez p2, :cond_36

    .line 314
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSprdPlatform()Z

    move-result p2

    if-eqz p2, :cond_33

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->isModeSupportNight3DNR()Z

    move-result p2

    if-nez p2, :cond_36

    .line 315
    :cond_33
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setSuperResolutionMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 317
    :cond_36
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setTranssionLowLightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    return-void

    .line 286
    :pswitch_3a
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setTranssionHDR(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 287
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setTranssionSmartDenoise(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 288
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 289
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setMiddleNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 290
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setTranssionLowLightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 291
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setTranssionAINRMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 292
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setSuperResolutionMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 293
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setSuperResolutionHDRMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    return-void

    .line 266
    :pswitch_53
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setTranssionHDR(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 267
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setTranssionSmartDenoise(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 268
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 269
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setMiddleNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 270
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setTranssionAINRMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 271
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setTranssionLowLightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 272
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setSuperResolutionMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 273
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setSuperResolutionHDRMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    return-void

    .line 297
    :pswitch_6c
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setTranssionHDR(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 298
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setTranssionSmartDenoise(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 299
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 300
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setMiddleNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 301
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setTranssionLowLightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 302
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setTranssionAINRMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 303
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setSuperResolutionMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 304
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setSuperResolutionHDRMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    const/16 p2, 0xa

    .line 305
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setAlgorithmOff(Lcom/transsion/camera/adapter/CameraParameters;I)V

    return-void

    .line 250
    :pswitch_8a
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setTranssionHDR(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 251
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setTranssionSmartDenoise(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 252
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 253
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isTranssionAINRAvailable(Lcom/transsion/camera/adapter/CameraParameters;I)Z

    move-result p2

    if-eqz p2, :cond_a0

    .line 254
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setTranssionAINRMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 255
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setMiddleNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    goto :goto_a6

    .line 257
    :cond_a0
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setMiddleNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 258
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setTranssionAINRMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 260
    :goto_a6
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setTranssionLowLightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 261
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setSuperResolutionMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 262
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setSuperResolutionHDRMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    return-void

    .line 276
    :cond_b0
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setTranssionHDR(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 277
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setTranssionSmartDenoise(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 278
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 279
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setMiddleNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 280
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setTranssionLowLightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 281
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setTranssionAINRMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 282
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setSuperResolutionHDRMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 283
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setSuperResolutionMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    return-void

    .line 234
    :cond_c9
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdSettingValue:Ljava/lang/String;

    const-string v2, "1"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_e5

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    .line 235
    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->getAsdDefaultValue()Ljava/lang/String;

    move-result-object p2

    const-string v2, "auto"

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_e5

    .line 236
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setTranssionHDR(Lcom/transsion/camera/adapter/CameraParameters;I)V

    goto :goto_e8

    .line 238
    :cond_e5
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setTranssionHDR(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 240
    :goto_e8
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setTranssionAINRMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 241
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setTranssionSmartDenoise(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 242
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 243
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setMiddleNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 244
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setTranssionLowLightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 245
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setSuperResolutionMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 246
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setSuperResolutionHDRMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    return-void

    .line 213
    :cond_fe
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setTranssionHDR(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 214
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setTranssionSmartDenoise(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 215
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setMiddleNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 216
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setSuperResolutionMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 217
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setSuperResolutionHDRMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 218
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdSettingFeatures:Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;->isNightShotOpened()Z

    move-result v2

    if-eqz v2, :cond_12c

    .line 219
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isTranssionAINRAvailable(Lcom/transsion/camera/adapter/CameraParameters;I)Z

    move-result p2

    if-eqz p2, :cond_122

    .line 220
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 221
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setTranssionAINRMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    goto :goto_128

    .line 223
    :cond_122
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 224
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setTranssionAINRMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 226
    :goto_128
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setTranssionLowLightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    return-void

    .line 228
    :cond_12c
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isTranssionAINRAvailable(Lcom/transsion/camera/adapter/CameraParameters;I)Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setTranssionAINRMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 229
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 230
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setTranssionLowLightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    return-void

    .line 203
    :cond_13a
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setTranssionHDR(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 204
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setTranssionSmartDenoise(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 205
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 206
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setMiddleNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 207
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setTranssionLowLightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 208
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setTranssionAINRMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 209
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setSuperResolutionMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 210
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setSuperResolutionHDRMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    return-void

    nop

    :pswitch_data_154
    .packed-switch 0x5
        :pswitch_8a
        :pswitch_6c
        :pswitch_53
        :pswitch_8a
        :pswitch_53
        :pswitch_6c
        :pswitch_3a
    .end packed-switch
.end method

.method private setTranssionAINRMode(Lcom/transsion/camera/adapter/CameraParameters;I)V
    .registers 3

    if-eqz p1, :cond_5

    .line 664
    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionAINRMode(I)V

    :cond_5
    return-void
.end method

.method private setTranssionCusIspAsd(Lcom/transsion/camera/adapter/CameraParameters;[I)V
    .registers 3

    if-eqz p1, :cond_5

    .line 658
    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionCusIspAsd([I)V

    :cond_5
    return-void
.end method

.method private setTranssionSmartDenoise(Lcom/transsion/camera/adapter/CameraParameters;I)V
    .registers 3

    if-eqz p1, :cond_5

    .line 652
    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionSmartDenoise(I)V

    :cond_5
    return-void
.end method

.method private updateExtraValues(Lcom/transsion/camera/adapter/CameraParameters;II)V
    .registers 11

    .line 323
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdEnhanceValues:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    .line 324
    aput p3, v0, v2

    const/4 v3, 0x2

    const/16 v4, 0x64

    .line 325
    aput v4, v0, v3

    .line 326
    iget v5, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mHalIlluminationType:I

    if-ne v5, v2, :cond_13

    move v5, v2

    goto :goto_14

    :cond_13
    move v5, v1

    :goto_14
    const/4 v6, 0x6

    aput v5, v0, v6

    .line 328
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->isModeSupportASDEnhance()Z

    move-result v0

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    const-string v5, "key_asd_enhance"

    .line 329
    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "on"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    const-string v5, "key_super_definition"

    .line 330
    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "off"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isFullSizeMode()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 331
    :cond_47
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isAsdEnhanceLightSupport()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 332
    iget v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mHalIlluminationType:I

    if-eq v0, v2, :cond_85

    if-eq v0, v3, :cond_85

    const/4 v5, 0x7

    if-eq v0, v5, :cond_85

    const/16 v5, 0x9

    if-eq v0, v5, :cond_85

    if-ne v0, v4, :cond_5f

    goto :goto_85

    :cond_5f
    if-ne p3, v2, :cond_73

    .line 339
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdEnhanceValues:[I

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/setting/asd/Asd;->isFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_6e

    const/16 v4, 0xf

    goto :goto_70

    :cond_6e
    const/16 v4, 0x23

    .line 340
    :goto_70
    aput v4, v0, v3

    goto :goto_89

    .line 342
    :cond_73
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdEnhanceValues:[I

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/setting/asd/Asd;->isFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_80

    const/16 v4, 0x19

    goto :goto_82

    :cond_80
    const/16 v4, 0x50

    .line 343
    :goto_82
    aput v4, v0, v3

    goto :goto_89

    .line 337
    :cond_85
    :goto_85
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdEnhanceValues:[I

    aput v1, v0, v1

    .line 346
    :cond_89
    :goto_89
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v4, "key_asd_effect_state"

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    iget-object v5, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdEnhanceValues:[I

    .line 347
    invoke-virtual {v0, v4, v5}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_9f

    .line 349
    :cond_9b
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdEnhanceValues:[I

    aput v1, v0, v1

    .line 352
    :goto_9f
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v4, "key_asd_algorithm_value"

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    .line 353
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v4, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 354
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p2

    const-string v0, "key_asd_effect_state_qrcode"

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p2

    filled-new-array {p3}, [I

    move-result-object p3

    .line 355
    invoke-virtual {p2, v0, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 357
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string p3, "key_image_style"

    invoke-interface {p2, p3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "1"

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e3

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 358
    invoke-interface {p2, p3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "2"

    invoke-static {p2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_ef

    :cond_e3
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->isModeSupportASDEnhance()Z

    move-result p2

    if-eqz p2, :cond_ef

    .line 359
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdEnhanceValues:[I

    aput v2, p2, v1

    .line 362
    :cond_ef
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->getSkinColor()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "white"

    invoke-static {p2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x5

    if-eqz p2, :cond_102

    .line 363
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdEnhanceValues:[I

    aput v3, p2, p3

    goto :goto_117

    .line 364
    :cond_102
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->getSkinColor()Ljava/lang/String;

    move-result-object p2

    const-string v0, "brown"

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_113

    .line 365
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdEnhanceValues:[I

    aput v2, p2, p3

    goto :goto_117

    .line 367
    :cond_113
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdEnhanceValues:[I

    aput v1, p2, p3

    .line 369
    :goto_117
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->updateSkinType()V

    .line 370
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdEnhanceValues:[I

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setTranssionCusIspAsd(Lcom/transsion/camera/adapter/CameraParameters;[I)V

    return-void
.end method

.method private updateSkinType()V
    .registers 5

    .line 374
    sget-object v0, Lcom/transsion/camera/utils/AreaUtil;->COUNTRY_CODE:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 375
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 376
    :cond_a
    const-string v0, "NG"

    .line 379
    :cond_c
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSkinType, countryCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",getSkinColor():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->getSkinColor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 382
    sget-object v1, Lcom/transsion/camera/utils/SettingInfo;->AREA_A_DARK:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    const/4 v0, 0x0

    goto :goto_44

    .line 384
    :cond_39
    sget-object v1, Lcom/transsion/camera/utils/SettingInfo;->AREA_C_LIGHT:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    const/4 v0, 0x2

    goto :goto_44

    :cond_43
    const/4 v0, 0x1

    .line 389
    :goto_44
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdEnhanceValues:[I

    const/4 v1, 0x5

    aput v0, p0, v1

    return-void
.end method

.method private updateSomeValuesWhenAsdOff(Lcom/transsion/camera/adapter/CameraParameters;)V
    .registers 4

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdEnhanceValues:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 192
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setTranssionCusIspAsd(Lcom/transsion/camera/adapter/CameraParameters;[I)V

    .line 194
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_image_style"

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 195
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string v0, "key_asd_effect_state"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdEnhanceValues:[I

    .line 196
    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_29
    return-void
.end method


# virtual methods
.method protected applyLivePhotoLowPolicy()Z
    .registers 3

    .line 532
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->getLivePhotoAlgorithmType()I

    move-result v0

    .line 533
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->isModeSupportLivePhoto()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isLivePhotoOn()Z

    move-result p0

    if-eqz p0, :cond_18

    if-nez v0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method protected getDeviceZoomRatio()I
    .registers 3

    .line 566
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    const-string v1, "key_camera_zoom"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->parseIntSafely(Ljava/lang/String;)I

    move-result v0

    .line 567
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdHwFeatures:Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->isHwSupportSat()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 568
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    iget p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mStreamId:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2d

    .line 569
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraDeviceZoom(I)I

    move-result p0

    return p0

    :cond_2d
    return v0
.end method

.method public getReplacedIlluminationType(I)I
    .registers 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    const/4 p1, 0x5

    .line 618
    :cond_4
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackMainCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10c

    .line 619
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    goto/16 :goto_10c

    .line 624
    :cond_26
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontMainCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e7

    .line 625
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontFolderCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    goto/16 :goto_e7

    .line 630
    :cond_48
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 631
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAlgorithmWideMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_131

    .line 632
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "updateIllumination type wide"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 633
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAlgorithmWideMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 635
    :cond_7d
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontWideCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 636
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAlgorithmWideMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_131

    .line 637
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "updateIllumination type front wide"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 638
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAlgorithmWideMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 640
    :cond_b2
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_131

    .line 641
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAlgorithmWideMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_131

    .line 642
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "updateIllumination type LongFocus"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 643
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAlgorithmWideMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 626
    :cond_e7
    :goto_e7
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAlgorithmFrontMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_131

    .line 627
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "updateIllumination type front"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 628
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAlgorithmFrontMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 620
    :cond_10c
    :goto_10c
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAlgorithmBackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_131

    .line 621
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "updateIllumination type Back"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 622
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAlgorithmBackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_131
    return p1
.end method

.method protected getZoomValue()I
    .registers 4

    .line 575
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object v0

    const-string v1, "key_camera_zoom"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 576
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 577
    :goto_14
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->parseIntSafely(Ljava/lang/String;)I

    move-result v0

    .line 578
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_5a

    .line 582
    :cond_1f
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 583
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    iget v2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mStreamId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    goto :goto_41

    :cond_40
    return v0

    .line 584
    :cond_41
    :goto_41
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5a

    .line 585
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraZoom(I)I

    move-result p0

    return p0

    :cond_5a
    :goto_5a
    return v0
.end method

.method protected isHDRScene(I)Z
    .registers 2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_d

    const/16 p0, 0x9

    if-eq p1, p0, :cond_d

    const/4 p0, 0x7

    if-ne p1, p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method protected isHDRSettingOff()Z
    .registers 2

    .line 399
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    const-string v0, "key_hdr"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "off"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method protected isHDRSettingOn()Z
    .registers 2

    .line 403
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    const-string v0, "key_hdr"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method isLivePhotoOn()Z
    .registers 2

    .line 500
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->isModeSupportLivePhoto()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_live_photo"

    .line 501
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method isLivePhotoSupportHDR()Z
    .registers 2

    .line 511
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->getLivePhotoAlgorithmType()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method protected isNightScene()Z
    .registers 3

    .line 393
    iget p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mHalIlluminationType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_f

    const/4 v1, 0x7

    if-eq p0, v1, :cond_f

    const/16 v1, 0x9

    if-ne p0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    return v0
.end method

.method protected isRegularScene(I)Z
    .registers 2

    const/4 p0, 0x5

    if-eq p1, p0, :cond_b

    if-eqz p1, :cond_b

    const/4 p0, 0x6

    if-ne p1, p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method protected isWideCamera()Z
    .registers 3

    .line 419
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 420
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontWideCamera(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    return p0

    :cond_23
    :goto_23
    const/4 p0, 0x1

    return p0
.end method

.method abstract setAlgorithmOff(Lcom/transsion/camera/adapter/CameraParameters;I)V
.end method

.method public setCaptureEndFlag(Z)V
    .registers 2

    .line 539
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mCaptureEndFlag:Z

    return-void
.end method

.method public setCapturingFlag(Z)V
    .registers 2

    .line 544
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mCapturingFlag:Z

    return-void
.end method

.method public setHwFeatures(Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;)V
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdHwFeatures:Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;

    return-void
.end method

.method abstract setMiddleNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V
.end method

.method abstract setNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V
.end method

.method public setStreamId(I)V
    .registers 2

    .line 156
    iput p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mStreamId:I

    return-void
.end method

.method abstract setSuperResolutionHDRMode(Lcom/transsion/camera/adapter/CameraParameters;I)V
.end method

.method abstract setSuperResolutionMode(Lcom/transsion/camera/adapter/CameraParameters;I)V
.end method

.method abstract setTranssionHDR(Lcom/transsion/camera/adapter/CameraParameters;I)V
.end method

.method abstract setTranssionLowLightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V
.end method

.method shouldApplyLivePhotoRestrictions()Z
    .registers 3

    .line 505
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->isModeSupportLivePhoto()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    .line 506
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->getLivePhotoAlgorithmType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_live_photo"

    .line 507
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_23

    const/4 p0, 0x1

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method public updateAsdLogicData(Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)Z
    .registers 5

    .line 142
    invoke-interface {p2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkInSensorZoomMode(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_19

    .line 143
    array-length v0, p1

    if-lez v0, :cond_19

    .line 144
    aget p1, p1, p2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    move p1, v0

    goto :goto_12

    :cond_11
    move p1, p2

    .line 145
    :goto_12
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mIsInSensorZoomMode:Z

    if-eq v1, p1, :cond_19

    .line 146
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mIsInSensorZoomMode:Z

    return v0

    :cond_19
    return p2
.end method

.method public updateBrightnessAndISOParameters([II)Z
    .registers 3

    .line 133
    iput p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mISO:I

    const/4 p2, 0x0

    .line 134
    aget p1, p1, p2

    iput p1, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mBrightnessValue:I

    const/4 p0, 0x1

    return p0
.end method

.method abstract updateIllumination(Lcom/transsion/camera/adapter/CameraParameters;I)I
.end method

.method public updateParameters(Lcom/transsion/camera/adapter/CameraParameters;Ljava/lang/String;II)V
    .registers 8

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateParameters, asdValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", halIlluminationType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", effect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 166
    iput p3, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mHalIlluminationType:I

    .line 167
    iput p4, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mEffect:I

    .line 168
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdSettingValue:Ljava/lang/String;

    .line 170
    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mCaptureEndFlag:Z

    if-eqz p2, :cond_49

    .line 171
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->hasService()Z

    move-result p2

    if-nez p2, :cond_43

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isAiRawSprdSupport()Z

    move-result p2

    if-eqz p2, :cond_49

    :cond_43
    const/4 p2, 0x0

    .line 172
    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraParameters;->setHeavyCapturing(Z)V

    .line 173
    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mCaptureEndFlag:Z

    .line 176
    :cond_49
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdSettingValue:Ljava/lang/String;

    const-string p3, "0"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_72

    .line 177
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isFlashSnapLiteEnable()Z

    move-result p2

    if-eqz p2, :cond_6a

    .line 178
    iget p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mHalIlluminationType:I

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->getReplacedIlluminationType(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->updateIllumination(Lcom/transsion/camera/adapter/CameraParameters;I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mCurrentIlluminationType:I

    .line 179
    iget p3, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mEffect:I

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->updateExtraValues(Lcom/transsion/camera/adapter/CameraParameters;II)V

    :cond_6a
    const/4 p2, -0x1

    .line 181
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setParameters(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 182
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->updateSomeValuesWhenAsdOff(Lcom/transsion/camera/adapter/CameraParameters;)V

    return-void

    .line 184
    :cond_72
    iget p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mHalIlluminationType:I

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->getReplacedIlluminationType(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->updateIllumination(Lcom/transsion/camera/adapter/CameraParameters;I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mCurrentIlluminationType:I

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->setParameters(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 186
    iget p2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mCurrentIlluminationType:I

    iget p3, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mEffect:I

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->updateExtraValues(Lcom/transsion/camera/adapter/CameraParameters;II)V

    return-void
.end method

.method protected updateSuperNightLiteValue()V
    .registers 4

    .line 515
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLightSuperNightSupport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/asd/Asd;->isLightSuperNightSupport()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isHwSupportFastSuperNight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdHwFeatures:Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;

    .line 516
    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->isHwSupportFastSuperNight()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isNightScene(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isNightScene()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isNightShotOpened: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdSettingFeatures:Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;

    .line 518
    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;->isNightShotOpened()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mHalIlluminationType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mHalIlluminationType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 515
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isLightSuperNightSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdHwFeatures:Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->isHwSupportFastSuperNight()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 521
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->isNightScene()Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsdSettingFeatures:Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;->isNightShotOpened()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 522
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->updateSuperNightLiteValue(I)V

    return-void

    .line 524
    :cond_74
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/setting/asd/Asd;->updateSuperNightLiteValue(I)V

    return-void

    .line 527
    :cond_7a
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/policy/AbstractAlgoPolicy;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/setting/asd/Asd;->updateSuperNightLiteValue(I)V

    return-void
.end method
