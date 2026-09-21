.class public Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/taps/IBackgroundShot2ShotSkipPolicy;


# static fields
.field private static final RESET_DELAY_MILLIS:I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TAPS2_MODE:I


# instance fields
.field private final mBackgroundSkipPolicySpecs:Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;

.field private final mCurrentCount:Ljava/util/Set;

.field private final mCurrentMaxCount:Ljava/util/Set;

.field private final mCurrentMinCount:Ljava/util/Set;

.field private final mCurrentProcessingCount:Ljava/util/Set;

.field private final mIsSystemSupportDefer:Z

.field private final mMemIndex:I

.field private final mResetCountTask:Ljava/lang/Runnable;

.field private final mResetDelayMillis:J

.field private final mStorageManagerProxy:Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

.field private final mWorkHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BgShot2ShotPolicy"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 28
    const-string v0, "debug.camera.taps.skip.policy.reset.delayMillis"

    const/4 v1, -0x1

    .line 29
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->RESET_DELAY_MILLIS:I

    .line 30
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->getTaps2Mode()I

    move-result v0

    sput v0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->TAPS2_MODE:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 8

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mCurrentMaxCount:Ljava/util/Set;

    .line 33
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mCurrentMinCount:Ljava/util/Set;

    .line 34
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mCurrentProcessingCount:Ljava/util/Set;

    .line 36
    new-instance v2, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;

    invoke-direct {v2}, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mBackgroundSkipPolicySpecs:Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;

    .line 38
    new-instance v2, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;)V

    iput-object v2, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mResetCountTask:Ljava/lang/Runnable;

    .line 45
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mStorageManagerProxy:Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    .line 46
    iput-object p1, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mWorkHandler:Landroid/os/Handler;

    .line 47
    sget p1, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->RESET_DELAY_MILLIS:I

    if-lez p1, :cond_31

    int-to-long v2, p1

    goto :goto_33

    :cond_31
    const-wide/16 v2, 0x2710

    :goto_33
    iput-wide v2, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mResetDelayMillis:J

    .line 48
    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getRam()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mMemIndex:I

    .line 49
    invoke-direct {p0}, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->isSystemSupportDefer()Z

    move-result v4

    iput-boolean v4, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mIsSystemSupportDefer:Z

    if-nez v4, :cond_4c

    .line 50
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v5

    iget-boolean v5, v5, Lcom/transsion/camera/utils/CustomConfigUtil;->mShot2ShotPolicyUseDecrease:Z

    if-eqz v5, :cond_4c

    move-object v0, v1

    .line 51
    :cond_4c
    iput-object v0, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mCurrentCount:Ljava/util/Set;

    .line 52
    sget-object p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BackgroundShot2ShotSkipPolicy: mResetDelayMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mMemIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mIsSystemSupportDefer = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized decreaseCount(J)V
    .registers 4

    monitor-enter p0

    .line 83
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mCurrentProcessingCount:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 84
    sget-object p1, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "decreaseCount: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mCurrentProcessingCount:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 85
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mIsSystemSupportDefer:Z

    if-nez p1, :cond_40

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mShot2ShotPolicyUseDecrease:Z

    if-nez p1, :cond_40

    iget-object p1, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mCurrentProcessingCount:Ljava/util/Set;

    .line 86
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_40

    .line 87
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->resetCount()V
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3e

    goto :goto_40

    :catchall_3e
    move-exception p1

    goto :goto_42

    .line 89
    :cond_40
    :goto_40
    monitor-exit p0

    return-void

    :goto_42
    :try_start_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_3e

    throw p1
.end method

.method private isCustomZoneTargetCapture(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)Z
    .registers 2

    .line 109
    invoke-interface {p1}, Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;->getTranssionTurboFusionMode()I

    move-result p0

    if-lez p0, :cond_e

    const/4 p1, 0x2

    if-eq p0, p1, :cond_e

    const/4 p1, 0x6

    if-eq p0, p1, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private isISPHIDLTargetCapture(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)Z
    .registers 3

    .line 115
    invoke-interface {p1}, Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;->getAiRawScene()I

    move-result v0

    .line 116
    invoke-interface {p1}, Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;->getPostAlgoType()I

    move-result p1

    if-lez p1, :cond_16

    const/4 p1, 0x3

    if-eq v0, p1, :cond_10

    const/4 p1, 0x4

    if-ne v0, p1, :cond_14

    :cond_10
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mIsSystemSupportDefer:Z

    if-nez p0, :cond_16

    :cond_14
    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method private isSystemSupportDefer()Z
    .registers 4

    .line 165
    sget p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->TAPS2_MODE:I

    if-lez p0, :cond_2a

    const/4 v0, 0x1

    if-eq p0, v0, :cond_29

    const/4 v1, 0x2

    if-eq p0, v1, :cond_27

    const/4 v1, 0x3

    if-eq p0, v1, :cond_29

    const/4 v0, 0x4

    if-eq p0, v0, :cond_27

    .line 174
    sget-object v0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSystemSupportDefer: TAPS2_MODE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_2a

    :cond_27
    const/4 p0, 0x0

    return p0

    :cond_29
    return v0

    .line 178
    :cond_2a
    :goto_2a
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportDeferSystem:Z

    return p0
.end method

.method private isTargetCapture(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)Z
    .registers 4

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mStorageManagerProxy:Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->isNeedASDShot2ShotSkipPolicy()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    .line 93
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->isCustomZoneTargetCapture(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->isISPHIDLTargetCapture(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_15
    return v1

    .line 96
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mStorageManagerProxy:Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->isNeedMuSlimeBodyShot2ShotSkipPolicy()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p1}, Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;->getSlimBodyMode()I

    move-result v0

    if-lez v0, :cond_25

    return v1

    .line 99
    :cond_25
    iget-object p0, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mStorageManagerProxy:Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->isNeedPortraitModeEnhanceShot2ShotSkipPolicy()Z

    move-result p0

    if-eqz p0, :cond_3a

    const-string p0, "off"

    .line 100
    invoke-interface {p1}, Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;->getPortraitModeEnhanceMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3a

    return v1

    .line 103
    :cond_3a
    sget-object p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isTargetCapture: is not target, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public declared-synchronized decreaseCount(JLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
    .registers 5

    monitor-enter p0

    .line 73
    :try_start_1
    invoke-direct {p0, p3}, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->isTargetCapture(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)Z

    move-result p3

    if-eqz p3, :cond_5d

    .line 74
    iget-object p3, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mCurrentMinCount:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 75
    iget-object p3, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mCurrentMaxCount:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 76
    iget-object p3, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mCurrentProcessingCount:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 77
    sget-object p1, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "decreaseCount: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mCurrentMaxCount:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mCurrentMinCount:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mCurrentProcessingCount:Ljava/util/Set;

    .line 78
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 77
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_1 .. :try_end_5a} :catchall_5b

    goto :goto_5d

    :catchall_5b
    move-exception p1

    goto :goto_5f

    .line 80
    :cond_5d
    :goto_5d
    monitor-exit p0

    return-void

    :goto_5f
    :try_start_5f
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5b

    throw p1
.end method

.method public declared-synchronized increaseCount(JLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
    .registers 6

    monitor-enter p0

    .line 58
    :try_start_1
    invoke-direct {p0, p3}, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->isTargetCapture(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)Z

    move-result p3

    if-eqz p3, :cond_5d

    .line 59
    iget-object p3, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mCurrentMinCount:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object p3, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mCurrentMaxCount:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object p3, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mCurrentProcessingCount:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object p1, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "increaseCount: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mCurrentMaxCount:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mCurrentMinCount:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mCurrentProcessingCount:Ljava/util/Set;

    .line 63
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 62
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_5d

    :catchall_5b
    move-exception p1

    goto :goto_73

    .line 65
    :cond_5d
    :goto_5d
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mIsSystemSupportDefer:Z

    if-eqz p1, :cond_71

    .line 66
    iget-object p1, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mWorkHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mResetCountTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 67
    iget-object p1, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mWorkHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mResetCountTask:Ljava/lang/Runnable;

    iget-wide v0, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mResetDelayMillis:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_71
    .catchall {:try_start_1 .. :try_end_71} :catchall_5b

    .line 69
    :cond_71
    monitor-exit p0

    return-void

    :goto_73
    :try_start_73
    monitor-exit p0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_5b

    throw p1
.end method

.method public declared-synchronized isCaptureFull(I)Z
    .registers 6

    monitor-enter p0

    .line 131
    :try_start_1
    invoke-static {p1}, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;->isInvalidPlatform(I)Z

    move-result p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_30

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 132
    monitor-exit p0

    return v0

    .line 134
    :cond_a
    :try_start_a
    iget-object p1, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mCurrentMinCount:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    iget-object v1, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mBackgroundSkipPolicySpecs:Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;

    iget v2, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mMemIndex:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;->getMaxCount(IZ)I

    move-result v1
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_30

    if-ge p1, v1, :cond_1d

    .line 135
    monitor-exit p0

    return v0

    .line 137
    :cond_1d
    :try_start_1d
    iget-object p1, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mCurrentCount:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    iget-object v1, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mBackgroundSkipPolicySpecs:Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;

    iget v2, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mMemIndex:I

    invoke-virtual {v1, v2, v0}, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;->getMaxCount(IZ)I

    move-result v1
    :try_end_2b
    .catchall {:try_start_1d .. :try_end_2b} :catchall_30

    if-lt p1, v1, :cond_2e

    move v0, v3

    :cond_2e
    monitor-exit p0

    return v0

    :catchall_30
    move-exception p1

    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public onCaptureCustomDefer(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
    .registers 5

    .line 148
    invoke-interface {p1}, Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;->isSupportLowQualityMode()Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-interface {p1}, Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;->isSupportHighQualityMode()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 149
    sget-object v0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureCustomDefer: isSupport() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mStorageManagerProxy:Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->isSupport()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 150
    invoke-interface {p1}, Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->decreaseCount(JLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    :cond_2f
    return-void
.end method

.method public onHighQualityCaptureCompleted([BJ)V
    .registers 5

    .line 156
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mIsSystemSupportDefer:Z

    if-nez v0, :cond_13

    if-eqz p1, :cond_9

    .line 157
    array-length p1, p1

    if-nez p1, :cond_10

    .line 158
    :cond_9
    sget-object p1, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onHighQualityCaptureCompleted: jpeg is null"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 160
    :cond_10
    invoke-direct {p0, p2, p3}, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->decreaseCount(J)V

    :cond_13
    return-void
.end method

.method public onModeOpened(Ljava/lang/String;)V
    .registers 5

    .line 142
    sget-object v0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onModeOpened: modeKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 143
    iget-object p0, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mCurrentMinCount:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public declared-synchronized resetCount()V
    .registers 3

    monitor-enter p0

    .line 123
    :try_start_1
    sget-object v0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "resetCount: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mCurrentMaxCount:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mCurrentMinCount:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 126
    iget-object v0, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundShot2ShotSkipPolicy;->mCurrentProcessingCount:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 127
    monitor-exit p0

    return-void

    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method
