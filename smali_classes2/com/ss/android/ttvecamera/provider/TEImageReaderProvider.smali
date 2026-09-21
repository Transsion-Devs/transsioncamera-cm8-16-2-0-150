.class public Lcom/ss/android/ttvecamera/provider/TEImageReaderProvider;
.super Lcom/ss/android/ttvecamera/provider/TECameraProvider;
.source "SourceFile"


# instance fields
.field mImageReader:Landroid/media/ImageReader;


# direct methods
.method public constructor <init>(Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;Lcom/ss/android/ttvecamera/TECameraBase;)V
    .registers 3

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/ss/android/ttvecamera/provider/TECameraProvider;-><init>(Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;Lcom/ss/android/ttvecamera/TECameraBase;)V

    return-void
.end method


# virtual methods
.method public getSurface()Landroid/view/Surface;
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TEImageReaderProvider;->mImageReader:Landroid/media/ImageReader;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getType()I
    .registers 1

    const/4 p0, 0x2

    return p0
.end method

.method public init(Landroid/hardware/camera2/params/StreamConfigurationMap;Lcom/ss/android/ttvecamera/TEFrameSizei;)I
    .registers 9

    .line 67
    invoke-virtual {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mFormat:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    invoke-static {v1}, Lcom/ss/android/ttvecamera/TECameraFrame;->pixelFormat2ImageFormat(Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;)I

    move-result v1

    .line 70
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_d
    if-ge v4, v2, :cond_18

    aget v5, v0, v4

    if-ne v5, v1, :cond_15

    move v3, v5

    goto :goto_18

    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_18
    :goto_18
    if-nez v3, :cond_20

    .line 79
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_YUV420:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    iput-object v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mFormat:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    const/16 v3, 0x23

    .line 82
    :cond_20
    invoke-virtual {p1, v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p1

    .line 83
    invoke-static {p1}, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->convertSizes([Landroid/util/Size;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttvecamera/provider/TEImageReaderProvider;->init(Ljava/util/List;Lcom/ss/android/ttvecamera/TEFrameSizei;)I

    move-result p0

    return p0
.end method

.method public init(Ljava/util/List;Lcom/ss/android/ttvecamera/TEFrameSizei;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ">;",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ")I"
        }
    .end annotation

    if-eqz p1, :cond_10

    .line 33
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_10

    .line 34
    iget-object p2, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    invoke-static {p1, p2}, Lcom/ss/android/ttvecamera/TECameraUtils;->calcPreviewSize(Ljava/util/List;Lcom/ss/android/ttvecamera/TEFrameSizei;)Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 37
    :cond_10
    iget-object p1, p0, Lcom/ss/android/ttvecamera/provider/TEImageReaderProvider;->mImageReader:Landroid/media/ImageReader;

    if-eqz p1, :cond_17

    .line 38
    invoke-virtual {p1}, Landroid/media/ImageReader;->close()V

    .line 40
    :cond_17
    iget-object p1, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget p2, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    iget p1, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    iget-object v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mFormat:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    .line 41
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraFrame;->pixelFormat2ImageFormat(Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;)I

    move-result v0

    const/4 v1, 0x1

    .line 40
    invoke-static {p2, p1, v0, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ttvecamera/provider/TEImageReaderProvider;->mImageReader:Landroid/media/ImageReader;

    .line 43
    new-instance p2, Lcom/ss/android/ttvecamera/provider/TEImageReaderProvider$1;

    invoke-direct {p2, p0}, Lcom/ss/android/ttvecamera/provider/TEImageReaderProvider$1;-><init>(Lcom/ss/android/ttvecamera/provider/TEImageReaderProvider;)V

    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mCamera:Lcom/ss/android/ttvecamera/TECameraBase;

    .line 60
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraBase;->getHandler()Landroid/os/Handler;

    move-result-object p0

    .line 43
    invoke-virtual {p1, p2, p0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    const/4 p0, 0x0

    return p0
.end method

.method public reAllocateSurfaceTexture()V
    .registers 1

    return-void
.end method

.method public release()V
    .registers 2

    .line 108
    invoke-super {p0}, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->release()V

    .line 109
    iget-object v0, p0, Lcom/ss/android/ttvecamera/provider/TEImageReaderProvider;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_d

    .line 110
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/ss/android/ttvecamera/provider/TEImageReaderProvider;->mImageReader:Landroid/media/ImageReader;

    :cond_d
    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;Z)V
    .registers 3

    return-void
.end method
