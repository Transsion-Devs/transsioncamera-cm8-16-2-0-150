.class Lcom/tetras/util/AccelerometerManager$AccelerometerSensorListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tetras/util/AccelerometerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccelerometerSensorListener"
.end annotation


# instance fields
.field private dir:I

.field final synthetic this$0:Lcom/tetras/util/AccelerometerManager;


# direct methods
.method private constructor <init>(Lcom/tetras/util/AccelerometerManager;)V
    .registers 2

    .line 142
    iput-object p1, p0, Lcom/tetras/util/AccelerometerManager$AccelerometerSensorListener;->this$0:Lcom/tetras/util/AccelerometerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 166
    iput p1, p0, Lcom/tetras/util/AccelerometerManager$AccelerometerSensorListener;->dir:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/tetras/util/AccelerometerManager;Lcom/tetras/util/AccelerometerManager$1;)V
    .registers 3

    .line 142
    invoke-direct {p0, p1}, Lcom/tetras/util/AccelerometerManager$AccelerometerSensorListener;-><init>(Lcom/tetras/util/AccelerometerManager;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tetras/util/AccelerometerManager$AccelerometerSensorListener;)I
    .registers 1

    .line 142
    iget p0, p0, Lcom/tetras/util/AccelerometerManager$AccelerometerSensorListener;->dir:I

    return p0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7

    .line 172
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_44

    .line 174
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget v2, p1, v0

    .line 175
    aget p1, p1, v1

    .line 176
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_22

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v4

    if-lez v3, :cond_44

    .line 177
    :cond_22
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    const/4 v4, 0x0

    if-lez v3, :cond_3a

    cmpl-float p1, v2, v4

    if-lez p1, :cond_36

    .line 179
    iput v0, p0, Lcom/tetras/util/AccelerometerManager$AccelerometerSensorListener;->dir:I

    return-void

    :cond_36
    const/4 p1, 0x2

    .line 181
    iput p1, p0, Lcom/tetras/util/AccelerometerManager$AccelerometerSensorListener;->dir:I

    return-void

    :cond_3a
    cmpl-float p1, p1, v4

    if-lez p1, :cond_41

    .line 185
    iput v1, p0, Lcom/tetras/util/AccelerometerManager$AccelerometerSensorListener;->dir:I

    return-void

    :cond_41
    const/4 p1, 0x3

    .line 187
    iput p1, p0, Lcom/tetras/util/AccelerometerManager$AccelerometerSensorListener;->dir:I

    :cond_44
    return-void
.end method
