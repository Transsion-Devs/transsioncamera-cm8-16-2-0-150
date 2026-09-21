.class public Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegateContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegateContainer;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegateContainer;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegateContainer;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegateContainer;->swigCPtr:J

    return-wide v0
.end method

.method public static getFileDelegate()Lcom/bytedance/ies/mediaprocessors/delegates_jni/IFileDelegate;
    .registers 4

    .line 60
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->MediaDelegateContainer_getFileDelegate()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_c
    new-instance v2, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IFileDelegate;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IFileDelegate;-><init>(JZ)V

    return-object v2
.end method

.method public static getInstance()Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegateContainer;
    .registers 4

    .line 39
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegateContainer;

    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->MediaDelegateContainer_getInstance()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegateContainer;-><init>(JZ)V

    return-object v0
.end method

.method public static getNetworkDelegate()Lcom/bytedance/ies/mediaprocessors/delegates_jni/INetworkDelegate;
    .registers 4

    .line 55
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->MediaDelegateContainer_getNetworkDelegate()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_c
    new-instance v2, Lcom/bytedance/ies/mediaprocessors/delegates_jni/INetworkDelegate;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/INetworkDelegate;-><init>(JZ)V

    return-object v2
.end method

.method public static getThreadDelegate()Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;
    .registers 4

    .line 65
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->MediaDelegateContainer_getThreadDelegate()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const/4 v0, 0x0

    return-object v0

    .line 66
    :cond_c
    new-instance v2, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;-><init>(JZ)V

    return-object v2
.end method

.method public static setFileDelegate(Lcom/bytedance/ies/mediaprocessors/delegates_jni/IFileDelegate;)V
    .registers 3

    .line 47
    invoke-static {p0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IFileDelegate;->getCPtr(Lcom/bytedance/ies/mediaprocessors/delegates_jni/IFileDelegate;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->MediaDelegateContainer_setFileDelegate(JLcom/bytedance/ies/mediaprocessors/delegates_jni/IFileDelegate;)V

    return-void
.end method

.method public static setNetworkDelegate(Lcom/bytedance/ies/mediaprocessors/delegates_jni/INetworkDelegate;)V
    .registers 3

    .line 43
    invoke-static {p0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/INetworkDelegate;->getCPtr(Lcom/bytedance/ies/mediaprocessors/delegates_jni/INetworkDelegate;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->MediaDelegateContainer_setNetworkDelegate(JLcom/bytedance/ies/mediaprocessors/delegates_jni/INetworkDelegate;)V

    return-void
.end method

.method public static setThreadDelegate(Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;)V
    .registers 3

    .line 51
    invoke-static {p0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;->getCPtr(Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->MediaDelegateContainer_setThreadDelegate(JLcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized delete()V
    .registers 5

    monitor-enter p0

    .line 29
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegateContainer;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1d

    .line 30
    iget-boolean v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegateContainer;->swigCMemOwn:Z

    if-nez v0, :cond_12

    .line 34
    iput-wide v2, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegateContainer;->swigCPtr:J

    goto :goto_1d

    :catchall_10
    move-exception v0

    goto :goto_1f

    :cond_12
    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegateContainer;->swigCMemOwn:Z

    .line 32
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "C++ destructor does not have public access"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_10

    .line 36
    :cond_1d
    :goto_1d
    monitor-exit p0

    return-void

    :goto_1f
    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_10

    throw v0
.end method

.method public swigSetCMemOwn(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegateContainer;->swigCMemOwn:Z

    return-void
.end method
