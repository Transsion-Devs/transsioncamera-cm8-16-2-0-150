.class public Lcom/singleblur/faceapi/utils/AccelerometerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/singleblur/faceapi/utils/AccelerometerManager$AccelerometerSensorListener;
    }
.end annotation


# static fields
.field private static instance:Lcom/singleblur/faceapi/utils/AccelerometerManager;


# instance fields
.field private mAccListener:Lcom/singleblur/faceapi/utils/AccelerometerManager$AccelerometerSensorListener;

.field private mHasStarted:Z

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/singleblur/faceapi/utils/AccelerometerManager;->mHasStarted:Z

    return-void
.end method

.method public static getDegree()I
    .registers 1

    .line 79
    invoke-static {}, Lcom/singleblur/faceapi/utils/AccelerometerManager;->getDir()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5a

    return v0
.end method

.method public static getDegree(Z)I
    .registers 1

    .line 72
    invoke-static {p0}, Lcom/singleblur/faceapi/utils/AccelerometerManager;->getDir(Z)I

    move-result p0

    mul-int/lit8 p0, p0, 0x5a

    return p0
.end method

.method public static getDir()I
    .registers 1

    const/4 v0, 0x0

    .line 96
    invoke-static {v0}, Lcom/singleblur/faceapi/utils/AccelerometerManager;->getDir(Z)I

    move-result v0

    return v0
.end method

.method public static getDir(Z)I
    .registers 2

    .line 88
    invoke-static {}, Lcom/singleblur/faceapi/utils/AccelerometerManager;->getInstance()Lcom/singleblur/faceapi/utils/AccelerometerManager;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/singleblur/faceapi/utils/AccelerometerManager;->getDirection(Z)I

    move-result p0

    return p0
.end method

.method private getDirection(Z)I
    .registers 3

    .line 108
    iget-object p0, p0, Lcom/singleblur/faceapi/utils/AccelerometerManager;->mAccListener:Lcom/singleblur/faceapi/utils/AccelerometerManager$AccelerometerSensorListener;

    if-eqz p0, :cond_12

    .line 109
    invoke-static {p0}, Lcom/singleblur/faceapi/utils/AccelerometerManager$AccelerometerSensorListener;->-$$Nest$fgetdir(Lcom/singleblur/faceapi/utils/AccelerometerManager$AccelerometerSensorListener;)I

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

.method public static getFaceOrientation(I)Lcom/singleblur/faceapi/model/FaceOrientation;
    .registers 2

    if-eqz p0, :cond_17

    const/4 v0, 0x1

    if-eq p0, v0, :cond_14

    const/4 v0, 0x2

    if-eq p0, v0, :cond_11

    const/4 v0, 0x3

    if-eq p0, v0, :cond_e

    .line 64
    sget-object p0, Lcom/singleblur/faceapi/model/FaceOrientation;->UNKNOWN:Lcom/singleblur/faceapi/model/FaceOrientation;

    return-object p0

    .line 62
    :cond_e
    sget-object p0, Lcom/singleblur/faceapi/model/FaceOrientation;->RIGHT:Lcom/singleblur/faceapi/model/FaceOrientation;

    return-object p0

    .line 60
    :cond_11
    sget-object p0, Lcom/singleblur/faceapi/model/FaceOrientation;->DOWN:Lcom/singleblur/faceapi/model/FaceOrientation;

    return-object p0

    .line 58
    :cond_14
    sget-object p0, Lcom/singleblur/faceapi/model/FaceOrientation;->LEFT:Lcom/singleblur/faceapi/model/FaceOrientation;

    return-object p0

    .line 56
    :cond_17
    sget-object p0, Lcom/singleblur/faceapi/model/FaceOrientation;->UP:Lcom/singleblur/faceapi/model/FaceOrientation;

    return-object p0
.end method

.method public static getFaceOrientation(Z)Lcom/singleblur/faceapi/model/FaceOrientation;
    .registers 1

    .line 46
    invoke-static {p0}, Lcom/singleblur/faceapi/utils/AccelerometerManager;->getDir(Z)I

    move-result p0

    .line 47
    invoke-static {p0}, Lcom/singleblur/faceapi/utils/AccelerometerManager;->getFaceOrientation(I)Lcom/singleblur/faceapi/model/FaceOrientation;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/singleblur/faceapi/utils/AccelerometerManager;
    .registers 1

    .line 22
    sget-object v0, Lcom/singleblur/faceapi/utils/AccelerometerManager;->instance:Lcom/singleblur/faceapi/utils/AccelerometerManager;

    if-nez v0, :cond_b

    .line 23
    new-instance v0, Lcom/singleblur/faceapi/utils/AccelerometerManager;

    invoke-direct {v0}, Lcom/singleblur/faceapi/utils/AccelerometerManager;-><init>()V

    sput-object v0, Lcom/singleblur/faceapi/utils/AccelerometerManager;->instance:Lcom/singleblur/faceapi/utils/AccelerometerManager;

    .line 25
    :cond_b
    sget-object v0, Lcom/singleblur/faceapi/utils/AccelerometerManager;->instance:Lcom/singleblur/faceapi/utils/AccelerometerManager;

    return-object v0
.end method

.method private registerListener(Landroid/content/Context;)V
    .registers 4

    .line 123
    iget-boolean v0, p0, Lcom/singleblur/faceapi/utils/AccelerometerManager;->mHasStarted:Z

    if-eqz v0, :cond_5

    goto :goto_2a

    :cond_5
    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lcom/singleblur/faceapi/utils/AccelerometerManager;->mHasStarted:Z

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "sensor"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/singleblur/faceapi/utils/AccelerometerManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 128
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 130
    new-instance v0, Lcom/singleblur/faceapi/utils/AccelerometerManager$AccelerometerSensorListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/singleblur/faceapi/utils/AccelerometerManager$AccelerometerSensorListener;-><init>(Lcom/singleblur/faceapi/utils/AccelerometerManager;Lcom/singleblur/faceapi/utils/AccelerometerManager-IA;)V

    iput-object v0, p0, Lcom/singleblur/faceapi/utils/AccelerometerManager;->mAccListener:Lcom/singleblur/faceapi/utils/AccelerometerManager$AccelerometerSensorListener;

    .line 131
    iget-object p0, p0, Lcom/singleblur/faceapi/utils/AccelerometerManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, p1, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_2a
    :goto_2a
    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .registers 2

    .line 32
    invoke-static {}, Lcom/singleblur/faceapi/utils/AccelerometerManager;->getInstance()Lcom/singleblur/faceapi/utils/AccelerometerManager;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/singleblur/faceapi/utils/AccelerometerManager;->registerListener(Landroid/content/Context;)V

    return-void
.end method

.method public static stop()V
    .registers 1

    .line 39
    invoke-static {}, Lcom/singleblur/faceapi/utils/AccelerometerManager;->getInstance()Lcom/singleblur/faceapi/utils/AccelerometerManager;

    move-result-object v0

    invoke-direct {v0}, Lcom/singleblur/faceapi/utils/AccelerometerManager;->unregisterListener()V

    return-void
.end method

.method private unregisterListener()V
    .registers 3

    .line 139
    iget-boolean v0, p0, Lcom/singleblur/faceapi/utils/AccelerometerManager;->mHasStarted:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/singleblur/faceapi/utils/AccelerometerManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_9

    goto :goto_11

    :cond_9
    const/4 v1, 0x0

    .line 142
    iput-boolean v1, p0, Lcom/singleblur/faceapi/utils/AccelerometerManager;->mHasStarted:Z

    .line 143
    iget-object p0, p0, Lcom/singleblur/faceapi/utils/AccelerometerManager;->mAccListener:Lcom/singleblur/faceapi/utils/AccelerometerManager$AccelerometerSensorListener;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_11
    :goto_11
    return-void
.end method
