.class Lcom/ss/android/ttvecamera/focusmanager/Gyro$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/focusmanager/Gyro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/focusmanager/Gyro;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/focusmanager/Gyro;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/Gyro;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 11

    .line 37
    iget-object v0, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/Gyro;

    # getter for: Lcom/ss/android/ttvecamera/focusmanager/Gyro;->mTimestamp:F
    invoke-static {v0}, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->access$000(Lcom/ss/android/ttvecamera/focusmanager/Gyro;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_e1

    .line 38
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v0, v0

    iget-object v1, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/Gyro;

    # getter for: Lcom/ss/android/ttvecamera/focusmanager/Gyro;->mTimestamp:F
    invoke-static {v1}, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->access$000(Lcom/ss/android/ttvecamera/focusmanager/Gyro;)F

    move-result v1

    sub-float/2addr v0, v1

    const v1, 0x3089705f    # 1.0E-9f

    mul-float/2addr v0, v1

    .line 40
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    .line 41
    aget v5, v1, v4

    const/4 v6, 0x2

    .line 42
    aget v1, v1, v6

    mul-float/2addr v3, v3

    mul-float/2addr v5, v5

    add-float/2addr v3, v5

    mul-float/2addr v1, v1

    add-float/2addr v3, v1

    float-to-double v7, v3

    .line 45
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v1, v7

    .line 47
    iget-object v3, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/Gyro;

    # getter for: Lcom/ss/android/ttvecamera/focusmanager/Gyro;->mAngles:[F
    invoke-static {v3}, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->access$100(Lcom/ss/android/ttvecamera/focusmanager/Gyro;)[F

    move-result-object v3

    aget v5, v3, v2

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v2

    mul-float/2addr v7, v0

    add-float/2addr v5, v7

    aput v5, v3, v2

    .line 48
    iget-object v3, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/Gyro;

    # getter for: Lcom/ss/android/ttvecamera/focusmanager/Gyro;->mAngles:[F
    invoke-static {v3}, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->access$100(Lcom/ss/android/ttvecamera/focusmanager/Gyro;)[F

    move-result-object v3

    aget v5, v3, v4

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v4

    mul-float/2addr v7, v0

    add-float/2addr v5, v7

    aput v5, v3, v4

    .line 49
    iget-object v3, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/Gyro;

    # getter for: Lcom/ss/android/ttvecamera/focusmanager/Gyro;->mAngles:[F
    invoke-static {v3}, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->access$100(Lcom/ss/android/ttvecamera/focusmanager/Gyro;)[F

    move-result-object v3

    aget v5, v3, v6

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v6

    mul-float/2addr v7, v0

    add-float/2addr v5, v7

    aput v5, v3, v6

    .line 51
    iget-object v0, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/Gyro;

    # getter for: Lcom/ss/android/ttvecamera/focusmanager/Gyro;->mAngles:[F
    invoke-static {v0}, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->access$100(Lcom/ss/android/ttvecamera/focusmanager/Gyro;)[F

    move-result-object v0

    aget v0, v0, v2

    iget-object v3, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/Gyro;

    # getter for: Lcom/ss/android/ttvecamera/focusmanager/Gyro;->mAngles:[F
    invoke-static {v3}, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->access$100(Lcom/ss/android/ttvecamera/focusmanager/Gyro;)[F

    move-result-object v3

    aget v2, v3, v2

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/Gyro;

    # getter for: Lcom/ss/android/ttvecamera/focusmanager/Gyro;->mAngles:[F
    invoke-static {v2}, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->access$100(Lcom/ss/android/ttvecamera/focusmanager/Gyro;)[F

    move-result-object v2

    aget v2, v2, v4

    iget-object v3, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/Gyro;

    # getter for: Lcom/ss/android/ttvecamera/focusmanager/Gyro;->mAngles:[F
    invoke-static {v3}, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->access$100(Lcom/ss/android/ttvecamera/focusmanager/Gyro;)[F

    move-result-object v3

    aget v3, v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/Gyro;

    # getter for: Lcom/ss/android/ttvecamera/focusmanager/Gyro;->mAngles:[F
    invoke-static {v2}, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->access$100(Lcom/ss/android/ttvecamera/focusmanager/Gyro;)[F

    move-result-object v2

    aget v2, v2, v6

    iget-object v3, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/Gyro;

    # getter for: Lcom/ss/android/ttvecamera/focusmanager/Gyro;->mAngles:[F
    invoke-static {v3}, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->access$100(Lcom/ss/android/ttvecamera/focusmanager/Gyro;)[F

    move-result-object v3

    aget v3, v3, v6

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v3, v1, v2

    if-gtz v3, :cond_a4

    cmpl-float v2, v0, v2

    if-lez v2, :cond_e1

    .line 54
    :cond_a4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSensorChanged omegaMagnitude = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " angle = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Gyro"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/Gyro;

    # getter for: Lcom/ss/android/ttvecamera/focusmanager/Gyro;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->access$200(Lcom/ss/android/ttvecamera/focusmanager/Gyro;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_cc
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_dc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/ttvecamera/focusmanager/Gyro$GyroListener;

    .line 56
    invoke-interface {v1}, Lcom/ss/android/ttvecamera/focusmanager/Gyro$GyroListener;->onChange()V

    goto :goto_cc

    .line 58
    :cond_dc
    iget-object v0, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/Gyro;

    # invokes: Lcom/ss/android/ttvecamera/focusmanager/Gyro;->clearAngle()V
    invoke-static {v0}, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->access$300(Lcom/ss/android/ttvecamera/focusmanager/Gyro;)V

    .line 61
    :cond_e1
    iget-object p0, p0, Lcom/ss/android/ttvecamera/focusmanager/Gyro$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/Gyro;

    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float p1, v0

    # setter for: Lcom/ss/android/ttvecamera/focusmanager/Gyro;->mTimestamp:F
    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->access$002(Lcom/ss/android/ttvecamera/focusmanager/Gyro;F)F

    return-void
.end method
