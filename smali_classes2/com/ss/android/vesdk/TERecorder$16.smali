.class Lcom/ss/android/vesdk/TERecorder$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VECameraSettings$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TERecorder;->capture(IZZLcom/ss/android/vesdk/VERecorder$ILightSoftCallback;Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TERecorder;

.field final synthetic val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

.field final synthetic val$needPreviewAfterCapture:Z

.field final synthetic val$preventRenderAfterRender:Z


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;ZZ)V
    .registers 5

    .line 2972
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$16;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder$16;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    iput-boolean p3, p0, Lcom/ss/android/vesdk/TERecorder$16;->val$needPreviewAfterCapture:Z

    iput-boolean p4, p0, Lcom/ss/android/vesdk/TERecorder$16;->val$preventRenderAfterRender:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken(Lcom/ss/android/ttve/model/VEFrame;)V
    .registers 5

    if-nez p1, :cond_18

    .line 2976
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder$16;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    const/4 v0, 0x0

    const/16 v1, -0x3e8

    invoke-interface {p1, v0, v1}, Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;->onImageError(II)V

    .line 2977
    iget-boolean p1, p0, Lcom/ss/android/vesdk/TERecorder$16;->val$needPreviewAfterCapture:Z

    if-eqz p1, :cond_17

    .line 2978
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$16;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;
    invoke-static {p0}, Lcom/ss/android/vesdk/TERecorder;->access$600(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/camera/ICameraCapture;

    move-result-object p0

    invoke-interface {p0}, Lcom/ss/android/vesdk/camera/ICameraCapture;->startPreview()I

    :cond_17
    return-void

    .line 2982
    :cond_18
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$16;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iget-object v0, v0, Lcom/ss/android/vesdk/TERecorderBase;->mPictureTakenProxyListener:Lcom/ss/android/vesdk/VERecorder$OnPictureTakenProxyListener;

    if-eqz v0, :cond_37

    .line 2983
    invoke-virtual {p1}, Lcom/ss/android/ttve/model/VEFrame;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/ss/android/ttve/model/VEFrame;->getHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/ss/android/vesdk/VERecorder$OnPictureTakenProxyListener;->proxy(II)Lcom/ss/android/medialib/camera/ImageFrame;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 2984
    iget-object v0, v0, Lcom/ss/android/medialib/camera/ImageFrame;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_37

    .line 2985
    invoke-static {v0}, Lcom/ss/android/vesdk/VEImageUtils;->decompressJPEG(Landroid/graphics/Bitmap;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object v0

    if-eqz v0, :cond_37

    move-object p1, v0

    .line 2991
    :cond_37
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$16;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iget-boolean v1, p0, Lcom/ss/android/vesdk/TERecorder$16;->val$needPreviewAfterCapture:Z

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$16;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    # invokes: Lcom/ss/android/vesdk/TERecorder;->renderPictureFrameWrapper(Lcom/ss/android/ttve/model/VEFrame;ZLcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;)V
    invoke-static {v0, p1, v1, p0}, Lcom/ss/android/vesdk/TERecorder;->access$2400(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/ttve/model/VEFrame;ZLcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;)V

    return-void
.end method

.method public onTakenFail(Ljava/lang/Exception;)V
    .registers 4

    .line 2997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "capture failed, exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TERecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2999
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0x3e8

    if-eqz p1, :cond_3b

    .line 3001
    const-string v1, "errorCode="

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3b

    .line 3003
    :try_start_2a
    array-length v1, p1

    if-lez v1, :cond_3b

    .line 3004
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_36} :catch_37

    goto :goto_3b

    :catch_37
    move-exception p1

    .line 3007
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3010
    :cond_3b
    :goto_3b
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder$16;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;->onImageError(II)V

    .line 3012
    iget-boolean p1, p0, Lcom/ss/android/vesdk/TERecorder$16;->val$needPreviewAfterCapture:Z

    if-eqz p1, :cond_57

    .line 3013
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder$16;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iget-object p1, p1, Lcom/ss/android/vesdk/TERecorder;->mCameraClient:Lcom/ss/android/vesdk/camera/TECamera;

    iget-boolean v0, p0, Lcom/ss/android/vesdk/TERecorder$16;->val$preventRenderAfterRender:Z

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/camera/TECamera;->preventTextureRender(Z)V

    .line 3014
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$16;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;
    invoke-static {p0}, Lcom/ss/android/vesdk/TERecorder;->access$600(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/camera/ICameraCapture;

    move-result-object p0

    invoke-interface {p0}, Lcom/ss/android/vesdk/camera/ICameraCapture;->startPreview()I

    :cond_57
    return-void
.end method
