.class Lcom/ss/android/vesdk/TECameraVideoRecorder$59$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder$59;->onPictureTaken(Lcom/ss/android/ttvecamera/TECameraFrame;Lcom/ss/android/ttvecamera/TECameraBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field failed:Z

.field final synthetic this$1:Lcom/ss/android/vesdk/TECameraVideoRecorder$59;

.field final synthetic val$finalRawFrame:Lcom/ss/android/ttve/model/VEFrame;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder$59;Lcom/ss/android/ttve/model/VEFrame;)V
    .registers 3

    .line 4332
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59$1;->this$1:Lcom/ss/android/vesdk/TECameraVideoRecorder$59;

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59$1;->val$finalRawFrame:Lcom/ss/android/ttve/model/VEFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 4333
    iput-boolean p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59$1;->failed:Z

    return-void
.end method


# virtual methods
.method public onImage(Landroid/graphics/Bitmap;)V
    .registers 4

    .line 4337
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59$1;->this$1:Lcom/ss/android/vesdk/TECameraVideoRecorder$59;

    iget-object v1, v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    if-eqz v1, :cond_1f

    if-nez p1, :cond_f

    const/4 p0, 0x1

    const/16 p1, -0x7d0

    .line 4339
    invoke-interface {v1, p0, p1}, Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;->onImageError(II)V

    return-void

    .line 4342
    :cond_f
    iget-object v0, v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    const-string v1, "TECam_capture_0_final"

    # invokes: Lcom/ss/android/vesdk/TECameraVideoRecorder;->condDumpBmp4Debug(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$5500(Lcom/ss/android/vesdk/TECameraVideoRecorder;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 4343
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59$1;->this$1:Lcom/ss/android/vesdk/TECameraVideoRecorder$59;

    iget-object v0, v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59$1;->val$finalRawFrame:Lcom/ss/android/ttve/model/VEFrame;

    invoke-interface {v0, p1, p0}, Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;->onImageRenderSuccess(Landroid/graphics/Bitmap;Lcom/ss/android/ttve/model/VEFrame;)V

    :cond_1f
    return-void
.end method

.method public onResult(II)V
    .registers 5

    if-gez p2, :cond_3e

    .line 4351
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59$1;->this$1:Lcom/ss/android/vesdk/TECameraVideoRecorder$59;

    iget-object v0, v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    if-eqz v0, :cond_2f

    .line 4352
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

    .line 4353
    iget-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59$1;->this$1:Lcom/ss/android/vesdk/TECameraVideoRecorder$59;

    iget-object p2, p2, Lcom/ss/android/vesdk/TECameraVideoRecorder$59;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    const/16 v0, -0x7d0

    invoke-interface {p2, p1, v0}, Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;->onImageError(II)V

    :cond_2f
    const/4 p1, 0x1

    .line 4355
    iput-boolean p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59$1;->failed:Z

    .line 4356
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59$1;->this$1:Lcom/ss/android/vesdk/TECameraVideoRecorder$59;

    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;
    invoke-static {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$5100(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/camera/ICameraCapture;

    move-result-object p0

    invoke-interface {p0}, Lcom/ss/android/vesdk/camera/ICameraCapture;->startPreview()I

    return-void

    .line 4357
    :cond_3e
    iget-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59$1;->this$1:Lcom/ss/android/vesdk/TECameraVideoRecorder$59;

    iget-boolean p2, p1, Lcom/ss/android/vesdk/TECameraVideoRecorder$59;->val$needPreviewAfterCapture:Z

    if-eqz p2, :cond_56

    .line 4358
    iget-object p2, p1, Lcom/ss/android/vesdk/TECameraVideoRecorder$59;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-boolean p1, p1, Lcom/ss/android/vesdk/TECameraVideoRecorder$59;->val$preventRenderAfterRender:Z

    # setter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mPreventTextureRender:Z
    invoke-static {p2, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$5202(Lcom/ss/android/vesdk/TECameraVideoRecorder;Z)Z

    .line 4359
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59$1;->this$1:Lcom/ss/android/vesdk/TECameraVideoRecorder$59;

    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;
    invoke-static {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$5100(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/camera/ICameraCapture;

    move-result-object p0

    invoke-interface {p0}, Lcom/ss/android/vesdk/camera/ICameraCapture;->startPreview()I

    :cond_56
    return-void
.end method
