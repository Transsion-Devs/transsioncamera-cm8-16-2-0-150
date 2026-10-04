.class public Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

.field private mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

.field private final mCurrentCountMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentPreviewAlgoType:I

.field private final mDebugMaxCountMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mExposeTime:J

.field private mIsLastShotNotSkip:Z

.field private final mMemIndex:I

.field protected mShot2ShotOfflineLimitCount:I

.field private mShot2ShotPlatform:I

.field protected mShot2ShotPolicyExtCount:I

.field protected final mSkipToMFLL:Z

.field protected final mTag:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;)V
    .registers 6

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mDebugMaxCountMap:Landroid/util/SparseArray;

    .line 29
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mCurrentCountMap:Landroid/util/SparseArray;

    const/4 v1, 0x0

    .line 34
    iput v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mCurrentPreviewAlgoType:I

    .line 43
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mShot2ShotPolicyExtCount:I

    iput v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mShot2ShotPolicyExtCount:I

    .line 44
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mShot2ShotOfflineLimitCount:I

    iput v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mShot2ShotOfflineLimitCount:I

    const-wide/16 v1, -0x1

    .line 46
    iput-wide v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mExposeTime:J

    .line 49
    new-instance v1, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "Shot2ShotPolicy"

    invoke-direct {v1, v2}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 50
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    .line 51
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    .line 52
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/CustomConfigUtil;->getShot2ShotPolicyPlatform()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mShot2ShotPlatform:I

    .line 54
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->shot2ShotPolicy()I

    move-result p1

    if-ltz p1, :cond_47

    .line 56
    iput p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mShot2ShotPlatform:I

    .line 59
    :cond_47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AsdShot2ShotSkipPolicy, Shot2ShotPlatform: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mShot2ShotPlatform:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->isSkipToMFLL()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mSkipToMFLL:Z

    .line 63
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->shot2ShotMaxCountForHDR()I

    move-result p1

    if-ltz p1, :cond_71

    const/4 p2, 0x1

    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    :cond_71
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->shot2ShotMaxCountForLLHDR()I

    move-result p1

    if-ltz p1, :cond_7f

    const/4 p2, 0x2

    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    :cond_7f
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->shot2ShotMaxCountForNightLight()I

    move-result p1

    if-ltz p1, :cond_8d

    const/4 p2, 0x3

    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    :cond_8d
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->shot2ShotMaxCountForTranNight()I

    move-result p1

    if-ltz p1, :cond_9b

    const/4 p2, 0x4

    .line 77
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    :cond_9b
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->shot2ShotMaxCountForMiddleNight()I

    move-result p1

    if-ltz p1, :cond_a9

    const/4 p2, 0x5

    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    :cond_a9
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->shot2ShotMaxCountForSuperResolution()I

    move-result p1

    if-ltz p1, :cond_b7

    const/4 p2, 0x6

    .line 85
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    :cond_b7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AsdShot2ShotSkipPolicy, debug MaxCountMap: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->dumpMap(Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getRam()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mMemIndex:I

    .line 91
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->overlayLowMemSpec()V

    return-void
.end method

.method private dumpMap(Landroid/util/SparseArray;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_5

    .line 421
    const-string p0, "null"

    return-object p0

    .line 423
    :cond_5
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-gtz p0, :cond_f

    .line 424
    const-string/jumbo p0, "{}"

    return-object p0

    .line 427
    :cond_f
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p0

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    .line 429
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_1e
    if-ge v1, p0, :cond_41

    if-lez v1, :cond_27

    .line 432
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    :cond_27
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 435
    invoke-static {v2}, Lcom/transsion/camera/feature/setting/asd/AsdAlgoType;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    .line 436
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 438
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_41
    const/16 p0, 0x7d

    .line 440
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isOfflineAccrueNumLimit()Z
    .registers 2

    .line 456
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mShot2ShotOfflineLimitCount:I

    if-lez v0, :cond_1c

    .line 458
    invoke-static {}, Lcom/transsion/camera/adapter/platformcamera/OfflineController;->getInstance()Lcom/transsion/camera/adapter/platformcamera/OfflineController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/OfflineController;->getAccrueTfNum()I

    move-result v0

    iget p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mShot2ShotOfflineLimitCount:I

    if-lt v0, p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method private isSupportForceSkipToNone()Z
    .registers 2

    .line 449
    iget v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mShot2ShotPolicyExtCount:I

    if-lez v0, :cond_20

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    .line 450
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->isPMaterMode()Z

    move-result p0

    if-eqz p0, :cond_20

    .line 451
    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getRam()I

    move-result p0

    const/16 v0, 0x68

    if-gt p0, v0, :cond_20

    .line 452
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method private replaceAlgo(Lcom/transsion/camera/adapter/CameraParameters;I)Z
    .registers 6

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->isModeSupportSuperNight()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 140
    :cond_a
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isSupportMagicSkyMultiFrame()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->isModeSupportMagicSky()Z

    move-result v0

    if-eqz v0, :cond_1d

    return v1

    .line 143
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->isFlashSnapMode()Z

    move-result v0

    if-eqz v0, :cond_26

    return v1

    .line 146
    :cond_26
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mAsdModeFeatures:Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->isModeSupportAiRawLite()Z

    move-result v0

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->isSupportForceSkipToNone()Z

    move-result v2

    invoke-virtual {p0, p2, v0, v2}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->needReplace(IZZ)I

    move-result v0

    .line 147
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->isLastShotNotSkip()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setLastShotNotSkip(Z)V

    const/4 p0, 0x1

    if-nez v0, :cond_45

    .line 149
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setSkipMultCapture(Z)V

    .line 150
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setMiddleNightMode(I)V

    return p0

    :cond_45
    const/16 v2, 0x65

    if-ne v0, v2, :cond_51

    .line 153
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setSkipMultCapture(Z)V

    const/4 p2, 0x2

    .line 154
    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraParameters;->setMiddleNightMode(I)V

    return p0

    .line 157
    :cond_51
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setSkipMultCapture(Z)V

    const/4 p0, 0x5

    if-eq p2, p0, :cond_5a

    .line 159
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setMiddleNightMode(I)V

    :cond_5a
    return v1
.end method


# virtual methods
.method public algoIsReplaced(IZ)Z
    .registers 4

    .line 412
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->isSupportForceSkipToNone()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->needReplace(IZZ)I

    move-result p0

    if-eq p1, p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public decreaseCount(I)V
    .registers 5

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mCurrentCountMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 120
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mCurrentCountMap:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_24

    .line 123
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mCurrentCountMap:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_24

    :catchall_22
    move-exception p0

    goto :goto_42

    .line 125
    :cond_24
    :goto_24
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decreaseCount CurrentCountMap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mCurrentCountMap:Landroid/util/SparseArray;

    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->dumpMap(Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 126
    monitor-exit v0

    return-void

    :goto_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_22

    throw p0
.end method

.method public getCurrentPreviewAlgoType()I
    .registers 1

    .line 165
    iget p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mCurrentPreviewAlgoType:I

    return p0
.end method

.method protected getShot2ShotPlatform()I
    .registers 1

    .line 445
    iget p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mShot2ShotPlatform:I

    return p0
.end method

.method public increaseCount(I)V
    .registers 5

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mCurrentCountMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 112
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mCurrentCountMap:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 113
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mCurrentCountMap:Landroid/util/SparseArray;

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 114
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "increaseCount CurrentCountMap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mCurrentCountMap:Landroid/util/SparseArray;

    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->dumpMap(Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 115
    monitor-exit v0

    return-void

    :catchall_3d
    move-exception p0

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw p0
.end method

.method public isLastShotNotSkip()Z
    .registers 1

    .line 416
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mIsLastShotNotSkip:Z

    return p0
.end method

.method protected isSkipToMFLL()Z
    .registers 2

    .line 100
    iget p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mShot2ShotPlatform:I

    const/16 v0, 0xa

    if-eq p0, v0, :cond_e

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSprdPlatform()Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public needReplace(IZZ)I
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    const/4 v3, 0x0

    .line 354
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 329
    iget-object v5, v0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mDebugMaxCountMap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-eqz v5, :cond_16

    .line 330
    iget-object v5, v0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mDebugMaxCountMap:Landroid/util/SparseArray;

    goto :goto_20

    .line 332
    :cond_16
    iget v5, v0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mShot2ShotPlatform:I

    iget v6, v0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mMemIndex:I

    move/from16 v7, p2

    invoke-static {v5, v6, v7}, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs;->chooseSpec(IIZ)Landroid/util/SparseArray;

    move-result-object v5

    :goto_20
    if-nez v5, :cond_2a

    .line 335
    iget-object v0, v0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "needReplace maxCountMap not found !!!"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_2a
    const/4 v6, -0x1

    .line 339
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x65

    if-nez v6, :cond_84

    .line 340
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mShot2ShotTFToMFLL:Z

    if-nez v2, :cond_69

    .line 341
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mShot2ShotAiRawToMFLL:Z

    if-eqz v2, :cond_4e

    goto :goto_69

    .line 346
    :cond_4e
    iget-object v0, v0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needReplace to ALGO_TYPE_NONE, max is 0, algoType: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-static {v1}, Lcom/transsion/camera/feature/setting/asd/AsdAlgoType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 346
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v3

    .line 342
    :cond_69
    :goto_69
    iget-object v0, v0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needReplace to ALGO_TYPE_MFLL, max is 0, algoType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-static {v1}, Lcom/transsion/camera/feature/setting/asd/AsdAlgoType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 342
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v7

    :cond_84
    if-eqz v2, :cond_8e

    .line 351
    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->isOfflineAccrueNumLimit()Z

    move-result v8

    if-eqz v8, :cond_8e

    const/4 v8, 0x1

    goto :goto_8f

    :cond_8e
    move v8, v3

    .line 352
    :goto_8f
    iget-object v9, v0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mCurrentCountMap:Landroid/util/SparseArray;

    monitor-enter v9

    .line 354
    :try_start_92
    iget-object v10, v0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mCurrentCountMap:Landroid/util/SparseArray;

    invoke-virtual {v10, v1, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 355
    iget-object v11, v0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "needReplace currentAlgo: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/asd/AsdAlgoType;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", currentCountMap: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mCurrentCountMap:Landroid/util/SparseArray;

    .line 356
    invoke-direct {v0, v13}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->dumpMap(Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " supportForceSkipToNone ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 355
    invoke-static {v11, v12}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 357
    iget-object v11, v0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "needReplace maxCountMap: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->dumpMap(Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-lez v10, :cond_1c9

    .line 364
    iget-object v10, v0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mCurrentCountMap:Landroid/util/SparseArray;

    invoke-virtual {v10, v3, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move v11, v3

    move v12, v11

    move v13, v12

    .line 365
    :goto_f9
    iget-object v14, v0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mCurrentCountMap:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-ge v11, v14, :cond_1c9

    .line 366
    iget-object v14, v0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mCurrentCountMap:Landroid/util/SparseArray;

    invoke-virtual {v14, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    .line 367
    invoke-virtual {v5, v14, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-lez v15, :cond_1c1

    move/from16 v16, v3

    .line 369
    iget-object v3, v0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mCurrentCountMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v14, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 370
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-lez v14, :cond_130

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/lit8 v6, v15, -0x1

    if-ne v14, v6, :cond_130

    const/4 v6, 0x1

    goto :goto_132

    :catchall_12d
    move-exception v0

    goto/16 :goto_1df

    :cond_130
    move/from16 v6, v16

    :goto_132
    iput-boolean v6, v0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mIsLastShotNotSkip:Z

    .line 371
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_158

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v6, v15, :cond_158

    if-nez v2, :cond_158

    .line 372
    iget-boolean v1, v0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mSkipToMFLL:Z

    if-eqz v1, :cond_14f

    .line 373
    iget-object v0, v0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "needReplace to ALGO_TYPE_MFLL."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 374
    monitor-exit v9

    return v7

    .line 376
    :cond_14f
    iget-object v0, v0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "needReplace to ALGO_TYPE_NONE."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 377
    monitor-exit v9

    return v16

    .line 380
    :cond_158
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v12, v3

    if-ge v13, v15, :cond_160

    move v13, v15

    :cond_160
    add-int v3, v10, v12

    if-lez v12, :cond_1c3

    if-lt v12, v13, :cond_1c3

    if-eqz v2, :cond_171

    .line 386
    iget v1, v0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mShot2ShotPolicyExtCount:I

    add-int/2addr v1, v12

    if-ge v3, v1, :cond_16f

    if-eqz v8, :cond_171

    :cond_16f
    const/4 v6, 0x1

    goto :goto_173

    :cond_171
    move/from16 v6, v16

    .line 388
    :goto_173
    iget-boolean v1, v0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mSkipToMFLL:Z

    if-eqz v1, :cond_199

    if-nez v6, :cond_199

    .line 389
    iget-object v0, v0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needReplace to ALGO_TYPE_MFLL, allAlgosSum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", maxAlgosCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 391
    monitor-exit v9

    return v7

    .line 393
    :cond_199
    iget-object v0, v0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needReplace to ALGO_TYPE_NONE, allAlgosSum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", maxAlgosCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", forceSkipToNone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 396
    monitor-exit v9

    return v16

    :cond_1c1
    move/from16 v16, v3

    :cond_1c3
    add-int/lit8 v11, v11, 0x1

    move/from16 v3, v16

    goto/16 :goto_f9

    :cond_1c9
    move/from16 v16, v3

    if-eqz v8, :cond_1d6

    .line 403
    iget-object v0, v0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "needReplace to ALGO_TYPE_NONE,because offlineAccrueNumLimit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 404
    monitor-exit v9

    return v16

    .line 406
    :cond_1d6
    monitor-exit v9
    :try_end_1d7
    .catchall {:try_start_92 .. :try_end_1d7} :catchall_12d

    .line 407
    iget-object v0, v0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "needReplace false."

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 406
    :goto_1df
    :try_start_1df
    monitor-exit v9
    :try_end_1e0
    .catchall {:try_start_1df .. :try_end_1e0} :catchall_12d

    throw v0
.end method

.method protected overlayLowMemSpec()V
    .registers 1

    .line 96
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mShot2ShotPolicyLowMemOverlay:[I

    .line 95
    invoke-static {p0}, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs;->overlayLowMemSpec([I)V

    return-void
.end method

.method public resetCount()V
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mCurrentCountMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 131
    :try_start_3
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mCurrentCountMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 132
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public updateAsdAlgoType(Lcom/transsion/camera/adapter/CameraParameters;)V
    .registers 15

    const/4 v0, 0x0

    .line 169
    iput v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mCurrentPreviewAlgoType:I

    .line 170
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionHDR()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 171
    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->replaceAlgo(Lcom/transsion/camera/adapter/CameraParameters;I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 172
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionHDR(I)V

    goto :goto_16

    .line 174
    :cond_14
    iput v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mCurrentPreviewAlgoType:I

    .line 178
    :cond_16
    :goto_16
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperNightAlgoType()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Night_Light"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x3

    if-eqz v1, :cond_38

    .line 179
    invoke-direct {p0, p1, v3}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->replaceAlgo(Lcom/transsion/camera/adapter/CameraParameters;I)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 180
    const-string v1, "None"

    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperNightAlgoType(Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSuperNightLightValue(I)V

    goto :goto_38

    .line 183
    :cond_36
    iput v3, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mCurrentPreviewAlgoType:I

    .line 187
    :cond_38
    :goto_38
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionNightMode()I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v2, :cond_4b

    .line 188
    invoke-direct {p0, p1, v4}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->replaceAlgo(Lcom/transsion/camera/adapter/CameraParameters;I)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 189
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionNightMode(I)V

    goto :goto_4b

    .line 191
    :cond_49
    iput v4, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mCurrentPreviewAlgoType:I

    .line 195
    :cond_4b
    :goto_4b
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionLowLightMode()I

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v2, :cond_5e

    .line 196
    invoke-direct {p0, p1, v5}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->replaceAlgo(Lcom/transsion/camera/adapter/CameraParameters;I)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 197
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionLowLightMode(I)V

    goto :goto_5e

    .line 199
    :cond_5c
    iput v5, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mCurrentPreviewAlgoType:I

    .line 203
    :cond_5e
    :goto_5e
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getMiddleNightMode()I

    move-result v1

    const/4 v6, 0x5

    if-ne v1, v2, :cond_6e

    .line 204
    invoke-direct {p0, p1, v6}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->replaceAlgo(Lcom/transsion/camera/adapter/CameraParameters;I)Z

    move-result v1

    if-eqz v1, :cond_6c

    goto :goto_6e

    .line 206
    :cond_6c
    iput v6, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mCurrentPreviewAlgoType:I

    .line 210
    :cond_6e
    :goto_6e
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperResolutionMode()I

    move-result v1

    const/4 v7, 0x6

    if-nez v1, :cond_7b

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getRawSuperResolutionMode()I

    move-result v1

    if-eqz v1, :cond_8a

    .line 211
    :cond_7b
    invoke-direct {p0, p1, v7}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->replaceAlgo(Lcom/transsion/camera/adapter/CameraParameters;I)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 212
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperResolutionMode(I)V

    .line 213
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setP2RawCropResizeEnable(I)V

    goto :goto_8a

    .line 215
    :cond_88
    iput v7, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mCurrentPreviewAlgoType:I

    .line 219
    :cond_8a
    :goto_8a
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isTFShot2ShotSkipToMFLL()Z

    move-result v1

    const-wide/16 v8, 0x64

    const-string/jumbo v10, "updateAsdAlgoType: getSuperNightLiteShutterTime() = "

    if-eqz v1, :cond_14f

    .line 220
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionTurboFusionMode()I

    move-result v1

    if-ne v1, v2, :cond_aa

    const/4 v1, 0x7

    .line 221
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->replaceAlgo(Lcom/transsion/camera/adapter/CameraParameters;I)Z

    move-result v11

    if-eqz v11, :cond_a8

    .line 222
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionTurboFusionMode(I)V

    goto :goto_aa

    .line 224
    :cond_a8
    iput v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mCurrentPreviewAlgoType:I

    .line 228
    :cond_aa
    :goto_aa
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionTurboFusionMode()I

    move-result v1

    if-ne v1, v4, :cond_be

    const/16 v1, 0x8

    .line 229
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->replaceAlgo(Lcom/transsion/camera/adapter/CameraParameters;I)Z

    move-result v4

    if-eqz v4, :cond_bc

    .line 230
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionTurboFusionMode(I)V

    goto :goto_be

    .line 232
    :cond_bc
    iput v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mCurrentPreviewAlgoType:I

    .line 236
    :cond_be
    :goto_be
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionTurboFusionMode()I

    move-result v1

    if-ne v1, v5, :cond_f1

    .line 237
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mExposeTime:J

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 238
    iget-wide v11, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mExposeTime:J

    cmp-long v1, v11, v8

    const/16 v4, 0x9

    if-lez v1, :cond_e5

    .line 239
    iput v4, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mCurrentPreviewAlgoType:I

    goto :goto_f1

    .line 240
    :cond_e5
    invoke-direct {p0, p1, v4}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->replaceAlgo(Lcom/transsion/camera/adapter/CameraParameters;I)Z

    move-result v1

    if-eqz v1, :cond_ef

    .line 241
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionTurboFusionMode(I)V

    goto :goto_f1

    .line 243
    :cond_ef
    iput v4, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mCurrentPreviewAlgoType:I

    .line 247
    :cond_f1
    :goto_f1
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionTurboFusionMode()I

    move-result v1

    if-ne v1, v3, :cond_105

    const/16 v1, 0xa

    .line 248
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->replaceAlgo(Lcom/transsion/camera/adapter/CameraParameters;I)Z

    move-result v4

    if-eqz v4, :cond_103

    .line 249
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionTurboFusionMode(I)V

    goto :goto_105

    .line 251
    :cond_103
    iput v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mCurrentPreviewAlgoType:I

    .line 255
    :cond_105
    :goto_105
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionTurboFusionMode()I

    move-result v1

    if-ne v1, v6, :cond_11c

    const/16 v1, 0xb

    .line 256
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->replaceAlgo(Lcom/transsion/camera/adapter/CameraParameters;I)Z

    move-result v4

    if-eqz v4, :cond_11a

    .line 257
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setAirawSN2SRMode(I)V

    .line 258
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionTurboFusionMode(I)V

    goto :goto_11c

    .line 260
    :cond_11a
    iput v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mCurrentPreviewAlgoType:I

    .line 264
    :cond_11c
    :goto_11c
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionTurboFusionMode()I

    move-result v1

    if-ne v1, v7, :cond_14f

    .line 265
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mExposeTime:J

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 266
    iget-wide v11, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mExposeTime:J

    cmp-long v1, v11, v8

    const/16 v4, 0xc

    if-lez v1, :cond_143

    .line 267
    iput v4, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mCurrentPreviewAlgoType:I

    goto :goto_14f

    .line 268
    :cond_143
    invoke-direct {p0, p1, v4}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->replaceAlgo(Lcom/transsion/camera/adapter/CameraParameters;I)Z

    move-result v1

    if-eqz v1, :cond_14d

    .line 269
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionTurboFusionMode(I)V

    goto :goto_14f

    .line 271
    :cond_14d
    iput v4, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mCurrentPreviewAlgoType:I

    .line 276
    :cond_14f
    :goto_14f
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mAsdGlobalFeatures:Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isSuperAiRawShot2ShotSkipToMFLL()Z

    move-result v1

    if-eqz v1, :cond_1dd

    .line 277
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperAIRawMode()I

    move-result v1

    if-ne v1, v5, :cond_16b

    const/16 v1, 0xd

    .line 278
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->replaceAlgo(Lcom/transsion/camera/adapter/CameraParameters;I)Z

    move-result v4

    if-eqz v4, :cond_169

    .line 279
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperAIRawMode(I)V

    goto :goto_16b

    .line 281
    :cond_169
    iput v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mCurrentPreviewAlgoType:I

    .line 285
    :cond_16b
    :goto_16b
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperAIRawMode()I

    move-result v1

    if-ne v1, v2, :cond_17f

    const/16 v1, 0xe

    .line 286
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->replaceAlgo(Lcom/transsion/camera/adapter/CameraParameters;I)Z

    move-result v2

    if-eqz v2, :cond_17d

    .line 287
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperAIRawMode(I)V

    goto :goto_17f

    .line 289
    :cond_17d
    iput v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mCurrentPreviewAlgoType:I

    .line 293
    :cond_17f
    :goto_17f
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperAIRawMode()I

    move-result v1

    if-ne v1, v3, :cond_1b2

    .line 294
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mExposeTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 295
    iget-wide v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mExposeTime:J

    cmp-long v1, v1, v8

    const/16 v2, 0xf

    if-lez v1, :cond_1a6

    .line 296
    iput v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mCurrentPreviewAlgoType:I

    goto :goto_1b2

    .line 297
    :cond_1a6
    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->replaceAlgo(Lcom/transsion/camera/adapter/CameraParameters;I)Z

    move-result v1

    if-eqz v1, :cond_1b0

    .line 298
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperAIRawMode(I)V

    goto :goto_1b2

    .line 300
    :cond_1b0
    iput v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mCurrentPreviewAlgoType:I

    .line 304
    :cond_1b2
    :goto_1b2
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperAIRawMode()I

    move-result v1

    if-ne v1, v6, :cond_1c6

    const/16 v1, 0x10

    .line 305
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->replaceAlgo(Lcom/transsion/camera/adapter/CameraParameters;I)Z

    move-result v2

    if-eqz v2, :cond_1c4

    .line 306
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperAIRawMode(I)V

    goto :goto_1c6

    .line 308
    :cond_1c4
    iput v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mCurrentPreviewAlgoType:I

    .line 312
    :cond_1c6
    :goto_1c6
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperAIRawMode()I

    move-result v1

    if-ne v1, v7, :cond_1dd

    const/16 v1, 0x11

    .line 313
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->replaceAlgo(Lcom/transsion/camera/adapter/CameraParameters;I)Z

    move-result v2

    if-eqz v2, :cond_1db

    .line 314
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setAirawSN2SRMode(I)V

    .line 315
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperAIRawMode(I)V

    goto :goto_1dd

    .line 317
    :cond_1db
    iput v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mCurrentPreviewAlgoType:I

    .line 322
    :cond_1dd
    :goto_1dd
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAsdAlgoType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mCurrentPreviewAlgoType:I

    .line 323
    invoke-static {p0}, Lcom/transsion/camera/feature/setting/asd/AsdAlgoType;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 322
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateAsdResult(Landroid/hardware/camera2/CaptureResult;)V
    .registers 6

    .line 105
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 106
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    goto :goto_19

    :cond_17
    const-wide/16 v0, -0x1

    .line 107
    :goto_19
    iput-wide v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mExposeTime:J

    return-void
.end method
