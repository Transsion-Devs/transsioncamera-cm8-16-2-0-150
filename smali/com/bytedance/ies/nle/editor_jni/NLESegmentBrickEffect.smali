.class public Lcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;
.super Lcom/bytedance/ies/nle/editor_jni/NLESegment;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwnDerived:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 104
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_NLESegmentBrickEffect()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 7

    .line 16
    invoke-static {p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentBrickEffect_SWIGSmartPtrUpcast(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegment;-><init>(JZ)V

    .line 17
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;->swigCMemOwnDerived:Z

    .line 18
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;->swigCPtr:J

    return-void
.end method

.method public static dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;
    .registers 5

    .line 47
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentBrickEffect_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 48
    :cond_10
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;-><init>(JZ)V

    return-object p0
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 22
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;
    .registers 5

    .line 52
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentBrickEffect_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 53
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;-><init>(JZ)V

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    .line 11
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;->clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 36
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 37
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;->swigCMemOwnDerived:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 38
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;->swigCMemOwnDerived:Z

    .line 39
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->delete_NLESegmentBrickEffect(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1d

    .line 41
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;->swigCPtr:J

    .line 43
    :cond_18
    invoke-super {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegment;->delete()V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_14

    .line 44
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

    .line 32
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;->delete()V

    return-void
.end method

.method public getBrickType()Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;
    .registers 3

    .line 77
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentBrickEffect_getBrickType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;)I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;->swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;

    move-result-object p0

    return-object p0
.end method

.method public getEffectJsonParam()Ljava/lang/String;
    .registers 3

    .line 65
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentBrickEffect_getEffectJsonParam(JLcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEffectSDKEffect()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;
    .registers 5

    .line 85
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentBrickEffect_getEffectSDKEffect(JLcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 86
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;-><init>(JZ)V

    return-object p0
.end method

.method public getResource()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;
    .registers 5

    .line 99
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentBrickEffect_getResource(JLcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 100
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;-><init>(JZ)V

    return-object p0
.end method

.method public getShapeDataRes()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;
    .registers 5

    .line 94
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentBrickEffect_getShapeDataRes(JLcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 95
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;-><init>(JZ)V

    return-object p0
.end method

.method public hasBrickType()Z
    .registers 3

    .line 69
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentBrickEffect_hasBrickType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;)Z

    move-result p0

    return p0
.end method

.method public hasEffectJsonParam()Z
    .registers 3

    .line 57
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentBrickEffect_hasEffectJsonParam(JLcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;)Z

    move-result p0

    return p0
.end method

.method public setBrickType(Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;)V
    .registers 4

    .line 73
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;->swigCPtr:J

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentBrickEffect_setBrickType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;I)V

    return-void
.end method

.method public setEffectJsonParam(Ljava/lang/String;)V
    .registers 4

    .line 61
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentBrickEffect_setEffectJsonParam(JLcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;Ljava/lang/String;)V

    return-void
.end method

.method public setEffectSDKEffect(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
    .registers 8

    .line 81
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentBrickEffect_setEffectSDKEffect(JLcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V

    return-void
.end method

.method public setShapeDataRes(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
    .registers 8

    .line 90
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentBrickEffect_setShapeDataRes(JLcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V

    return-void
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 26
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentBrickEffect;->swigCMemOwnDerived:Z

    .line 27
    invoke-super {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegment;->swigSetCMemOwn(Z)V

    return-void
.end method
