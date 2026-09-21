.class public Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager$MySensorEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static volatile sInstance:Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;

.field private static sIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private mIsSensorListenerRegistered:Z

.field private mJitter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mLock:Ljava/lang/Object;

.field private mSensorEventListener:Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager$MySensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmJitter(Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;->mJitter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 16
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AccelerometerManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;->sIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;->mJitter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;->mLock:Ljava/lang/Object;

    .line 21
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;->mIsSensorListenerRegistered:Z

    return-void
.end method

.method public static getInstance()Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;
    .registers 2

    .line 30
    const-class v0, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;

    monitor-enter v0

    .line 31
    :try_start_3
    sget-object v1, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;->sInstance:Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;

    if-nez v1, :cond_11

    .line 32
    new-instance v1, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;

    invoke-direct {v1}, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;->sInstance:Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;

    goto :goto_11

    :catchall_f
    move-exception v1

    goto :goto_15

    .line 34
    :cond_11
    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_f

    .line 35
    sget-object v0, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;->sInstance:Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;

    return-object v0

    .line 34
    :goto_15
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_f

    throw v1
.end method

.method private declared-synchronized registerSensorListeners(Landroid/content/Context;)V
    .registers 7

    monitor-enter p0

    if-eqz p1, :cond_61

    .line 70
    :try_start_3
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;->mIsSensorListenerRegistered:Z

    if-nez v0, :cond_61

    .line 71
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x1

    if-eqz p1, :cond_5c

    .line 73
    new-instance p1, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager$MySensorEventListener;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager$MySensorEventListener;-><init>(Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;->mSensorEventListener:Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager$MySensorEventListener;

    .line 74
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    const/4 v1, 0x2

    if-eqz p1, :cond_2f

    .line 76
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;->mSensorEventListener:Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager$MySensorEventListener;

    invoke-virtual {v2, v3, p1, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_2f

    :catchall_2d
    move-exception p1

    goto :goto_5f

    .line 78
    :cond_2f
    :goto_2f
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    if-eqz v2, :cond_3e

    .line 80
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;->mSensorEventListener:Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager$MySensorEventListener;

    invoke-virtual {v3, v4, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 82
    :cond_3e
    sget-object v1, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[registerSensorListeners] gyro: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", accelerometer: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 84
    :cond_5c
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;->mIsSensorListenerRegistered:Z

    goto :goto_61

    .line 70
    :goto_5f
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_3 .. :try_end_60} :catchall_2d

    throw p1

    .line 86
    :cond_61
    :goto_61
    monitor-exit p0

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .registers 2

    .line 42
    sget-object v0, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;->sIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_15

    .line 43
    invoke-static {}, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;->getInstance()Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;->registerSensorListeners(Landroid/content/Context;)V

    .line 44
    sget-object p0, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;->sIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_15
    return-void
.end method

.method public static stop(Landroid/content/Context;)V
    .registers 2

    .line 52
    sget-object v0, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;->sIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 53
    invoke-static {}, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;->getInstance()Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;->unRegisterSensorListeners(Landroid/content/Context;)V

    .line 54
    sget-object p0, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;->sIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_15
    return-void
.end method

.method private declared-synchronized unRegisterSensorListeners(Landroid/content/Context;)V
    .registers 3

    monitor-enter p0

    if-eqz p1, :cond_17

    .line 90
    :try_start_3
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;->mIsSensorListenerRegistered:Z

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_17

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;->mSensorEventListener:Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager$MySensorEventListener;

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 p1, 0x0

    .line 92
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;->mIsSensorListenerRegistered:Z

    goto :goto_17

    :catchall_14
    move-exception p1

    .line 90
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1

    .line 95
    :cond_17
    :goto_17
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public isDeviceJitter()Z
    .registers 2

    .line 62
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;->mJitter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const/16 v0, 0x28

    if-le p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method
