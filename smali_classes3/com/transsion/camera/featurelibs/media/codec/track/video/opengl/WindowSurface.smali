.class public Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/WindowSurface;
.super Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglSurfaceBase;
.source "SourceFile"


# instance fields
.field private mReleaseSurface:Z

.field private mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;Landroid/view/Surface;Z)V
    .registers 4

    .line 38
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglSurfaceBase;-><init>(Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;)V

    .line 39
    invoke-virtual {p0, p2}, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglSurfaceBase;->createWindowSurface(Ljava/lang/Object;)V

    .line 40
    iput-object p2, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/WindowSurface;->mSurface:Landroid/view/Surface;

    .line 41
    iput-boolean p3, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/WindowSurface;->mReleaseSurface:Z

    return-void
.end method


# virtual methods
.method public release()V
    .registers 3

    .line 59
    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglSurfaceBase;->releaseEglSurface()V

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/WindowSurface;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_11

    .line 61
    iget-boolean v1, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/WindowSurface;->mReleaseSurface:Z

    if-eqz v1, :cond_e

    .line 62
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_e
    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/WindowSurface;->mSurface:Landroid/view/Surface;

    :cond_11
    return-void
.end method
