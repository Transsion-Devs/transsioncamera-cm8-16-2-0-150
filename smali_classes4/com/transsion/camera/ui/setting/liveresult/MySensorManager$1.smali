.class Lcom/transsion/camera/ui/setting/liveresult/MySensorManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;)V
    .registers 2

    .line 172
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager$1;->this$0:Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 5

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager$1;->this$0:Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->-$$Nest$fgetmLock(Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 176
    :try_start_7
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_35

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2d

    const/4 v2, 0x4

    if-eq v1, v2, :cond_25

    const/16 v2, 0xb

    if-eq v1, v2, :cond_1b

    goto :goto_3c

    .line 187
    :cond_1b
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager$1;->this$0:Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->-$$Nest$fputmOrientationVector(Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;[F)V

    goto :goto_3c

    :catchall_23
    move-exception p0

    goto :goto_3e

    .line 181
    :cond_25
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager$1;->this$0:Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->-$$Nest$fputmGyroValues(Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;[F)V

    goto :goto_3c

    .line 184
    :cond_2d
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager$1;->this$0:Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->-$$Nest$fputmagnetValues(Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;[F)V

    goto :goto_3c

    .line 178
    :cond_35
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager$1;->this$0:Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->-$$Nest$fputmAccelerometerValues(Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;[F)V

    .line 192
    :goto_3c
    monitor-exit v0

    return-void

    :goto_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_7 .. :try_end_3f} :catchall_23

    throw p0
.end method
