.class public Lcom/ss/android/medialib/camera/TextureHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile mIsFirstFrameAfterARCoreResume:Z

.field protected mMPV:[F

.field private volatile mNeedAttachToGLContext:Z

.field protected mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field protected mSurfaceTextureID:I

.field private onFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 21
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/ss/android/medialib/camera/TextureHolder;->mMPV:[F

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/ss/android/medialib/camera/TextureHolder;->mNeedAttachToGLContext:Z

    .line 23
    iput-boolean v0, p0, Lcom/ss/android/medialib/camera/TextureHolder;->mIsFirstFrameAfterARCoreResume:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/medialib/camera/TextureHolder;)Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/ss/android/medialib/camera/TextureHolder;->onFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    return-object p0
.end method


# virtual methods
.method public createOESTexture()V
    .registers 2

    .line 102
    invoke-static {}, Lcom/ss/android/medialib/common/Common;->genSurfaceTextureID()I

    move-result v0

    iput v0, p0, Lcom/ss/android/medialib/camera/TextureHolder;->mSurfaceTextureID:I

    return-void
.end method

.method public createSurfaceTexture(Z)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 107
    new-instance v0, Lcom/ss/android/vesdk/graphics/TESurfaceTexture;

    invoke-direct {v0, p1}, Lcom/ss/android/vesdk/graphics/TESurfaceTexture;-><init>(Z)V

    iput-object v0, p0, Lcom/ss/android/medialib/camera/TextureHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public getMPV()[F
    .registers 1

    .line 111
    iget-object p0, p0, Lcom/ss/android/medialib/camera/TextureHolder;->mMPV:[F

    return-object p0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/ss/android/medialib/camera/TextureHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method public getSurfaceTextureID()I
    .registers 1

    .line 90
    iget p0, p0, Lcom/ss/android/medialib/camera/TextureHolder;->mSurfaceTextureID:I

    return p0
.end method

.method public getSurfaceTimeStamp()D
    .registers 11

    .line 78
    iget-object v0, p0, Lcom/ss/android/medialib/camera/TextureHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_7

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0

    .line 81
    :cond_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 82
    iget-object v2, p0, Lcom/ss/android/medialib/camera/TextureHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v2

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 83
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    iget-object v6, p0, Lcom/ss/android/medialib/camera/TextureHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v6}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    mul-long/2addr v6, v8

    iget-object p0, p0, Lcom/ss/android/medialib/camera/TextureHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .line 85
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public isNeedAttachToGLContext()Z
    .registers 1

    .line 119
    iget-boolean p0, p0, Lcom/ss/android/medialib/camera/TextureHolder;->mNeedAttachToGLContext:Z

    return p0
.end method

.method public onCreate()V
    .registers 3

    .line 31
    invoke-static {}, Lcom/ss/android/medialib/common/Common;->genSurfaceTextureID()I

    move-result v0

    iput v0, p0, Lcom/ss/android/medialib/camera/TextureHolder;->mSurfaceTextureID:I

    .line 32
    new-instance v0, Lcom/ss/android/vesdk/graphics/TESurfaceTexture;

    iget v1, p0, Lcom/ss/android/medialib/camera/TextureHolder;->mSurfaceTextureID:I

    invoke-direct {v0, v1}, Lcom/ss/android/vesdk/graphics/TESurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/ss/android/medialib/camera/TextureHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 33
    new-instance v1, Lcom/ss/android/medialib/camera/TextureHolder$1;

    invoke-direct {v1, p0}, Lcom/ss/android/medialib/camera/TextureHolder$1;-><init>(Lcom/ss/android/medialib/camera/TextureHolder;)V

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/ss/android/medialib/camera/TextureHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_a

    .line 46
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/ss/android/medialib/camera/TextureHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 50
    :cond_a
    iget v0, p0, Lcom/ss/android/medialib/camera/TextureHolder;->mSurfaceTextureID:I

    if-eqz v0, :cond_14

    .line 51
    invoke-static {v0}, Lcom/ss/android/medialib/common/Common;->deleteTextureID(I)V

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/ss/android/medialib/camera/TextureHolder;->mSurfaceTextureID:I

    :cond_14
    return-void
.end method

.method public setIsFirstFrameAfterARCoreResume(Z)V
    .registers 2

    .line 123
    iput-boolean p1, p0, Lcom/ss/android/medialib/camera/TextureHolder;->mIsFirstFrameAfterARCoreResume:Z

    return-void
.end method

.method public setNeedAttachToGLContext(Z)V
    .registers 2

    .line 115
    iput-boolean p1, p0, Lcom/ss/android/medialib/camera/TextureHolder;->mNeedAttachToGLContext:Z

    return-void
.end method

.method public setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/ss/android/medialib/camera/TextureHolder;->onFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/ss/android/medialib/camera/TextureHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public updateTexImage()V
    .registers 4

    .line 57
    iget-boolean v0, p0, Lcom/ss/android/medialib/camera/TextureHolder;->mNeedAttachToGLContext:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 58
    iget-object v0, p0, Lcom/ss/android/medialib/camera/TextureHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/ss/android/medialib/camera/TextureHolder;->mSurfaceTextureID:I

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    .line 59
    iput-boolean v1, p0, Lcom/ss/android/medialib/camera/TextureHolder;->mNeedAttachToGLContext:Z

    .line 62
    :cond_e
    iget-boolean v0, p0, Lcom/ss/android/medialib/camera/TextureHolder;->mIsFirstFrameAfterARCoreResume:Z

    if-eqz v0, :cond_1f

    .line 63
    iput-boolean v1, p0, Lcom/ss/android/medialib/camera/TextureHolder;->mIsFirstFrameAfterARCoreResume:Z

    .line 67
    iget-object v0, p0, Lcom/ss/android/medialib/camera/TextureHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    const/4 v0, 0x1

    .line 68
    new-array v2, v0, [I

    .line 69
    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 72
    :cond_1f
    iget-object p0, p0, Lcom/ss/android/medialib/camera/TextureHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    return-void
.end method
