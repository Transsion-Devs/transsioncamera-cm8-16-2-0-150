.class public Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;
.super Lcom/bytedance/ies/nle/editor_jni/NLESegment;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwnDerived:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 192
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_NLESegmentFilter()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 7

    .line 19
    invoke-static {p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentFilter_SWIGSmartPtrUpcast(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegment;-><init>(JZ)V

    .line 20
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->swigCMemOwnDerived:Z

    .line 21
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->swigCPtr:J

    return-void
.end method

.method public static dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;
    .registers 5

    .line 50
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentFilter_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 51
    :cond_10
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;-><init>(JZ)V

    return-object p0
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 25
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public addAdjustParams(Lcom/bytedance/ies/nle/editor_jni/NLEStringFloatPair;)V
    .registers 8

    .line 171
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEStringFloatPair;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEStringFloatPair;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentFilter_addAdjustParams(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;JLcom/bytedance/ies/nle/editor_jni/NLEStringFloatPair;)V

    return-void
.end method

.method public clearAdjustParams()V
    .registers 3

    .line 179
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentFilter_clearAdjustParams(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;)V

    return-void
.end method

.method public clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;
    .registers 5

    .line 55
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentFilter_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;)J

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
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 39
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 40
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->swigCMemOwnDerived:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 41
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->swigCMemOwnDerived:Z

    .line 42
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->delete_NLESegmentFilter(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1d

    .line 44
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->swigCPtr:J

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
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->delete()V

    return-void
.end method

.method public getAdjustParamss()Lcom/bytedance/ies/nle/editor_jni/VecNLEStringFloatPairSPtr;
    .registers 4

    .line 183
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecNLEStringFloatPairSPtr;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentFilter_getAdjustParamss(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLEStringFloatPairSPtr;-><init>(JZ)V

    return-object v0
.end method

.method public getApplyTargetType()I
    .registers 3

    .line 146
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentFilter_getApplyTargetType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;)I

    move-result p0

    return p0
.end method

.method public getEffectSDKFilter()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;
    .registers 5

    .line 154
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentFilter_getEffectSDKFilter(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 155
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;-><init>(JZ)V

    return-object p0
.end method

.method public getFilterName()Ljava/lang/String;
    .registers 3

    .line 101
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentFilter_getFilterName(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFilterPosition()F
    .registers 3

    .line 131
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentFilter_getFilterPosition(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;)F

    move-result p0

    return p0
.end method

.method public getIntensity()F
    .registers 3

    .line 71
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentFilter_getIntensity(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;)F

    move-result p0

    return p0
.end method

.method public getResource()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;
    .registers 5

    .line 187
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentFilter_getResource(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 188
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;-><init>(JZ)V

    return-object p0
.end method

.method public getRightFilter()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;
    .registers 5

    .line 166
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentFilter_getRightFilter(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 167
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;-><init>(JZ)V

    return-object p0
.end method

.method public getRightIntensity()F
    .registers 3

    .line 86
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentFilter_getRightIntensity(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;)F

    move-result p0

    return p0
.end method

.method public getUseFilterV3()Z
    .registers 3

    .line 116
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentFilter_getUseFilterV3(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;)Z

    move-result p0

    return p0
.end method

.method public hasApplyTargetType()Z
    .registers 3

    .line 135
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentFilter_hasApplyTargetType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;)Z

    move-result p0

    return p0
.end method

.method public hasFilterName()Z
    .registers 3

    .line 90
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentFilter_hasFilterName(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;)Z

    move-result p0

    return p0
.end method

.method public hasFilterPosition()Z
    .registers 3

    .line 120
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentFilter_hasFilterPosition(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;)Z

    move-result p0

    return p0
.end method

.method public hasIntensity()Z
    .registers 3

    .line 60
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentFilter_hasIntensity(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;)Z

    move-result p0

    return p0
.end method

.method public hasRightIntensity()Z
    .registers 3

    .line 75
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentFilter_hasRightIntensity(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;)Z

    move-result p0

    return p0
.end method

.method public hasUseFilterV3()Z
    .registers 3

    .line 105
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentFilter_hasUseFilterV3(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;)Z

    move-result p0

    return p0
.end method

.method public removeAdjustParams(Lcom/bytedance/ies/nle/editor_jni/NLEStringFloatPair;)Z
    .registers 8

    .line 175
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEStringFloatPair;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEStringFloatPair;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentFilter_removeAdjustParams(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;JLcom/bytedance/ies/nle/editor_jni/NLEStringFloatPair;)Z

    move-result p0

    return p0
.end method

.method public setApplyTargetType(I)V
    .registers 4

    .line 139
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentFilter_setApplyTargetType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;I)V

    return-void
.end method

.method public setEffectSDKFilter(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
    .registers 8

    .line 150
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentFilter_setEffectSDKFilter(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V

    return-void
.end method

.method public setFilterName(Ljava/lang/String;)V
    .registers 4

    .line 94
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentFilter_setFilterName(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;Ljava/lang/String;)V

    return-void
.end method

.method public setFilterPosition(F)V
    .registers 4

    .line 124
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentFilter_setFilterPosition(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;F)V

    return-void
.end method

.method public setIntensity(F)V
    .registers 4

    .line 64
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentFilter_setIntensity(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;F)V

    return-void
.end method

.method public setRightFilter(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
    .registers 8

    .line 159
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentFilter_setRightFilter(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V

    return-void
.end method

.method public setRightIntensity(F)V
    .registers 4

    .line 79
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentFilter_setRightIntensity(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;F)V

    return-void
.end method

.method public setUseFilterV3(Z)V
    .registers 4

    .line 109
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentFilter_setUseFilterV3(JLcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;Z)V

    return-void
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 29
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->swigCMemOwnDerived:Z

    .line 30
    invoke-super {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegment;->swigSetCMemOwn(Z)V

    return-void
.end method
