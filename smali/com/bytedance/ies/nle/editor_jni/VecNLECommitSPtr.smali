.class public Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 44
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_VecNLECommitSPtr__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(J)V
    .registers 4

    .line 52
    invoke-static {p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_VecNLECommitSPtr__SWIG_2(J)J

    move-result-wide p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JLcom/bytedance/ies/nle/editor_jni/NLECommit;)V
    .registers 6

    .line 48
    invoke-static {p3}, Lcom/bytedance/ies/nle/editor_jni/NLECommit;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLECommit;)J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1, p3}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_VecNLECommitSPtr__SWIG_1(JJLcom/bytedance/ies/nle/editor_jni/NLECommit;)J

    move-result-wide p1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;)V
    .registers 4

    .line 56
    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_VecNLECommitSPtr__SWIG_3(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public assign(JLcom/bytedance/ies/nle/editor_jni/NLECommit;)V
    .registers 12

    .line 60
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;->swigCPtr:J

    invoke-static {p3}, Lcom/bytedance/ies/nle/editor_jni/NLECommit;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLECommit;)J

    move-result-wide v5

    move-object v2, p0

    move-wide v3, p1

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->VecNLECommitSPtr_assign(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;JJLcom/bytedance/ies/nle/editor_jni/NLECommit;)V

    return-void
.end method

.method public back()Lcom/bytedance/ies/nle/editor_jni/NLECommit;
    .registers 5

    .line 89
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->VecNLECommitSPtr_back(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 90
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLECommit;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLECommit;-><init>(JZ)V

    return-object p0
.end method

.method public clear()V
    .registers 3

    .line 110
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->VecNLECommitSPtr_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;)V

    return-void
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 30
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 31
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 32
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;->swigCMemOwn:Z

    .line 33
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->delete_VecNLECommitSPtr(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 35
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;->swigCPtr:J
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_14

    .line 37
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

.method public delitem(I)V
    .registers 4

    .line 123
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->VecNLECommitSPtr_delitem(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;I)V

    return-void
.end method

.method public delslice(II)V
    .registers 5

    .line 135
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->VecNLECommitSPtr_delslice(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;II)V

    return-void
.end method

.method public empty()Z
    .registers 3

    .line 40
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->VecNLECommitSPtr_empty(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;)Z

    move-result p0

    return p0
.end method

.method protected finalize()V
    .registers 1

    .line 26
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;->delete()V

    return-void
.end method

.method public front()Lcom/bytedance/ies/nle/editor_jni/NLECommit;
    .registers 5

    .line 84
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->VecNLECommitSPtr_front(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 85
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLECommit;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLECommit;-><init>(JZ)V

    return-object p0
.end method

.method public getitem(I)Lcom/bytedance/ies/nle/editor_jni/NLECommit;
    .registers 4

    .line 114
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->VecNLECommitSPtr_getitem(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;I)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 115
    :cond_e
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLECommit;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/bytedance/ies/nle/editor_jni/NLECommit;-><init>(JZ)V

    return-object v0
.end method

.method public getslice(II)Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;
    .registers 6

    .line 127
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;->swigCPtr:J

    invoke-static {v1, v2, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->VecNLECommitSPtr_getslice(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;II)J

    move-result-wide p0

    const/4 p2, 0x1

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;-><init>(JZ)V

    return-object v0
.end method

.method public max_size()J
    .registers 3

    .line 72
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->VecNLECommitSPtr_max_size(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;)J

    move-result-wide v0

    return-wide v0
.end method

.method public pop_back()V
    .registers 3

    .line 106
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->VecNLECommitSPtr_pop_back(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;)V

    return-void
.end method

.method public pop_front()V
    .registers 3

    .line 102
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->VecNLECommitSPtr_pop_front(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;)V

    return-void
.end method

.method public push_back(Lcom/bytedance/ies/nle/editor_jni/NLECommit;)V
    .registers 8

    .line 98
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLECommit;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLECommit;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->VecNLECommitSPtr_push_back(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;JLcom/bytedance/ies/nle/editor_jni/NLECommit;)V

    return-void
.end method

.method public push_front(Lcom/bytedance/ies/nle/editor_jni/NLECommit;)V
    .registers 8

    .line 94
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLECommit;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLECommit;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->VecNLECommitSPtr_push_front(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;JLcom/bytedance/ies/nle/editor_jni/NLECommit;)V

    return-void
.end method

.method public resize(J)V
    .registers 5

    .line 80
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->VecNLECommitSPtr_resize__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;J)V

    return-void
.end method

.method public resize(JLcom/bytedance/ies/nle/editor_jni/NLECommit;)V
    .registers 12

    .line 76
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;->swigCPtr:J

    invoke-static {p3}, Lcom/bytedance/ies/nle/editor_jni/NLECommit;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLECommit;)J

    move-result-wide v5

    move-object v2, p0

    move-wide v3, p1

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->VecNLECommitSPtr_resize__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;JJLcom/bytedance/ies/nle/editor_jni/NLECommit;)V

    return-void
.end method

.method public setitem(ILcom/bytedance/ies/nle/editor_jni/NLECommit;)V
    .registers 10

    .line 119
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;->swigCPtr:J

    invoke-static {p2}, Lcom/bytedance/ies/nle/editor_jni/NLECommit;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLECommit;)J

    move-result-wide v4

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->VecNLECommitSPtr_setitem(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;IJLcom/bytedance/ies/nle/editor_jni/NLECommit;)V

    return-void
.end method

.method public setslice(IILcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;)V
    .registers 12

    .line 131
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;->swigCPtr:J

    invoke-static {p3}, Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;)J

    move-result-wide v5

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->VecNLECommitSPtr_setslice(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;IIJLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;)V

    return-void
.end method

.method public size()J
    .registers 3

    .line 68
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->VecNLECommitSPtr_size(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;)J

    move-result-wide v0

    return-wide v0
.end method

.method public swap(Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;)V
    .registers 8

    .line 64
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->VecNLECommitSPtr_swap(JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;JLcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;)V

    return-void
.end method
