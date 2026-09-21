.class Lcom/ss/android/vesdk/video/TEVideoDataInterface$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/video/TEVideoDataInterface;->setCapturePipeline(Lcom/ss/android/vesdk/frame/TECapturePipeline;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/video/TEVideoDataInterface;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/video/TEVideoDataInterface;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/ss/android/vesdk/video/TEVideoDataInterface$1;->this$0:Lcom/ss/android/vesdk/video/TEVideoDataInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameCaptured(Lcom/ss/android/ttvecamera/TECameraFrame;)V
    .registers 9

    .line 77
    iget-object v0, p0, Lcom/ss/android/vesdk/video/TEVideoDataInterface$1;->this$0:Lcom/ss/android/vesdk/video/TEVideoDataInterface;

    # getter for: Lcom/ss/android/vesdk/video/TEVideoDataInterface;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;
    invoke-static {v0}, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->access$000(Lcom/ss/android/vesdk/video/TEVideoDataInterface;)Lcom/ss/android/vesdk/TextureHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/TextureHolder;->getSurfaceTextureID()I

    move-result v2

    sget-object v5, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_OpenGL_OES:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/ss/android/ttvecamera/TECameraFrame;->initTextureFrame(II[FLcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;I)V

    .line 78
    iget-object p1, p0, Lcom/ss/android/vesdk/video/TEVideoDataInterface$1;->this$0:Lcom/ss/android/vesdk/video/TEVideoDataInterface;

    # invokes: Lcom/ss/android/vesdk/video/TEVideoDataInterface;->setCameraParams(Lcom/ss/android/ttvecamera/TECameraFrame;)V
    invoke-static {p1, v1}, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->access$100(Lcom/ss/android/vesdk/video/TEVideoDataInterface;Lcom/ss/android/ttvecamera/TECameraFrame;)V

    .line 79
    iget-object p0, p0, Lcom/ss/android/vesdk/video/TEVideoDataInterface$1;->this$0:Lcom/ss/android/vesdk/video/TEVideoDataInterface;

    # getter for: Lcom/ss/android/vesdk/video/TEVideoDataInterface;->mHandler:J
    invoke-static {p0}, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->access$200(Lcom/ss/android/vesdk/video/TEVideoDataInterface;)J

    move-result-wide v0

    # invokes: Lcom/ss/android/vesdk/video/TEVideoDataInterface;->nativeNotifyFrameAvailable(J)V
    invoke-static {p0, v0, v1}, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->access$300(Lcom/ss/android/vesdk/video/TEVideoDataInterface;J)V

    return-void
.end method

.method public onFrameSize(Lcom/ss/android/ttvecamera/TEFrameSizei;)V
    .registers 2

    return-void
.end method

.method public onNewSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .line 84
    iget-object p0, p0, Lcom/ss/android/vesdk/video/TEVideoDataInterface$1;->this$0:Lcom/ss/android/vesdk/video/TEVideoDataInterface;

    # setter for: Lcom/ss/android/vesdk/video/TEVideoDataInterface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {p0, p1}, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->access$402(Lcom/ss/android/vesdk/video/TEVideoDataInterface;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    return-void
.end method
