.class Lcom/ss/android/vesdk/TERecorder$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TERecorder;->renderPictureFrameWrapper(Lcom/ss/android/ttve/model/VEFrame;ZLcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TERecorder;

.field final synthetic val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

.field final synthetic val$directBitmap:Landroid/graphics/Bitmap;

.field final synthetic val$frame:Lcom/ss/android/ttve/model/VEFrame;

.field final synthetic val$isSyncCapture:Z

.field final synthetic val$needPreviewAfterCapture:Z


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TERecorder;ZLandroid/graphics/Bitmap;Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;Lcom/ss/android/ttve/model/VEFrame;Z)V
    .registers 7

    .line 2934
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$15;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iput-boolean p2, p0, Lcom/ss/android/vesdk/TERecorder$15;->val$isSyncCapture:Z

    iput-object p3, p0, Lcom/ss/android/vesdk/TERecorder$15;->val$directBitmap:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/ss/android/vesdk/TERecorder$15;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    iput-object p5, p0, Lcom/ss/android/vesdk/TERecorder$15;->val$frame:Lcom/ss/android/ttve/model/VEFrame;

    iput-boolean p6, p0, Lcom/ss/android/vesdk/TERecorder$15;->val$needPreviewAfterCapture:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult([III)V
    .registers 7

    .line 2937
    iget-boolean v0, p0, Lcom/ss/android/vesdk/TERecorder$15;->val$isSyncCapture:Z

    const/16 v1, -0x7d0

    const/4 v2, 0x1

    if-eqz v0, :cond_20

    .line 2938
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$15;->val$directBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1a

    if-nez p1, :cond_1a

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1a

    if-ne p3, p1, :cond_1a

    .line 2939
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder$15;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder$15;->val$frame:Lcom/ss/android/ttve/model/VEFrame;

    invoke-interface {p1, v0, p2}, Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;->onImageRenderSuccess(Landroid/graphics/Bitmap;Lcom/ss/android/ttve/model/VEFrame;)V

    goto :goto_41

    .line 2941
    :cond_1a
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder$15;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    invoke-interface {p1, v2, v1}, Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;->onImageError(II)V

    goto :goto_41

    :cond_20
    if-eqz p1, :cond_3c

    .line 2944
    array-length v0, p1

    if-nez v0, :cond_26

    goto :goto_3c

    .line 2948
    :cond_26
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_34

    .line 2950
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder$15;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    invoke-interface {p1, v2, v1}, Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;->onImageError(II)V

    goto :goto_41

    .line 2953
    :cond_34
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder$15;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    iget-object p3, p0, Lcom/ss/android/vesdk/TERecorder$15;->val$frame:Lcom/ss/android/ttve/model/VEFrame;

    invoke-interface {p2, p1, p3}, Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;->onImageRenderSuccess(Landroid/graphics/Bitmap;Lcom/ss/android/ttve/model/VEFrame;)V

    goto :goto_41

    .line 2945
    :cond_3c
    :goto_3c
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder$15;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    invoke-interface {p1, v2, v1}, Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;->onImageError(II)V

    .line 2956
    :goto_41
    iget-boolean p1, p0, Lcom/ss/android/vesdk/TERecorder$15;->val$needPreviewAfterCapture:Z

    if-eqz p1, :cond_4e

    .line 2957
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$15;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;
    invoke-static {p0}, Lcom/ss/android/vesdk/TERecorder;->access$600(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/camera/ICameraCapture;

    move-result-object p0

    invoke-interface {p0}, Lcom/ss/android/vesdk/camera/ICameraCapture;->startPreview()I

    :cond_4e
    return-void
.end method
