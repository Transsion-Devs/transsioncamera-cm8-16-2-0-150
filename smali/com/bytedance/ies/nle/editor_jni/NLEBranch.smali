.class public Lcom/bytedance/ies/nle/editor_jni/NLEBranch;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MAX_COMMIT_COUNT:J = 0x32L


# instance fields
.field private transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 161
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_NLEBranch()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEBranch;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBranch;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBranch;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEBranch;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBranch;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public addCommit(Lcom/bytedance/ies/nle/editor_jni/NLECommit;)V
    .registers 8

    .line 95
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBranch;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLECommit;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLECommit;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEBranch_addCommit(JLcom/bytedance/ies/nle/editor_jni/NLEBranch;JLcom/bytedance/ies/nle/editor_jni/NLECommit;)V

    return-void
.end method

.method public clear()V
    .registers 3

    .line 54
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBranch;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEBranch_clear(JLcom/bytedance/ies/nle/editor_jni/NLEBranch;)V

    return-void
.end method

.method public collectResources(Lcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtr;)V
    .registers 8

    .line 149
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBranch;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtr;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtr;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEBranch_collectResources(JLcom/bytedance/ies/nle/editor_jni/NLEBranch;JLcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtr;)V

    return-void
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 34
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBranch;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 35
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBranch;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 36
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBranch;->swigCMemOwn:Z

    .line 37
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->delete_NLEBranch(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 39
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBranch;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEBranch;->delete()V

    return-void
.end method

.method public getCommits()Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;
    .registers 4

    .line 157
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBranch;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEBranch_getCommits(JLcom/bytedance/ies/nle/editor_jni/NLEBranch;)J

    move-result-wide v1

    const/4 p0, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLECommitSPtr;-><init>(JZ)V

    return-object v0
.end method

.method public getHead()Lcom/bytedance/ies/nle/editor_jni/NLECommit;
    .registers 5

    .line 99
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBranch;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEBranch_getHead(JLcom/bytedance/ies/nle/editor_jni/NLEBranch;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 100
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLECommit;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLECommit;-><init>(JZ)V

    return-object p0
.end method

.method public getHeadNext()Lcom/bytedance/ies/nle/editor_jni/NLECommit;
    .registers 5

    .line 109
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBranch;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEBranch_getHeadNext(JLcom/bytedance/ies/nle/editor_jni/NLEBranch;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 110
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLECommit;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLECommit;-><init>(JZ)V

    return-object p0
.end method

.method public getHeadPrev()Lcom/bytedance/ies/nle/editor_jni/NLECommit;
    .registers 5

    .line 104
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBranch;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEBranch_getHeadPrev(JLcom/bytedance/ies/nle/editor_jni/NLEBranch;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 105
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLECommit;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLECommit;-><init>(JZ)V

    return-object p0
.end method

.method public goTo(Ljava/lang/String;)Lcom/bytedance/ies/nle/editor_jni/NLECommit;
    .registers 4

    .line 134
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBranch;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEBranch_goTo(JLcom/bytedance/ies/nle/editor_jni/NLEBranch;Ljava/lang/String;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 135
    :cond_e
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLECommit;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/bytedance/ies/nle/editor_jni/NLECommit;-><init>(JZ)V

    return-object v0
.end method

.method public resetToNext()Lcom/bytedance/ies/nle/editor_jni/NLECommit;
    .registers 5

    .line 119
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBranch;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEBranch_resetToNext__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/NLEBranch;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 120
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLECommit;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLECommit;-><init>(JZ)V

    return-object p0
.end method

.method public resetToNext(I)Lcom/bytedance/ies/nle/editor_jni/NLECommit;
    .registers 4

    .line 114
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBranch;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEBranch_resetToNext__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/NLEBranch;I)J

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

.method public resetToPrev()Lcom/bytedance/ies/nle/editor_jni/NLECommit;
    .registers 5

    .line 129
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBranch;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEBranch_resetToPrev__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/NLEBranch;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 130
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLECommit;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLECommit;-><init>(JZ)V

    return-object p0
.end method

.method public resetToPrev(I)Lcom/bytedance/ies/nle/editor_jni/NLECommit;
    .registers 4

    .line 124
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBranch;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEBranch_resetToPrev__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/NLEBranch;I)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 125
    :cond_e
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLECommit;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/bytedance/ies/nle/editor_jni/NLECommit;-><init>(JZ)V

    return-object v0
.end method

.method public setListener(Lcom/bytedance/ies/nle/editor_jni/NLEBranchListener;)V
    .registers 8

    .line 153
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBranch;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEBranchListener;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEBranchListener;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEBranch_setListener(JLcom/bytedance/ies/nle/editor_jni/NLEBranch;JLcom/bytedance/ies/nle/editor_jni/NLEBranchListener;)V

    return-void
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBranch;->swigCMemOwn:Z

    return-void
.end method

.method public trim(JJ)V
    .registers 12

    .line 75
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBranch;->swigCPtr:J

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEBranch_trim(JLcom/bytedance/ies/nle/editor_jni/NLEBranch;JJ)V

    return-void
.end method

.method public trimRange(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 145
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBranch;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEBranch_trimRange(JLcom/bytedance/ies/nle/editor_jni/NLEBranch;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
