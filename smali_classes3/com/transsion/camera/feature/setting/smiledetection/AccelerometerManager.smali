.class public Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager$AccelerometerSensorListener;
    }
.end annotation


# static fields
.field private static volatile sInstance:Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;

.field private static sIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private mAccListener:Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager$AccelerometerSensorListener;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;->sIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDegree()I
    .registers 1

    .line 163
    invoke-static {}, Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;->getDir()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5a

    return v0
.end method

.method public static getDegree(Z)I
    .registers 1

    .line 156
    invoke-static {p0}, Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;->getDir(Z)I

    move-result p0

    mul-int/lit8 p0, p0, 0x5a

    return p0
.end method

.method public static getDir()I
    .registers 1

    const/4 v0, 0x0

    .line 179
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;->getDir(Z)I

    move-result v0

    return v0
.end method

.method public static getDir(Z)I
    .registers 2

    .line 171
    invoke-static {}, Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;->getInstance()Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;->getDirection(Z)I

    move-result p0

    return p0
.end method

.method private getDirection(Z)I
    .registers 3

    .line 190
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;->mAccListener:Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager$AccelerometerSensorListener;

    if-eqz p0, :cond_12

    .line 191
    invoke-static {p0}, Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager$AccelerometerSensorListener;->-$$Nest$fgetdir(Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager$AccelerometerSensorListener;)I

    move-result p0

    if-eqz p1, :cond_11

    and-int/lit8 p1, p0, 0x1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    xor-int/lit8 p0, p0, 0x2

    :cond_11
    return p0

    :cond_12
    const/4 p0, -0x1

    return p0
.end method

.method public static getFaceOrientation(I)Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;
    .registers 2

    if-eqz p0, :cond_17

    const/4 v0, 0x1

    if-eq p0, v0, :cond_14

    const/4 v0, 0x2

    if-eq p0, v0, :cond_11

    const/4 v0, 0x3

    if-eq p0, v0, :cond_e

    .line 147
    sget-object p0, Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;->UNKNOWN:Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;

    return-object p0

    .line 145
    :cond_e
    sget-object p0, Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;->RIGHT:Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;

    return-object p0

    .line 143
    :cond_11
    sget-object p0, Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;->DOWN:Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;

    return-object p0

    .line 141
    :cond_14
    sget-object p0, Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;->LEFT:Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;

    return-object p0

    .line 139
    :cond_17
    sget-object p0, Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;->UP:Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;

    return-object p0
.end method

.method public static getFaceOrientation(Z)Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;
    .registers 1

    .line 129
    invoke-static {p0}, Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;->getDir(Z)I

    move-result p0

    .line 130
    invoke-static {p0}, Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;->getFaceOrientation(I)Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;
    .registers 2

    .line 26
    const-class v0, Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;

    monitor-enter v0

    .line 27
    :try_start_3
    sget-object v1, Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;->sInstance:Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;

    if-nez v1, :cond_11

    .line 28
    new-instance v1, Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;

    invoke-direct {v1}, Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;->sInstance:Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;

    goto :goto_11

    :catchall_f
    move-exception v1

    goto :goto_15

    .line 30
    :cond_11
    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_f

    .line 31
    sget-object v0, Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;->sInstance:Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;

    return-object v0

    .line 30
    :goto_15
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_f

    throw v1
.end method

.method private registerListener(Landroid/content/Context;)V
    .registers 4

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x1

    .line 59
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 61
    new-instance v0, Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager$AccelerometerSensorListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager$AccelerometerSensorListener;-><init>(Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;->mAccListener:Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager$AccelerometerSensorListener;

    .line 62
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, p1, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_23
    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .registers 2

    .line 38
    sget-object v0, Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;->sIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_15

    .line 39
    invoke-static {}, Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;->getInstance()Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;->registerListener(Landroid/content/Context;)V

    .line 40
    sget-object p0, Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;->sIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_15
    return-void
.end method

.method public static stop()V
    .registers 2

    .line 48
    sget-object v0, Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;->sIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 49
    invoke-static {}, Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;->getInstance()Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;

    move-result-object v0

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;->unregisterListener()V

    .line 50
    sget-object v0, Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;->sIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_15
    return-void
.end method

.method private unregisterListener()V
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;->mAccListener:Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager$AccelerometerSensorListener;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method
