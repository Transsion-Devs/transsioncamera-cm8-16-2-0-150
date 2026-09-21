.class public Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;
.super Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;
.source "SourceFile"


# instance fields
.field private isCamera1:Z

.field private textureHolder:Lcom/ss/android/medialib/camera/TextureHolder;


# direct methods
.method public constructor <init>(Lcom/ss/android/medialib/camera/IESCameraInterface;)V
    .registers 3

    .line 22
    invoke-direct {p0, p1}, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;-><init>(Lcom/ss/android/medialib/camera/IESCameraInterface;)V

    .line 19
    new-instance v0, Lcom/ss/android/medialib/camera/TextureHolder;

    invoke-direct {v0}, Lcom/ss/android/medialib/camera/TextureHolder;-><init>()V

    iput-object v0, p0, Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;->textureHolder:Lcom/ss/android/medialib/camera/TextureHolder;

    .line 23
    instance-of v0, p1, Lcom/ss/android/medialib/camera/Camera1;

    iput-boolean v0, p0, Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;->isCamera1:Z

    .line 25
    new-instance v0, Lcom/ss/android/medialib/camera/provider/ImageCameraProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/medialib/camera/provider/ImageCameraProvider$1;-><init>(Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;Lcom/ss/android/medialib/camera/IESCameraInterface;)V

    invoke-interface {p1, v0}, Lcom/ss/android/medialib/camera/IESCameraInterface;->setFrameCallback(Lcom/ss/android/medialib/camera/IESCameraInterface$FrameCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;)Lcom/ss/android/medialib/camera/TextureHolder;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;->textureHolder:Lcom/ss/android/medialib/camera/TextureHolder;

    return-object p0
.end method


# virtual methods
.method public onOpenGLCreate()V
    .registers 3

    .line 68
    iget-object v0, p0, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->presenter:Lcom/ss/android/medialib/presenter/IMediaPresenter;

    if-eqz v0, :cond_16

    .line 70
    iget-object v0, p0, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->camera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    invoke-interface {v0}, Lcom/ss/android/medialib/camera/IESCameraInterface;->getImageFormat()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    .line 75
    :goto_11
    iget-object v1, p0, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->presenter:Lcom/ss/android/medialib/presenter/IMediaPresenter;

    invoke-interface {v1, v0}, Lcom/ss/android/medialib/presenter/IMediaPresenter;->initImageDrawer(I)I

    .line 78
    :cond_16
    iget-object v0, p0, Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;->textureHolder:Lcom/ss/android/medialib/camera/TextureHolder;

    invoke-virtual {v0}, Lcom/ss/android/medialib/camera/TextureHolder;->onCreate()V

    .line 79
    iget-object v0, p0, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->camera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    iget-object v1, p0, Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;->textureHolder:Lcom/ss/android/medialib/camera/TextureHolder;

    invoke-virtual {v1}, Lcom/ss/android/medialib/camera/TextureHolder;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ss/android/medialib/camera/IESCameraInterface;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 81
    invoke-static {}, Lcom/ss/android/medialib/camera/IESCameraManager;->getInstance()Lcom/ss/android/medialib/camera/IESCameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/medialib/camera/IESCameraManager;->getCameraParams()Lcom/ss/android/medialib/camera/CameraParams;

    move-result-object v0

    iget v0, v0, Lcom/ss/android/medialib/camera/CameraParams;->mOutputType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3d

    .line 82
    iget-object v0, p0, Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;->textureHolder:Lcom/ss/android/medialib/camera/TextureHolder;

    new-instance v1, Lcom/ss/android/medialib/camera/provider/ImageCameraProvider$2;

    invoke-direct {v1, p0}, Lcom/ss/android/medialib/camera/provider/ImageCameraProvider$2;-><init>(Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/medialib/camera/TextureHolder;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 96
    :cond_3d
    iget-object v0, p0, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->presenter:Lcom/ss/android/medialib/presenter/IMediaPresenter;

    if-eqz v0, :cond_4a

    .line 97
    iget-object p0, p0, Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;->textureHolder:Lcom/ss/android/medialib/camera/TextureHolder;

    invoke-virtual {p0}, Lcom/ss/android/medialib/camera/TextureHolder;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/ss/android/medialib/presenter/IMediaPresenter;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    :cond_4a
    return-void
.end method

.method public onOpenGLDestroy()V
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;->textureHolder:Lcom/ss/android/medialib/camera/TextureHolder;

    invoke-virtual {p0}, Lcom/ss/android/medialib/camera/TextureHolder;->onDestroy()V

    return-void
.end method

.method public onOpenGLRunning()I
    .registers 6

    .line 103
    iget-object v0, p0, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->presenter:Lcom/ss/android/medialib/presenter/IMediaPresenter;

    .line 104
    iget-object v1, p0, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->camera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    const/4 v2, 0x0

    if-eqz v1, :cond_40

    if-nez v0, :cond_a

    goto :goto_40

    .line 106
    :cond_a
    iget-boolean v1, p0, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->mFaceChanged:Z

    if-eqz v1, :cond_28

    .line 107
    iget-object v1, p0, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 109
    :try_start_11
    iget-object v3, p0, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->camera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    invoke-interface {v3}, Lcom/ss/android/medialib/camera/IESCameraInterface;->getCameraPosition()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1b

    goto :goto_1c

    :cond_1b
    move v4, v2

    .line 110
    :goto_1c
    iget v3, p0, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->mRotation:I

    invoke-interface {v0, v3, v4}, Lcom/ss/android/medialib/presenter/IMediaPresenter;->updateRotation(IZ)V

    .line 111
    iput-boolean v2, p0, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->mFaceChanged:Z

    .line 112
    monitor-exit v1

    goto :goto_28

    :catchall_25
    move-exception p0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_25

    throw p0

    .line 115
    :cond_28
    :goto_28
    iget-boolean v1, p0, Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;->isCamera1:Z

    if-eqz v1, :cond_40

    .line 116
    iget-object v1, p0, Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;->textureHolder:Lcom/ss/android/medialib/camera/TextureHolder;

    invoke-virtual {v1}, Lcom/ss/android/medialib/camera/TextureHolder;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 120
    :try_start_34
    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 122
    iget-object p0, p0, Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;->textureHolder:Lcom/ss/android/medialib/camera/TextureHolder;

    invoke-virtual {p0}, Lcom/ss/android/medialib/camera/TextureHolder;->getSurfaceTimeStamp()D

    move-result-wide v3

    .line 123
    invoke-interface {v0, v3, v4}, Lcom/ss/android/medialib/presenter/IMediaPresenter;->onDrawFrameTime(D)I
    :try_end_40
    .catchall {:try_start_34 .. :try_end_40} :catchall_40

    :catchall_40
    :cond_40
    :goto_40
    return v2
.end method

.method public setBodyBeauty(ZI)V
    .registers 3

    return-void
.end method

.method public startPreview()V
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->camera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    if-eqz p0, :cond_7

    .line 58
    invoke-interface {p0}, Lcom/ss/android/medialib/camera/IESCameraInterface;->startPreviewWithCallback()V

    :cond_7
    return-void
.end method
