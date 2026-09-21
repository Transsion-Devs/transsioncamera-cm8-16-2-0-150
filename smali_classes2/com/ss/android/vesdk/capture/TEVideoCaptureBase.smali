.class public abstract Lcom/ss/android/vesdk/capture/TEVideoCaptureBase;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TEVideoCaptureBase"


# instance fields
.field protected final mCapturePipelines:Lcom/ss/android/vesdk/ConcurrentList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ss/android/vesdk/ConcurrentList<",
            "Lcom/ss/android/vesdk/frame/TECapturePipeline;",
            ">;"
        }
    .end annotation
.end field

.field protected mCaptureSettings:Lcom/ss/android/vesdk/capture/TECaptureSettingsBase;

.field protected volatile mIsCapturing:Z

.field protected mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/ss/android/vesdk/ConcurrentList;

    invoke-direct {v0}, Lcom/ss/android/vesdk/ConcurrentList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/capture/TEVideoCaptureBase;->mCapturePipelines:Lcom/ss/android/vesdk/ConcurrentList;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/ss/android/vesdk/capture/TEVideoCaptureBase;->mIsCapturing:Z

    return-void
.end method


# virtual methods
.method public getCapturePipeline()Lcom/ss/android/vesdk/frame/TECapturePipeline;
    .registers 2

    .line 113
    iget-object p0, p0, Lcom/ss/android/vesdk/capture/TEVideoCaptureBase;->mCapturePipelines:Lcom/ss/android/vesdk/ConcurrentList;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/ConcurrentList;->getImmutableList()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/frame/TECapturePipeline;

    return-object p0
.end method

.method protected init(Lcom/ss/android/vesdk/capture/TECaptureSettingsBase;)I
    .registers 5

    .line 32
    iget-boolean v0, p0, Lcom/ss/android/vesdk/capture/TEVideoCaptureBase;->mIsCapturing:Z

    if-eqz v0, :cond_6

    const/4 p0, -0x2

    return p0

    .line 36
    :cond_6
    iput-object p1, p0, Lcom/ss/android/vesdk/capture/TEVideoCaptureBase;->mCaptureSettings:Lcom/ss/android/vesdk/capture/TECaptureSettingsBase;

    .line 39
    invoke-virtual {p1}, Lcom/ss/android/vesdk/capture/TECaptureSettingsBase;->getPixelFormat()Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    move-result-object p1

    sget-object v0, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_OpenGL_OES:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    if-ne p1, v0, :cond_33

    .line 40
    new-instance p1, Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget-object v0, p0, Lcom/ss/android/vesdk/capture/TEVideoCaptureBase;->mCaptureSettings:Lcom/ss/android/vesdk/capture/TECaptureSettingsBase;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/capture/TECaptureSettingsBase;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/ss/android/vesdk/capture/TEVideoCaptureBase;->mCaptureSettings:Lcom/ss/android/vesdk/capture/TECaptureSettingsBase;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/capture/TECaptureSettingsBase;->getHeight()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    .line 41
    new-instance v0, Lcom/ss/android/vesdk/frame/TETextureCapturePipeline;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, v1}, Lcom/ss/android/vesdk/frame/TETextureCapturePipeline;-><init>(Lcom/ss/android/ttvecamera/TEFrameSizei;Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;ILandroid/graphics/SurfaceTexture;)V

    .line 46
    iget-object p1, p0, Lcom/ss/android/vesdk/capture/TEVideoCaptureBase;->mCapturePipelines:Lcom/ss/android/vesdk/ConcurrentList;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/ConcurrentList;->clear()V

    .line 47
    iget-object p0, p0, Lcom/ss/android/vesdk/capture/TEVideoCaptureBase;->mCapturePipelines:Lcom/ss/android/vesdk/ConcurrentList;

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/ConcurrentList;->add(Ljava/lang/Object;)Z

    return v2

    :cond_33
    const/4 p0, -0x1

    return p0
.end method

.method public release()V
    .registers 1

    return-void
.end method

.method public startCapture()I
    .registers 6

    .line 59
    iget-boolean v0, p0, Lcom/ss/android/vesdk/capture/TEVideoCaptureBase;->mIsCapturing:Z

    if-eqz v0, :cond_6

    const/4 p0, -0x2

    return p0

    .line 63
    :cond_6
    iget-object v0, p0, Lcom/ss/android/vesdk/capture/TEVideoCaptureBase;->mCapturePipelines:Lcom/ss/android/vesdk/ConcurrentList;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/ConcurrentList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, -0x1

    return p0

    .line 67
    :cond_10
    iget-object v0, p0, Lcom/ss/android/vesdk/capture/TEVideoCaptureBase;->mCapturePipelines:Lcom/ss/android/vesdk/ConcurrentList;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/ConcurrentList;->getImmutableList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/vesdk/frame/TECapturePipeline;

    if-eqz v0, :cond_49

    .line 69
    new-instance v2, Landroid/graphics/SurfaceTexture;

    invoke-direct {v2, v1}, Landroid/graphics/SurfaceTexture;-><init>(Z)V

    .line 70
    invoke-virtual {v0}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->getCaptureListener()Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;->onNewSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 71
    iget-object v3, p0, Lcom/ss/android/vesdk/capture/TEVideoCaptureBase;->mCaptureSettings:Lcom/ss/android/vesdk/capture/TECaptureSettingsBase;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/capture/TECaptureSettingsBase;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/ss/android/vesdk/capture/TEVideoCaptureBase;->mCaptureSettings:Lcom/ss/android/vesdk/capture/TECaptureSettingsBase;

    invoke-virtual {v4}, Lcom/ss/android/vesdk/capture/TECaptureSettingsBase;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 72
    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v3, p0, Lcom/ss/android/vesdk/capture/TEVideoCaptureBase;->mSurface:Landroid/view/Surface;

    .line 73
    new-instance v3, Lcom/ss/android/vesdk/capture/TEVideoCaptureBase$1;

    invoke-direct {v3, p0, v0}, Lcom/ss/android/vesdk/capture/TEVideoCaptureBase$1;-><init>(Lcom/ss/android/vesdk/capture/TEVideoCaptureBase;Lcom/ss/android/vesdk/frame/TECapturePipeline;)V

    invoke-virtual {v2, v3}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    :cond_49
    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/ss/android/vesdk/capture/TEVideoCaptureBase;->mIsCapturing:Z

    return v1
.end method

.method public stopCapture()I
    .registers 2

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/ss/android/vesdk/capture/TEVideoCaptureBase;->mIsCapturing:Z

    return v0
.end method
