.class abstract Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseBrightnessDetector"
.end annotation


# static fields
.field private static final VALID_DURATION:J = 0x4e20L


# instance fields
.field protected final mCache:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$Cache<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDetectTime:J

.field protected final mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

.field protected mLastLowLight:Z

.field final synthetic this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;


# direct methods
.method public static synthetic $r8$lambda$NQf0PzejtZje7zY6KgWJrnnfJ9I(Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;Ljava/lang/Integer;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->lambda$highLightInternal$1(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$vTxIXwpgSUxoILBggjKbXo593UM(Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;Ljava/lang/Integer;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->lambda$lowLightInternal$0(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method protected constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;ILcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)V
    .registers 4

    .line 393
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    iput-object p3, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    .line 395
    new-instance p1, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$Cache;

    invoke-direct {p1, p2}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$Cache;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->mCache:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$Cache;

    return-void
.end method

.method private synthetic lambda$highLightInternal$1(Ljava/lang/Integer;)Z
    .registers 2

    if-eqz p1, :cond_e

    .line 438
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->getLimitBv()I

    move-result p0

    if-le p1, p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$lowLightInternal$0(Ljava/lang/Integer;)Z
    .registers 2

    if-eqz p1, :cond_e

    .line 433
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->getLimitBv()I

    move-result p0

    if-gt p1, p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public declared-synchronized correctTime()V
    .registers 3

    monitor-enter p0

    .line 400
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->mDetectTime:J
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 401
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public final declared-synchronized detect(I)Z
    .registers 8

    monitor-enter p0

    .line 405
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 406
    iget-wide v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->mDetectTime:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x4e20

    cmp-long v2, v2, v4

    if-lez v2, :cond_19

    .line 407
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->reset()V

    goto :goto_19

    :catchall_17
    move-exception p1

    goto :goto_21

    .line 409
    :cond_19
    :goto_19
    iput-wide v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->mDetectTime:J

    .line 410
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->detectImpl(I)Z

    move-result p1
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_17

    monitor-exit p0

    return p1

    :goto_21
    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_17

    throw p1
.end method

.method protected abstract detectImpl(I)Z
.end method

.method protected getLimitBv()I
    .registers 4

    .line 442
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    iget v0, v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mLimitDebugBV:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    return v0

    .line 446
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->isFlashAuto()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 447
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->facingFront()Z

    move-result v0

    const/16 v1, 0x66

    if-eqz v0, :cond_2b

    .line 448
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    iget p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mAutoFrontLimitBV:I

    .line 449
    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getRam()I

    move-result v0

    if-gt v0, v1, :cond_2a

    .line 450
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAutoFrontLowMemLimitBv:I

    :cond_2a
    return p0

    .line 453
    :cond_2b
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->getCurrentCameraType()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_59

    const/4 v2, 0x2

    if-eq v0, v2, :cond_48

    .line 469
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    iget p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mAutoBackLimitBV:I

    .line 470
    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getRam()I

    move-result v0

    if-gt v0, v1, :cond_47

    .line 471
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAutoBackLowMemLimitBV:I

    :cond_47
    return p0

    .line 462
    :cond_48
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    iget p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mAutoBackWideLimitBV:I

    .line 463
    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getRam()I

    move-result v0

    if-gt v0, v1, :cond_58

    .line 464
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAutoBackWideLowMemLimitBV:I

    :cond_58
    return p0

    .line 456
    :cond_59
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    iget p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mAutoBackTeleLimitBV:I

    .line 457
    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getRam()I

    move-result v0

    if-gt v0, v1, :cond_69

    .line 458
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAutoBackTeleLowMemLimitBV:I

    :cond_69
    return p0

    .line 477
    :cond_6a
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    iget p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mLimitBV:I

    return p0
.end method

.method protected highLightInternal()Z
    .registers 3

    .line 437
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->mCache:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$Cache;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$Cache;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized lowLight()Z
    .registers 5

    monitor-enter p0

    .line 417
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 418
    iget-wide v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->mDetectTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-lez v0, :cond_20

    .line 419
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "invalid BV cache"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1e

    .line 420
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_1e
    move-exception v0

    goto :goto_24

    .line 422
    :cond_20
    :try_start_20
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->mLastLowLight:Z
    :try_end_22
    .catchall {:try_start_20 .. :try_end_22} :catchall_1e

    monitor-exit p0

    return v0

    :goto_24
    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_1e

    throw v0
.end method

.method protected lowLightInternal()Z
    .registers 3

    .line 432
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->mCache:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$Cache;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$Cache;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized reset()V
    .registers 2

    monitor-enter p0

    .line 427
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->mCache:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$Cache;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$Cache;->clear()V

    const/4 v0, 0x0

    .line 428
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->mLastLowLight:Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 429
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method
