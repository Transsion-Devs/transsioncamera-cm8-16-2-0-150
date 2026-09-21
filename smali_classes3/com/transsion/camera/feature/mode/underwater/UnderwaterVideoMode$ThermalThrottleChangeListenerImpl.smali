.class Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$ThermalThrottleChangeListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThermalThrottleChangeListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)V
    .registers 2

    .line 746
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$ThermalThrottleChangeListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$ThermalThrottleChangeListenerImpl;-><init>(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)V

    return-void
.end method


# virtual methods
.method public onThermalChanged(I)V
    .registers 3

    .line 754
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$ThermalThrottleChangeListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->access$1300(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 755
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$ThermalThrottleChangeListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->access$1400(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->onTemperatureChanged(I)V

    :cond_11
    return-void
.end method

.method public onThermalThrottleChanged(I)V
    .registers 4

    .line 749
    invoke-static {}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onThermalThrottleChanged temperature = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
