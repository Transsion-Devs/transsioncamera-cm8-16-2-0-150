.class Lcom/ss/android/vesdk/TECameraVideoRecorder$61$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder$61;->onBufferFrameArrived(III[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ss/android/vesdk/TECameraVideoRecorder$61;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder$61;)V
    .registers 2

    .line 4621
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$61$1;->this$1:Lcom/ss/android/vesdk/TECameraVideoRecorder$61;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImage(Landroid/graphics/Bitmap;)V
    .registers 3

    .line 4624
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$61$1;->this$1:Lcom/ss/android/vesdk/TECameraVideoRecorder$61;

    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$61;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    if-eqz p0, :cond_13

    if-nez p1, :cond_f

    const/4 p1, 0x1

    const/16 v0, -0x7d0

    .line 4626
    invoke-interface {p0, p1, v0}, Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;->onImageError(II)V

    return-void

    :cond_f
    const/4 v0, 0x0

    .line 4629
    invoke-interface {p0, p1, v0}, Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;->onImageRenderSuccess(Landroid/graphics/Bitmap;Lcom/ss/android/ttve/model/VEFrame;)V

    :cond_13
    return-void
.end method

.method public onResult(II)V
    .registers 5

    if-gez p2, :cond_2f

    .line 4637
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$61$1;->this$1:Lcom/ss/android/vesdk/TECameraVideoRecorder$61;

    iget-object v0, v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$61;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    if-eqz v0, :cond_2f

    .line 4638
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

    .line 4639
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$61$1;->this$1:Lcom/ss/android/vesdk/TECameraVideoRecorder$61;

    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$61;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    const/16 p2, -0x7d0

    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;->onImageError(II)V

    :cond_2f
    return-void
.end method
