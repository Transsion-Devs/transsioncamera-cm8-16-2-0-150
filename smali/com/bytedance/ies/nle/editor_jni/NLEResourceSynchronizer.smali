.class public Lcom/bytedance/ies/nle/editor_jni/NLEResourceSynchronizer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 55
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_NLEResourceSynchronizer()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceSynchronizer;-><init>(JZ)V

    .line 56
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceSynchronizer;->swigCPtr:J

    invoke-static {p0, v0, v1, v2, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEResourceSynchronizer_director_connect(Lcom/bytedance/ies/nle/editor_jni/NLEResourceSynchronizer;JZZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceSynchronizer;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceSynchronizer;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEResourceSynchronizer;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceSynchronizer;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 30
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceSynchronizer;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 31
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceSynchronizer;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 32
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceSynchronizer;->swigCMemOwn:Z

    .line 33
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->delete_NLEResourceSynchronizer(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 35
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceSynchronizer;->swigCPtr:J
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

.method public fetch(Ljava/lang/String;Lcom/bytedance/ies/nle/editor_jni/SWIGTYPE_p_std__shared_ptrT_nle__resource__NLEResourceFetchCallback_t;)I
    .registers 9

    .line 65
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceSynchronizer;->swigCPtr:J

    invoke-static {p2}, Lcom/bytedance/ies/nle/editor_jni/SWIGTYPE_p_std__shared_ptrT_nle__resource__NLEResourceFetchCallback_t;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/SWIGTYPE_p_std__shared_ptrT_nle__resource__NLEResourceFetchCallback_t;)J

    move-result-wide v4

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEResourceSynchronizer_fetch(JLcom/bytedance/ies/nle/editor_jni/NLEResourceSynchronizer;Ljava/lang/String;J)I

    move-result p0

    return p0
.end method

.method protected finalize()V
    .registers 1

    .line 26
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceSynchronizer;->delete()V

    return-void
.end method

.method public push(Ljava/lang/String;Lcom/bytedance/ies/nle/editor_jni/SWIGTYPE_p_std__shared_ptrT_nle__resource__NLEResourceFetchCallback_t;)I
    .registers 9

    .line 74
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceSynchronizer;->swigCPtr:J

    invoke-static {p2}, Lcom/bytedance/ies/nle/editor_jni/SWIGTYPE_p_std__shared_ptrT_nle__resource__NLEResourceFetchCallback_t;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/SWIGTYPE_p_std__shared_ptrT_nle__resource__NLEResourceFetchCallback_t;)J

    move-result-wide v4

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEResourceSynchronizer_push(JLcom/bytedance/ies/nle/editor_jni/NLEResourceSynchronizer;Ljava/lang/String;J)I

    move-result p0

    return p0
.end method

.method protected swigDirectorDisconnect()V
    .registers 2

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceSynchronizer;->swigCMemOwn:Z

    .line 41
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceSynchronizer;->delete()V

    return-void
.end method

.method public swigReleaseOwnership()V
    .registers 4

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceSynchronizer;->swigCMemOwn:Z

    .line 46
    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceSynchronizer;->swigCPtr:J

    invoke-static {p0, v1, v2, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEResourceSynchronizer_change_ownership(Lcom/bytedance/ies/nle/editor_jni/NLEResourceSynchronizer;JZ)V

    return-void
.end method

.method public swigTakeOwnership()V
    .registers 4

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceSynchronizer;->swigCMemOwn:Z

    .line 51
    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceSynchronizer;->swigCPtr:J

    invoke-static {p0, v1, v2, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEResourceSynchronizer_change_ownership(Lcom/bytedance/ies/nle/editor_jni/NLEResourceSynchronizer;JZ)V

    return-void
.end method
