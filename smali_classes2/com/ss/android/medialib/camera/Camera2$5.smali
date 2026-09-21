.class Lcom/ss/android/medialib/camera/Camera2$5;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/medialib/camera/Camera2;->startPreview(Landroid/graphics/SurfaceTexture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/medialib/camera/Camera2;


# direct methods
.method constructor <init>(Lcom/ss/android/medialib/camera/Camera2;)V
    .registers 2

    .line 542
    iput-object p1, p0, Lcom/ss/android/medialib/camera/Camera2$5;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 4

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigureFailed: thread_name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera2"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2$5;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    const/4 v1, 0x4

    # setter for: Lcom/ss/android/medialib/camera/Camera2;->mSessionState:I
    invoke-static {v0, v1}, Lcom/ss/android/medialib/camera/Camera2;->access$002(Lcom/ss/android/medialib/camera/Camera2;I)I

    .line 558
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2$5;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # invokes: Lcom/ss/android/medialib/camera/Camera2;->reset()V
    invoke-static {v0}, Lcom/ss/android/medialib/camera/Camera2;->access$500(Lcom/ss/android/medialib/camera/Camera2;)V

    .line 559
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2$5;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2;->mPictureStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    if-eqz p0, :cond_32

    .line 560
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V

    :cond_32
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 4

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigured: thread_name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera2"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2$5;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # setter for: Lcom/ss/android/medialib/camera/Camera2;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v0, p1}, Lcom/ss/android/medialib/camera/Camera2;->access$602(Lcom/ss/android/medialib/camera/Camera2;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 548
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2$5;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # invokes: Lcom/ss/android/medialib/camera/Camera2;->updatePreview()V
    invoke-static {v0}, Lcom/ss/android/medialib/camera/Camera2;->access$700(Lcom/ss/android/medialib/camera/Camera2;)V

    .line 549
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2$5;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2;->mPictureStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    if-eqz p0, :cond_31

    .line 550
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V

    :cond_31
    return-void
.end method
