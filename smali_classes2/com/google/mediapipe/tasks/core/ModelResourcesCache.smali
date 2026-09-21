.class Lcom/google/mediapipe/tasks/core/ModelResourcesCache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final isHandleValid:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final nativeHandle:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/ModelResourcesCache;->nativeCreateModelResourcesCache()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/mediapipe/tasks/core/ModelResourcesCache;->nativeHandle:J

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/mediapipe/tasks/core/ModelResourcesCache;->isHandleValid:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private native nativeCreateModelResourcesCache()J
.end method

.method private native nativeReleaseModelResourcesCache(J)V
.end method


# virtual methods
.method public getNativeHandle()J
    .registers 3

    .line 34
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/ModelResourcesCache;->isHandleValid:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 35
    iget-wide v0, p0, Lcom/google/mediapipe/tasks/core/ModelResourcesCache;->nativeHandle:J

    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isHandleValid()Z
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/google/mediapipe/tasks/core/ModelResourcesCache;->isHandleValid:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public release()V
    .registers 4

    .line 41
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/ModelResourcesCache;->isHandleValid:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 42
    iget-wide v0, p0, Lcom/google/mediapipe/tasks/core/ModelResourcesCache;->nativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/google/mediapipe/tasks/core/ModelResourcesCache;->nativeReleaseModelResourcesCache(J)V

    :cond_f
    return-void
.end method
