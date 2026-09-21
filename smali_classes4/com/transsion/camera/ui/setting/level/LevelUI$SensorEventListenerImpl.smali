.class Lcom/transsion/camera/ui/setting/level/LevelUI$SensorEventListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/level/LevelUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SensorEventListenerImpl"
.end annotation


# instance fields
.field private lastUpdate:J

.field final synthetic this$0:Lcom/transsion/camera/ui/setting/level/LevelUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/level/LevelUI;)V
    .registers 4

    .line 129
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/level/LevelUI$SensorEventListenerImpl;->this$0:Lcom/transsion/camera/ui/setting/level/LevelUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 130
    iput-wide v0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI$SensorEventListenerImpl;->lastUpdate:J

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 8

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 136
    iget-wide v2, p0, Lcom/transsion/camera/ui/setting/level/LevelUI$SensorEventListenerImpl;->lastUpdate:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xa

    cmp-long v2, v2, v4

    if-lez v2, :cond_2b

    .line 137
    iput-wide v0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI$SensorEventListenerImpl;->lastUpdate:J

    .line 139
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI$SensorEventListenerImpl;->this$0:Lcom/transsion/camera/ui/setting/level/LevelUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/level/LevelUI;->-$$Nest$fgetmLevelView(Lcom/transsion/camera/ui/setting/level/LevelUI;)Lcom/transsion/camera/ui/setting/level/Gradienter;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI$SensorEventListenerImpl;->this$0:Lcom/transsion/camera/ui/setting/level/LevelUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/level/LevelUI;->-$$Nest$fgetmIsShown(Lcom/transsion/camera/ui/setting/level/LevelUI;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 141
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI$SensorEventListenerImpl;->this$0:Lcom/transsion/camera/ui/setting/level/LevelUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/level/LevelUI;->-$$Nest$fgetmLevelView(Lcom/transsion/camera/ui/setting/level/LevelUI;)Lcom/transsion/camera/ui/setting/level/Gradienter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/level/Gradienter;->onSensorChanged([F)V

    :cond_2b
    return-void
.end method
