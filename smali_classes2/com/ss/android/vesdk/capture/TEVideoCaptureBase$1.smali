.class Lcom/ss/android/vesdk/capture/TEVideoCaptureBase$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/capture/TEVideoCaptureBase;->startCapture()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/capture/TEVideoCaptureBase;

.field final synthetic val$capturePipeline:Lcom/ss/android/vesdk/frame/TECapturePipeline;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/capture/TEVideoCaptureBase;Lcom/ss/android/vesdk/frame/TECapturePipeline;)V
    .registers 3

    .line 73
    iput-object p1, p0, Lcom/ss/android/vesdk/capture/TEVideoCaptureBase$1;->this$0:Lcom/ss/android/vesdk/capture/TEVideoCaptureBase;

    iput-object p2, p0, Lcom/ss/android/vesdk/capture/TEVideoCaptureBase$1;->val$capturePipeline:Lcom/ss/android/vesdk/frame/TECapturePipeline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 7

    .line 76
    const-string v0, "TEVideoCaptureBase"

    const-string v1, "onFrameAvailable"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/ss/android/vesdk/capture/TEVideoCaptureBase$1;->val$capturePipeline:Lcom/ss/android/vesdk/frame/TECapturePipeline;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->getCaptureListener()Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 79
    new-instance v1, Lcom/ss/android/ttvecamera/TECameraFrame;

    iget-object v2, p0, Lcom/ss/android/vesdk/capture/TEVideoCaptureBase$1;->this$0:Lcom/ss/android/vesdk/capture/TEVideoCaptureBase;

    iget-object v2, v2, Lcom/ss/android/vesdk/capture/TEVideoCaptureBase;->mCaptureSettings:Lcom/ss/android/vesdk/capture/TECaptureSettingsBase;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/capture/TECaptureSettingsBase;->getWidth()I

    move-result v2

    iget-object p0, p0, Lcom/ss/android/vesdk/capture/TEVideoCaptureBase$1;->this$0:Lcom/ss/android/vesdk/capture/TEVideoCaptureBase;

    iget-object p0, p0, Lcom/ss/android/vesdk/capture/TEVideoCaptureBase;->mCaptureSettings:Lcom/ss/android/vesdk/capture/TECaptureSettingsBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/capture/TECaptureSettingsBase;->getHeight()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v3

    invoke-direct {v1, v2, p0, v3, v4}, Lcom/ss/android/ttvecamera/TECameraFrame;-><init>(IIJ)V

    .line 80
    invoke-interface {v0, v1}, Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;->onFrameCaptured(Lcom/ss/android/ttvecamera/TECameraFrame;)V

    :cond_2b
    return-void
.end method
