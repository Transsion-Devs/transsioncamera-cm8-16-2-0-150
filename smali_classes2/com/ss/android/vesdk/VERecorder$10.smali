.class Lcom/ss/android/vesdk/VERecorder$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;


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

.field final synthetic val$finalH:I

.field final synthetic val$finalW:I

.field final synthetic val$request:Lcom/ss/android/vesdk/VECaptureRequest;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VERecorder;Lcom/ss/android/vesdk/VECaptureRequest;II)V
    .registers 5

    .line 2046
    iput-object p1, p0, Lcom/ss/android/vesdk/VERecorder$10;->this$0:Lcom/ss/android/vesdk/VERecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/VERecorder$10;->val$request:Lcom/ss/android/vesdk/VECaptureRequest;

    iput p3, p0, Lcom/ss/android/vesdk/VERecorder$10;->val$finalW:I

    iput p4, p0, Lcom/ss/android/vesdk/VERecorder$10;->val$finalH:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShotScreen(Landroid/graphics/Bitmap;I)V
    .registers 4

    .line 2049
    iget-object v0, p0, Lcom/ss/android/vesdk/VERecorder$10;->val$request:Lcom/ss/android/vesdk/VECaptureRequest;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VECaptureRequest;->getBitmapCaptureCallback()Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    move-result-object v0

    if-eqz v0, :cond_28

    if-eqz p1, :cond_24

    if-gez p2, :cond_d

    goto :goto_24

    .line 2054
    :cond_d
    iget p2, p0, Lcom/ss/android/vesdk/VERecorder$10;->val$finalW:I

    iget p0, p0, Lcom/ss/android/vesdk/VERecorder$10;->val$finalH:I

    invoke-interface {v0, p2, p0}, Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;->onShutter(II)V

    .line 2055
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-interface {v0, p0, p2}, Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;->onImageRenderPending(II)V

    const/4 p0, 0x0

    .line 2056
    invoke-interface {v0, p1, p0}, Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;->onImageRenderSuccess(Landroid/graphics/Bitmap;Lcom/ss/android/ttve/model/VEFrame;)V

    return-void

    :cond_24
    :goto_24
    const/4 p0, 0x1

    .line 2052
    invoke-interface {v0, p0, p2}, Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;->onImageError(II)V

    :cond_28
    return-void
.end method
