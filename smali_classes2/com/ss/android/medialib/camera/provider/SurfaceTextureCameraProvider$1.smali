.class Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider;->onOpenGLCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider;


# direct methods
.method constructor <init>(Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider$1;->this$0:Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 5

    .line 43
    iget-object p1, p0, Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider$1;->this$0:Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider;

    iget-object v0, p1, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->presenter:Lcom/ss/android/medialib/presenter/IMediaPresenter;

    if-eqz v0, :cond_1d

    .line 44
    # getter for: Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider;->textureHolder:Lcom/ss/android/medialib/camera/TextureHolder;
    invoke-static {p1}, Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider;->access$000(Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider;)Lcom/ss/android/medialib/camera/TextureHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/medialib/camera/TextureHolder;->getSurfaceTextureID()I

    move-result p1

    iget-object v1, p0, Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider$1;->this$0:Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider;

    # getter for: Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider;->textureHolder:Lcom/ss/android/medialib/camera/TextureHolder;
    invoke-static {v1}, Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider;->access$000(Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider;)Lcom/ss/android/medialib/camera/TextureHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/medialib/camera/TextureHolder;->getMPV()[F

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/ss/android/medialib/presenter/IMediaPresenter;->onDrawFrame(I[FZ)I

    goto :goto_26

    .line 46
    :cond_1d
    # getter for: Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onFrameAvailable: presenter is null!"

    invoke-static {p1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :goto_26
    iget-object p1, p0, Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider$1;->this$0:Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider;

    iget v0, p1, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->mFacing:I

    iget-object p1, p1, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->camera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    invoke-interface {p1}, Lcom/ss/android/medialib/camera/IESCameraInterface;->getCameraPosition()I

    move-result p1

    if-ne v0, p1, :cond_3e

    iget-object p1, p0, Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider$1;->this$0:Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider;

    iget v0, p1, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->mRotation:I

    iget-object p1, p1, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->camera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    invoke-interface {p1}, Lcom/ss/android/medialib/camera/IESCameraInterface;->getOrientationDegrees()I

    move-result p1

    if-eq v0, p1, :cond_5d

    .line 50
    :cond_3e
    iget-object p1, p0, Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider$1;->this$0:Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider;

    iget-object p1, p1, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 51
    :try_start_43
    iget-object v0, p0, Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider$1;->this$0:Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider;

    iget-object v1, v0, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->camera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    invoke-interface {v1}, Lcom/ss/android/medialib/camera/IESCameraInterface;->getCameraPosition()I

    move-result v1

    iput v1, v0, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->mFacing:I

    .line 52
    iget-object v0, p0, Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider$1;->this$0:Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider;

    iget-object v1, v0, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->camera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    invoke-interface {v1}, Lcom/ss/android/medialib/camera/IESCameraInterface;->getOrientationDegrees()I

    move-result v1

    iput v1, v0, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->mRotation:I

    .line 53
    iget-object v0, p0, Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider$1;->this$0:Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->mFaceChanged:Z

    .line 54
    monitor-exit p1
    :try_end_5d
    .catchall {:try_start_43 .. :try_end_5d} :catchall_67

    .line 57
    :cond_5d
    iget-object p0, p0, Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider$1;->this$0:Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider;

    iget-object p0, p0, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->onFrameAvailableListener:Lcom/ss/android/medialib/camera/provider/ICameraProvider$OnFrameAvailableListener;

    if-eqz p0, :cond_66

    .line 58
    invoke-interface {p0}, Lcom/ss/android/medialib/camera/provider/ICameraProvider$OnFrameAvailableListener;->onFrameAvailable()V

    :cond_66
    return-void

    :catchall_67
    move-exception p0

    .line 54
    :try_start_68
    monitor-exit p1
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw p0
.end method
