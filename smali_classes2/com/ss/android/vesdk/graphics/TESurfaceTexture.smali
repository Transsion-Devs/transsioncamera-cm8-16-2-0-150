.class public Lcom/ss/android/vesdk/graphics/TESurfaceTexture;
.super Landroid/graphics/SurfaceTexture;
.source "SourceFile"


# instance fields
.field private mAbandoned:Z


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/graphics/SurfaceTexture;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Landroid/graphics/SurfaceTexture;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public declared-synchronized attachToGLContext(I)V
    .registers 3

    monitor-enter p0

    .line 61
    :try_start_1
    invoke-virtual {p0}, Lcom/ss/android/vesdk/graphics/TESurfaceTexture;->isReleased()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_e

    if-eqz v0, :cond_9

    monitor-exit p0

    return-void

    .line 62
    :cond_9
    :try_start_9
    invoke-super {p0, p1}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_e

    .line 63
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method

.method public declared-synchronized detachFromGLContext()V
    .registers 2

    monitor-enter p0

    .line 55
    :try_start_1
    invoke-virtual {p0}, Lcom/ss/android/vesdk/graphics/TESurfaceTexture;->isReleased()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_e

    if-eqz v0, :cond_9

    monitor-exit p0

    return-void

    .line 56
    :cond_9
    :try_start_9
    invoke-super {p0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_e

    .line 57
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v0
.end method

.method public declared-synchronized getTimestamp()J
    .registers 3

    monitor-enter p0

    .line 73
    :try_start_1
    invoke-virtual {p0}, Lcom/ss/android/vesdk/graphics/TESurfaceTexture;->isReleased()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_11

    if-eqz v0, :cond_b

    monitor-exit p0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 74
    :cond_b
    :try_start_b
    invoke-super {p0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_11

    monitor-exit p0

    return-wide v0

    :catchall_11
    move-exception v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public declared-synchronized getTransformMatrix([F)V
    .registers 3

    monitor-enter p0

    .line 67
    :try_start_1
    invoke-virtual {p0}, Lcom/ss/android/vesdk/graphics/TESurfaceTexture;->isReleased()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_e

    if-eqz v0, :cond_9

    monitor-exit p0

    return-void

    .line 68
    :cond_9
    :try_start_9
    invoke-super {p0, p1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_e

    .line 69
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method

.method public isReleased()Z
    .registers 1

    .line 87
    invoke-super {p0}, Landroid/graphics/SurfaceTexture;->isReleased()Z

    move-result p0

    return p0
.end method

.method public declared-synchronized release()V
    .registers 2

    monitor-enter p0

    .line 79
    :try_start_1
    invoke-virtual {p0}, Lcom/ss/android/vesdk/graphics/TESurfaceTexture;->isReleased()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_11

    if-eqz v0, :cond_9

    monitor-exit p0

    return-void

    .line 80
    :cond_9
    :try_start_9
    invoke-super {p0}, Landroid/graphics/SurfaceTexture;->release()V

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/ss/android/vesdk/graphics/TESurfaceTexture;->mAbandoned:Z
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_11

    .line 82
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public declared-synchronized releaseTexImage()V
    .registers 2

    monitor-enter p0

    .line 49
    :try_start_1
    invoke-virtual {p0}, Lcom/ss/android/vesdk/graphics/TESurfaceTexture;->isReleased()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_e

    if-eqz v0, :cond_9

    monitor-exit p0

    return-void

    .line 50
    :cond_9
    :try_start_9
    invoke-super {p0}, Landroid/graphics/SurfaceTexture;->releaseTexImage()V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_e

    .line 51
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v0
.end method

.method public declared-synchronized setDefaultBufferSize(II)V
    .registers 4

    monitor-enter p0

    .line 37
    :try_start_1
    invoke-virtual {p0}, Lcom/ss/android/vesdk/graphics/TESurfaceTexture;->isReleased()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_e

    if-eqz v0, :cond_9

    monitor-exit p0

    return-void

    .line 38
    :cond_9
    :try_start_9
    invoke-super {p0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_e

    .line 39
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method

.method public declared-synchronized updateTexImage()V
    .registers 2

    monitor-enter p0

    .line 43
    :try_start_1
    invoke-virtual {p0}, Lcom/ss/android/vesdk/graphics/TESurfaceTexture;->isReleased()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_e

    if-eqz v0, :cond_9

    monitor-exit p0

    return-void

    .line 44
    :cond_9
    :try_start_9
    invoke-super {p0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_e

    .line 45
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v0
.end method
