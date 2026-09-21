.class Lcom/transsion/camera/feature/mode/video/VideoMode$ThermalThrottleChangeListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/video/VideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThermalThrottleChangeListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/video/VideoMode;)V
    .registers 2

    .line 1596
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$ThermalThrottleChangeListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/video/VideoMode;Lcom/transsion/camera/feature/mode/video/VideoMode-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/VideoMode$ThermalThrottleChangeListenerImpl;-><init>(Lcom/transsion/camera/feature/mode/video/VideoMode;)V

    return-void
.end method


# virtual methods
.method public onThermalChanged(I)V
    .registers 3

    .line 1604
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$ThermalThrottleChangeListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$900(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1605
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$ThermalThrottleChangeListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$1000(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->onTemperatureChanged(I)V

    :cond_11
    return-void
.end method

.method public onThermalThrottleChanged(I)V
    .registers 4

    .line 1599
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/VideoMode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

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
