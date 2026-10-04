.class public final Lcom/transsion/camera/ui/setting/liveresult/MySensorManager$mSensorEventListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;)V
    .registers 2

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager$mSensorEventListener$1;->this$0:Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    const-string p0, "sensor"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 5

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager$mSensorEventListener$1;->this$0:Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;

    # getter for: Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->access$getMLock$p(Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;)Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager$mSensorEventListener$1;->this$0:Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;

    monitor-enter v0

    .line 184
    :try_start_e
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_36

    const/4 v2, 0x2

    if-eq v1, v2, :cond_30

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2a

    const/16 v2, 0xb

    if-eq v1, v2, :cond_22

    goto :goto_3b

    .line 188
    :cond_22
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->access$setMOrientationVector$p(Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;[F)V

    goto :goto_3b

    :catchall_28
    move-exception p0

    goto :goto_3f

    .line 186
    :cond_2a
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->access$setMGyroValues$p(Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;[F)V

    goto :goto_3b

    .line 187
    :cond_30
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->access$setMMagnetValues$p(Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;[F)V

    goto :goto_3b

    .line 185
    :cond_36
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->access$setMAccelerometerValues$p(Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;[F)V

    .line 191
    :goto_3b
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3d
    .catchall {:try_start_e .. :try_end_3d} :catchall_28

    .line 183
    monitor-exit v0

    return-void

    :goto_3f
    monitor-exit v0

    throw p0
.end method
