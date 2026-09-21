.class Lcom/effectsar/labcv/effectsdk/SensorHelper$RotationSensorListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/SensorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RotationSensorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/effectsar/labcv/effectsdk/SensorHelper;


# direct methods
.method private constructor <init>(Lcom/effectsar/labcv/effectsdk/SensorHelper;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper$RotationSensorListener;->this$0:Lcom/effectsar/labcv/effectsdk/SensorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/effectsar/labcv/effectsdk/SensorHelper;Lcom/effectsar/labcv/effectsdk/SensorHelper$1;)V
    .registers 3

    .line 77
    invoke-direct {p0, p1}, Lcom/effectsar/labcv/effectsdk/SensorHelper$RotationSensorListener;-><init>(Lcom/effectsar/labcv/effectsdk/SensorHelper;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 11

    .line 81
    iget-object v0, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper$RotationSensorListener;->this$0:Lcom/effectsar/labcv/effectsdk/SensorHelper;

    # getter for: Lcom/effectsar/labcv/effectsdk/SensorHelper;->mListener:Lcom/effectsar/labcv/effectsdk/SensorHelper$ISensorListener;
    invoke-static {v0}, Lcom/effectsar/labcv/effectsdk/SensorHelper;->access$400(Lcom/effectsar/labcv/effectsdk/SensorHelper;)Lcom/effectsar/labcv/effectsdk/SensorHelper$ISensorListener;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 82
    :cond_9
    iget-object v0, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper$RotationSensorListener;->this$0:Lcom/effectsar/labcv/effectsdk/SensorHelper;

    # invokes: Lcom/effectsar/labcv/effectsdk/SensorHelper;->getTimestamp(Landroid/hardware/SensorEvent;)D
    invoke-static {v0, p1}, Lcom/effectsar/labcv/effectsdk/SensorHelper;->access$500(Lcom/effectsar/labcv/effectsdk/SensorHelper;Landroid/hardware/SensorEvent;)D

    move-result-wide v0

    const/16 v2, 0x9

    .line 83
    new-array v3, v2, [F

    .line 84
    iget-object v4, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper$RotationSensorListener;->this$0:Lcom/effectsar/labcv/effectsdk/SensorHelper;

    # getter for: Lcom/effectsar/labcv/effectsdk/SensorHelper;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v4}, Lcom/effectsar/labcv/effectsdk/SensorHelper;->access$600(Lcom/effectsar/labcv/effectsdk/SensorHelper;)Landroid/hardware/SensorManager;

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v3, v4}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 87
    new-array v4, v2, [D

    const/4 v5, 0x0

    move v6, v5

    :goto_21
    if-ge v6, v2, :cond_2b

    .line 89
    aget v7, v3, v6

    float-to-double v7, v7

    aput-wide v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 95
    :cond_2b
    iget-object v3, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper$RotationSensorListener;->this$0:Lcom/effectsar/labcv/effectsdk/SensorHelper;

    # getter for: Lcom/effectsar/labcv/effectsdk/SensorHelper;->mListener:Lcom/effectsar/labcv/effectsdk/SensorHelper$ISensorListener;
    invoke-static {v3}, Lcom/effectsar/labcv/effectsdk/SensorHelper;->access$400(Lcom/effectsar/labcv/effectsdk/SensorHelper;)Lcom/effectsar/labcv/effectsdk/SensorHelper$ISensorListener;

    move-result-object v3

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v0, v6

    invoke-interface {v3, v4, v2, v0, v1}, Lcom/effectsar/labcv/effectsdk/SensorHelper$ISensorListener;->onOrientationChanged([DID)V

    const/4 v0, 0x4

    .line 96
    new-array v0, v0, [F

    .line 103
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, p1, v5

    aput v1, v0, v5

    const/4 v1, 0x1

    .line 104
    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 105
    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 106
    aget p1, p1, v1

    aput p1, v0, v1

    .line 108
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper$RotationSensorListener;->this$0:Lcom/effectsar/labcv/effectsdk/SensorHelper;

    # getter for: Lcom/effectsar/labcv/effectsdk/SensorHelper;->mListener:Lcom/effectsar/labcv/effectsdk/SensorHelper$ISensorListener;
    invoke-static {p0}, Lcom/effectsar/labcv/effectsdk/SensorHelper;->access$400(Lcom/effectsar/labcv/effectsdk/SensorHelper;)Lcom/effectsar/labcv/effectsdk/SensorHelper$ISensorListener;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/effectsar/labcv/effectsdk/SensorHelper$ISensorListener;->setDeviceRotation([F)V

    return-void
.end method
