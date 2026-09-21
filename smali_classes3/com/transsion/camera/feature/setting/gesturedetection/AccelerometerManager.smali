.class public Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager$MySensorEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static volatile sInstance:Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;

.field private static sIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private mIsSensorListenerRegistered:Z

.field private final mLock:Ljava/lang/Object;

.field private mSensorEventListener:Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager$MySensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLock(Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 16
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AccelerometerManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->sIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->mIsSensorListenerRegistered:Z

    return-void
.end method

.method public static getDegree()I
    .registers 1

    .line 228
    invoke-static {}, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->getDir()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5a

    return v0
.end method

.method public static getDegree(Z)I
    .registers 1

    .line 221
    invoke-static {p0}, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->getDir(Z)I

    move-result p0

    mul-int/lit8 p0, p0, 0x5a

    return p0
.end method

.method public static getDir()I
    .registers 1

    const/4 v0, 0x0

    .line 245
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->getDir(Z)I

    move-result v0

    return v0
.end method

.method public static getDir(Z)I
    .registers 2

    .line 236
    invoke-static {}, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->getInstance()Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->getDirection(Z)I

    move-result p0

    return p0
.end method

.method private getDirection(Z)I
    .registers 4

    .line 256
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->mSensorEventListener:Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager$MySensorEventListener;

    if-eqz v0, :cond_1b

    .line 257
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_7
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->mSensorEventListener:Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager$MySensorEventListener;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager$MySensorEventListener;->-$$Nest$fgetdir(Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager$MySensorEventListener;)I

    move-result p0

    if-eqz p1, :cond_16

    and-int/lit8 p1, p0, 0x1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_16

    xor-int/lit8 p0, p0, 0x2

    .line 263
    :cond_16
    monitor-exit v0

    return p0

    :catchall_18
    move-exception p0

    .line 264
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0

    :cond_1b
    const/4 p0, -0x1

    return p0
.end method

.method private static getFaceOrientation(I)Lcom/tetras/util/HandOrientation;
    .registers 2

    if-eqz p0, :cond_17

    const/4 v0, 0x1

    if-eq p0, v0, :cond_14

    const/4 v0, 0x2

    if-eq p0, v0, :cond_11

    const/4 v0, 0x3

    if-eq p0, v0, :cond_e

    .line 184
    sget-object p0, Lcom/tetras/util/HandOrientation;->UP:Lcom/tetras/util/HandOrientation;

    return-object p0

    .line 182
    :cond_e
    sget-object p0, Lcom/tetras/util/HandOrientation;->RIGHT:Lcom/tetras/util/HandOrientation;

    return-object p0

    .line 180
    :cond_11
    sget-object p0, Lcom/tetras/util/HandOrientation;->DOWN:Lcom/tetras/util/HandOrientation;

    return-object p0

    .line 178
    :cond_14
    sget-object p0, Lcom/tetras/util/HandOrientation;->LEFT:Lcom/tetras/util/HandOrientation;

    return-object p0

    .line 176
    :cond_17
    sget-object p0, Lcom/tetras/util/HandOrientation;->UP:Lcom/tetras/util/HandOrientation;

    return-object p0
.end method

.method public static getFaceOrientation(ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Lcom/tetras/util/HandOrientation;
    .registers 3

    .line 159
    invoke-static {p0}, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->getDir(Z)I

    move-result p0

    if-eqz p1, :cond_1c

    .line 161
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->screenFlip()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 162
    invoke-static {p0}, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->getFaceOrientationInverse(I)Lcom/tetras/util/HandOrientation;

    move-result-object p0

    return-object p0

    .line 163
    :cond_11
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->screenPocket()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 164
    invoke-static {p0}, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->getFaceOrientationScreenPocket(I)Lcom/tetras/util/HandOrientation;

    move-result-object p0

    return-object p0

    .line 167
    :cond_1c
    invoke-static {p0}, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->getFaceOrientation(I)Lcom/tetras/util/HandOrientation;

    move-result-object p0

    return-object p0
.end method

.method private static getFaceOrientationInverse(I)Lcom/tetras/util/HandOrientation;
    .registers 2

    if-eqz p0, :cond_17

    const/4 v0, 0x1

    if-eq p0, v0, :cond_14

    const/4 v0, 0x2

    if-eq p0, v0, :cond_11

    const/4 v0, 0x3

    if-eq p0, v0, :cond_e

    .line 199
    sget-object p0, Lcom/tetras/util/HandOrientation;->DOWN:Lcom/tetras/util/HandOrientation;

    return-object p0

    .line 197
    :cond_e
    sget-object p0, Lcom/tetras/util/HandOrientation;->LEFT:Lcom/tetras/util/HandOrientation;

    return-object p0

    .line 195
    :cond_11
    sget-object p0, Lcom/tetras/util/HandOrientation;->UP:Lcom/tetras/util/HandOrientation;

    return-object p0

    .line 193
    :cond_14
    sget-object p0, Lcom/tetras/util/HandOrientation;->RIGHT:Lcom/tetras/util/HandOrientation;

    return-object p0

    .line 191
    :cond_17
    sget-object p0, Lcom/tetras/util/HandOrientation;->DOWN:Lcom/tetras/util/HandOrientation;

    return-object p0
.end method

.method private static getFaceOrientationScreenPocket(I)Lcom/tetras/util/HandOrientation;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_12

    const/4 v0, 0x2

    if-eq p0, v0, :cond_f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_c

    .line 213
    sget-object p0, Lcom/tetras/util/HandOrientation;->DOWN:Lcom/tetras/util/HandOrientation;

    return-object p0

    .line 210
    :cond_c
    sget-object p0, Lcom/tetras/util/HandOrientation;->RIGHT:Lcom/tetras/util/HandOrientation;

    return-object p0

    .line 208
    :cond_f
    sget-object p0, Lcom/tetras/util/HandOrientation;->UP:Lcom/tetras/util/HandOrientation;

    return-object p0

    .line 206
    :cond_12
    sget-object p0, Lcom/tetras/util/HandOrientation;->LEFT:Lcom/tetras/util/HandOrientation;

    return-object p0
.end method

.method public static getInstance()Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;
    .registers 2

    .line 29
    const-class v0, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;

    monitor-enter v0

    .line 30
    :try_start_3
    sget-object v1, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->sInstance:Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;

    if-nez v1, :cond_11

    .line 31
    new-instance v1, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;

    invoke-direct {v1}, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->sInstance:Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;

    goto :goto_11

    :catchall_f
    move-exception v1

    goto :goto_15

    .line 33
    :cond_11
    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_f

    .line 34
    sget-object v0, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->sInstance:Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;

    return-object v0

    .line 33
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

    .line 58
    :try_start_3
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->mIsSensorListenerRegistered:Z

    if-nez v0, :cond_61

    .line 59
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x1

    if-eqz p1, :cond_5c

    .line 61
    new-instance p1, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager$MySensorEventListener;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager$MySensorEventListener;-><init>(Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->mSensorEventListener:Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager$MySensorEventListener;

    .line 62
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    const/4 v1, 0x2

    if-eqz p1, :cond_2f

    .line 64
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->mSensorEventListener:Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager$MySensorEventListener;

    invoke-virtual {v2, v3, p1, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_2f

    :catchall_2d
    move-exception p1

    goto :goto_5f

    .line 66
    :cond_2f
    :goto_2f
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    if-eqz v2, :cond_3e

    .line 68
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->mSensorEventListener:Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager$MySensorEventListener;

    invoke-virtual {v3, v4, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 70
    :cond_3e
    sget-object v1, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 72
    :cond_5c
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->mIsSensorListenerRegistered:Z

    goto :goto_61

    .line 58
    :goto_5f
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_3 .. :try_end_60} :catchall_2d

    throw p1

    .line 74
    :cond_61
    :goto_61
    monitor-exit p0

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .registers 2

    .line 41
    sget-object v0, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->sIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_15

    .line 42
    invoke-static {}, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->getInstance()Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->registerSensorListeners(Landroid/content/Context;)V

    .line 43
    sget-object p0, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->sIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_15
    return-void
.end method

.method public static stop(Landroid/content/Context;)V
    .registers 2

    .line 51
    sget-object v0, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->sIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 52
    invoke-static {}, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->getInstance()Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->unRegisterSensorListeners(Landroid/content/Context;)V

    .line 53
    sget-object p0, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->sIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_15
    return-void
.end method

.method private declared-synchronized unRegisterSensorListeners(Landroid/content/Context;)V
    .registers 3

    monitor-enter p0

    if-eqz p1, :cond_17

    .line 78
    :try_start_3
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->mIsSensorListenerRegistered:Z

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_17

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->mSensorEventListener:Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager$MySensorEventListener;

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 p1, 0x0

    .line 80
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->mIsSensorListenerRegistered:Z

    goto :goto_17

    :catchall_14
    move-exception p1

    .line 78
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1

    .line 83
    :cond_17
    :goto_17
    monitor-exit p0

    return-void
.end method
