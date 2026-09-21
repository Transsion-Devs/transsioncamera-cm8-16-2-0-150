.class public Lcom/effectsar/labcv/effectsdk/SensorHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/effectsar/labcv/effectsdk/SensorHelper$ISensorListener;,
        Lcom/effectsar/labcv/effectsdk/SensorHelper$Accelerometer;,
        Lcom/effectsar/labcv/effectsdk/SensorHelper$GravityListener;,
        Lcom/effectsar/labcv/effectsdk/SensorHelper$GyroscopeListener;,
        Lcom/effectsar/labcv/effectsdk/SensorHelper$AcceleratorListener;,
        Lcom/effectsar/labcv/effectsdk/SensorHelper$RotationSensorListener;
    }
.end annotation


# static fields
.field private static final BEF_REQUIREMENT_SKY_SEG:I = 0x4000

.field private static final RENDER_MSG_EVENT_DID_SWITCH_EFFECT:I = 0x6

.field private static final RENDER_MSG_TYPE_EFFECT:I = 0x14

.field private static final TAG:Ljava/lang/String; = "SensorHelper"


# instance fields
.field private acceleratorListener:Lcom/effectsar/labcv/effectsdk/SensorHelper$AcceleratorListener;

.field private acceleratorSeneor:Landroid/hardware/Sensor;

.field private gravityListener:Lcom/effectsar/labcv/effectsdk/SensorHelper$GravityListener;

.field private gravitySensor:Landroid/hardware/Sensor;

.field private gyroscopeListener:Lcom/effectsar/labcv/effectsdk/SensorHelper$GyroscopeListener;

.field private gyroscopeSensor:Landroid/hardware/Sensor;

.field private mAccelerometer:Lcom/effectsar/labcv/effectsdk/SensorHelper$Accelerometer;

.field private mListener:Lcom/effectsar/labcv/effectsdk/SensorHelper$ISensorListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private rotationSensor:Landroid/hardware/Sensor;

.field private rotationSensorListener:Lcom/effectsar/labcv/effectsdk/SensorHelper$RotationSensorListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/effectsar/labcv/effectsdk/SensorHelper$ISensorListener;)V
    .registers 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper;->mListener:Lcom/effectsar/labcv/effectsdk/SensorHelper$ISensorListener;

    .line 37
    const-string p2, "sensor"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/SensorManager;

    iput-object p2, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x4

    .line 39
    invoke-virtual {p2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p2

    iput-object p2, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper;->gyroscopeSensor:Landroid/hardware/Sensor;

    .line 40
    iget-object p2, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p2

    iput-object p2, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper;->acceleratorSeneor:Landroid/hardware/Sensor;

    .line 41
    iget-object p2, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v0, 0x9

    invoke-virtual {p2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p2

    iput-object p2, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper;->gravitySensor:Landroid/hardware/Sensor;

    .line 42
    iget-object p2, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v0, 0xf

    invoke-virtual {p2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p2

    iput-object p2, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper;->rotationSensor:Landroid/hardware/Sensor;

    if-nez p2, :cond_3f

    .line 48
    iget-object p2, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p2

    iput-object p2, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper;->rotationSensor:Landroid/hardware/Sensor;

    .line 50
    :cond_3f
    new-instance p2, Lcom/effectsar/labcv/effectsdk/SensorHelper$RotationSensorListener;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/effectsar/labcv/effectsdk/SensorHelper$RotationSensorListener;-><init>(Lcom/effectsar/labcv/effectsdk/SensorHelper;Lcom/effectsar/labcv/effectsdk/SensorHelper$1;)V

    iput-object p2, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper;->rotationSensorListener:Lcom/effectsar/labcv/effectsdk/SensorHelper$RotationSensorListener;

    .line 51
    new-instance p2, Lcom/effectsar/labcv/effectsdk/SensorHelper$AcceleratorListener;

    invoke-direct {p2, p0, v0}, Lcom/effectsar/labcv/effectsdk/SensorHelper$AcceleratorListener;-><init>(Lcom/effectsar/labcv/effectsdk/SensorHelper;Lcom/effectsar/labcv/effectsdk/SensorHelper$1;)V

    iput-object p2, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper;->acceleratorListener:Lcom/effectsar/labcv/effectsdk/SensorHelper$AcceleratorListener;

    .line 52
    new-instance p2, Lcom/effectsar/labcv/effectsdk/SensorHelper$GyroscopeListener;

    invoke-direct {p2, p0, v0}, Lcom/effectsar/labcv/effectsdk/SensorHelper$GyroscopeListener;-><init>(Lcom/effectsar/labcv/effectsdk/SensorHelper;Lcom/effectsar/labcv/effectsdk/SensorHelper$1;)V

    iput-object p2, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper;->gyroscopeListener:Lcom/effectsar/labcv/effectsdk/SensorHelper$GyroscopeListener;

    .line 53
    new-instance p2, Lcom/effectsar/labcv/effectsdk/SensorHelper$GravityListener;

    invoke-direct {p2, p0, v0}, Lcom/effectsar/labcv/effectsdk/SensorHelper$GravityListener;-><init>(Lcom/effectsar/labcv/effectsdk/SensorHelper;Lcom/effectsar/labcv/effectsdk/SensorHelper$1;)V

    iput-object p2, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper;->gravityListener:Lcom/effectsar/labcv/effectsdk/SensorHelper$GravityListener;

    .line 54
    new-instance p2, Lcom/effectsar/labcv/effectsdk/SensorHelper$Accelerometer;

    invoke-direct {p2, p0, p1}, Lcom/effectsar/labcv/effectsdk/SensorHelper$Accelerometer;-><init>(Lcom/effectsar/labcv/effectsdk/SensorHelper;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper;->mAccelerometer:Lcom/effectsar/labcv/effectsdk/SensorHelper$Accelerometer;

    return-void
.end method

.method static synthetic access$400(Lcom/effectsar/labcv/effectsdk/SensorHelper;)Lcom/effectsar/labcv/effectsdk/SensorHelper$ISensorListener;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper;->mListener:Lcom/effectsar/labcv/effectsdk/SensorHelper$ISensorListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/effectsar/labcv/effectsdk/SensorHelper;Landroid/hardware/SensorEvent;)D
    .registers 2

    .line 13
    invoke-direct {p0, p1}, Lcom/effectsar/labcv/effectsdk/SensorHelper;->getTimestamp(Landroid/hardware/SensorEvent;)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$600(Lcom/effectsar/labcv/effectsdk/SensorHelper;)Landroid/hardware/SensorManager;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method private getTimestamp(Landroid/hardware/SensorEvent;)D
    .registers 8

    .line 229
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 230
    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 231
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    iget-wide p0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    sub-long/2addr v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    .line 232
    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    sub-long/2addr v0, p0

    long-to-double p0, v0

    return-wide p0
.end method


# virtual methods
.method public registerSensor()V
    .registers 8

    .line 58
    iget-object v0, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper;->mListener:Lcom/effectsar/labcv/effectsdk/SensorHelper$ISensorListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 59
    iget-object v2, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper;->acceleratorSeneor:Landroid/hardware/Sensor;

    const/4 v3, 0x1

    if-eqz v2, :cond_c

    move v2, v3

    goto :goto_d

    :cond_c
    move v2, v1

    :goto_d
    iget-object v4, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper;->gyroscopeSensor:Landroid/hardware/Sensor;

    if-eqz v4, :cond_13

    move v4, v3

    goto :goto_14

    :cond_13
    move v4, v1

    :goto_14
    iget-object v5, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper;->gravitySensor:Landroid/hardware/Sensor;

    if-eqz v5, :cond_1a

    move v5, v3

    goto :goto_1b

    :cond_1a
    move v5, v1

    :goto_1b
    iget-object v6, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper;->rotationSensor:Landroid/hardware/Sensor;

    if-eqz v6, :cond_20

    goto :goto_21

    :cond_20
    move v3, v1

    :goto_21
    invoke-interface {v0, v2, v4, v5, v3}, Lcom/effectsar/labcv/effectsdk/SensorHelper$ISensorListener;->deviceConfig(ZZZZ)V

    .line 61
    :cond_24
    iget-object v0, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper;->rotationSensorListener:Lcom/effectsar/labcv/effectsdk/SensorHelper$RotationSensorListener;

    iget-object v3, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper;->rotationSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v2, v3, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 62
    iget-object v0, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper;->acceleratorListener:Lcom/effectsar/labcv/effectsdk/SensorHelper$AcceleratorListener;

    iget-object v3, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper;->acceleratorSeneor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v2, v3, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 63
    iget-object v0, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper;->gyroscopeListener:Lcom/effectsar/labcv/effectsdk/SensorHelper$GyroscopeListener;

    iget-object v3, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper;->gyroscopeSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v2, v3, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 64
    iget-object v0, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper;->gravityListener:Lcom/effectsar/labcv/effectsdk/SensorHelper$GravityListener;

    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper;->gravitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v2, p0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method public unRegisterSensor()V
    .registers 3

    .line 68
    iget-object v0, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper;->rotationSensorListener:Lcom/effectsar/labcv/effectsdk/SensorHelper$RotationSensorListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 69
    iget-object v0, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper;->acceleratorListener:Lcom/effectsar/labcv/effectsdk/SensorHelper$AcceleratorListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 70
    iget-object v0, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper;->gyroscopeListener:Lcom/effectsar/labcv/effectsdk/SensorHelper$GyroscopeListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 71
    iget-object v0, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper;->gravityListener:Lcom/effectsar/labcv/effectsdk/SensorHelper$GravityListener;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method
