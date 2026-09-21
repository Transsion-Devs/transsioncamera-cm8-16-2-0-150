.class public Lcom/ss/android/vesdk/TextureHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/TextureHolder$AttachStatus;
    }
.end annotation


# instance fields
.field private mAttachStatus:Lcom/ss/android/vesdk/TextureHolder$AttachStatus;

.field private volatile mIsFirstFrameAfterARCoreResume:Z

.field protected mMPV:[F

.field private mNeedAttachToGLContext:Z

.field protected mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field protected mSurfaceTextureID:I

.field private onFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 23
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/ss/android/vesdk/TextureHolder;->mMPV:[F

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/ss/android/vesdk/TextureHolder;->mNeedAttachToGLContext:Z

    .line 25
    iput-boolean v0, p0, Lcom/ss/android/vesdk/TextureHolder;->mIsFirstFrameAfterARCoreResume:Z

    .line 26
    sget-object v0, Lcom/ss/android/vesdk/TextureHolder$AttachStatus;->Detached:Lcom/ss/android/vesdk/TextureHolder$AttachStatus;

    iput-object v0, p0, Lcom/ss/android/vesdk/TextureHolder;->mAttachStatus:Lcom/ss/android/vesdk/TextureHolder$AttachStatus;

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/vesdk/TextureHolder;)Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/ss/android/vesdk/TextureHolder;->onFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    return-object p0
.end method


# virtual methods
.method public attachToGLContext()Z
    .registers 3

    .line 122
    sget-object v0, Lcom/ss/android/vesdk/TextureHolder$AttachStatus;->Detached:Lcom/ss/android/vesdk/TextureHolder$AttachStatus;

    iget-object v1, p0, Lcom/ss/android/vesdk/TextureHolder;->mAttachStatus:Lcom/ss/android/vesdk/TextureHolder$AttachStatus;

    if-ne v0, v1, :cond_13

    .line 123
    iget-object v0, p0, Lcom/ss/android/vesdk/TextureHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/ss/android/vesdk/TextureHolder;->mSurfaceTextureID:I

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    .line 124
    sget-object v0, Lcom/ss/android/vesdk/TextureHolder$AttachStatus;->Attached:Lcom/ss/android/vesdk/TextureHolder$AttachStatus;

    iput-object v0, p0, Lcom/ss/android/vesdk/TextureHolder;->mAttachStatus:Lcom/ss/android/vesdk/TextureHolder$AttachStatus;

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public createOESTexture()V
    .registers 2

    .line 96
    invoke-static {}, Lcom/ss/android/medialib/common/Common;->genSurfaceTextureID()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/TextureHolder;->mSurfaceTextureID:I

    return-void
.end method

.method public createSurfaceTexture(Z)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 101
    new-instance v0, Lcom/ss/android/vesdk/graphics/TESurfaceTexture;

    invoke-direct {v0, p1}, Lcom/ss/android/vesdk/graphics/TESurfaceTexture;-><init>(Z)V

    iput-object v0, p0, Lcom/ss/android/vesdk/TextureHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public detachFromGLContext()Z
    .registers 3

    .line 113
    sget-object v0, Lcom/ss/android/vesdk/TextureHolder$AttachStatus;->Attached:Lcom/ss/android/vesdk/TextureHolder$AttachStatus;

    iget-object v1, p0, Lcom/ss/android/vesdk/TextureHolder;->mAttachStatus:Lcom/ss/android/vesdk/TextureHolder$AttachStatus;

    if-ne v0, v1, :cond_11

    .line 114
    iget-object v0, p0, Lcom/ss/android/vesdk/TextureHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    .line 115
    sget-object v0, Lcom/ss/android/vesdk/TextureHolder$AttachStatus;->Detached:Lcom/ss/android/vesdk/TextureHolder$AttachStatus;

    iput-object v0, p0, Lcom/ss/android/vesdk/TextureHolder;->mAttachStatus:Lcom/ss/android/vesdk/TextureHolder$AttachStatus;

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public getMPV()[F
    .registers 1

    .line 105
    iget-object p0, p0, Lcom/ss/android/vesdk/TextureHolder;->mMPV:[F

    return-object p0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/ss/android/vesdk/TextureHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method public getSurfaceTextureID()I
    .registers 1

    .line 84
    iget p0, p0, Lcom/ss/android/vesdk/TextureHolder;->mSurfaceTextureID:I

    return p0
.end method

.method public getSurfaceTimeStamp()D
    .registers 11

    .line 71
    iget-object v0, p0, Lcom/ss/android/vesdk/TextureHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_7

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0

    .line 75
    :cond_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 76
    iget-object v2, p0, Lcom/ss/android/vesdk/TextureHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v2

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    iget-object v6, p0, Lcom/ss/android/vesdk/TextureHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v6}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 78
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    mul-long/2addr v6, v8

    iget-object p0, p0, Lcom/ss/android/vesdk/TextureHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .line 79
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

    .line 131
    iget-boolean p0, p0, Lcom/ss/android/vesdk/TextureHolder;->mNeedAttachToGLContext:Z

    return p0
.end method

.method public onCreate()V
    .registers 3

    .line 34
    invoke-static {}, Lcom/ss/android/medialib/common/Common;->genSurfaceTextureID()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/TextureHolder;->mSurfaceTextureID:I

    .line 35
    new-instance v0, Lcom/ss/android/vesdk/graphics/TESurfaceTexture;

    iget v1, p0, Lcom/ss/android/vesdk/TextureHolder;->mSurfaceTextureID:I

    invoke-direct {v0, v1}, Lcom/ss/android/vesdk/graphics/TESurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/ss/android/vesdk/TextureHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 37
    new-instance v1, Lcom/ss/android/vesdk/TextureHolder$1;

    invoke-direct {v1, p0}, Lcom/ss/android/vesdk/TextureHolder$1;-><init>(Lcom/ss/android/vesdk/TextureHolder;)V

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/ss/android/vesdk/TextureHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_a

    .line 50
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/ss/android/vesdk/TextureHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 54
    :cond_a
    iget v0, p0, Lcom/ss/android/vesdk/TextureHolder;->mSurfaceTextureID:I

    if-eqz v0, :cond_14

    .line 55
    invoke-static {v0}, Lcom/ss/android/medialib/common/Common;->deleteTextureID(I)V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/ss/android/vesdk/TextureHolder;->mSurfaceTextureID:I

    :cond_14
    return-void
.end method

.method public setIsFirstFrameAfterARCoreResume(Z)V
    .registers 2

    .line 135
    iput-boolean p1, p0, Lcom/ss/android/vesdk/TextureHolder;->mIsFirstFrameAfterARCoreResume:Z

    return-void
.end method

.method public setNeedAttachToGLContext(Z)V
    .registers 2

    .line 109
    iput-boolean p1, p0, Lcom/ss/android/vesdk/TextureHolder;->mNeedAttachToGLContext:Z

    return-void
.end method

.method public setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/ss/android/vesdk/TextureHolder;->onFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/ss/android/vesdk/TextureHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public updateTexImage()V
    .registers 2

    .line 61
    iget-boolean v0, p0, Lcom/ss/android/vesdk/TextureHolder;->mNeedAttachToGLContext:Z

    if-eqz v0, :cond_a

    .line 62
    invoke-virtual {p0}, Lcom/ss/android/vesdk/TextureHolder;->attachToGLContext()Z

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/ss/android/vesdk/TextureHolder;->mNeedAttachToGLContext:Z

    .line 65
    :cond_a
    iget-object p0, p0, Lcom/ss/android/vesdk/TextureHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    return-void
.end method
