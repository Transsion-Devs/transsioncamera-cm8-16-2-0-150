.class Lcom/ss/android/vesdk/TECameraVideoRecorder$60$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder$60;->onPictureTaken(Lcom/ss/android/ttvecamera/TECameraFrame;Lcom/ss/android/ttvecamera/TECameraBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field failed:Z

.field final synthetic this$1:Lcom/ss/android/vesdk/TECameraVideoRecorder$60;

.field final synthetic val$finalRawFrame:Lcom/ss/android/ttve/model/VEFrame;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder$60;Lcom/ss/android/ttve/model/VEFrame;)V
    .registers 3

    .line 4471
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$60$1;->this$1:Lcom/ss/android/vesdk/TECameraVideoRecorder$60;

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$60$1;->val$finalRawFrame:Lcom/ss/android/ttve/model/VEFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 4472
    iput-boolean p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$60$1;->failed:Z

    return-void
.end method


# virtual methods
.method public onImage(Landroid/graphics/Bitmap;)V
    .registers 7

    .line 4476
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$60$1;->this$1:Lcom/ss/android/vesdk/TECameraVideoRecorder$60;

    iget-wide v3, v2, Lcom/ss/android/vesdk/TECameraVideoRecorder$60;->val$captureStartTime:J

    sub-long/2addr v0, v3

    .line 4477
    iget-object v3, v2, Lcom/ss/android/vesdk/TECameraVideoRecorder$60;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    if-eqz v3, :cond_26

    if-nez p1, :cond_16

    const/4 p0, 0x1

    const/16 p1, -0x7d0

    .line 4479
    invoke-interface {v3, p0, p1}, Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;->onImageError(II)V

    goto :goto_26

    .line 4482
    :cond_16
    iget-object v2, v2, Lcom/ss/android/vesdk/TECameraVideoRecorder$60;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    const-string v3, "TECam_capture_1_final"

    # invokes: Lcom/ss/android/vesdk/TECameraVideoRecorder;->condDumpBmp4Debug(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    invoke-static {v2, p1, v3}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$5500(Lcom/ss/android/vesdk/TECameraVideoRecorder;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 4483
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$60$1;->this$1:Lcom/ss/android/vesdk/TECameraVideoRecorder$60;

    iget-object v2, v2, Lcom/ss/android/vesdk/TECameraVideoRecorder$60;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$60$1;->val$finalRawFrame:Lcom/ss/android/ttve/model/VEFrame;

    invoke-interface {v2, p1, p0}, Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;->onImageRenderSuccess(Landroid/graphics/Bitmap;Lcom/ss/android/ttve/model/VEFrame;)V

    :cond_26
    :goto_26
    const/4 p0, 0x0

    .line 4486
    const-string p1, "te_record_hd_capture_time"

    invoke-static {p0, p1, v0, v1}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    return-void
.end method

.method public onResult(II)V
    .registers 5

    if-gez p2, :cond_3e

    .line 4492
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$60$1;->this$1:Lcom/ss/android/vesdk/TECameraVideoRecorder$60;

    iget-object v0, v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$60;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    if-eqz v0, :cond_2f

    .line 4493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "capture failed, state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", err code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TECameraVideoRecorder"

    invoke-static {v0, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4494
    iget-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$60$1;->this$1:Lcom/ss/android/vesdk/TECameraVideoRecorder$60;

    iget-object p2, p2, Lcom/ss/android/vesdk/TECameraVideoRecorder$60;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    const/16 v0, -0x7d0

    invoke-interface {p2, p1, v0}, Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;->onImageError(II)V

    :cond_2f
    const/4 p1, 0x1

    .line 4496
    iput-boolean p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$60$1;->failed:Z

    .line 4497
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$60$1;->this$1:Lcom/ss/android/vesdk/TECameraVideoRecorder$60;

    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$60;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;
    invoke-static {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$5100(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/camera/ICameraCapture;

    move-result-object p0

    invoke-interface {p0}, Lcom/ss/android/vesdk/camera/ICameraCapture;->startPreview()I

    return-void

    .line 4498
    :cond_3e
    iget-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$60$1;->this$1:Lcom/ss/android/vesdk/TECameraVideoRecorder$60;

    iget-boolean p2, p1, Lcom/ss/android/vesdk/TECameraVideoRecorder$60;->val$needPreviewAfterCapture:Z

    if-eqz p2, :cond_56

    .line 4499
    iget-object p2, p1, Lcom/ss/android/vesdk/TECameraVideoRecorder$60;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-boolean p1, p1, Lcom/ss/android/vesdk/TECameraVideoRecorder$60;->val$preventRenderAfterRender:Z

    # setter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mPreventTextureRender:Z
    invoke-static {p2, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$5202(Lcom/ss/android/vesdk/TECameraVideoRecorder;Z)Z

    .line 4500
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$60$1;->this$1:Lcom/ss/android/vesdk/TECameraVideoRecorder$60;

    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$60;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;
    invoke-static {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$5100(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/camera/ICameraCapture;

    move-result-object p0

    invoke-interface {p0}, Lcom/ss/android/vesdk/camera/ICameraCapture;->startPreview()I

    :cond_56
    return-void
.end method
