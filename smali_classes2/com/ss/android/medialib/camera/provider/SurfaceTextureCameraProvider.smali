.class public Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider;
.super Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceTextureCameraProvider"


# instance fields
.field private textureHolder:Lcom/ss/android/medialib/camera/TextureHolder;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/medialib/camera/IESCameraInterface;)V
    .registers 2

    .line 18
    invoke-direct {p0, p1}, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;-><init>(Lcom/ss/android/medialib/camera/IESCameraInterface;)V

    .line 15
    new-instance p1, Lcom/ss/android/medialib/camera/TextureHolder;

    invoke-direct {p1}, Lcom/ss/android/medialib/camera/TextureHolder;-><init>()V

    iput-object p1, p0, Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider;->textureHolder:Lcom/ss/android/medialib/camera/TextureHolder;

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider;)Lcom/ss/android/medialib/camera/TextureHolder;
    .registers 1

    .line 12
    iget-object p0, p0, Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider;->textureHolder:Lcom/ss/android/medialib/camera/TextureHolder;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 12
    sget-object v0, Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onOpenGLCreate()V
    .registers 3

    .line 38
    iget-object v0, p0, Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider;->textureHolder:Lcom/ss/android/medialib/camera/TextureHolder;

    invoke-virtual {v0}, Lcom/ss/android/medialib/camera/TextureHolder;->onCreate()V

    .line 39
    const-string v0, "CreateTexture"

    invoke-static {v0}, Lcom/ss/android/medialib/common/Common;->checkGLError(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider;->textureHolder:Lcom/ss/android/medialib/camera/TextureHolder;

    new-instance v1, Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider$1;

    invoke-direct {v1, p0}, Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider$1;-><init>(Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/medialib/camera/TextureHolder;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 63
    iget-object v0, p0, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->presenter:Lcom/ss/android/medialib/presenter/IMediaPresenter;

    if-eqz v0, :cond_22

    .line 64
    iget-object p0, p0, Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider;->textureHolder:Lcom/ss/android/medialib/camera/TextureHolder;

    invoke-virtual {p0}, Lcom/ss/android/medialib/camera/TextureHolder;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/ss/android/medialib/presenter/IMediaPresenter;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    return-void

    .line 66
    :cond_22
    sget-object p0, Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider;->TAG:Ljava/lang/String;

    const-string v0, "onOpenGLCreate: presenter is null!"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onOpenGLDestroy()V
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider;->textureHolder:Lcom/ss/android/medialib/camera/TextureHolder;

    invoke-virtual {p0}, Lcom/ss/android/medialib/camera/TextureHolder;->onDestroy()V

    return-void
.end method

.method public onOpenGLRunning()I
    .registers 6

    .line 72
    iget-object v0, p0, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->presenter:Lcom/ss/android/medialib/presenter/IMediaPresenter;

    .line 73
    iget-object v1, p0, Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider;->textureHolder:Lcom/ss/android/medialib/camera/TextureHolder;

    invoke-virtual {v1}, Lcom/ss/android/medialib/camera/TextureHolder;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz v1, :cond_4f

    if-nez v0, :cond_d

    goto :goto_4f

    .line 77
    :cond_d
    iget-boolean v1, p0, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->mFaceChanged:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2c

    .line 78
    iget-object v1, p0, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 80
    :try_start_15
    iget-object v3, p0, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->camera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    invoke-interface {v3}, Lcom/ss/android/medialib/camera/IESCameraInterface;->getCameraPosition()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1f

    goto :goto_20

    :cond_1f
    move v4, v2

    .line 81
    :goto_20
    iget v3, p0, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->mRotation:I

    invoke-interface {v0, v3, v4}, Lcom/ss/android/medialib/presenter/IMediaPresenter;->updateRotation(IZ)V

    .line 82
    iput-boolean v2, p0, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->mFaceChanged:Z

    .line 83
    monitor-exit v1

    goto :goto_2c

    :catchall_29
    move-exception p0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_29

    throw p0

    .line 87
    :cond_2c
    :goto_2c
    :try_start_2c
    iget-object v1, p0, Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider;->textureHolder:Lcom/ss/android/medialib/camera/TextureHolder;

    invoke-virtual {v1}, Lcom/ss/android/medialib/camera/TextureHolder;->updateTexImage()V

    .line 88
    iget-object v1, p0, Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider;->textureHolder:Lcom/ss/android/medialib/camera/TextureHolder;

    invoke-virtual {v1}, Lcom/ss/android/medialib/camera/TextureHolder;->getSurfaceTimeStamp()D

    move-result-wide v3

    .line 89
    iget-object p0, p0, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->presenter:Lcom/ss/android/medialib/presenter/IMediaPresenter;

    invoke-interface {p0, v3, v4}, Lcom/ss/android/medialib/presenter/IMediaPresenter;->onDrawFrameTime(D)I

    .line 90
    invoke-interface {v0, v3, v4}, Lcom/ss/android/medialib/presenter/IMediaPresenter;->onDrawFrameTime(D)I
    :try_end_3f
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_3f} :catch_40

    return v2

    :catch_40
    move-exception p0

    .line 93
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 94
    sget-object v0, Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x2

    return p0

    .line 74
    :cond_4f
    :goto_4f
    sget-object p0, Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider;->TAG:Ljava/lang/String;

    const-string v0, "SurfaceTexture is null"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public setBodyBeauty(ZI)V
    .registers 3

    return-void
.end method

.method public startPreview()V
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->camera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    if-eqz v0, :cond_e

    .line 24
    iget-object p0, p0, Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider;->textureHolder:Lcom/ss/android/medialib/camera/TextureHolder;

    invoke-virtual {p0}, Lcom/ss/android/medialib/camera/TextureHolder;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/ss/android/medialib/camera/IESCameraInterface;->startPreview(Landroid/graphics/SurfaceTexture;)V

    return-void

    .line 26
    :cond_e
    sget-object p0, Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider;->TAG:Ljava/lang/String;

    const-string v0, "startPreview: camera is null!"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
