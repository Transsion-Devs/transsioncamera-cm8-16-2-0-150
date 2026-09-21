.class public Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager$MySensorEventListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MySensorEventListener"
.end annotation


# instance fields
.field private dir:I

.field final synthetic this$0:Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetdir(Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager$MySensorEventListener;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager$MySensorEventListener;->dir:I

    return p0
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager$MySensorEventListener;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 108
    iput p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager$MySensorEventListener;->dir:I

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 9

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager$MySensorEventListener;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->-$$Nest$fgetmLock(Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 112
    :try_start_7
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_21

    const/4 p0, 0x4

    if-eq v1, p0, :cond_16

    goto :goto_5c

    .line 115
    :cond_16
    iget-object p0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p0, v3

    .line 116
    aget p1, p0, v4

    .line 117
    aget p0, p0, v2

    goto :goto_5c

    :catchall_1f
    move-exception p0

    goto :goto_5e

    .line 122
    :cond_21
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, p1, v3

    .line 123
    aget v5, p1, v4

    .line 124
    aget p1, p1, v2

    .line 127
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v6, 0x3f000000    # 0.5f

    cmpl-float p1, p1, v6

    if-gtz p1, :cond_3b

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v6

    if-lez p1, :cond_5c

    .line 128
    :cond_3b
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float p1, p1, v6

    const/4 v6, 0x0

    if-lez p1, :cond_52

    cmpl-float p1, v1, v6

    if-lez p1, :cond_4f

    .line 130
    iput v3, p0, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager$MySensorEventListener;->dir:I

    goto :goto_5c

    .line 132
    :cond_4f
    iput v2, p0, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager$MySensorEventListener;->dir:I

    goto :goto_5c

    :cond_52
    cmpl-float p1, v5, v6

    if-lez p1, :cond_59

    .line 136
    iput v4, p0, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager$MySensorEventListener;->dir:I

    goto :goto_5c

    :cond_59
    const/4 p1, 0x3

    .line 138
    iput p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager$MySensorEventListener;->dir:I

    .line 146
    :cond_5c
    :goto_5c
    monitor-exit v0

    return-void

    :goto_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_7 .. :try_end_5f} :catchall_1f

    throw p0
.end method
