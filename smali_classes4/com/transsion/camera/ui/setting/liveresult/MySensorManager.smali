.class public Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAccelerometerValues:[F

.field private mContext:Landroid/content/Context;

.field private mGyroValues:[F

.field private mIsSensorListenerRegistered:Z

.field private final mLock:Ljava/lang/Object;

.field private mOrientationVector:[F

.field private final mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private magnetValues:[F


# direct methods
.method static bridge synthetic -$$Nest$fgetmLock(Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAccelerometerValues(Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;[F)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mAccelerometerValues:[F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmGyroValues(Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;[F)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mGyroValues:[F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOrientationVector(Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;[F)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mOrientationVector:[F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmagnetValues(Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;[F)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->magnetValues:[F

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 171
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mIsSensorListenerRegistered:Z

    .line 172
    new-instance v0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager$1;-><init>(Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    return-void
.end method


# virtual methods
.method public declared-synchronized setContext(Landroid/content/Context;)V
    .registers 2

    monitor-enter p0

    .line 22
    :try_start_1
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mContext:Landroid/content/Context;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 23
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

.method public unInit()V
    .registers 1

    .line 164
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->unRegisterSensorListeners()V

    return-void
.end method

.method public declared-synchronized unRegisterSensorListeners()V
    .registers 3

    monitor-enter p0

    .line 56
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1e

    .line 57
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mIsSensorListenerRegistered:Z

    if-eqz v1, :cond_1e

    .line 58
    const-string v1, "sensor"

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1b

    .line 61
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_1b

    :catchall_19
    move-exception v0

    goto :goto_2c

    :cond_1b
    :goto_1b
    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mIsSensorListenerRegistered:Z

    .line 67
    :cond_1e
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_19

    const/4 v1, 0x0

    .line 68
    :try_start_22
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mAccelerometerValues:[F

    .line 69
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mGyroValues:[F

    .line 70
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_29

    .line 71
    monitor-exit p0

    return-void

    :catchall_29
    move-exception v1

    .line 70
    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    :try_start_2b
    throw v1

    :goto_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_19

    throw v0
.end method
