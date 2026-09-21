.class public Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 59
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->new_IThreadDelegate()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;-><init>(JZ)V

    .line 60
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;->swigCPtr:J

    invoke-static {p0, v0, v1, v2, v2}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->IThreadDelegate_director_connect(Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;JZZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public cancel(J)V
    .registers 5

    .line 80
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->IThreadDelegate_cancel(JLcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;J)V

    return-void
.end method

.method public cancelAll()V
    .registers 3

    .line 84
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->IThreadDelegate_cancelAll(JLcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;)V

    return-void
.end method

.method public commit(Lcom/bytedance/ies/mediaprocessors/delegates_jni/VoidVoidFunc;)J
    .registers 8

    .line 64
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VoidVoidFunc;->getCPtr(Lcom/bytedance/ies/mediaprocessors/delegates_jni/VoidVoidFunc;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->IThreadDelegate_commit(JLcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;JLcom/bytedance/ies/mediaprocessors/delegates_jni/VoidVoidFunc;)J

    move-result-wide p0

    return-wide p0
.end method

.method public commitGroupTask(Lcom/bytedance/ies/mediaprocessors/delegates_jni/GroupTaskList;Lcom/bytedance/ies/mediaprocessors/delegates_jni/GroupTaskType;Lcom/bytedance/ies/mediaprocessors/delegates_jni/VoidVoidFunc;)J
    .registers 14

    .line 76
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/GroupTaskList;->getCPtr(Lcom/bytedance/ies/mediaprocessors/delegates_jni/GroupTaskList;)J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/GroupTaskType;->swigValue()I

    move-result v6

    invoke-static {p3}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VoidVoidFunc;->getCPtr(Lcom/bytedance/ies/mediaprocessors/delegates_jni/VoidVoidFunc;)J

    move-result-wide v7

    move-object v2, p0

    move-object v5, p1

    move-object v9, p3

    invoke-static/range {v0 .. v9}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->IThreadDelegate_commitGroupTask__SWIG_1(JLcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;JLcom/bytedance/ies/mediaprocessors/delegates_jni/GroupTaskList;IJLcom/bytedance/ies/mediaprocessors/delegates_jni/VoidVoidFunc;)J

    move-result-wide p0

    return-wide p0
.end method

.method public commitGroupTask(Lcom/bytedance/ies/mediaprocessors/delegates_jni/GroupTaskList;Lcom/bytedance/ies/mediaprocessors/delegates_jni/VoidVoidFunc;)J
    .registers 12

    .line 72
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/GroupTaskList;->getCPtr(Lcom/bytedance/ies/mediaprocessors/delegates_jni/GroupTaskList;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VoidVoidFunc;->getCPtr(Lcom/bytedance/ies/mediaprocessors/delegates_jni/VoidVoidFunc;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->IThreadDelegate_commitGroupTask__SWIG_0(JLcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;JLcom/bytedance/ies/mediaprocessors/delegates_jni/GroupTaskList;JLcom/bytedance/ies/mediaprocessors/delegates_jni/VoidVoidFunc;)J

    move-result-wide p0

    return-wide p0
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 34
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 35
    iget-boolean v4, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 36
    iput-boolean v4, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;->swigCMemOwn:Z

    .line 37
    invoke-static {v0, v1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->delete_IThreadDelegate(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 39
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;->swigCPtr:J
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_14

    .line 41
    :cond_18
    monitor-exit p0

    return-void

    :goto_1a
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_14

    throw v0
.end method

.method protected finalize()V
    .registers 1

    .line 30
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;->delete()V

    return-void
.end method

.method public postDelayed(Lcom/bytedance/ies/mediaprocessors/delegates_jni/VoidVoidFunc;J)J
    .registers 12

    .line 68
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VoidVoidFunc;->getCPtr(Lcom/bytedance/ies/mediaprocessors/delegates_jni/VoidVoidFunc;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-static/range {v0 .. v7}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->IThreadDelegate_postDelayed(JLcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;JLcom/bytedance/ies/mediaprocessors/delegates_jni/VoidVoidFunc;J)J

    move-result-wide p0

    return-wide p0
.end method

.method protected swigDirectorDisconnect()V
    .registers 2

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, v0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;->swigSetCMemOwn(Z)V

    .line 45
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;->delete()V

    return-void
.end method

.method public swigReleaseOwnership()V
    .registers 4

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, v0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;->swigSetCMemOwn(Z)V

    .line 50
    iget-wide v1, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;->swigCPtr:J

    invoke-static {p0, v1, v2, v0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->IThreadDelegate_change_ownership(Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;JZ)V

    return-void
.end method

.method public swigSetCMemOwn(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;->swigCMemOwn:Z

    return-void
.end method

.method public swigTakeOwnership()V
    .registers 4

    const/4 v0, 0x1

    .line 54
    invoke-virtual {p0, v0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;->swigSetCMemOwn(Z)V

    .line 55
    iget-wide v1, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;->swigCPtr:J

    invoke-static {p0, v1, v2, v0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->IThreadDelegate_change_ownership(Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;JZ)V

    return-void
.end method
