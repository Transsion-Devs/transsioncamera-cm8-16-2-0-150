.class Lcom/ss/android/medialib/camera/provider/ImageCameraProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/camera/IESCameraInterface$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;-><init>(Lcom/ss/android/medialib/camera/IESCameraInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;

.field final synthetic val$camera:Lcom/ss/android/medialib/camera/IESCameraInterface;


# direct methods
.method constructor <init>(Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;Lcom/ss/android/medialib/camera/IESCameraInterface;)V
    .registers 3

    .line 25
    iput-object p1, p0, Lcom/ss/android/medialib/camera/provider/ImageCameraProvider$1;->this$0:Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;

    iput-object p2, p0, Lcom/ss/android/medialib/camera/provider/ImageCameraProvider$1;->val$camera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame(ILcom/ss/android/medialib/camera/ImageFrame;)V
    .registers 6

    .line 30
    invoke-static {}, Lcom/ss/android/medialib/camera/IESCameraManager;->getInstance()Lcom/ss/android/medialib/camera/IESCameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/medialib/camera/IESCameraManager;->getCameraParams()Lcom/ss/android/medialib/camera/CameraParams;

    move-result-object p1

    iget p1, p1, Lcom/ss/android/medialib/camera/CameraParams;->mOutputType:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_47

    .line 31
    iget-object p1, p0, Lcom/ss/android/medialib/camera/provider/ImageCameraProvider$1;->this$0:Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;

    iget p1, p1, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->mFacing:I

    iget-object v1, p0, Lcom/ss/android/medialib/camera/provider/ImageCameraProvider$1;->val$camera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    invoke-interface {v1}, Lcom/ss/android/medialib/camera/IESCameraInterface;->getCameraPosition()I

    move-result v1

    if-ne p1, v1, :cond_25

    iget-object p1, p0, Lcom/ss/android/medialib/camera/provider/ImageCameraProvider$1;->this$0:Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;

    iget p1, p1, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->mRotation:I

    iget-object v1, p0, Lcom/ss/android/medialib/camera/provider/ImageCameraProvider$1;->val$camera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    invoke-interface {v1}, Lcom/ss/android/medialib/camera/IESCameraInterface;->getOrientationDegrees()I

    move-result v1

    if-eq p1, v1, :cond_47

    .line 32
    :cond_25
    iget-object p1, p0, Lcom/ss/android/medialib/camera/provider/ImageCameraProvider$1;->this$0:Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;

    iget-object p1, p1, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 33
    :try_start_2a
    iget-object v1, p0, Lcom/ss/android/medialib/camera/provider/ImageCameraProvider$1;->this$0:Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;

    iget-object v2, p0, Lcom/ss/android/medialib/camera/provider/ImageCameraProvider$1;->val$camera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    invoke-interface {v2}, Lcom/ss/android/medialib/camera/IESCameraInterface;->getCameraPosition()I

    move-result v2

    iput v2, v1, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->mFacing:I

    .line 34
    iget-object v1, p0, Lcom/ss/android/medialib/camera/provider/ImageCameraProvider$1;->this$0:Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;

    iget-object v2, p0, Lcom/ss/android/medialib/camera/provider/ImageCameraProvider$1;->val$camera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    invoke-interface {v2}, Lcom/ss/android/medialib/camera/IESCameraInterface;->getOrientationDegrees()I

    move-result v2

    iput v2, v1, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->mRotation:I

    .line 35
    iget-object v1, p0, Lcom/ss/android/medialib/camera/provider/ImageCameraProvider$1;->this$0:Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;

    iput-boolean v0, v1, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->mFaceChanged:Z

    .line 36
    monitor-exit p1

    goto :goto_47

    :catchall_44
    move-exception p0

    monitor-exit p1
    :try_end_46
    .catchall {:try_start_2a .. :try_end_46} :catchall_44

    throw p0

    .line 40
    :cond_47
    :goto_47
    iget-object p1, p0, Lcom/ss/android/medialib/camera/provider/ImageCameraProvider$1;->this$0:Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;

    iget-object p1, p1, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->presenter:Lcom/ss/android/medialib/presenter/IMediaPresenter;

    if-eqz p1, :cond_76

    iget-object p1, p0, Lcom/ss/android/medialib/camera/provider/ImageCameraProvider$1;->val$camera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    if-eqz p1, :cond_76

    .line 41
    invoke-static {}, Lcom/ss/android/medialib/camera/IESCameraManager;->getInstance()Lcom/ss/android/medialib/camera/IESCameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/medialib/camera/IESCameraManager;->getCameraParams()Lcom/ss/android/medialib/camera/CameraParams;

    move-result-object p1

    iget p1, p1, Lcom/ss/android/medialib/camera/CameraParams;->mOutputType:I

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-ne p1, v0, :cond_6f

    .line 42
    iget-object p1, p0, Lcom/ss/android/medialib/camera/provider/ImageCameraProvider$1;->this$0:Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;

    iget-object v0, p1, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->presenter:Lcom/ss/android/medialib/presenter/IMediaPresenter;

    # getter for: Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;->textureHolder:Lcom/ss/android/medialib/camera/TextureHolder;
    invoke-static {p1}, Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;->access$000(Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;)Lcom/ss/android/medialib/camera/TextureHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/medialib/camera/TextureHolder;->getSurfaceTextureID()I

    move-result p1

    invoke-interface {v0, p2, p1, v1}, Lcom/ss/android/medialib/presenter/IMediaPresenter;->onDrawFrame(Lcom/ss/android/medialib/camera/ImageFrame;IZ)I

    goto :goto_76

    .line 44
    :cond_6f
    iget-object p1, p0, Lcom/ss/android/medialib/camera/provider/ImageCameraProvider$1;->this$0:Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;

    iget-object p1, p1, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->presenter:Lcom/ss/android/medialib/presenter/IMediaPresenter;

    invoke-interface {p1, p2, v1}, Lcom/ss/android/medialib/presenter/IMediaPresenter;->onDrawFrame(Lcom/ss/android/medialib/camera/ImageFrame;Z)I

    .line 48
    :cond_76
    :goto_76
    iget-object p0, p0, Lcom/ss/android/medialib/camera/provider/ImageCameraProvider$1;->this$0:Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;

    iget-object p0, p0, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->onFrameAvailableListener:Lcom/ss/android/medialib/camera/provider/ICameraProvider$OnFrameAvailableListener;

    if-eqz p0, :cond_7f

    .line 49
    invoke-interface {p0}, Lcom/ss/android/medialib/camera/provider/ICameraProvider$OnFrameAvailableListener;->onFrameAvailable()V

    :cond_7f
    return-void
.end method
