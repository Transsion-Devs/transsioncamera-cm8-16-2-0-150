.class public Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;
.super Lcom/bytedance/ies/nle/editor_jni/NLESegment;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwnDerived:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 126
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_NLESegmentTransition()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 7

    .line 19
    invoke-static {p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentTransition_SWIGSmartPtrUpcast(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegment;-><init>(JZ)V

    .line 20
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;->swigCMemOwnDerived:Z

    .line 21
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;->swigCPtr:J

    return-void
.end method

.method public static dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;
    .registers 5

    .line 50
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentTransition_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 51
    :cond_10
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;-><init>(JZ)V

    return-object p0
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 25
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;
    .registers 5

    .line 55
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentTransition_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;)J

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
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;->clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 39
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 40
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;->swigCMemOwnDerived:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 41
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;->swigCMemOwnDerived:Z

    .line 42
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->delete_NLESegmentTransition(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1d

    .line 44
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;->swigCPtr:J

    .line 46
    :cond_18
    invoke-super {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegment;->delete()V
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
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;->delete()V

    return-void
.end method

.method public getDuration()J
    .registers 3

    .line 122
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentTransition_getDuration(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getEffectSDKTransition()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;
    .registers 5

    .line 97
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentTransition_getEffectSDKTransition(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 98
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;-><init>(JZ)V

    return-object p0
.end method

.method public getMediaTransType()Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;
    .registers 3

    .line 113
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentTransition_getMediaTransType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;)I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;->swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;

    move-result-object p0

    return-object p0
.end method

.method public getOverlap()Z
    .registers 3

    .line 71
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentTransition_getOverlap(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;)Z

    move-result p0

    return p0
.end method

.method public getResource()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;
    .registers 5

    .line 117
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentTransition_getResource(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 118
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;-><init>(JZ)V

    return-object p0
.end method

.method public getTransitionDuration()J
    .registers 3

    .line 86
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentTransition_getTransitionDuration(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasMediaTransType()Z
    .registers 3

    .line 102
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentTransition_hasMediaTransType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;)Z

    move-result p0

    return p0
.end method

.method public hasOverlap()Z
    .registers 3

    .line 60
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentTransition_hasOverlap(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;)Z

    move-result p0

    return p0
.end method

.method public hasTransitionDuration()Z
    .registers 3

    .line 75
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentTransition_hasTransitionDuration(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;)Z

    move-result p0

    return p0
.end method

.method public setEffectSDKTransition(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
    .registers 8

    .line 90
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentTransition_setEffectSDKTransition(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V

    return-void
.end method

.method public setMediaTransType(Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;)V
    .registers 4

    .line 106
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;->swigCPtr:J

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentTransition_setMediaTransType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;I)V

    return-void
.end method

.method public setOverlap(Z)V
    .registers 4

    .line 64
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentTransition_setOverlap(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;Z)V

    return-void
.end method

.method public setTransitionDuration(J)V
    .registers 5

    .line 79
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentTransition_setTransitionDuration(JLcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;J)V

    return-void
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 29
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;->swigCMemOwnDerived:Z

    .line 30
    invoke-super {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegment;->swigSetCMemOwn(Z)V

    return-void
.end method
