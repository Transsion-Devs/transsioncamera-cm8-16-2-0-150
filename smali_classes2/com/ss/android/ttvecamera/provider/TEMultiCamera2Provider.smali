.class public Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider;
.super Lcom/ss/android/ttvecamera/provider/TECameraProvider;
.source "SourceFile"


# instance fields
.field mImageReaders:[Landroid/media/ImageReader;

.field mMVPMatrix:[F

.field mSurface:[Landroid/view/Surface;

.field mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field mTextureID:I


# direct methods
.method public constructor <init>(Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;Lcom/ss/android/ttvecamera/TECameraBase;)V
    .registers 4

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/ss/android/ttvecamera/provider/TECameraProvider;-><init>(Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;Lcom/ss/android/ttvecamera/TECameraBase;)V

    const/16 p2, 0x10

    .line 27
    new-array p2, p2, [F

    iput-object p2, p0, Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider;->mMVPMatrix:[F

    .line 34
    iget-object p2, p1, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iput-object p2, p0, Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 35
    iget p1, p1, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mTextureOES:I

    iput p1, p0, Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider;->mTextureID:I

    .line 36
    iget p1, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mImageReaderCount:I

    new-array v0, p1, [Landroid/media/ImageReader;

    iput-object v0, p0, Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider;->mImageReaders:[Landroid/media/ImageReader;

    if-eqz p2, :cond_1b

    add-int/lit8 p1, p1, 0x1

    .line 37
    :cond_1b
    new-array p1, p1, [Landroid/view/Surface;

    iput-object p1, p0, Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider;->mSurface:[Landroid/view/Surface;

    if-eqz p2, :cond_2b

    .line 39
    new-instance p2, Landroid/view/Surface;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p2, p0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 p0, 0x0

    aput-object p2, p1, p0

    :cond_2b
    return-void
.end method


# virtual methods
.method public getSurface()Landroid/view/Surface;
    .registers 2

    .line 50
    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider;->mSurface:[Landroid/view/Surface;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method public getSurfaces()[Landroid/view/Surface;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider;->mSurface:[Landroid/view/Surface;

    return-object p0
.end method

.method public getTextureID()I
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_7

    iget p0, p0, Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider;->mTextureID:I

    return p0

    :cond_7
    invoke-super {p0}, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->getTextureID()I

    move-result p0

    return p0
.end method

.method public getType()I
    .registers 1

    const/16 p0, 0x8

    return p0
.end method

.method public init(Landroid/hardware/camera2/params/StreamConfigurationMap;Lcom/ss/android/ttvecamera/TEFrameSizei;)I
    .registers 9

    .line 126
    invoke-virtual {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mFormat:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    invoke-static {v1}, Lcom/ss/android/ttvecamera/TECameraFrame;->pixelFormat2ImageFormat(Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;)I

    move-result v1

    .line 129
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

    .line 138
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_YUV420:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    iput-object v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mFormat:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    const/16 v3, 0x23

    .line 141
    :cond_20
    invoke-virtual {p1, v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p1

    .line 142
    invoke-static {p1}, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->convertSizes([Landroid/util/Size;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider;->init(Ljava/util/List;Lcom/ss/android/ttvecamera/TEFrameSizei;)I

    move-result p0

    return p0
.end method

.method public init(Ljava/util/List;Lcom/ss/android/ttvecamera/TEFrameSizei;)I
    .registers 8
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

    .line 87
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_10

    .line 88
    iget-object p2, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    invoke-static {p1, p2}, Lcom/ss/android/ttvecamera/TECameraUtils;->calcPreviewSize(Ljava/util/List;Lcom/ss/android/ttvecamera/TEFrameSizei;)Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 91
    :cond_10
    iget-object p1, p0, Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz p1, :cond_1d

    .line 92
    iget-object p2, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget v0, p2, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    iget p2, p2, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    invoke-virtual {p1, v0, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    :cond_1d
    const/4 p1, 0x0

    move p2, p1

    .line 95
    :goto_1f
    iget v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mImageReaderCount:I

    if-ge p2, v0, :cond_6c

    .line 96
    iget-object v0, p0, Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider;->mImageReaders:[Landroid/media/ImageReader;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget v2, v1, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    iget v1, v1, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    iget-object v3, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mFormat:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    .line 97
    invoke-static {v3}, Lcom/ss/android/ttvecamera/TECameraFrame;->pixelFormat2ImageFormat(Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;)I

    move-result v3

    const/4 v4, 0x1

    .line 96
    invoke-static {v2, v1, v3, v4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    aput-object v1, v0, p2

    .line 99
    iget-object v0, p0, Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider;->mImageReaders:[Landroid/media/ImageReader;

    aget-object v0, v0, p2

    new-instance v1, Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider$1;

    invoke-direct {v1, p0}, Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider$1;-><init>(Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider;)V

    iget-object v2, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mCamera:Lcom/ss/android/ttvecamera/TECameraBase;

    .line 112
    invoke-virtual {v2}, Lcom/ss/android/ttvecamera/TECameraBase;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 114
    iget-object v0, p0, Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_5d

    .line 115
    iget-object v0, p0, Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider;->mSurface:[Landroid/view/Surface;

    add-int/lit8 v1, p2, 0x1

    iget-object v2, p0, Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider;->mImageReaders:[Landroid/media/ImageReader;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_69

    .line 117
    :cond_5d
    iget-object v0, p0, Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider;->mSurface:[Landroid/view/Surface;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider;->mImageReaders:[Landroid/media/ImageReader;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    aput-object v1, v0, p2

    :goto_69
    add-int/lit8 p2, p2, 0x1

    goto :goto_1f

    :cond_6c
    return p1
.end method

.method public reAllocateSurfaceTexture()V
    .registers 1

    return-void
.end method

.method public release()V
    .registers 6

    .line 147
    invoke-super {p0}, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->release()V

    .line 148
    iget-object v0, p0, Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider;->mImageReaders:[Landroid/media/ImageReader;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 149
    array-length v2, v0

    move v3, v1

    :goto_a
    if-ge v3, v2, :cond_16

    aget-object v4, v0, v3

    if-eqz v4, :cond_13

    .line 151
    invoke-virtual {v4}, Landroid/media/ImageReader;->close()V

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_16
    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider;->mImageReaders:[Landroid/media/ImageReader;

    .line 157
    :cond_19
    iget-object v0, p0, Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_28

    .line 158
    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider;->mSurface:[Landroid/view/Surface;

    if-eqz p0, :cond_28

    aget-object p0, p0, v1

    if-eqz p0, :cond_28

    .line 159
    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    :cond_28
    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;Z)V
    .registers 6

    .line 60
    iget-object v0, p0, Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_5

    goto :goto_34

    .line 64
    :cond_5
    iget-object v0, p0, Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider;->mSurface:[Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    aget-object v0, v0, v1

    if-eqz v0, :cond_11

    .line 65
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 68
    :cond_11
    iget-object v0, p0, Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_18

    .line 69
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 72
    :cond_18
    iput-object p1, p0, Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 73
    iget-object p1, p0, Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider;->mSurface:[Landroid/view/Surface;

    new-instance v0, Landroid/view/Surface;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    aput-object v0, p1, v1

    .line 75
    iget-object p1, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mListener:Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;

    if-eqz p1, :cond_34

    instance-of v0, p1, Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListenerWithAR;

    if-eqz v0, :cond_34

    .line 76
    check-cast p1, Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListenerWithAR;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-interface {p1, p0, p2}, Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListenerWithAR;->onNewSurfaceTexture(Landroid/graphics/SurfaceTexture;Z)V

    :cond_34
    :goto_34
    return-void
.end method
