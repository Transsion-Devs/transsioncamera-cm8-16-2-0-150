.class public Lcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;
.super Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwnDerived:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 135
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_NLESegmentHDRFilter()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 7

    .line 19
    invoke-static {p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentHDRFilter_SWIGSmartPtrUpcast(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;-><init>(JZ)V

    .line 20
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;->swigCMemOwnDerived:Z

    .line 21
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;->swigCPtr:J

    return-void
.end method

.method public static dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;
    .registers 5

    .line 50
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentHDRFilter_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 51
    :cond_10
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;-><init>(JZ)V

    return-object p0
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 25
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;
    .registers 5

    .line 55
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentHDRFilter_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 56
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;-><init>(JZ)V

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    .line 14
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;->clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 39
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 40
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;->swigCMemOwnDerived:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 41
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;->swigCMemOwnDerived:Z

    .line 42
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->delete_NLESegmentHDRFilter(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1d

    .line 44
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;->swigCPtr:J

    .line 46
    :cond_18
    invoke-super {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->delete()V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_14

    .line 47
    monitor-exit p0

    return-void

    :goto_1d
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_14

    throw v0
.end method

.method protected finalize()V
    .registers 1

    .line 35
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;->delete()V

    return-void
.end method

.method public getAsfMode()I
    .registers 3

    .line 116
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentHDRFilter_getAsfMode(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;)I

    move-result p0

    return p0
.end method

.method public getDenoise()Z
    .registers 3

    .line 101
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentHDRFilter_getDenoise(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;)Z

    move-result p0

    return p0
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 3

    .line 71
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentHDRFilter_getFilePath(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFrameType()I
    .registers 3

    .line 86
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentHDRFilter_getFrameType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;)I

    move-result p0

    return p0
.end method

.method public getHdrMode()I
    .registers 3

    .line 131
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentHDRFilter_getHdrMode(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;)I

    move-result p0

    return p0
.end method

.method public hasAsfMode()Z
    .registers 3

    .line 105
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentHDRFilter_hasAsfMode(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;)Z

    move-result p0

    return p0
.end method

.method public hasDenoise()Z
    .registers 3

    .line 90
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentHDRFilter_hasDenoise(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;)Z

    move-result p0

    return p0
.end method

.method public hasFilePath()Z
    .registers 3

    .line 60
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentHDRFilter_hasFilePath(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;)Z

    move-result p0

    return p0
.end method

.method public hasFrameType()Z
    .registers 3

    .line 75
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentHDRFilter_hasFrameType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;)Z

    move-result p0

    return p0
.end method

.method public hasHdrMode()Z
    .registers 3

    .line 120
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentHDRFilter_hasHdrMode(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;)Z

    move-result p0

    return p0
.end method

.method public setAsfMode(I)V
    .registers 4

    .line 109
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentHDRFilter_setAsfMode(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;I)V

    return-void
.end method

.method public setDenoise(Z)V
    .registers 4

    .line 94
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentHDRFilter_setDenoise(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;Z)V

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .registers 4

    .line 64
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentHDRFilter_setFilePath(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;Ljava/lang/String;)V

    return-void
.end method

.method public setFrameType(I)V
    .registers 4

    .line 79
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentHDRFilter_setFrameType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;I)V

    return-void
.end method

.method public setHdrMode(I)V
    .registers 4

    .line 124
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentHDRFilter_setHdrMode(JLcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;I)V

    return-void
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 29
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentHDRFilter;->swigCMemOwnDerived:Z

    .line 30
    invoke-super {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->swigSetCMemOwn(Z)V

    return-void
.end method
