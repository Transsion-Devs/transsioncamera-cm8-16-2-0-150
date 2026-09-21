.class Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager$AccelerometerSensorListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccelerometerSensorListener"
.end annotation


# instance fields
.field private dir:I


# direct methods
.method static bridge synthetic -$$Nest$fgetdir(Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager$AccelerometerSensorListener;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager$AccelerometerSensorListener;->dir:I

    return p0
.end method

.method private constructor <init>(Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;)V
    .registers 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 97
    iput p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager$AccelerometerSensorListener;->dir:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager$AccelerometerSensorListener;-><init>(Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7

    .line 103
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_44

    .line 105
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget v2, p1, v0

    .line 106
    aget p1, p1, v1

    .line 107
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_22

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v4

    if-lez v3, :cond_44

    .line 108
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

    .line 110
    iput v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager$AccelerometerSensorListener;->dir:I

    return-void

    :cond_36
    const/4 p1, 0x2

    .line 112
    iput p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager$AccelerometerSensorListener;->dir:I

    return-void

    :cond_3a
    cmpl-float p1, p1, v4

    if-lez p1, :cond_41

    .line 116
    iput v1, p0, Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager$AccelerometerSensorListener;->dir:I

    return-void

    :cond_41
    const/4 p1, 0x3

    .line 118
    iput p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager$AccelerometerSensorListener;->dir:I

    :cond_44
    return-void
.end method
