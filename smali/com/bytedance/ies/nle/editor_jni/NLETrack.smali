.class public Lcom/bytedance/ies/nle/editor_jni/NLETrack;
.super Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwnDerived:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 396
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_NLETrack()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 7

    .line 22
    invoke-static {p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_SWIGSmartPtrUpcast(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;-><init>(JZ)V

    .line 23
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCMemOwnDerived:Z

    .line 24
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    return-void
.end method

.method public static dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLETrack;
    .registers 5

    .line 53
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 54
    :cond_10
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;-><init>(JZ)V

    return-object p0
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLETrack;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 28
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public addFilter(Lcom/bytedance/ies/nle/editor_jni/NLEFilter;)V
    .registers 8

    .line 90
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEFilter;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEFilter;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_addFilter(JLcom/bytedance/ies/nle/editor_jni/NLETrack;JLcom/bytedance/ies/nle/editor_jni/NLEFilter;)V

    return-void
.end method

.method public addKeyframeSlot(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V
    .registers 8

    .line 171
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_addKeyframeSlot(JLcom/bytedance/ies/nle/editor_jni/NLETrack;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    return-void
.end method

.method public addSlot(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V
    .registers 8

    .line 152
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_addSlot(JLcom/bytedance/ies/nle/editor_jni/NLETrack;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    return-void
.end method

.method public addSlotAfterSlot(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V
    .registers 12

    .line 344
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_addSlotAfterSlot(JLcom/bytedance/ies/nle/editor_jni/NLETrack;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    return-void
.end method

.method public addSlotAtEnd(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V
    .registers 8

    .line 323
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_addSlotAtEnd(JLcom/bytedance/ies/nle/editor_jni/NLETrack;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    return-void
.end method

.method public addSlotAtIndex(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;I)V
    .registers 10

    .line 330
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_addSlotAtIndex__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/NLETrack;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;I)V

    return-void
.end method

.method public addSlotAtIndex(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;IZ)V
    .registers 12

    .line 340
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_addSlotAtIndex__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/NLETrack;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;IZ)V

    return-void
.end method

.method public addSlotAtStart(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V
    .registers 8

    .line 316
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_addSlotAtStart(JLcom/bytedance/ies/nle/editor_jni/NLETrack;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    return-void
.end method

.method public addVideoEffect(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V
    .registers 8

    .line 109
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_addVideoEffect(JLcom/bytedance/ies/nle/editor_jni/NLETrack;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    return-void
.end method

.method public clearFilter()V
    .registers 3

    .line 98
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_clearFilter(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)V

    return-void
.end method

.method public clearKeyframeSlot()V
    .registers 3

    .line 179
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_clearKeyframeSlot(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)V

    return-void
.end method

.method public clearSlot()V
    .registers 3

    .line 160
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_clearSlot(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)V

    return-void
.end method

.method public clearVideoEffect()V
    .registers 3

    .line 117
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_clearVideoEffect(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)V

    return-void
.end method

.method public clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;
    .registers 5

    .line 58
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_clone(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 59
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;-><init>(JZ)V

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    .line 17
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 42
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 43
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCMemOwnDerived:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 44
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCMemOwnDerived:Z

    .line 45
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->delete_NLETrack(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1d

    .line 47
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    .line 49
    :cond_18
    invoke-super {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->delete()V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_14

    .line 50
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

    .line 38
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->delete()V

    return-void
.end method

.method public getCherEffect()Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;
    .registers 5

    .line 147
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_getCherEffect(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 148
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;-><init>(JZ)V

    return-object p0
.end method

.method public getEffectScale(FF)F
    .registers 5

    .line 203
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_getEffectScale(JLcom/bytedance/ies/nle/editor_jni/NLETrack;FF)F

    move-result p0

    return p0
.end method

.method public getExtraTrackType()Lcom/bytedance/ies/nle/editor_jni/NLETrackType;
    .registers 3

    .line 305
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_getExtraTrackType(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object p0

    return-object p0
.end method

.method public getFilterByName(Ljava/lang/String;)Lcom/bytedance/ies/nle/editor_jni/NLEFilter;
    .registers 4

    .line 223
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_getFilterByName(JLcom/bytedance/ies/nle/editor_jni/NLETrack;Ljava/lang/String;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 224
    :cond_e
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLEFilter;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEFilter;-><init>(JZ)V

    return-object v0
.end method

.method public getFilters()Lcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtr;
    .registers 4

    .line 105
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtr;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_getFilters(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtr;-><init>(JZ)V

    return-object v0
.end method

.method public getKeyframeSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;
    .registers 4

    .line 186
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_getKeyframeSlots(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;-><init>(JZ)V

    return-object v0
.end method

.method public getMainTrack()Z
    .registers 3

    .line 71
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_getMainTrack(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)Z

    move-result p0

    return p0
.end method

.method public getMaxEnd()J
    .registers 3

    .line 285
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_getMaxEnd(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxEndExcludeDisabledNode(Z)J
    .registers 4

    .line 289
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_getMaxEndExcludeDisabledNode(JLcom/bytedance/ies/nle/editor_jni/NLETrack;Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public getMeasuredEndTime()J
    .registers 3

    .line 293
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_getMeasuredEndTime(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinStart()J
    .registers 3

    .line 281
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_getMinStart(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOriginalCanvasRatio(F)F
    .registers 4

    .line 219
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_getOriginalCanvasRatio(JLcom/bytedance/ies/nle/editor_jni/NLETrack;F)F

    move-result p0

    return p0
.end method

.method public getResourceType()Lcom/bytedance/ies/nle/editor_jni/NLEResType;
    .registers 3

    .line 297
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_getResourceType(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEResType;->swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/NLEResType;

    move-result-object p0

    return-object p0
.end method

.method public getSlotByIndex(I)Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;
    .registers 4

    .line 348
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_getSlotByIndex(JLcom/bytedance/ies/nle/editor_jni/NLETrack;I)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 349
    :cond_e
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;-><init>(JZ)V

    return-object v0
.end method

.method public getSlotByTime(J)Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;
    .registers 5

    .line 353
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_getSlotByTime(JLcom/bytedance/ies/nle/editor_jni/NLETrack;J)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p2, p0, v0

    if-nez p2, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 354
    :cond_e
    new-instance p2, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    const/4 v0, 0x1

    invoke-direct {p2, p0, p1, v0}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;-><init>(JZ)V

    return-object p2
.end method

.method public getSlotIndex(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)I
    .registers 8

    .line 358
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_getSlotIndex(JLcom/bytedance/ies/nle/editor_jni/NLETrack;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)I

    move-result p0

    return p0
.end method

.method public getSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;
    .registers 4

    .line 167
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_getSlots(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;-><init>(JZ)V

    return-object v0
.end method

.method public getSortedSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;
    .registers 4

    .line 362
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_getSortedSlots(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;-><init>(JZ)V

    return-object v0
.end method

.method public getTimeEffect()Lcom/bytedance/ies/nle/editor_jni/NLETimeEffect;
    .registers 5

    .line 135
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_getTimeEffect(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 136
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeEffect;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeEffect;-><init>(JZ)V

    return-object p0
.end method

.method public getTrackType()Lcom/bytedance/ies/nle/editor_jni/NLETrackType;
    .registers 3

    .line 301
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_getTrackType(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object p0

    return-object p0
.end method

.method public getVideoEffects()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;
    .registers 4

    .line 124
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_getVideoEffects(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;-><init>(JZ)V

    return-object v0
.end method

.method public getVideoScaleAfterFixCenter(FF)F
    .registers 5

    .line 212
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_getVideoScaleAfterFixCenter(JLcom/bytedance/ies/nle/editor_jni/NLETrack;FF)F

    move-result p0

    return p0
.end method

.method public getVolume()F
    .registers 3

    .line 86
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_getVolume(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)F

    move-result p0

    return p0
.end method

.method public hasMainTrack()Z
    .registers 3

    .line 63
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_hasMainTrack(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)Z

    move-result p0

    return p0
.end method

.method public hasVolume()Z
    .registers 3

    .line 75
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_hasVolume(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)Z

    move-result p0

    return p0
.end method

.method public isAudioEnable()Z
    .registers 3

    .line 388
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_isAudioEnable(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)Z

    move-result p0

    return p0
.end method

.method public isTimelineChange(Lcom/bytedance/ies/nle/editor_jni/NLETrack;)Z
    .registers 8

    .line 392
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLETrack;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_isTimelineChange(JLcom/bytedance/ies/nle/editor_jni/NLETrack;JLcom/bytedance/ies/nle/editor_jni/NLETrack;)Z

    move-result p0

    return p0
.end method

.method public moveSlotToIndex(II)Z
    .registers 5

    .line 277
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_moveSlotToIndex__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/NLETrack;II)Z

    move-result p0

    return p0
.end method

.method public moveSlotToIndex(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;I)Z
    .registers 10

    .line 273
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_moveSlotToIndex__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/NLETrack;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;I)Z

    move-result p0

    return p0
.end method

.method public removeFilter(Lcom/bytedance/ies/nle/editor_jni/NLEFilter;)Z
    .registers 8

    .line 94
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEFilter;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEFilter;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_removeFilter(JLcom/bytedance/ies/nle/editor_jni/NLETrack;JLcom/bytedance/ies/nle/editor_jni/NLEFilter;)Z

    move-result p0

    return p0
.end method

.method public removeFilterByName(Ljava/lang/String;)Lcom/bytedance/ies/nle/editor_jni/NLEFilter;
    .registers 4

    .line 228
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_removeFilterByName(JLcom/bytedance/ies/nle/editor_jni/NLETrack;Ljava/lang/String;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 229
    :cond_e
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLEFilter;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEFilter;-><init>(JZ)V

    return-object v0
.end method

.method public removeKeyframeSlot(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)Z
    .registers 8

    .line 175
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_removeKeyframeSlot(JLcom/bytedance/ies/nle/editor_jni/NLETrack;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)Z

    move-result p0

    return p0
.end method

.method public removeSlot(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)Z
    .registers 8

    .line 156
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_removeSlot(JLcom/bytedance/ies/nle/editor_jni/NLETrack;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)Z

    move-result p0

    return p0
.end method

.method public removeVideoEffect(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)Z
    .registers 8

    .line 113
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_removeVideoEffect(JLcom/bytedance/ies/nle/editor_jni/NLETrack;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)Z

    move-result p0

    return p0
.end method

.method public setAudioEnable(Z)V
    .registers 4

    .line 379
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_setAudioEnable(JLcom/bytedance/ies/nle/editor_jni/NLETrack;Z)V

    return-void
.end method

.method public setCherEffect(Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;)V
    .registers 8

    .line 140
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_setCherEffect(JLcom/bytedance/ies/nle/editor_jni/NLETrack;JLcom/bytedance/ies/nle/editor_jni/NLECherEffect;)V

    return-void
.end method

.method public setExtraTrackType(Lcom/bytedance/ies/nle/editor_jni/NLETrackType;)V
    .registers 4

    .line 309
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_setExtraTrackType(JLcom/bytedance/ies/nle/editor_jni/NLETrack;I)V

    return-void
.end method

.method public setMainTrack(Z)V
    .registers 4

    .line 67
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_setMainTrack(JLcom/bytedance/ies/nle/editor_jni/NLETrack;Z)V

    return-void
.end method

.method public setTimeEffect(Lcom/bytedance/ies/nle/editor_jni/NLETimeEffect;)V
    .registers 8

    .line 128
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeEffect;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLETimeEffect;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_setTimeEffect(JLcom/bytedance/ies/nle/editor_jni/NLETrack;JLcom/bytedance/ies/nle/editor_jni/NLETimeEffect;)V

    return-void
.end method

.method public setVolume(F)V
    .registers 4

    .line 79
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_setVolume(JLcom/bytedance/ies/nle/editor_jni/NLETrack;F)V

    return-void
.end method

.method public split(J)Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;
    .registers 5

    .line 268
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_split(JLcom/bytedance/ies/nle/editor_jni/NLETrack;J)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p2, p0, v0

    if-nez p2, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 269
    :cond_e
    new-instance p2, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    const/4 v0, 0x1

    invoke-direct {p2, p0, p1, v0}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;-><init>(JZ)V

    return-object p2
.end method

.method public splitGetBackSlotPair(J)Lcom/bytedance/ies/nle/editor_jni/PairSlotSlot;
    .registers 6

    .line 258
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/PairSlotSlot;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {v1, v2, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_splitGetBackSlotPair(JLcom/bytedance/ies/nle/editor_jni/NLETrack;J)J

    move-result-wide p0

    const/4 p2, 0x1

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/PairSlotSlot;-><init>(JZ)V

    return-object v0
.end method

.method public splitInSpecificSlot(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)Lcom/bytedance/ies/nle/editor_jni/PairSlotSlot;
    .registers 13

    .line 248
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/PairSlotSlot;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {p3}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide v6

    move-object v3, p0

    move-wide v4, p1

    move-object v8, p3

    invoke-static/range {v1 .. v8}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_splitInSpecificSlot(JLcom/bytedance/ies/nle/editor_jni/NLETrack;JJLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide p0

    const/4 p2, 0x1

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/PairSlotSlot;-><init>(JZ)V

    return-object v0
.end method

.method public splitSegCurvePointInSlot(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)Lcom/bytedance/ies/nle/editor_jni/PairNLEPoint2NLEPoint;
    .registers 13

    .line 233
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/PairNLEPoint2NLEPoint;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {p3}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide v6

    move-object v3, p0

    move-wide v4, p1

    move-object v8, p3

    invoke-static/range {v1 .. v8}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_splitSegCurvePointInSlot(JLcom/bytedance/ies/nle/editor_jni/NLETrack;JJLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide p0

    const/4 p2, 0x1

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/PairNLEPoint2NLEPoint;-><init>(JZ)V

    return-object v0
.end method

.method public splitSeqCurvePointInSlot(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)Lcom/bytedance/ies/nle/editor_jni/PairNLEPoint2NLEPoint;
    .registers 13

    .line 237
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/PairNLEPoint2NLEPoint;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {p3}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide v6

    move-object v3, p0

    move-wide v4, p1

    move-object v8, p3

    invoke-static/range {v1 .. v8}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_splitSeqCurvePointInSlot(JLcom/bytedance/ies/nle/editor_jni/NLETrack;JJLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide p0

    const/4 p2, 0x1

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/PairNLEPoint2NLEPoint;-><init>(JZ)V

    return-object v0
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 32
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCMemOwnDerived:Z

    .line 33
    invoke-super {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigSetCMemOwn(Z)V

    return-void
.end method

.method public timeSort()V
    .registers 3

    .line 370
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_timeSort(JLcom/bytedance/ies/nle/editor_jni/NLETrack;)V

    return-void
.end method

.method public updateRelativeSizeWhileGlobalCanvasChanged(FF)V
    .registers 5

    .line 195
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrack_updateRelativeSizeWhileGlobalCanvasChanged(JLcom/bytedance/ies/nle/editor_jni/NLETrack;FF)V

    return-void
.end method
