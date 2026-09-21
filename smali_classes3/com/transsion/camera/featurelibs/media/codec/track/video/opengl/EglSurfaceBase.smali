.class public abstract Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglSurfaceBase;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mEGLSurface:Landroid/opengl/EGLSurface;

.field protected mEglHelper:Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;

.field protected mHeight:I

.field protected mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "EglSurfaceBase"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglSurfaceBase;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method protected constructor <init>(Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;)V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglSurfaceBase;->mWidth:I

    .line 29
    iput v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglSurfaceBase;->mHeight:I

    .line 34
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 37
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglSurfaceBase;->mEglHelper:Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;

    return-void
.end method


# virtual methods
.method public createWindowSurface(Ljava/lang/Object;)V
    .registers 4

    .line 47
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v1, :cond_f

    .line 50
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglSurfaceBase;->mEglHelper:Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->createWindowSurface(Ljava/lang/Object;)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    return-void

    .line 48
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "surface already created"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public makeCurrent()V
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglSurfaceBase;->mEglHelper:Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->makeCurrent(Landroid/opengl/EGLSurface;)V

    return-void
.end method

.method public releaseEglSurface()V
    .registers 3

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglSurfaceBase;->mEglHelper:Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->releaseSurface(Landroid/opengl/EGLSurface;)V

    .line 96
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    const/4 v0, -0x1

    .line 97
    iput v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglSurfaceBase;->mHeight:I

    iput v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglSurfaceBase;->mWidth:I

    return-void
.end method

.method public setPresentationTime(J)V
    .registers 4

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglSurfaceBase;->mEglHelper:Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, p0, p1, p2}, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->setPresentationTime(Landroid/opengl/EGLSurface;J)V

    return-void
.end method

.method public swapBuffers()Z
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglSurfaceBase;->mEglHelper:Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->swapBuffers(Landroid/opengl/EGLSurface;)Z

    move-result p0

    if-nez p0, :cond_11

    .line 123
    sget-object v0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglSurfaceBase;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "WARNING: swapBuffers() failed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_11
    return p0
.end method
