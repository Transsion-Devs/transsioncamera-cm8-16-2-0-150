.class public Lcom/google/mediapipe/framework/AppTextureFrame;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/mediapipe/framework/TextureFrame;


# instance fields
.field private height:I

.field private inUse:Z

.field private legacyInUse:Z

.field private releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

.field private textureName:I

.field private timestamp:J

.field private width:I


# direct methods
.method public constructor <init>(III)V
    .registers 6

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 32
    iput-wide v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->timestamp:J

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->inUse:Z

    .line 34
    iput-boolean v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->legacyInUse:Z

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    .line 38
    iput p1, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->textureName:I

    .line 39
    iput p2, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->width:I

    .line 40
    iput p3, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->height:I

    return-void
.end method


# virtual methods
.method public finalize()V
    .registers 2

    .line 190
    iget-object v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    if-eqz v0, :cond_a

    .line 191
    invoke-interface {v0}, Lcom/google/mediapipe/framework/GlSyncToken;->release()V

    const/4 v0, 0x0

    .line 192
    iput-object v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    :cond_a
    return-void
.end method

.method public getHeight()I
    .registers 1

    .line 59
    iget p0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->height:I

    return p0
.end method

.method public getInUse()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 130
    monitor-enter p0

    .line 131
    :try_start_1
    iget-boolean v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->legacyInUse:Z

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    .line 132
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getTextureName()I
    .registers 1

    .line 49
    iget p0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->textureName:I

    return p0
.end method

.method public getTimestamp()J
    .registers 3

    .line 64
    iget-wide v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->timestamp:J

    return-wide v0
.end method

.method public getWidth()I
    .registers 1

    .line 54
    iget p0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->width:I

    return p0
.end method

.method public isNotYetReleased()Z
    .registers 2

    .line 69
    monitor-enter p0

    .line 70
    :try_start_1
    iget-boolean v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->inUse:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :catchall_b
    move-exception v0

    goto :goto_10

    :cond_d
    const/4 v0, 0x0

    :goto_e
    monitor-exit p0

    return v0

    .line 71
    :goto_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_b

    throw v0
.end method

.method public release()V
    .registers 2

    .line 156
    monitor-enter p0

    const/4 v0, 0x0

    .line 157
    :try_start_2
    iput-boolean v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->inUse:Z

    .line 158
    iput-boolean v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->legacyInUse:Z

    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 160
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public release(Lcom/google/mediapipe/framework/GlSyncToken;)V
    .registers 3

    .line 170
    monitor-enter p0

    .line 171
    :try_start_1
    iget-object v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    if-eqz v0, :cond_e

    .line 172
    invoke-interface {v0}, Lcom/google/mediapipe/framework/GlSyncToken;->release()V

    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    goto :goto_e

    :catchall_c
    move-exception p1

    goto :goto_18

    .line 175
    :cond_e
    :goto_e
    iput-object p1, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    const/4 p1, 0x0

    .line 178
    iput-boolean p1, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->legacyInUse:Z

    .line 179
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 180
    monitor-exit p0

    return-void

    :goto_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_c

    throw p1
.end method

.method public setInUse()V
    .registers 2

    .line 140
    monitor-enter p0

    .line 141
    :try_start_1
    iget-object v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    if-eqz v0, :cond_e

    .line 142
    invoke-interface {v0}, Lcom/google/mediapipe/framework/GlSyncToken;->release()V

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    goto :goto_e

    :catchall_c
    move-exception v0

    goto :goto_15

    :cond_e
    :goto_e
    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->inUse:Z

    .line 146
    iput-boolean v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->legacyInUse:Z

    .line 147
    monitor-exit p0

    return-void

    :goto_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_c

    throw v0
.end method

.method public setTimestamp(J)V
    .registers 3

    .line 44
    iput-wide p1, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->timestamp:J

    return-void
.end method

.method public waitUntilReleased()V
    .registers 4

    .line 82
    monitor-enter p0

    .line 83
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->inUse:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    if-nez v0, :cond_f

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    :catchall_d
    move-exception v0

    goto :goto_25

    .line 86
    :cond_f
    iget-object v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    const/4 v2, 0x0

    .line 88
    iput-boolean v2, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->inUse:Z

    .line 89
    iput-object v1, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    goto :goto_1b

    :cond_1a
    move-object v0, v1

    .line 91
    :goto_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_d

    if-eqz v0, :cond_24

    .line 93
    invoke-interface {v0}, Lcom/google/mediapipe/framework/GlSyncToken;->waitOnCpu()V

    .line 94
    invoke-interface {v0}, Lcom/google/mediapipe/framework/GlSyncToken;->release()V

    :cond_24
    return-void

    .line 91
    :goto_25
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_d

    throw v0
.end method

.method public waitUntilReleasedWithGpuSync()V
    .registers 4

    .line 106
    monitor-enter p0

    .line 107
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->inUse:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    if-nez v0, :cond_f

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    :catchall_d
    move-exception v0

    goto :goto_25

    .line 110
    :cond_f
    iget-object v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    const/4 v2, 0x0

    .line 112
    iput-boolean v2, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->inUse:Z

    .line 113
    iput-object v1, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    goto :goto_1b

    :cond_1a
    move-object v0, v1

    .line 115
    :goto_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_d

    if-eqz v0, :cond_24

    .line 117
    invoke-interface {v0}, Lcom/google/mediapipe/framework/GlSyncToken;->waitOnGpu()V

    .line 118
    invoke-interface {v0}, Lcom/google/mediapipe/framework/GlSyncToken;->release()V

    :cond_24
    return-void

    .line 115
    :goto_25
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_d

    throw v0
.end method
