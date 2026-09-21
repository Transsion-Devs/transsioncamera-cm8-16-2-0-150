.class public Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private mAccelerometer:Landroid/hardware/Sensor;

.field private mAzimuth:F

.field private mGeomagnetic:[F

.field private mGravity:[F

.field private mIsRegisSensorMsg:Z

.field private mMagnetometer:Landroid/hardware/Sensor;

.field private mOrientation:Landroid/hardware/Sensor;

.field private mOrientationVector:Landroid/hardware/Sensor;

.field private mOrientationVectorValues:[F

.field private mPitch:F

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->mIsRegisSensorMsg:Z

    return-void
.end method

.method private normalizeDegree(F)F
    .registers 2

    const/high16 p0, 0x43b40000    # 360.0f

    add-float/2addr p1, p0

    rem-float/2addr p1, p0

    return p1
.end method

.method private registerListener()V
    .registers 4

    .line 45
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->mAccelerometer:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 46
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->mMagnetometer:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 47
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->mOrientation:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 48
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->mOrientationVector:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method


# virtual methods
.method public getAzimuth()F
    .registers 1

    .line 113
    iget p0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->mAzimuth:F

    return p0
.end method

.method public getPitch()F
    .registers 3

    .line 117
    iget p0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->mPitch:F

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public declared-synchronized initSensorMag(Landroid/content/Context;)V
    .registers 4

    monitor-enter p0

    .line 28
    :try_start_1
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x1

    .line 29
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->mAccelerometer:Landroid/hardware/Sensor;

    .line 30
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->mMagnetometer:Landroid/hardware/Sensor;

    .line 31
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->mOrientation:Landroid/hardware/Sensor;

    .line 32
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->mOrientationVector:Landroid/hardware/Sensor;

    .line 33
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->registerListener()V

    .line 34
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->mIsRegisSensorMsg:Z
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    .line 35
    monitor-exit p0

    return-void

    :catchall_35
    move-exception p1

    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw p1
.end method

.method public declared-synchronized isRegisSensorMsg()Z
    .registers 2

    monitor-enter p0

    .line 52
    :try_start_1
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->mIsRegisSensorMsg:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 10

    .line 57
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    .line 58
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->mGravity:[F

    goto :goto_3c

    .line 59
    :cond_15
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v1, :cond_28

    .line 60
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->mGeomagnetic:[F

    goto :goto_3c

    .line 61
    :cond_28
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v3, 0xb

    if-ne v0, v3, :cond_3c

    .line 62
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->mOrientationVectorValues:[F

    .line 65
    :cond_3c
    :goto_3c
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->mGravity:[F

    if-eqz p1, :cond_de

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->mGeomagnetic:[F

    if-eqz v0, :cond_de

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->mOrientationVectorValues:[F

    if-eqz v3, :cond_de

    const/16 v3, 0x9

    .line 66
    new-array v4, v3, [F

    .line 67
    new-array v5, v3, [F

    .line 68
    invoke-static {v4, v5, p1, v0}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result p1

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->mGravity:[F

    aget v0, v0, v1

    iput v0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->mPitch:F

    if-eqz p1, :cond_de

    .line 72
    new-instance p1, Lcom/transsion/camera/feature/setting/moondetection/utils/MoonQuaternion;

    invoke-direct {p1}, Lcom/transsion/camera/feature/setting/moondetection/utils/MoonQuaternion;-><init>()V

    .line 73
    invoke-virtual {p1, v4}, Lcom/transsion/camera/feature/setting/moondetection/utils/MoonQuaternion;->setFromMatrix([F)V

    const/4 p1, 0x4

    .line 76
    new-array v0, p1, [F

    .line 77
    iget-object v5, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->mOrientationVectorValues:[F

    const/4 v6, 0x0

    invoke-static {v5, v6, v0, v6, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    new-array p1, v3, [F

    .line 81
    invoke-static {p1, v0}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    const/4 p1, 0x3

    .line 84
    new-array p1, p1, [F

    .line 85
    invoke-static {v4, p1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 87
    aget v0, p1, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v0, v2

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->normalizeDegree(F)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->mAzimuth:F

    .line 88
    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getCameraOrientation()I

    move-result v0

    const/16 v2, 0x5a

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v4, 0x43b40000    # 360.0f

    const/high16 v5, 0x43870000    # 270.0f

    if-eq v0, v2, :cond_a9

    const/16 v2, 0x10e

    if-eq v0, v2, :cond_97

    goto :goto_b9

    .line 93
    :cond_97
    aget p1, p1, v1

    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float p1, v6

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->normalizeDegree(F)F

    move-result p1

    sub-float/2addr p1, v5

    sub-float p1, v5, p1

    iput p1, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->mAzimuth:F

    goto :goto_b9

    .line 90
    :cond_a9
    aget p1, p1, v1

    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float p1, v6

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->normalizeDegree(F)F

    move-result p1

    add-float/2addr p1, v3

    rem-float/2addr p1, v4

    iput p1, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->mAzimuth:F

    .line 100
    :goto_b9
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->mGravity:[F

    aget p1, p1, v1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_de

    .line 101
    iget p1, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->mAzimuth:F

    const/high16 v0, 0x43820000    # 260.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_cf

    sub-float/2addr p1, v5

    sub-float/2addr v5, p1

    .line 102
    iput v5, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->mAzimuth:F

    goto :goto_d6

    :cond_cf
    const/high16 v0, 0x42b40000    # 90.0f

    sub-float p1, v0, p1

    add-float/2addr p1, v0

    .line 104
    iput p1, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->mAzimuth:F

    .line 106
    :goto_d6
    iget p1, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->mAzimuth:F

    sub-float/2addr p1, v3

    sub-float p1, v4, p1

    rem-float/2addr p1, v4

    iput p1, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->mAzimuth:F

    :cond_de
    return-void
.end method

.method public declared-synchronized unInitSensorMag()V
    .registers 3

    monitor-enter p0

    .line 38
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_12

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->mIsRegisSensorMsg:Z

    if-eqz v1, :cond_12

    .line 39
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonSensorManager;->mIsRegisSensorMsg:Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_10

    goto :goto_12

    :catchall_10
    move-exception v0

    goto :goto_14

    .line 42
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    :goto_14
    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_10

    throw v0
.end method
