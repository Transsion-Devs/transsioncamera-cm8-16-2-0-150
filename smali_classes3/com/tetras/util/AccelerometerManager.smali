.class public Lcom/tetras/util/AccelerometerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tetras/util/AccelerometerManager$AccelerometerSensorListener;
    }
.end annotation


# static fields
.field private static instance:Lcom/tetras/util/AccelerometerManager;


# instance fields
.field private mAccListener:Lcom/tetras/util/AccelerometerManager$AccelerometerSensorListener;

.field private mHasStarted:Z

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/tetras/util/AccelerometerManager;->mHasStarted:Z

    return-void
.end method

.method public static getDegree()I
    .registers 1

    .line 77
    invoke-static {}, Lcom/tetras/util/AccelerometerManager;->getDir()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5a

    return v0
.end method

.method public static getDegree(Z)I
    .registers 1

    .line 70
    invoke-static {p0}, Lcom/tetras/util/AccelerometerManager;->getDir(Z)I

    move-result p0

    mul-int/lit8 p0, p0, 0x5a

    return p0
.end method

.method public static getDir()I
    .registers 1

    const/4 v0, 0x0

    .line 93
    invoke-static {v0}, Lcom/tetras/util/AccelerometerManager;->getDir(Z)I

    move-result v0

    return v0
.end method

.method public static getDir(Z)I
    .registers 2

    .line 85
    invoke-static {}, Lcom/tetras/util/AccelerometerManager;->getInstance()Lcom/tetras/util/AccelerometerManager;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/tetras/util/AccelerometerManager;->getDirection(Z)I

    move-result p0

    return p0
.end method

.method private getDirection(Z)I
    .registers 3

    .line 104
    iget-object p0, p0, Lcom/tetras/util/AccelerometerManager;->mAccListener:Lcom/tetras/util/AccelerometerManager$AccelerometerSensorListener;

    if-eqz p0, :cond_12

    .line 105
    # getter for: Lcom/tetras/util/AccelerometerManager$AccelerometerSensorListener;->dir:I
    invoke-static {p0}, Lcom/tetras/util/AccelerometerManager$AccelerometerSensorListener;->access$000(Lcom/tetras/util/AccelerometerManager$AccelerometerSensorListener;)I

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

.method public static getFaceOrientation(I)Lcom/tetras/util/HandOrientation;
    .registers 2

    if-eqz p0, :cond_17

    const/4 v0, 0x1

    if-eq p0, v0, :cond_14

    const/4 v0, 0x2

    if-eq p0, v0, :cond_11

    const/4 v0, 0x3

    if-eq p0, v0, :cond_e

    .line 62
    sget-object p0, Lcom/tetras/util/HandOrientation;->UP:Lcom/tetras/util/HandOrientation;

    return-object p0

    .line 60
    :cond_e
    sget-object p0, Lcom/tetras/util/HandOrientation;->RIGHT:Lcom/tetras/util/HandOrientation;

    return-object p0

    .line 58
    :cond_11
    sget-object p0, Lcom/tetras/util/HandOrientation;->DOWN:Lcom/tetras/util/HandOrientation;

    return-object p0

    .line 56
    :cond_14
    sget-object p0, Lcom/tetras/util/HandOrientation;->LEFT:Lcom/tetras/util/HandOrientation;

    return-object p0

    .line 54
    :cond_17
    sget-object p0, Lcom/tetras/util/HandOrientation;->UP:Lcom/tetras/util/HandOrientation;

    return-object p0
.end method

.method public static getFaceOrientation(Z)Lcom/tetras/util/HandOrientation;
    .registers 1

    .line 44
    invoke-static {p0}, Lcom/tetras/util/AccelerometerManager;->getDir(Z)I

    move-result p0

    .line 45
    invoke-static {p0}, Lcom/tetras/util/AccelerometerManager;->getFaceOrientation(I)Lcom/tetras/util/HandOrientation;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/tetras/util/AccelerometerManager;
    .registers 1

    .line 20
    sget-object v0, Lcom/tetras/util/AccelerometerManager;->instance:Lcom/tetras/util/AccelerometerManager;

    if-nez v0, :cond_b

    .line 21
    new-instance v0, Lcom/tetras/util/AccelerometerManager;

    invoke-direct {v0}, Lcom/tetras/util/AccelerometerManager;-><init>()V

    sput-object v0, Lcom/tetras/util/AccelerometerManager;->instance:Lcom/tetras/util/AccelerometerManager;

    .line 23
    :cond_b
    sget-object v0, Lcom/tetras/util/AccelerometerManager;->instance:Lcom/tetras/util/AccelerometerManager;

    return-object v0
.end method

.method private registerListener(Landroid/content/Context;)V
    .registers 4

    .line 119
    iget-boolean v0, p0, Lcom/tetras/util/AccelerometerManager;->mHasStarted:Z

    if-eqz v0, :cond_5

    goto :goto_2a

    :cond_5
    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lcom/tetras/util/AccelerometerManager;->mHasStarted:Z

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "sensor"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/tetras/util/AccelerometerManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 124
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 126
    new-instance v0, Lcom/tetras/util/AccelerometerManager$AccelerometerSensorListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tetras/util/AccelerometerManager$AccelerometerSensorListener;-><init>(Lcom/tetras/util/AccelerometerManager;Lcom/tetras/util/AccelerometerManager$1;)V

    iput-object v0, p0, Lcom/tetras/util/AccelerometerManager;->mAccListener:Lcom/tetras/util/AccelerometerManager$AccelerometerSensorListener;

    .line 127
    iget-object p0, p0, Lcom/tetras/util/AccelerometerManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, p1, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_2a
    :goto_2a
    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .registers 2

    .line 30
    invoke-static {}, Lcom/tetras/util/AccelerometerManager;->getInstance()Lcom/tetras/util/AccelerometerManager;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/tetras/util/AccelerometerManager;->registerListener(Landroid/content/Context;)V

    return-void
.end method

.method public static stop()V
    .registers 1

    .line 37
    invoke-static {}, Lcom/tetras/util/AccelerometerManager;->getInstance()Lcom/tetras/util/AccelerometerManager;

    move-result-object v0

    invoke-direct {v0}, Lcom/tetras/util/AccelerometerManager;->unregisterListener()V

    return-void
.end method

.method private unregisterListener()V
    .registers 3

    .line 135
    iget-boolean v0, p0, Lcom/tetras/util/AccelerometerManager;->mHasStarted:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tetras/util/AccelerometerManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_9

    goto :goto_11

    :cond_9
    const/4 v1, 0x0

    .line 138
    iput-boolean v1, p0, Lcom/tetras/util/AccelerometerManager;->mHasStarted:Z

    .line 139
    iget-object p0, p0, Lcom/tetras/util/AccelerometerManager;->mAccListener:Lcom/tetras/util/AccelerometerManager$AccelerometerSensorListener;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_11
    :goto_11
    return-void
.end method
