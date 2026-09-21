.class public Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager$MySensorEventListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MySensorEventListener"
.end annotation


# instance fields
.field private gravity:[F

.field final synthetic this$0:Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager$MySensorEventListener;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x3

    .line 102
    new-array p1, p1, [F

    fill-array-data p1, :array_e

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager$MySensorEventListener;->gravity:[F

    return-void

    :array_e
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 12

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager$MySensorEventListener;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;->-$$Nest$fgetmLock(Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 107
    :try_start_7
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_11

    goto :goto_80

    .line 113
    :cond_11
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-eq v1, v2, :cond_1d

    .line 114
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    goto :goto_82

    .line 120
    :cond_1d
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager$MySensorEventListener;->gravity:[F

    const/4 v3, 0x0

    aget v4, v1, v3

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v5

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, p1, v3

    const v7, 0x3e4ccccc    # 0.19999999f

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    aput v4, v1, v3

    .line 121
    aget v6, v1, v2

    mul-float/2addr v6, v5

    aget v8, p1, v2

    mul-float/2addr v8, v7

    add-float/2addr v6, v8

    aput v6, v1, v2

    const/4 v8, 0x2

    .line 122
    aget v9, v1, v8

    mul-float/2addr v9, v5

    aget v5, p1, v8

    mul-float/2addr v5, v7

    add-float/2addr v9, v5

    aput v9, v1, v8

    .line 125
    aget v1, p1, v3

    sub-float/2addr v1, v4

    .line 126
    aget v2, p1, v2

    sub-float/2addr v2, v6

    .line 127
    aget p1, p1, v8

    sub-float/2addr p1, v9

    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    mul-float/2addr p1, p1

    add-float/2addr v1, p1

    float-to-double v1, v1

    .line 129
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double/2addr v1, v3

    double-to-float p1, v1

    float-to-double v1, p1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_76

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SensorEvent onSensorChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/effecttaint/labcv/core/util/LogUtils;->e(Ljava/lang/String;)V

    .line 134
    :cond_76
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager$MySensorEventListener;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;->-$$Nest$fgetmJitter(Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 139
    :goto_80
    monitor-exit v0

    return-void

    :goto_82
    monitor-exit v0
    :try_end_83
    .catchall {:try_start_7 .. :try_end_83} :catchall_1b

    throw p0
.end method
