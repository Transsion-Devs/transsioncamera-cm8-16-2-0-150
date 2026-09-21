.class public Lcom/ss/android/ttvecamera/focusmanager/Gyro;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttvecamera/focusmanager/Gyro$GyroListener;
    }
.end annotation


# static fields
.field private static final ANGLE_TOLERANCE:F = 0.5f

.field private static final NS2S:F = 1.0E-9f

.field private static final SPEED_TOLERANCE:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "Gyro"


# instance fields
.field private final mAngles:[F

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/ss/android/ttvecamera/focusmanager/Gyro$GyroListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSensor:Landroid/hardware/Sensor;

.field private final mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mTimestamp:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 22
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->mAngles:[F

    .line 24
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31
    new-instance v0, Lcom/ss/android/ttvecamera/focusmanager/Gyro$1;

    invoke-direct {v0, p0}, Lcom/ss/android/ttvecamera/focusmanager/Gyro$1;-><init>(Lcom/ss/android/ttvecamera/focusmanager/Gyro;)V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 69
    const-string v0, "Gyro"

    invoke-static {v0, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2f

    .line 71
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x4

    .line 72
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->mSensor:Landroid/hardware/Sensor;

    return-void

    :cond_2f
    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->mSensorManager:Landroid/hardware/SensorManager;

    .line 75
    iput-object p1, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->mSensor:Landroid/hardware/Sensor;

    .line 76
    const-string p0, "Gyro init failed, no context"

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/ttvecamera/focusmanager/Gyro;)F
    .registers 1

    .line 14
    iget p0, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->mTimestamp:F

    return p0
.end method

.method static synthetic access$002(Lcom/ss/android/ttvecamera/focusmanager/Gyro;F)F
    .registers 2

    .line 14
    iput p1, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->mTimestamp:F

    return p1
.end method

.method static synthetic access$100(Lcom/ss/android/ttvecamera/focusmanager/Gyro;)[F
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->mAngles:[F

    return-object p0
.end method

.method static synthetic access$200(Lcom/ss/android/ttvecamera/focusmanager/Gyro;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ss/android/ttvecamera/focusmanager/Gyro;)V
    .registers 1

    .line 14
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->clearAngle()V

    return-void
.end method

.method private clearAngle()V
    .registers 3

    .line 81
    const-string v0, "Gyro"

    const-string v1, "clearAngle"

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object p0, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->mAngles:[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p0, v0

    const/4 v0, 0x1

    .line 83
    aput v1, p0, v0

    const/4 v0, 0x2

    .line 84
    aput v1, p0, v0

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .line 122
    const-string v0, "Gyro"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 124
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->clearAngle()V

    .line 125
    iget-object v0, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1a

    .line 126
    iget-object v1, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_1a
    return-void
.end method

.method public register(Lcom/ss/android/ttvecamera/focusmanager/Gyro$GyroListener;Landroid/os/Handler;)V
    .registers 8

    .line 88
    iget-object v0, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_5

    goto :goto_d

    .line 91
    :cond_5
    iget-object v0, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :goto_d
    return-void

    .line 94
    :cond_e
    const-string v0, "register"

    const-string v1, "Gyro"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3e

    .line 98
    :try_start_23
    iget-object v0, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->mSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    invoke-virtual {v0, v2, v3, v4, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_2d} :catch_2e

    goto :goto_39

    :catch_2e
    move-exception p2

    .line 100
    const-string v0, "sensorManager register listener exception occurred."

    invoke-static {v1, v0, p2}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    iget-object p2, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 103
    :goto_39
    const-string p1, "sensorManager register listener"

    invoke-static {v1, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_3e
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->clearAngle()V

    return-void
.end method

.method public unregister(Lcom/ss/android/ttvecamera/focusmanager/Gyro$GyroListener;)V
    .registers 5

    .line 109
    iget-object v0, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_5

    return-void

    .line 112
    :cond_5
    const-string v0, "unregister"

    const-string v1, "Gyro"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 114
    iget-object p1, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_27

    .line 115
    iget-object p1, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {p1, v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 116
    const-string p1, "sensorManager unregister listener"

    invoke-static {v1, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_27
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->clearAngle()V

    return-void
.end method
