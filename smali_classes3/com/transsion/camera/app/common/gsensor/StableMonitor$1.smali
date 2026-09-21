.class Lcom/transsion/camera/app/common/gsensor/StableMonitor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/gsensor/StableMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/gsensor/StableMonitor;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/gsensor/StableMonitor;)V
    .registers 2

    .line 181
    iput-object p1, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor$1;->this$0:Lcom/transsion/camera/app/common/gsensor/StableMonitor;

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

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor$1;->this$0:Lcom/transsion/camera/app/common/gsensor/StableMonitor;

    invoke-static {v0}, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->-$$Nest$fgetmLock(Lcom/transsion/camera/app/common/gsensor/StableMonitor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 185
    :try_start_7
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_11

    goto :goto_32

    .line 187
    :cond_11
    iget-object v1, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor$1;->this$0:Lcom/transsion/camera/app/common/gsensor/StableMonitor;

    invoke-static {v1}, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->-$$Nest$fgetmHandler(Lcom/transsion/camera/app/common/gsensor/StableMonitor;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 188
    iget-object p0, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitor$1;->this$0:Lcom/transsion/camera/app/common/gsensor/StableMonitor;

    invoke-static {p0}, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->-$$Nest$fgetmHandler(Lcom/transsion/camera/app/common/gsensor/StableMonitor;)Landroid/os/Handler;

    move-result-object p0

    new-instance v1, Lcom/transsion/camera/app/common/gsensor/GyroData;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-direct {v1, p1}, Lcom/transsion/camera/app/common/gsensor/GyroData;-><init>([F)V

    const/16 p1, 0x65

    invoke-virtual {p0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_32

    :catchall_30
    move-exception p0

    goto :goto_34

    .line 198
    :cond_32
    :goto_32
    monitor-exit v0

    return-void

    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_30

    throw p0
.end method
