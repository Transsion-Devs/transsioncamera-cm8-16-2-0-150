.class Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->registerGyroscopeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger$1;->this$0:Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;

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

    .line 107
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_13

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 108
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-eq v0, v1, :cond_13

    goto :goto_5a

    .line 112
    :cond_13
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v1, :cond_29

    .line 113
    iget-object p0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger$1;->this$0:Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->-$$Nest$fputmLastAccelData(Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;[F)V

    return-void

    .line 114
    :cond_29
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v2, :cond_5a

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger$1;->this$0:Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->-$$Nest$fputmLastGyroData(Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;[F)V

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger$1;->this$0:Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;

    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->-$$Nest$fputmLastGyroTimestamp(Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;J)V

    .line 121
    iget-object p1, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger$1;->this$0:Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;

    invoke-static {p1}, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->-$$Nest$fgetmLastGyroTimestamp(Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger$1;->this$0:Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;

    invoke-static {v2}, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->-$$Nest$fgetmLastAccelData(Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;)[F

    move-result-object v2

    iget-object p0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger$1;->this$0:Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;

    invoke-static {p0}, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->-$$Nest$fgetmLastGyroData(Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;)[F

    move-result-object p0

    invoke-static {p1, v0, v1, v2, p0}, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->-$$Nest$mprocessSyncedData(Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;J[F[F)V

    :cond_5a
    :goto_5a
    return-void
.end method
