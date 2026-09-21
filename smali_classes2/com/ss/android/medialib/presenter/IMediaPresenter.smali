.class public interface abstract Lcom/ss/android/medialib/presenter/IMediaPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract initImageDrawer(I)I
.end method

.method public abstract onDrawFrame(I[FZ)I
.end method

.method public abstract onDrawFrame(Lcom/ss/android/medialib/camera/ImageFrame;IZ)I
.end method

.method public abstract onDrawFrame(Lcom/ss/android/medialib/camera/ImageFrame;Z)I
.end method

.method public abstract onDrawFrameTime(D)I
.end method

.method public abstract setOnOpenGLCallback(Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;)V
.end method

.method public abstract setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
.end method

.method public abstract updateRotation(IZ)V
.end method

.method public abstract updateRotation(IZZ)V
.end method
