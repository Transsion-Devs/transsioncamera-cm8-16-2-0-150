.class Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$8;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->switchFlashMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)V
    .registers 2

    .line 1503
    iput-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$8;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .registers 6

    .line 1524
    iget-object p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$8;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mConditionVariable:Landroid/os/ConditionVariable;
    invoke-static {p0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$4300(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    .line 1525
    const-string p0, "TEImage2Mode"

    const-string p1, "set flash request abort"

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 4

    .line 1508
    iget-object p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$8;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mConditionVariable:Landroid/os/ConditionVariable;
    invoke-static {p0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$4300(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    .line 1509
    const-string p0, "TEImage2Mode"

    const-string p1, "onCaptureCompleted"

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .registers 4

    .line 1516
    iget-object p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$8;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mConditionVariable:Landroid/os/ConditionVariable;
    invoke-static {p0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$4300(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    .line 1517
    const-string p0, "TEImage2Mode"

    const-string p1, "set flash failed"

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
