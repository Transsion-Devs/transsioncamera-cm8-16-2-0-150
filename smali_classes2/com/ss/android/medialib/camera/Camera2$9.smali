.class Lcom/ss/android/medialib/camera/Camera2$9;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/medialib/camera/Camera2;->captureStillPicture()V
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

    .line 1169
    iput-object p1, p0, Lcom/ss/android/medialib/camera/Camera2$9;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .registers 4

    .line 1175
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2$9;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # getter for: Lcom/ss/android/medialib/camera/Camera2;->mCaptureListener:Lcom/ss/android/medialib/camera/IESCameraInterface$CaptureListener;
    invoke-static {p1}, Lcom/ss/android/medialib/camera/Camera2;->access$1500(Lcom/ss/android/medialib/camera/Camera2;)Lcom/ss/android/medialib/camera/IESCameraInterface$CaptureListener;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 1176
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2$9;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # getter for: Lcom/ss/android/medialib/camera/Camera2;->mCaptureListener:Lcom/ss/android/medialib/camera/IESCameraInterface$CaptureListener;
    invoke-static {p1}, Lcom/ss/android/medialib/camera/Camera2;->access$1500(Lcom/ss/android/medialib/camera/Camera2;)Lcom/ss/android/medialib/camera/IESCameraInterface$CaptureListener;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/ss/android/medialib/camera/IESCameraInterface$CaptureListener;->onResult(Lcom/ss/android/medialib/camera/ImageFrame;)V

    .line 1179
    :cond_12
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2$9;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # invokes: Lcom/ss/android/medialib/camera/Camera2;->unlockFocus()V
    invoke-static {p0}, Lcom/ss/android/medialib/camera/Camera2;->access$1700(Lcom/ss/android/medialib/camera/Camera2;)V

    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .registers 5

    .line 1184
    invoke-super {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V

    .line 1185
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2$9;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # invokes: Lcom/ss/android/medialib/camera/Camera2;->unlockFocus()V
    invoke-static {p0}, Lcom/ss/android/medialib/camera/Camera2;->access$1700(Lcom/ss/android/medialib/camera/Camera2;)V

    return-void
.end method
