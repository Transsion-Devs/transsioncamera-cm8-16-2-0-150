.class Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$2;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->captureBurst(Lcom/ss/android/ttvecamera/model/BurstRequest;ILcom/ss/android/ttvecamera/TECameraSettings$CaptureBufferFrameCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

.field final synthetic val$imageHeight:I

.field final synthetic val$imageWidth:I


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;II)V
    .registers 4

    .line 690
    iput-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$2;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    iput p2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$2;->val$imageWidth:I

    iput p3, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$2;->val$imageHeight:I

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .registers 6

    .line 702
    const-string p0, "TEImage2Mode"

    const-string p1, "capture burst buffer last..."

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 5

    .line 694
    sget-object p0, Landroid/hardware/camera2/TotalCaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 695
    sget-object p1, Landroid/hardware/camera2/TotalCaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 696
    sget-object p2, Landroid/hardware/camera2/TotalCaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    .line 697
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCaptureCompleted, aeExposure: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", iso: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", exposureTime: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TEImage2Mode"

    invoke-static {p1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .registers 6

    .line 707
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "capture burst failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 708
    iget-object p2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$2;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCameraFacing:I
    invoke-static {p2}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$1800(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_21

    const/16 p2, 0x10e

    goto :goto_23

    :cond_21
    const/16 p2, 0x5a

    .line 709
    :goto_23
    iget-object p3, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$2;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCaptureBufferFrameCallback:Lcom/ss/android/ttvecamera/TECameraSettings$CaptureBufferFrameCallback;
    invoke-static {p3}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$1900(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Lcom/ss/android/ttvecamera/TECameraSettings$CaptureBufferFrameCallback;

    move-result-object p3

    iget v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$2;->val$imageWidth:I

    iget p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$2;->val$imageHeight:I

    const/4 v1, 0x0

    invoke-interface {p3, v0, p0, p2, v1}, Lcom/ss/android/ttvecamera/TECameraSettings$CaptureBufferFrameCallback;->onBufferFrameArrived(III[B)V

    .line 710
    const-string p0, "TEImage2Mode"

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
