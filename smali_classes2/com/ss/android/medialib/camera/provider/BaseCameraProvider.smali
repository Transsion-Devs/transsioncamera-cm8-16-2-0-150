.class public abstract Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/camera/provider/ICameraProvider;


# instance fields
.field protected camera:Lcom/ss/android/medialib/camera/IESCameraInterface;

.field protected mFaceChanged:Z

.field protected mFacing:I

.field protected mLock:Ljava/lang/Object;

.field protected mRotation:I

.field protected onFrameAvailableListener:Lcom/ss/android/medialib/camera/provider/ICameraProvider$OnFrameAvailableListener;

.field protected presenter:Lcom/ss/android/medialib/presenter/IMediaPresenter;


# direct methods
.method public constructor <init>(Lcom/ss/android/medialib/camera/IESCameraInterface;)V
    .registers 4

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->mFaceChanged:Z

    .line 12
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->mLock:Ljava/lang/Object;

    .line 13
    iput v0, p0, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->mFacing:I

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->mRotation:I

    .line 17
    iput-object p1, p0, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->camera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    return-void
.end method


# virtual methods
.method public bind(Lcom/ss/android/medialib/presenter/IMediaPresenter;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->presenter:Lcom/ss/android/medialib/presenter/IMediaPresenter;

    return-void
.end method

.method public setOnFrameAvailableListener(Lcom/ss/android/medialib/camera/provider/ICameraProvider$OnFrameAvailableListener;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/ss/android/medialib/camera/provider/BaseCameraProvider;->onFrameAvailableListener:Lcom/ss/android/medialib/camera/provider/ICameraProvider$OnFrameAvailableListener;

    return-void
.end method
