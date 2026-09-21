.class Lcom/ss/android/medialib/camera/provider/ImageCameraProvider$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;->onOpenGLCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;


# direct methods
.method constructor <init>(Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/ss/android/medialib/camera/provider/ImageCameraProvider$2;->this$0:Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 4

    .line 86
    iget-object p1, p0, Lcom/ss/android/medialib/camera/provider/ImageCameraProvider$2;->this$0:Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;

    iget v0, p1, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->mFacing:I

    iget-object p1, p1, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->camera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    invoke-interface {p1}, Lcom/ss/android/medialib/camera/IESCameraInterface;->getCameraPosition()I

    move-result p1

    if-ne v0, p1, :cond_1a

    iget-object p1, p0, Lcom/ss/android/medialib/camera/provider/ImageCameraProvider$2;->this$0:Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;

    iget v0, p1, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->mRotation:I

    iget-object p1, p1, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->camera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    invoke-interface {p1}, Lcom/ss/android/medialib/camera/IESCameraInterface;->getOrientationDegrees()I

    move-result p1

    if-eq v0, p1, :cond_19

    goto :goto_1a

    :cond_19
    return-void

    .line 87
    :cond_1a
    :goto_1a
    iget-object p1, p0, Lcom/ss/android/medialib/camera/provider/ImageCameraProvider$2;->this$0:Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;

    iget-object p1, p1, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 88
    :try_start_1f
    iget-object v0, p0, Lcom/ss/android/medialib/camera/provider/ImageCameraProvider$2;->this$0:Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;

    iget-object v1, v0, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->camera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    invoke-interface {v1}, Lcom/ss/android/medialib/camera/IESCameraInterface;->getCameraPosition()I

    move-result v1

    iput v1, v0, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->mFacing:I

    .line 89
    iget-object v0, p0, Lcom/ss/android/medialib/camera/provider/ImageCameraProvider$2;->this$0:Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;

    iget-object v1, v0, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->camera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    invoke-interface {v1}, Lcom/ss/android/medialib/camera/IESCameraInterface;->getOrientationDegrees()I

    move-result v1

    iput v1, v0, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->mRotation:I

    .line 90
    iget-object p0, p0, Lcom/ss/android/medialib/camera/provider/ImageCameraProvider$2;->this$0:Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->mFaceChanged:Z

    .line 91
    monitor-exit p1

    return-void

    :catchall_3a
    move-exception p0

    monitor-exit p1
    :try_end_3c
    .catchall {:try_start_1f .. :try_end_3c} :catchall_3a

    throw p0
.end method
