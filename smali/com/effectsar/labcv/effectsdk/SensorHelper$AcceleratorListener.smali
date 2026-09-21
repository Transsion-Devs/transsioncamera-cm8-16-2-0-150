.class Lcom/effectsar/labcv/effectsdk/SensorHelper$AcceleratorListener;
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
    name = "AcceleratorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/effectsar/labcv/effectsdk/SensorHelper;


# direct methods
.method private constructor <init>(Lcom/effectsar/labcv/effectsdk/SensorHelper;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper$AcceleratorListener;->this$0:Lcom/effectsar/labcv/effectsdk/SensorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/effectsar/labcv/effectsdk/SensorHelper;Lcom/effectsar/labcv/effectsdk/SensorHelper$1;)V
    .registers 3

    .line 120
    invoke-direct {p0, p1}, Lcom/effectsar/labcv/effectsdk/SensorHelper$AcceleratorListener;-><init>(Lcom/effectsar/labcv/effectsdk/SensorHelper;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 12

    .line 123
    iget-object v0, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper$AcceleratorListener;->this$0:Lcom/effectsar/labcv/effectsdk/SensorHelper;

    # getter for: Lcom/effectsar/labcv/effectsdk/SensorHelper;->mListener:Lcom/effectsar/labcv/effectsdk/SensorHelper$ISensorListener;
    invoke-static {v0}, Lcom/effectsar/labcv/effectsdk/SensorHelper;->access$400(Lcom/effectsar/labcv/effectsdk/SensorHelper;)Lcom/effectsar/labcv/effectsdk/SensorHelper$ISensorListener;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 124
    :cond_9
    iget-object v0, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper$AcceleratorListener;->this$0:Lcom/effectsar/labcv/effectsdk/SensorHelper;

    # invokes: Lcom/effectsar/labcv/effectsdk/SensorHelper;->getTimestamp(Landroid/hardware/SensorEvent;)D
    invoke-static {v0, p1}, Lcom/effectsar/labcv/effectsdk/SensorHelper;->access$500(Lcom/effectsar/labcv/effectsdk/SensorHelper;Landroid/hardware/SensorEvent;)D

    move-result-wide v8

    .line 125
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/SensorHelper$AcceleratorListener;->this$0:Lcom/effectsar/labcv/effectsdk/SensorHelper;

    # getter for: Lcom/effectsar/labcv/effectsdk/SensorHelper;->mListener:Lcom/effectsar/labcv/effectsdk/SensorHelper$ISensorListener;
    invoke-static {p0}, Lcom/effectsar/labcv/effectsdk/SensorHelper;->access$400(Lcom/effectsar/labcv/effectsdk/SensorHelper;)Lcom/effectsar/labcv/effectsdk/SensorHelper$ISensorListener;

    move-result-object v1

    iget-object p0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 p1, 0x0

    aget p1, p0, p1

    float-to-double v2, p1

    const/4 p1, 0x1

    aget p1, p0, p1

    float-to-double v4, p1

    const/4 p1, 0x2

    aget p0, p0, p1

    float-to-double v6, p0

    invoke-interface/range {v1 .. v9}, Lcom/effectsar/labcv/effectsdk/SensorHelper$ISensorListener;->onAcceleratorChanged(DDDD)V

    return-void
.end method
