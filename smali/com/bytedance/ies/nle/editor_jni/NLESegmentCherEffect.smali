.class public Lcom/bytedance/ies/nle/editor_jni/NLESegmentCherEffect;
.super Lcom/bytedance/ies/nle/editor_jni/NLESegment;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwnDerived:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 90
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_NLESegmentCherEffect()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentCherEffect;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 7

    .line 21
    invoke-static {p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentCherEffect_SWIGSmartPtrUpcast(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegment;-><init>(JZ)V

    .line 22
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentCherEffect;->swigCMemOwnDerived:Z

    .line 23
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentCherEffect;->swigCPtr:J

    return-void
.end method

.method public static dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentCherEffect;
    .registers 5

    .line 52
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentCherEffect_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 53
    :cond_10
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentCherEffect;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentCherEffect;-><init>(JZ)V

    return-object p0
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLESegmentCherEffect;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 27
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentCherEffect;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;
    .registers 5

    .line 57
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentCherEffect;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentCherEffect_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentCherEffect;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 58
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;-><init>(JZ)V

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    .line 16
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentCherEffect;->clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 41
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentCherEffect;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 42
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentCherEffect;->swigCMemOwnDerived:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 43
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentCherEffect;->swigCMemOwnDerived:Z

    .line 44
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->delete_NLESegmentCherEffect(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1d

    .line 46
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentCherEffect;->swigCPtr:J

    .line 48
    :cond_18
    invoke-super {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegment;->delete()V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_14

    .line 49
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

    .line 37
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentCherEffect;->delete()V

    return-void
.end method

.method public getCherDuration()Lcom/bytedance/ies/nle/editor_jni/VecDouble;
    .registers 4

    .line 82
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecDouble;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentCherEffect;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentCherEffect_getCherDuration(JLcom/bytedance/ies/nle/editor_jni/NLESegmentCherEffect;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecDouble;-><init>(JZ)V

    return-object v0
.end method

.method public getCherMatrix()Lcom/bytedance/ies/nle/editor_jni/VecString;
    .registers 4

    .line 70
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecString;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentCherEffect;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentCherEffect_getCherMatrix(JLcom/bytedance/ies/nle/editor_jni/NLESegmentCherEffect;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecString;-><init>(JZ)V

    return-object v0
.end method

.method public getType()Lcom/bytedance/ies/nle/editor_jni/NLEResType;
    .registers 3

    .line 86
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentCherEffect;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentCherEffect_getType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentCherEffect;)I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEResType;->swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/NLEResType;

    move-result-object p0

    return-object p0
.end method

.method public hasCherDuration()Z
    .registers 3

    .line 74
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentCherEffect;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentCherEffect_hasCherDuration(JLcom/bytedance/ies/nle/editor_jni/NLESegmentCherEffect;)Z

    move-result p0

    return p0
.end method

.method public hasCherMatrix()Z
    .registers 3

    .line 62
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentCherEffect;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentCherEffect_hasCherMatrix(JLcom/bytedance/ies/nle/editor_jni/NLESegmentCherEffect;)Z

    move-result p0

    return p0
.end method

.method public setCherDuration(Lcom/bytedance/ies/nle/editor_jni/VecDouble;)V
    .registers 8

    .line 78
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentCherEffect;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/VecDouble;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecDouble;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentCherEffect_setCherDuration(JLcom/bytedance/ies/nle/editor_jni/NLESegmentCherEffect;JLcom/bytedance/ies/nle/editor_jni/VecDouble;)V

    return-void
.end method

.method public setCherMatrix(Lcom/bytedance/ies/nle/editor_jni/VecString;)V
    .registers 8

    .line 66
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentCherEffect;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/VecString;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecString;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentCherEffect_setCherMatrix(JLcom/bytedance/ies/nle/editor_jni/NLESegmentCherEffect;JLcom/bytedance/ies/nle/editor_jni/VecString;)V

    return-void
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 31
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentCherEffect;->swigCMemOwnDerived:Z

    .line 32
    invoke-super {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegment;->swigSetCMemOwn(Z)V

    return-void
.end method
