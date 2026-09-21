.class Lcom/ss/android/vesdk/VERecorder$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/VERecorder;->capture(Lcom/ss/android/vesdk/VECaptureRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/VERecorder;

.field final synthetic val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

.field final synthetic val$isEnableShotScreenAfterCaptureFailed:Z

.field final synthetic val$request:Lcom/ss/android/vesdk/VECaptureRequest;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VERecorder;Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;ZLcom/ss/android/vesdk/VECaptureRequest;)V
    .registers 5

    .line 2079
    iput-object p1, p0, Lcom/ss/android/vesdk/VERecorder$11;->this$0:Lcom/ss/android/vesdk/VERecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/VERecorder$11;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    iput-boolean p3, p0, Lcom/ss/android/vesdk/VERecorder$11;->val$isEnableShotScreenAfterCaptureFailed:Z

    iput-object p4, p0, Lcom/ss/android/vesdk/VERecorder$11;->val$request:Lcom/ss/android/vesdk/VECaptureRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageError(II)V
    .registers 4

    if-nez p1, :cond_2b

    .line 2103
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VERecorder$11;->val$isEnableShotScreenAfterCaptureFailed:Z

    if-eqz v0, :cond_2b

    .line 2104
    const-string p1, "VERecorder"

    const-string p2, "camera capture failed, use shot screen..."

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2105
    iget-object p1, p0, Lcom/ss/android/vesdk/VERecorder$11;->this$0:Lcom/ss/android/vesdk/VERecorder;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/ss/android/vesdk/VERecorder;->enableFaceBeautifyDetect(I)V

    .line 2106
    iget-object p1, p0, Lcom/ss/android/vesdk/VERecorder$11;->val$request:Lcom/ss/android/vesdk/VECaptureRequest;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VECaptureRequest;->setImageWidth(I)V

    .line 2107
    iget-object p1, p0, Lcom/ss/android/vesdk/VERecorder$11;->val$request:Lcom/ss/android/vesdk/VECaptureRequest;

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VECaptureRequest;->setImageHeight(I)V

    .line 2108
    iget-object p1, p0, Lcom/ss/android/vesdk/VERecorder$11;->val$request:Lcom/ss/android/vesdk/VECaptureRequest;

    invoke-virtual {p1, p2}, Lcom/ss/android/vesdk/VECaptureRequest;->setForceUseFramePreviewSource(Z)V

    .line 2109
    iget-object p1, p0, Lcom/ss/android/vesdk/VERecorder$11;->this$0:Lcom/ss/android/vesdk/VERecorder;

    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder$11;->val$request:Lcom/ss/android/vesdk/VECaptureRequest;

    invoke-virtual {p1, p0}, Lcom/ss/android/vesdk/VERecorder;->capture(Lcom/ss/android/vesdk/VECaptureRequest;)V

    return-void

    .line 2111
    :cond_2b
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder$11;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    if-eqz p0, :cond_32

    .line 2112
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;->onImageError(II)V

    :cond_32
    return-void
.end method

.method public onImageRenderPending(II)V
    .registers 3

    .line 2089
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder$11;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    if-eqz p0, :cond_7

    .line 2090
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;->onImageRenderPending(II)V

    :cond_7
    return-void
.end method

.method public onImageRenderSuccess(Landroid/graphics/Bitmap;Lcom/ss/android/ttve/model/VEFrame;)V
    .registers 3

    .line 2096
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder$11;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    if-eqz p0, :cond_7

    .line 2097
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;->onImageRenderSuccess(Landroid/graphics/Bitmap;Lcom/ss/android/ttve/model/VEFrame;)V

    :cond_7
    return-void
.end method

.method public onShutter(II)V
    .registers 3

    .line 2082
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder$11;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    if-eqz p0, :cond_7

    .line 2083
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;->onShutter(II)V

    :cond_7
    return-void
.end method
