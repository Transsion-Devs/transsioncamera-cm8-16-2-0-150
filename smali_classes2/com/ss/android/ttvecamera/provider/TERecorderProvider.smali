.class public Lcom/ss/android/ttvecamera/provider/TERecorderProvider;
.super Lcom/ss/android/ttvecamera/provider/TECameraProvider;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TERecorderProvider"


# instance fields
.field private mMVPMatrix:[F

.field private mPreviewSurface:Landroid/view/Surface;

.field private mRecorderSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field mTextureID:I


# direct methods
.method public constructor <init>(Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;Lcom/ss/android/ttvecamera/TECameraBase;)V
    .registers 4

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/ss/android/ttvecamera/provider/TECameraProvider;-><init>(Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;Lcom/ss/android/ttvecamera/TECameraBase;)V

    const/16 p2, 0x10

    .line 26
    new-array p2, p2, [F

    iput-object p2, p0, Lcom/ss/android/ttvecamera/provider/TERecorderProvider;->mMVPMatrix:[F

    .line 31
    iget-object p2, p1, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iput-object p2, p0, Lcom/ss/android/ttvecamera/provider/TERecorderProvider;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 32
    iget p2, p1, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mTextureOES:I

    iput p2, p0, Lcom/ss/android/ttvecamera/provider/TERecorderProvider;->mTextureID:I

    .line 33
    new-instance p2, Landroid/view/Surface;

    iget-object v0, p1, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p2, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lcom/ss/android/ttvecamera/provider/TERecorderProvider;->mPreviewSurface:Landroid/view/Surface;

    .line 34
    iget-object p1, p1, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mRecorderSurface:Landroid/view/Surface;

    iput-object p1, p0, Lcom/ss/android/ttvecamera/provider/TERecorderProvider;->mRecorderSurface:Landroid/view/Surface;

    .line 35
    const-string p0, "TERecorderProvider"

    const-string p1, "constructor"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/ttvecamera/provider/TERecorderProvider;)[F
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TERecorderProvider;->mMVPMatrix:[F

    return-object p0
.end method

.method private initOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
    .registers 3

    .line 108
    iget-object v0, p0, Lcom/ss/android/ttvecamera/provider/TERecorderProvider;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mCamera:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraBase;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public getRecorderSurface()Landroid/view/Surface;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TERecorderProvider;->mRecorderSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public getSurface()Landroid/view/Surface;
    .registers 3

    .line 40
    const-string v0, "TERecorderProvider"

    const-string v1, "get preview surface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TERecorderProvider;->mPreviewSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TERecorderProvider;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method public getType()I
    .registers 1

    const/16 p0, 0x10

    return p0
.end method

.method public init(Landroid/hardware/camera2/params/StreamConfigurationMap;Lcom/ss/android/ttvecamera/TEFrameSizei;)I
    .registers 4

    .line 102
    const-class v0, Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object p1

    .line 103
    invoke-static {p1}, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->convertSizes([Landroid/util/Size;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttvecamera/provider/TERecorderProvider;->init(Ljava/util/List;Lcom/ss/android/ttvecamera/TEFrameSizei;)I

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

    if-eqz p1, :cond_10

    .line 82
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_10

    .line 83
    iget-object p2, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    invoke-static {p1, p2}, Lcom/ss/android/ttvecamera/TECameraUtils;->calcPreviewSize(Ljava/util/List;Lcom/ss/android/ttvecamera/TEFrameSizei;)Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 85
    :cond_10
    iget-object p1, p0, Lcom/ss/android/ttvecamera/provider/TERecorderProvider;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object p2, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget v0, p2, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    iget p2, p2, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    invoke-virtual {p1, v0, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 86
    new-instance p1, Lcom/ss/android/ttvecamera/provider/TERecorderProvider$1;

    invoke-direct {p1, p0}, Lcom/ss/android/ttvecamera/provider/TERecorderProvider$1;-><init>(Lcom/ss/android/ttvecamera/provider/TERecorderProvider;)V

    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/provider/TERecorderProvider;->initOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    const/4 p0, 0x0

    return p0
.end method

.method public reAllocateSurfaceTexture()V
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/ss/android/ttvecamera/provider/TERecorderProvider;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v0, :cond_7

    .line 62
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 65
    :cond_7
    iget-object v0, p0, Lcom/ss/android/ttvecamera/provider/TERecorderProvider;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_e

    .line 66
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 69
    :cond_e
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/ss/android/ttvecamera/provider/TERecorderProvider;->mTextureID:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/provider/TERecorderProvider;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 70
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/provider/TERecorderProvider;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/provider/TERecorderProvider;->mPreviewSurface:Landroid/view/Surface;

    .line 72
    iget-object v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mListener:Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TERecorderProvider;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-interface {v0, p0}, Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;->onNewSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public release()V
    .registers 3

    .line 116
    invoke-super {p0}, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->release()V

    .line 117
    iget-object v0, p0, Lcom/ss/android/ttvecamera/provider/TERecorderProvider;->mPreviewSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 118
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 119
    iput-object v1, p0, Lcom/ss/android/ttvecamera/provider/TERecorderProvider;->mPreviewSurface:Landroid/view/Surface;

    .line 121
    :cond_d
    iget-object v0, p0, Lcom/ss/android/ttvecamera/provider/TERecorderProvider;->mRecorderSurface:Landroid/view/Surface;

    if-eqz v0, :cond_16

    .line 122
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 123
    iput-object v1, p0, Lcom/ss/android/ttvecamera/provider/TERecorderProvider;->mRecorderSurface:Landroid/view/Surface;

    :cond_16
    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;Z)V
    .registers 3

    return-void
.end method
