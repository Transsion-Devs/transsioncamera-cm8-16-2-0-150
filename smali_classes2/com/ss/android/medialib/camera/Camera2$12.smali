.class Lcom/ss/android/medialib/camera/Camera2$12;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/medialib/camera/Camera2;->takePicture(IILcom/ss/android/medialib/camera/IESCameraInterface$CaptureListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/medialib/camera/Camera2;

.field final synthetic val$listener:Lcom/ss/android/medialib/camera/IESCameraInterface$CaptureListener;


# direct methods
.method constructor <init>(Lcom/ss/android/medialib/camera/Camera2;Lcom/ss/android/medialib/camera/IESCameraInterface$CaptureListener;)V
    .registers 3

    .line 1373
    iput-object p1, p0, Lcom/ss/android/medialib/camera/Camera2$12;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    iput-object p2, p0, Lcom/ss/android/medialib/camera/Camera2$12;->val$listener:Lcom/ss/android/medialib/camera/IESCameraInterface$CaptureListener;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 3

    .line 1393
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2$12;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/ss/android/medialib/camera/Camera2;->mPictureStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 1394
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2$12;->val$listener:Lcom/ss/android/medialib/camera/IESCameraInterface$CaptureListener;

    if-eqz p0, :cond_c

    .line 1395
    invoke-interface {p0, v0}, Lcom/ss/android/medialib/camera/IESCameraInterface$CaptureListener;->onResult(Lcom/ss/android/medialib/camera/ImageFrame;)V

    :cond_c
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 4

    .line 1376
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2$12;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/ss/android/medialib/camera/Camera2;->mPictureStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 1378
    :try_start_5
    # getter for: Lcom/ss/android/medialib/camera/Camera2;->mFlashMode:I
    invoke-static {p1}, Lcom/ss/android/medialib/camera/Camera2;->access$2100(Lcom/ss/android/medialib/camera/Camera2;)I

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2$12;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # getter for: Lcom/ss/android/medialib/camera/Camera2;->mFlashMode:I
    invoke-static {p1}, Lcom/ss/android/medialib/camera/Camera2;->access$2100(Lcom/ss/android/medialib/camera/Camera2;)I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1c

    .line 1379
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2$12;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # invokes: Lcom/ss/android/medialib/camera/Camera2;->lockFocus()V
    invoke-static {p1}, Lcom/ss/android/medialib/camera/Camera2;->access$2200(Lcom/ss/android/medialib/camera/Camera2;)V

    return-void

    :catchall_1a
    move-exception p1

    goto :goto_22

    .line 1381
    :cond_1c
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2$12;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # invokes: Lcom/ss/android/medialib/camera/Camera2;->captureStillPicture()V
    invoke-static {p1}, Lcom/ss/android/medialib/camera/Camera2;->access$1900(Lcom/ss/android/medialib/camera/Camera2;)V
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_1a

    return-void

    .line 1384
    :goto_22
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1385
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2$12;->val$listener:Lcom/ss/android/medialib/camera/IESCameraInterface$CaptureListener;

    if-eqz p0, :cond_2c

    .line 1386
    invoke-interface {p0, v0}, Lcom/ss/android/medialib/camera/IESCameraInterface$CaptureListener;->onResult(Lcom/ss/android/medialib/camera/ImageFrame;)V

    :cond_2c
    return-void
.end method
