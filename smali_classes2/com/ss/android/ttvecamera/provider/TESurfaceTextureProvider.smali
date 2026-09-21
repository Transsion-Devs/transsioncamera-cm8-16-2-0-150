.class public Lcom/ss/android/ttvecamera/provider/TESurfaceTextureProvider;
.super Lcom/ss/android/ttvecamera/provider/TECameraProvider;
.source "SourceFile"


# instance fields
.field mMVPMatrix:[F

.field mOnFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field mSurface:Landroid/view/Surface;

.field mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field mTextureID:I


# direct methods
.method public constructor <init>(Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;Lcom/ss/android/ttvecamera/TECameraBase;)V
    .registers 3

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/ss/android/ttvecamera/provider/TECameraProvider;-><init>(Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;Lcom/ss/android/ttvecamera/TECameraBase;)V

    const/16 p2, 0x10

    .line 23
    new-array p2, p2, [F

    iput-object p2, p0, Lcom/ss/android/ttvecamera/provider/TESurfaceTextureProvider;->mMVPMatrix:[F

    .line 26
    new-instance p2, Lcom/ss/android/ttvecamera/provider/TESurfaceTextureProvider$1;

    invoke-direct {p2, p0}, Lcom/ss/android/ttvecamera/provider/TESurfaceTextureProvider$1;-><init>(Lcom/ss/android/ttvecamera/provider/TESurfaceTextureProvider;)V

    iput-object p2, p0, Lcom/ss/android/ttvecamera/provider/TESurfaceTextureProvider;->mOnFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 41
    iget-object p2, p1, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iput-object p2, p0, Lcom/ss/android/ttvecamera/provider/TESurfaceTextureProvider;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 42
    iget p1, p1, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mTextureOES:I

    iput p1, p0, Lcom/ss/android/ttvecamera/provider/TESurfaceTextureProvider;->mTextureID:I

    .line 43
    new-instance p1, Landroid/view/Surface;

    iget-object p2, p0, Lcom/ss/android/ttvecamera/provider/TESurfaceTextureProvider;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lcom/ss/android/ttvecamera/provider/TESurfaceTextureProvider;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method private initOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/ss/android/ttvecamera/provider/TESurfaceTextureProvider;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mCamera:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraBase;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public getSurface()Landroid/view/Surface;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TESurfaceTextureProvider;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TESurfaceTextureProvider;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method public getTextureID()I
    .registers 1

    .line 153
    iget p0, p0, Lcom/ss/android/ttvecamera/provider/TESurfaceTextureProvider;->mTextureID:I

    return p0
.end method

.method public getType()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public init(Landroid/hardware/camera2/params/StreamConfigurationMap;Lcom/ss/android/ttvecamera/TEFrameSizei;)I
    .registers 5

    .line 68
    const-class v0, Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mCamera:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {v1}, Lcom/ss/android/ttvecamera/TECameraBase;->getCameraSettings()Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object v1

    iget-boolean v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableRecordStream:Z

    if-eqz v1, :cond_27

    .line 71
    const-class v1, Landroid/media/MediaRecorder;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->convertSizes([Landroid/util/Size;)Ljava/util/List;

    move-result-object p1

    .line 72
    invoke-static {v0}, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->convertSizes([Landroid/util/Size;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ss/android/ttvecamera/TECameraUtils;->getSameFrameSize(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttvecamera/provider/TESurfaceTextureProvider;->init(Ljava/util/List;Lcom/ss/android/ttvecamera/TEFrameSizei;)I

    move-result p0

    return p0

    .line 74
    :cond_27
    invoke-static {v0}, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->convertSizes([Landroid/util/Size;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttvecamera/provider/TESurfaceTextureProvider;->init(Ljava/util/List;Lcom/ss/android/ttvecamera/TEFrameSizei;)I

    move-result p0

    return p0
.end method

.method public init(Ljava/util/List;Lcom/ss/android/ttvecamera/TEFrameSizei;)I
    .registers 4
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

    if-eqz p1, :cond_26

    .line 49
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_26

    .line 50
    iget-object p2, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mPreviewSizeCallback:Lcom/ss/android/ttvecamera/TECameraBase$PreviewSizeCallBack;

    if-eqz p2, :cond_1e

    .line 51
    invoke-interface {p2, p1}, Lcom/ss/android/ttvecamera/TECameraBase$PreviewSizeCallBack;->getPreviewSize(Ljava/util/List;)Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object p2

    if-eqz p2, :cond_15

    .line 53
    iput-object p2, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    goto :goto_26

    .line 55
    :cond_15
    iget-object p2, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    invoke-static {p1, p2}, Lcom/ss/android/ttvecamera/TECameraUtils;->calcPreviewSize(Ljava/util/List;Lcom/ss/android/ttvecamera/TEFrameSizei;)Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    goto :goto_26

    .line 58
    :cond_1e
    iget-object p2, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    invoke-static {p1, p2}, Lcom/ss/android/ttvecamera/TECameraUtils;->calcPreviewSize(Ljava/util/List;Lcom/ss/android/ttvecamera/TEFrameSizei;)Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 61
    :cond_26
    :goto_26
    iget-object p1, p0, Lcom/ss/android/ttvecamera/provider/TESurfaceTextureProvider;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object p2, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget v0, p2, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    iget p2, p2, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    invoke-virtual {p1, v0, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 62
    iget-object p1, p0, Lcom/ss/android/ttvecamera/provider/TESurfaceTextureProvider;->mOnFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/provider/TESurfaceTextureProvider;->initOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    const/4 p0, 0x0

    return p0
.end method

.method public reAllocateSurfaceTexture()V
    .registers 3

    .line 137
    iget-object v0, p0, Lcom/ss/android/ttvecamera/provider/TESurfaceTextureProvider;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_7

    .line 138
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 141
    :cond_7
    iget-object v0, p0, Lcom/ss/android/ttvecamera/provider/TESurfaceTextureProvider;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_e

    .line 142
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 145
    :cond_e
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/ss/android/ttvecamera/provider/TESurfaceTextureProvider;->mTextureID:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/provider/TESurfaceTextureProvider;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 146
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/provider/TESurfaceTextureProvider;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/provider/TESurfaceTextureProvider;->mSurface:Landroid/view/Surface;

    .line 148
    iget-object v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mListener:Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TESurfaceTextureProvider;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-interface {v0, p0}, Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;->onNewSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public release()V
    .registers 2

    .line 120
    invoke-super {p0}, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->release()V

    .line 121
    iget-object v0, p0, Lcom/ss/android/ttvecamera/provider/TESurfaceTextureProvider;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_d

    .line 122
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/ss/android/ttvecamera/provider/TESurfaceTextureProvider;->mSurface:Landroid/view/Surface;

    :cond_d
    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;Z)V
    .registers 4

    .line 85
    iget-object v0, p0, Lcom/ss/android/ttvecamera/provider/TESurfaceTextureProvider;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_7

    .line 86
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 89
    :cond_7
    iget-object v0, p0, Lcom/ss/android/ttvecamera/provider/TESurfaceTextureProvider;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_e

    .line 90
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 93
    :cond_e
    iput-object p1, p0, Lcom/ss/android/ttvecamera/provider/TESurfaceTextureProvider;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 94
    new-instance p1, Landroid/view/Surface;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/provider/TESurfaceTextureProvider;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lcom/ss/android/ttvecamera/provider/TESurfaceTextureProvider;->mSurface:Landroid/view/Surface;

    .line 95
    iget-object p1, p0, Lcom/ss/android/ttvecamera/provider/TESurfaceTextureProvider;->mOnFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/provider/TESurfaceTextureProvider;->initOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 97
    iget-object p1, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mListener:Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;

    if-eqz p1, :cond_2d

    instance-of v0, p1, Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListenerWithAR;

    if-eqz v0, :cond_2d

    .line 98
    check-cast p1, Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListenerWithAR;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TESurfaceTextureProvider;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-interface {p1, p0, p2}, Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListenerWithAR;->onNewSurfaceTexture(Landroid/graphics/SurfaceTexture;Z)V

    :cond_2d
    return-void
.end method

.method public triggerSurfaceTextureOnFrameAvailable()V
    .registers 2

    .line 104
    invoke-super {p0}, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->triggerSurfaceTextureOnFrameAvailable()V

    .line 105
    iget-object v0, p0, Lcom/ss/android/ttvecamera/provider/TESurfaceTextureProvider;->mOnFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TESurfaceTextureProvider;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-interface {v0, p0}, Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;->onFrameAvailable(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method
