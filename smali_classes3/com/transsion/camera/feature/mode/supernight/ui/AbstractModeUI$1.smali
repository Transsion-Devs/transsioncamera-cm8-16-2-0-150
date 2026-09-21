.class Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)V
    .registers 2

    .line 171
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$1;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

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

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$1;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fgetmLock(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 175
    :try_start_7
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2a

    const/4 v2, 0x2

    if-eq v1, v2, :cond_22

    const/16 v2, 0xb

    if-eq v1, v2, :cond_18

    goto :goto_31

    .line 183
    :cond_18
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$1;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v1, p1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fputmOrientationVectorValues(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;[F)V

    goto :goto_31

    :catchall_20
    move-exception p0

    goto :goto_40

    .line 180
    :cond_22
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$1;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v1, p1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fputmMagnetValues(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;[F)V

    goto :goto_31

    .line 177
    :cond_2a
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$1;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v1, p1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fputmAccelerometerValues(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;[F)V

    .line 188
    :goto_31
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$1;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fgetmIsAnimationStart(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 189
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$1;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$mupdatePosition(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)V

    .line 191
    :cond_3e
    monitor-exit v0

    return-void

    :goto_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_7 .. :try_end_41} :catchall_20

    throw p0
.end method
