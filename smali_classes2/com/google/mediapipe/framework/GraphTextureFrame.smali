.class public Lcom/google/mediapipe/framework/GraphTextureFrame;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/mediapipe/framework/TextureFrame;


# static fields
.field private static final logger:Lcom/google/common/flogger/FluentLogger;


# instance fields
.field private final activeConsumerContextHandleSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final deferredSync:Z

.field private height:I

.field private nativeBufferHandle:J

.field private refCount:I

.field private textureName:I

.field private timestamp:J

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    invoke-static {}, Lcom/google/common/flogger/FluentLogger;->forEnclosingClass()Lcom/google/common/flogger/FluentLogger;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/framework/GraphTextureFrame;->logger:Lcom/google/common/flogger/FluentLogger;

    return-void
.end method

.method constructor <init>(JJ)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 42
    invoke-direct/range {v0 .. v5}, Lcom/google/mediapipe/framework/GraphTextureFrame;-><init>(JJZ)V

    return-void
.end method

.method public constructor <init>(JJZ)V
    .registers 8

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 34
    iput-wide v0, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->timestamp:J

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->activeConsumerContextHandleSet:Ljava/util/Set;

    const/4 v0, 0x1

    .line 39
    iput v0, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->refCount:I

    .line 54
    iput-wide p1, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->nativeBufferHandle:J

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/framework/GraphTextureFrame;->nativeGetTextureName(J)I

    move-result p1

    iput p1, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->textureName:I

    .line 57
    iget-wide p1, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->nativeBufferHandle:J

    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/framework/GraphTextureFrame;->nativeGetWidth(J)I

    move-result p1

    iput p1, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->width:I

    .line 58
    iget-wide p1, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->nativeBufferHandle:J

    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/framework/GraphTextureFrame;->nativeGetHeight(J)I

    move-result p1

    iput p1, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->height:I

    .line 59
    iput-wide p3, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->timestamp:J

    .line 60
    iput-boolean p5, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->deferredSync:Z

    return-void
.end method

.method private native nativeCreateSyncTokenForCurrentExternalContext(J)J
.end method

.method private native nativeDidRead(JJ)V
.end method

.method private native nativeGetCurrentExternalContextHandle()J
.end method

.method private native nativeGetHeight(J)I
.end method

.method private native nativeGetTextureName(J)I
.end method

.method private native nativeGetWidth(J)I
.end method

.method private native nativeGpuWait(J)V
.end method

.method private native nativeReleaseBuffer(J)V
.end method


# virtual methods
.method protected finalize()V
    .registers 5

    .line 178
    iget v0, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->refCount:I

    if-gtz v0, :cond_c

    iget-wide v0, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->nativeBufferHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    .line 179
    :cond_c
    sget-object v0, Lcom/google/mediapipe/framework/GraphTextureFrame;->logger:Lcom/google/common/flogger/FluentLogger;

    invoke-virtual {v0}, Lcom/google/common/flogger/AbstractLogger;->atWarning()Lcom/google/common/flogger/LoggingApi;

    move-result-object v0

    check-cast v0, Lcom/google/common/flogger/FluentLogger$Api;

    const-string v1, "release was not called before finalize"

    invoke-interface {v0, v1}, Lcom/google/common/flogger/LoggingApi;->log(Ljava/lang/String;)V

    .line 181
    :cond_19
    iget-object p0, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->activeConsumerContextHandleSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2e

    .line 182
    sget-object p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->logger:Lcom/google/common/flogger/FluentLogger;

    invoke-virtual {p0}, Lcom/google/common/flogger/AbstractLogger;->atWarning()Lcom/google/common/flogger/LoggingApi;

    move-result-object p0

    check-cast p0, Lcom/google/common/flogger/FluentLogger$Api;

    const-string v0, "active consumers did not release with sync before finalize"

    invoke-interface {p0, v0}, Lcom/google/common/flogger/LoggingApi;->log(Ljava/lang/String;)V

    :cond_2e
    return-void
.end method

.method public getHeight()I
    .registers 1

    .line 99
    iget p0, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->height:I

    return p0
.end method

.method public declared-synchronized getTextureName()I
    .registers 5

    monitor-enter p0

    .line 74
    :try_start_1
    iget-wide v0, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->nativeBufferHandle:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2a

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 75
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    .line 77
    :cond_c
    :try_start_c
    invoke-direct {p0}, Lcom/google/mediapipe/framework/GraphTextureFrame;->nativeGetCurrentExternalContextHandle()J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2c

    .line 78
    iget-object v2, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->activeConsumerContextHandleSet:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 81
    iget-boolean v0, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->deferredSync:Z

    if-eqz v0, :cond_2c

    .line 84
    iget-wide v0, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->nativeBufferHandle:J

    invoke-direct {p0, v0, v1}, Lcom/google/mediapipe/framework/GraphTextureFrame;->nativeGpuWait(J)V

    goto :goto_2c

    :catchall_2a
    move-exception v0

    goto :goto_30

    .line 87
    :cond_2c
    :goto_2c
    iget v0, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->textureName:I
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_2a

    monitor-exit p0

    return v0

    :goto_30
    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2a

    throw v0
.end method

.method public getTimestamp()J
    .registers 3

    .line 104
    iget-wide v0, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->timestamp:J

    return-wide v0
.end method

.method public getWidth()I
    .registers 1

    .line 93
    iget p0, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->width:I

    return p0
.end method

.method public declared-synchronized release()V
    .registers 6

    monitor-enter p0

    .line 128
    :try_start_1
    invoke-direct {p0}, Lcom/google/mediapipe/framework/GraphTextureFrame;->nativeGetCurrentExternalContextHandle()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_23

    .line 129
    iget-object v3, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->activeConsumerContextHandleSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_23

    .line 130
    sget-object v3, Lcom/google/mediapipe/framework/GraphTextureFrame;->logger:Lcom/google/common/flogger/FluentLogger;

    invoke-virtual {v3}, Lcom/google/common/flogger/AbstractLogger;->atWarning()Lcom/google/common/flogger/LoggingApi;

    move-result-object v3

    check-cast v3, Lcom/google/common/flogger/FluentLogger$Api;

    const-string v4, "GraphTextureFrame is being released on non GL thread while having active consumers, which may lead to external / internal GL contexts synchronization issues."

    invoke-interface {v3, v4}, Lcom/google/common/flogger/LoggingApi;->log(Ljava/lang/String;)V

    goto :goto_23

    :catchall_21
    move-exception v0

    goto :goto_43

    :cond_23
    :goto_23
    if-eqz v2, :cond_3d

    .line 135
    iget-object v2, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->activeConsumerContextHandleSet:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 136
    new-instance v0, Lcom/google/mediapipe/framework/GraphGlSyncToken;

    iget-wide v1, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->nativeBufferHandle:J

    .line 137
    invoke-direct {p0, v1, v2}, Lcom/google/mediapipe/framework/GraphTextureFrame;->nativeCreateSyncTokenForCurrentExternalContext(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/mediapipe/framework/GraphGlSyncToken;-><init>(J)V

    goto :goto_3e

    :cond_3d
    const/4 v0, 0x0

    .line 139
    :goto_3e
    invoke-virtual {p0, v0}, Lcom/google/mediapipe/framework/GraphTextureFrame;->release(Lcom/google/mediapipe/framework/GlSyncToken;)V
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_21

    .line 140
    monitor-exit p0

    return-void

    :goto_43
    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_21

    throw v0
.end method

.method public declared-synchronized release(Lcom/google/mediapipe/framework/GlSyncToken;)V
    .registers 8

    monitor-enter p0

    .line 153
    :try_start_1
    iget-wide v0, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->nativeBufferHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1d

    if-eqz p1, :cond_1b

    .line 155
    sget-object p1, Lcom/google/mediapipe/framework/GraphTextureFrame;->logger:Lcom/google/common/flogger/FluentLogger;

    invoke-virtual {p1}, Lcom/google/common/flogger/AbstractLogger;->atWarning()Lcom/google/common/flogger/LoggingApi;

    move-result-object p1

    check-cast p1, Lcom/google/common/flogger/FluentLogger$Api;

    const-string v0, "release with sync token, but handle is 0"

    invoke-interface {p1, v0}, Lcom/google/common/flogger/LoggingApi;->log(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_19

    goto :goto_1b

    :catchall_19
    move-exception p1

    goto :goto_3c

    .line 157
    :cond_1b
    :goto_1b
    monitor-exit p0

    return-void

    :cond_1d
    if-eqz p1, :cond_2b

    .line 161
    :try_start_1f
    invoke-interface {p1}, Lcom/google/mediapipe/framework/GlSyncToken;->nativeToken()J

    move-result-wide v0

    .line 162
    iget-wide v4, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->nativeBufferHandle:J

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/google/mediapipe/framework/GraphTextureFrame;->nativeDidRead(JJ)V

    .line 165
    invoke-interface {p1}, Lcom/google/mediapipe/framework/GlSyncToken;->release()V

    .line 168
    :cond_2b
    iget p1, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->refCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->refCount:I

    if-gtz p1, :cond_3a

    .line 170
    iget-wide v0, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->nativeBufferHandle:J

    invoke-direct {p0, v0, v1}, Lcom/google/mediapipe/framework/GraphTextureFrame;->nativeReleaseBuffer(J)V

    .line 171
    iput-wide v2, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->nativeBufferHandle:J
    :try_end_3a
    .catchall {:try_start_1f .. :try_end_3a} :catchall_19

    .line 173
    :cond_3a
    monitor-exit p0

    return-void

    :goto_3c
    :try_start_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_19

    throw p1
.end method

.method public declared-synchronized retain()V
    .registers 2

    monitor-enter p0

    .line 115
    :try_start_1
    iget v0, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->refCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->refCount:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 116
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public supportsRetain()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
