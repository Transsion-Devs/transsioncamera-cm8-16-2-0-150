.class public final Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAccelerometerValues:[F

.field private mContext:Landroid/content/Context;

.field private mGyroValues:[F

.field private mIsSensorListenerRegistered:Z

.field private final mLock:Ljava/lang/Object;

.field private mMagnetValues:[F

.field private mOrientationVector:[F

.field private final mSensorEventListener:Landroid/hardware/SensorEventListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mLock:Ljava/lang/Object;

    .line 181
    new-instance v0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager$mSensorEventListener$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager$mSensorEventListener$1;-><init>(Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method public static final synthetic access$getMLock$p(Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;)Ljava/lang/Object;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$setMAccelerometerValues$p(Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;[F)V
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mAccelerometerValues:[F

    return-void
.end method

.method public static final synthetic access$setMGyroValues$p(Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;[F)V
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mGyroValues:[F

    return-void
.end method

.method public static final synthetic access$setMMagnetValues$p(Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;[F)V
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mMagnetValues:[F

    return-void
.end method

.method public static final synthetic access$setMOrientationVector$p(Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;[F)V
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mOrientationVector:[F

    return-void
.end method


# virtual methods
.method public final declared-synchronized setContext(Landroid/content/Context;)V
    .registers 2

    monitor-enter p0

    .line 25
    :try_start_1
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mContext:Landroid/content/Context;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 26
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public final unInit()V
    .registers 1

    .line 173
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->unRegisterSensorListeners()V

    return-void
.end method

.method public final declared-synchronized unRegisterSensorListeners()V
    .registers 3

    monitor-enter p0

    .line 70
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_21

    .line 71
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mIsSensorListenerRegistered:Z

    if-eqz v1, :cond_21

    .line 72
    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.hardware.SensorManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/hardware/SensorManager;

    .line 73
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mIsSensorListenerRegistered:Z

    goto :goto_21

    :catchall_1f
    move-exception v0

    goto :goto_31

    .line 78
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_1f

    const/4 v1, 0x0

    .line 79
    :try_start_25
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mAccelerometerValues:[F

    .line 80
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mGyroValues:[F

    .line 81
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_2e

    .line 78
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_1f

    .line 82
    monitor-exit p0

    return-void

    :catchall_2e
    move-exception v1

    .line 78
    :try_start_2f
    monitor-exit v0

    throw v1

    :goto_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_1f

    throw v0
.end method
