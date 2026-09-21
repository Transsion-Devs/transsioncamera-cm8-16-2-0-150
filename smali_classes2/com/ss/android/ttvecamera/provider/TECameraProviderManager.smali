.class public Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TECameraProviderManager"


# instance fields
.field private mProvider:Lcom/ss/android/ttvecamera/provider/TECameraProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createProvider(Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;Lcom/ss/android/ttvecamera/TECameraBase;)V
    .registers 5

    .line 48
    iget-object v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->mProvider:Lcom/ss/android/ttvecamera/provider/TECameraProvider;

    if-eqz v0, :cond_7

    .line 49
    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->release()V

    .line 52
    :cond_7
    iget-object v0, p1, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mFormat:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    sget-object v1, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_Recorder:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    if-ne v0, v1, :cond_15

    .line 53
    new-instance v0, Lcom/ss/android/ttvecamera/provider/TERecorderProvider;

    invoke-direct {v0, p1, p2}, Lcom/ss/android/ttvecamera/provider/TERecorderProvider;-><init>(Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;Lcom/ss/android/ttvecamera/TECameraBase;)V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->mProvider:Lcom/ss/android/ttvecamera/provider/TECameraProvider;

    goto :goto_40

    .line 54
    :cond_15
    sget-object v1, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_OpenGL_OES:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    if-ne v0, v1, :cond_21

    .line 55
    new-instance v0, Lcom/ss/android/ttvecamera/provider/TESurfaceTextureProvider;

    invoke-direct {v0, p1, p2}, Lcom/ss/android/ttvecamera/provider/TESurfaceTextureProvider;-><init>(Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;Lcom/ss/android/ttvecamera/TECameraBase;)V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->mProvider:Lcom/ss/android/ttvecamera/provider/TECameraProvider;

    goto :goto_40

    .line 56
    :cond_21
    instance-of v0, p2, Lcom/ss/android/ttvecamera/TECamera2;

    if-eqz v0, :cond_39

    .line 58
    iget v0, p1, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->mImageReaderCount:I

    if-lez v0, :cond_31

    .line 59
    new-instance v0, Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider;

    invoke-direct {v0, p1, p2}, Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider;-><init>(Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;Lcom/ss/android/ttvecamera/TECameraBase;)V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->mProvider:Lcom/ss/android/ttvecamera/provider/TECameraProvider;

    goto :goto_40

    .line 61
    :cond_31
    new-instance v0, Lcom/ss/android/ttvecamera/provider/TEImageReaderProvider;

    invoke-direct {v0, p1, p2}, Lcom/ss/android/ttvecamera/provider/TEImageReaderProvider;-><init>(Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;Lcom/ss/android/ttvecamera/TECameraBase;)V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->mProvider:Lcom/ss/android/ttvecamera/provider/TECameraProvider;

    goto :goto_40

    .line 64
    :cond_39
    new-instance v0, Lcom/ss/android/ttvecamera/provider/TECallbackWithBufferProvider;

    invoke-direct {v0, p1, p2}, Lcom/ss/android/ttvecamera/provider/TECallbackWithBufferProvider;-><init>(Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;Lcom/ss/android/ttvecamera/TECameraBase;)V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->mProvider:Lcom/ss/android/ttvecamera/provider/TECameraProvider;

    .line 66
    :goto_40
    invoke-virtual {p2, p0}, Lcom/ss/android/ttvecamera/TECameraBase;->setProviderManager(Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;)V

    return-void
.end method

.method public getPictureSize()Lcom/ss/android/ttvecamera/TEFrameSizei;
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->mProvider:Lcom/ss/android/ttvecamera/provider/TECameraProvider;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->isPreview()Z

    move-result v0

    if-nez v0, :cond_d

    .line 121
    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->mProvider:Lcom/ss/android/ttvecamera/provider/TECameraProvider;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    return-object p0

    .line 124
    :cond_d
    new-instance p0, Lcom/ss/android/ttvecamera/TEFrameSizei;

    const/16 v0, 0x438

    const/16 v1, 0x780

    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    return-object p0
.end method

.method public getPreviewSize()Lcom/ss/android/ttvecamera/TEFrameSizei;
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->mProvider:Lcom/ss/android/ttvecamera/provider/TECameraProvider;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 113
    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->mProvider:Lcom/ss/android/ttvecamera/provider/TECameraProvider;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreviewSurface()Landroid/view/Surface;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->mProvider:Lcom/ss/android/ttvecamera/provider/TECameraProvider;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->getSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreviewSurfaces()[Landroid/view/Surface;
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->mProvider:Lcom/ss/android/ttvecamera/provider/TECameraProvider;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->getSurfaces()[Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getProvider()Lcom/ss/android/ttvecamera/provider/TECameraProvider;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->mProvider:Lcom/ss/android/ttvecamera/provider/TECameraProvider;

    return-object p0
.end method

.method public getProviderType()I
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->mProvider:Lcom/ss/android/ttvecamera/provider/TECameraProvider;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->getType()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->mProvider:Lcom/ss/android/ttvecamera/provider/TECameraProvider;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoSurface()Landroid/view/Surface;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->mProvider:Lcom/ss/android/ttvecamera/provider/TECameraProvider;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->getRecorderSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public initProvider(Landroid/hardware/Camera$Parameters;Lcom/ss/android/ttvecamera/TEFrameSizei;)I
    .registers 4

    .line 86
    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->mProvider:Lcom/ss/android/ttvecamera/provider/TECameraProvider;

    const/16 v0, -0x70

    if-nez p0, :cond_7

    return v0

    :cond_7
    if-eqz p0, :cond_e

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->init(Landroid/hardware/Camera$Parameters;Lcom/ss/android/ttvecamera/TEFrameSizei;)I

    move-result p0

    return p0

    :cond_e
    return v0
.end method

.method public initProvider(Landroid/hardware/camera2/params/StreamConfigurationMap;Lcom/ss/android/ttvecamera/TEFrameSizei;)I
    .registers 4

    .line 93
    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->mProvider:Lcom/ss/android/ttvecamera/provider/TECameraProvider;

    const/16 v0, -0x70

    if-nez p0, :cond_7

    return v0

    :cond_7
    if-eqz p0, :cond_e

    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->init(Landroid/hardware/camera2/params/StreamConfigurationMap;Lcom/ss/android/ttvecamera/TEFrameSizei;)I

    move-result p0

    return p0

    :cond_e
    return v0
.end method

.method public initProvider(Ljava/util/List;Lcom/ss/android/ttvecamera/TEFrameSizei;)I
    .registers 3
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

    .line 82
    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->mProvider:Lcom/ss/android/ttvecamera/provider/TECameraProvider;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->init(Ljava/util/List;Lcom/ss/android/ttvecamera/TEFrameSizei;)I

    move-result p0

    return p0

    :cond_9
    const/16 p0, -0x70

    return p0
.end method

.method public removeProvider()V
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->mProvider:Lcom/ss/android/ttvecamera/provider/TECameraProvider;

    if-eqz v0, :cond_a

    .line 41
    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->release()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->mProvider:Lcom/ss/android/ttvecamera/provider/TECameraProvider;

    :cond_a
    return-void
.end method

.method public setPreviewSizeCallback(Lcom/ss/android/ttvecamera/TECameraBase$PreviewSizeCallBack;)V
    .registers 2

    .line 128
    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->mProvider:Lcom/ss/android/ttvecamera/provider/TECameraProvider;

    if-nez p0, :cond_c

    .line 129
    sget-object p0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->TAG:Ljava/lang/String;

    const-string p1, "provider is null!"

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 132
    :cond_c
    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->setPreviewSizeCallback(Lcom/ss/android/ttvecamera/TECameraBase$PreviewSizeCallBack;)V

    return-void
.end method
