.class public Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 44
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->new_NLEMVResourceBean()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 34
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 35
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 36
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->swigCMemOwn:Z

    .line 37
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->delete_NLEMVResourceBean(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 39
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->delete()V

    return-void
.end method

.method public getClipIndex()I
    .registers 3

    .line 116
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMVResourceBean_clipIndex_get(JLcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;)I

    move-result p0

    return p0
.end method

.method public getContent()Ljava/lang/String;
    .registers 3

    .line 84
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMVResourceBean_content_get(JLcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIsLoop()I
    .registers 3

    .line 124
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMVResourceBean_isLoop_get(JLcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;)I

    move-result p0

    return p0
.end method

.method public getIsMute()Z
    .registers 3

    .line 132
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMVResourceBean_isMute_get(JLcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;)Z

    move-result p0

    return p0
.end method

.method public getRid()I
    .registers 3

    .line 100
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMVResourceBean_rid_get(JLcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;)I

    move-result p0

    return p0
.end method

.method public getSeqIn()J
    .registers 3

    .line 68
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMVResourceBean_seqIn_get(JLcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeqOut()J
    .registers 3

    .line 76
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMVResourceBean_seqOut_get(JLcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackIndex()I
    .registers 3

    .line 108
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMVResourceBean_trackIndex_get(JLcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;)I

    move-result p0

    return p0
.end method

.method public getTrimIn()J
    .registers 3

    .line 52
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMVResourceBean_trimIn_get(JLcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrimOut()J
    .registers 3

    .line 60
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMVResourceBean_trimOut_get(JLcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .registers 3

    .line 92
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMVResourceBean_type_get(JLcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setClipIndex(I)V
    .registers 4

    .line 112
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMVResourceBean_clipIndex_set(JLcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;I)V

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 4

    .line 80
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMVResourceBean_content_set(JLcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;Ljava/lang/String;)V

    return-void
.end method

.method public setIsLoop(I)V
    .registers 4

    .line 120
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMVResourceBean_isLoop_set(JLcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;I)V

    return-void
.end method

.method public setIsMute(Z)V
    .registers 4

    .line 128
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMVResourceBean_isMute_set(JLcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;Z)V

    return-void
.end method

.method public setRid(I)V
    .registers 4

    .line 96
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMVResourceBean_rid_set(JLcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;I)V

    return-void
.end method

.method public setSeqIn(J)V
    .registers 5

    .line 64
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMVResourceBean_seqIn_set(JLcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;J)V

    return-void
.end method

.method public setSeqOut(J)V
    .registers 5

    .line 72
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMVResourceBean_seqOut_set(JLcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;J)V

    return-void
.end method

.method public setTrackIndex(I)V
    .registers 4

    .line 104
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMVResourceBean_trackIndex_set(JLcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;I)V

    return-void
.end method

.method public setTrimIn(J)V
    .registers 5

    .line 48
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMVResourceBean_trimIn_set(JLcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;J)V

    return-void
.end method

.method public setTrimOut(J)V
    .registers 5

    .line 56
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMVResourceBean_trimOut_set(JLcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;J)V

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 4

    .line 88
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMVResourceBean_type_set(JLcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;Ljava/lang/String;)V

    return-void
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->swigCMemOwn:Z

    return-void
.end method
