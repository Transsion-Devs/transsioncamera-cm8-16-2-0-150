.class Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->setupImageReader(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)V
    .registers 2

    .line 1399
    iput-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$7;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .registers 6

    .line 1402
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    if-nez p1, :cond_15

    .line 1404
    iget-object p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$7;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "no image data"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/16 v0, -0x3e8

    # invokes: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->onCaptureFailed(Ljava/lang/Exception;I)V
    invoke-static {p0, p1, v0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$4200(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;Ljava/lang/Exception;I)V

    return-void

    .line 1407
    :cond_15
    iget-object v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$7;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v1

    const/16 v2, 0x100

    const/4 v3, 0x0

    if-eq v1, v2, :cond_27

    iget-object v1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$7;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCaptureResultCache:Landroid/hardware/camera2/TotalCaptureResult;
    invoke-static {v1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$2100(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v1

    goto :goto_28

    :cond_27
    move-object v1, v3

    :goto_28
    # invokes: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->processCaptureFrame(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V
    invoke-static {v0, p1, v1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$4100(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 1408
    iget-object p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$7;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # setter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCaptureResultCache:Landroid/hardware/camera2/TotalCaptureResult;
    invoke-static {p0, v3}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$2102(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/TotalCaptureResult;

    .line 1409
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    return-void
.end method
