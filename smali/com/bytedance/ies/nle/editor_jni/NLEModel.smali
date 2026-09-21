.class public Lcom/bytedance/ies/nle/editor_jni/NLEModel;
.super Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwnDerived:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 363
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_NLEModel()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 7

    .line 19
    invoke-static {p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEModel_SWIGSmartPtrUpcast(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;-><init>(JZ)V

    .line 20
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCMemOwnDerived:Z

    .line 21
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    return-void
.end method

.method public static dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLEModel;
    .registers 5

    .line 50
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEModel_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 51
    :cond_10
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;-><init>(JZ)V

    return-object p0
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 25
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public addTrack(Lcom/bytedance/ies/nle/editor_jni/NLETrack;)V
    .registers 8

    .line 120
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 123
    :cond_9
    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLETrack;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEModel_addTrack(JLcom/bytedance/ies/nle/editor_jni/NLEModel;JLcom/bytedance/ies/nle/editor_jni/NLETrack;)V

    return-void
.end method

.method public clearTrack()V
    .registers 5

    .line 134
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 137
    :cond_9
    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEModel_clearTrack(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)V

    return-void
.end method

.method public clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;
    .registers 7

    .line 55
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-nez v4, :cond_a

    return-object v5

    .line 58
    :cond_a
    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEModel_clone(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)J

    move-result-wide v0

    cmp-long p0, v0, v2

    if-nez p0, :cond_13

    return-object v5

    .line 59
    :cond_13
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;-><init>(JZ)V

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    .line 14
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 39
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 40
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCMemOwnDerived:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 41
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCMemOwnDerived:Z

    .line 42
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->delete_NLEModel(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1d

    .line 44
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    .line 46
    :cond_18
    invoke-super {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->delete()V
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

.method public getAlignMode()Ljava/lang/String;
    .registers 5

    .line 162
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    .line 163
    const-string p0, ""

    return-object p0

    .line 165
    :cond_b
    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEModel_getAlignMode(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAllResources()Lcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtr;
    .registers 5

    .line 318
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 321
    :cond_a
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtr;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEModel_getAllResources(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtr;-><init>(JZ)V

    return-object v0
.end method

.method public getCanvasRatio()F
    .registers 5

    .line 113
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, 0x0

    return p0

    .line 116
    :cond_a
    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEModel_getCanvasRatio(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)F

    move-result p0

    return p0
.end method

.method public getCover()Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;
    .registers 7

    .line 70
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-nez v4, :cond_a

    return-object v5

    .line 73
    :cond_a
    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEModel_getCover(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)J

    move-result-wide v0

    cmp-long p0, v0, v2

    if-nez p0, :cond_13

    return-object v5

    .line 74
    :cond_13
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;-><init>(JZ)V

    return-object p0
.end method

.method public getDuration()J
    .registers 6

    .line 277
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    return-wide v2

    .line 280
    :cond_9
    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEModel_getDuration(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getEffectLayerMax()I
    .registers 5

    .line 295
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, 0x0

    return p0

    .line 298
    :cond_a
    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEModel_getEffectLayerMax(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)I

    move-result p0

    return p0
.end method

.method public getFirstTrackWithType(Lcom/bytedance/ies/nle/editor_jni/NLETrackType;)Lcom/bytedance/ies/nle/editor_jni/NLETrack;
    .registers 8

    .line 355
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-nez v4, :cond_a

    return-object v5

    .line 358
    :cond_a
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEModel_getFirstTrackWithType(JLcom/bytedance/ies/nle/editor_jni/NLEModel;I)J

    move-result-wide p0

    cmp-long v0, p0, v2

    if-nez v0, :cond_17

    return-object v5

    .line 359
    :cond_17
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;-><init>(JZ)V

    return-object v0
.end method

.method public getLayerMax()I
    .registers 5

    .line 284
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, 0x0

    return p0

    .line 287
    :cond_a
    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEModel_getLayerMax(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)I

    move-result p0

    return p0
.end method

.method public getMainTrack()Lcom/bytedance/ies/nle/editor_jni/NLETrack;
    .registers 7

    .line 347
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-nez v4, :cond_a

    return-object v5

    .line 350
    :cond_a
    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEModel_getMainTrack__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)J

    move-result-wide v0

    cmp-long p0, v0, v2

    if-nez p0, :cond_13

    return-object v5

    .line 351
    :cond_13
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;-><init>(JZ)V

    return-object p0
.end method

.method public getMainTrack(Z)Lcom/bytedance/ies/nle/editor_jni/NLETrack;
    .registers 8

    .line 339
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-nez v4, :cond_a

    return-object v5

    .line 342
    :cond_a
    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEModel_getMainTrack__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/NLEModel;Z)J

    move-result-wide p0

    cmp-long v0, p0, v2

    if-nez v0, :cond_13

    return-object v5

    .line 343
    :cond_13
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;-><init>(JZ)V

    return-object v0
.end method

.method public getMaxTargetEnd()J
    .registers 6

    .line 236
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    return-wide v2

    .line 239
    :cond_9
    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEModel_getMaxTargetEnd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxTargetEnd(Lcom/bytedance/ies/nle/editor_jni/VecNLETrackType;)J
    .registers 8

    .line 224
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    return-wide v2

    .line 227
    :cond_9
    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackType;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecNLETrackType;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEModel_getMaxTargetEnd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/NLEModel;JLcom/bytedance/ies/nle/editor_jni/VecNLETrackType;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getMaxTargetEndExcludeDisabledNode(Z)J
    .registers 7

    .line 246
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    return-wide v2

    .line 249
    :cond_9
    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEModel_getMaxTargetEndExcludeDisabledNode(JLcom/bytedance/ies/nle/editor_jni/NLEModel;Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public getMeasuredEndTime()J
    .registers 6

    .line 253
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    return-wide v2

    .line 256
    :cond_9
    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEModel_getMeasuredEndTime(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinTargetStart()J
    .registers 6

    .line 213
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    return-wide v2

    .line 216
    :cond_9
    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEModel_getMinTargetStart(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRawNLEMatrix(Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)Lcom/bytedance/ies/nle/editor_jni/NLEMatrix;
    .registers 11

    .line 310
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    const-wide/16 v6, 0x0

    cmp-long v2, v0, v6

    const/4 v8, 0x0

    if-nez v2, :cond_a

    return-object v8

    .line 313
    :cond_a
    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEModel_getRawNLEMatrix(JLcom/bytedance/ies/nle/editor_jni/NLEModel;JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)J

    move-result-wide p0

    cmp-long v0, p0, v6

    if-nez v0, :cond_19

    return-object v8

    .line 314
    :cond_19
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLEMatrix;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEMatrix;-><init>(JZ)V

    return-object v0
.end method

.method public getSetting()Lcom/bytedance/ies/nle/editor_jni/NLESetting;
    .registers 7

    .line 176
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-nez v4, :cond_a

    return-object v5

    .line 179
    :cond_a
    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEModel_getSetting(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)J

    move-result-wide v0

    cmp-long p0, v0, v2

    if-nez p0, :cond_13

    return-object v5

    .line 180
    :cond_13
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLESetting;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLESetting;-><init>(JZ)V

    return-object p0
.end method

.method public getSortedTracks()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;
    .registers 5

    .line 325
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 328
    :cond_a
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEModel_getSortedTracks(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;-><init>(JZ)V

    return-object v0
.end method

.method public getSortedTracksWithNoNoneTrack()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;
    .registers 5

    .line 332
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 335
    :cond_a
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEModel_getSortedTracksWithNoNoneTrack(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;-><init>(JZ)V

    return-object v0
.end method

.method public getStartTime()J
    .registers 6

    .line 265
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    return-wide v2

    .line 268
    :cond_9
    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEModel_getStartTime(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getThousandFps()J
    .registers 6

    .line 92
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    return-wide v2

    .line 95
    :cond_9
    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEModel_getThousandFps(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackBySlot(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)Lcom/bytedance/ies/nle/editor_jni/NLETrack;
    .registers 11

    .line 302
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    const-wide/16 v6, 0x0

    cmp-long v2, v0, v6

    const/4 v8, 0x0

    if-nez v2, :cond_a

    return-object v8

    .line 305
    :cond_a
    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEModel_getTrackBySlot(JLcom/bytedance/ies/nle/editor_jni/NLEModel;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide p0

    cmp-long v0, p0, v6

    if-nez v0, :cond_19

    return-object v8

    .line 306
    :cond_19
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;-><init>(JZ)V

    return-object v0
.end method

.method public getTracks()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;
    .registers 5

    .line 141
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 144
    :cond_a
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEModel_getTracks(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;-><init>(JZ)V

    return-object v0
.end method

.method public hasAlignMode()Z
    .registers 5

    .line 148
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, 0x0

    return p0

    .line 151
    :cond_a
    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEModel_hasAlignMode(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)Z

    move-result p0

    return p0
.end method

.method public hasCanvasRatio()Z
    .registers 5

    .line 99
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, 0x0

    return p0

    .line 102
    :cond_a
    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEModel_hasCanvasRatio(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)Z

    move-result p0

    return p0
.end method

.method public hasThousandFps()Z
    .registers 5

    .line 78
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, 0x0

    return p0

    .line 81
    :cond_a
    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEModel_hasThousandFps(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)Z

    move-result p0

    return p0
.end method

.method public removeTrack(Lcom/bytedance/ies/nle/editor_jni/NLETrack;)Z
    .registers 8

    .line 127
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, 0x0

    return p0

    .line 130
    :cond_a
    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLETrack;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEModel_removeTrack(JLcom/bytedance/ies/nle/editor_jni/NLEModel;JLcom/bytedance/ies/nle/editor_jni/NLETrack;)Z

    move-result p0

    return p0
.end method

.method public setAlignMode(Ljava/lang/String;)V
    .registers 6

    .line 155
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 158
    :cond_9
    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEModel_setAlignMode(JLcom/bytedance/ies/nle/editor_jni/NLEModel;Ljava/lang/String;)V

    return-void
.end method

.method public setCanvasRatio(F)V
    .registers 6

    .line 106
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 109
    :cond_9
    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEModel_setCanvasRatio(JLcom/bytedance/ies/nle/editor_jni/NLEModel;F)V

    return-void
.end method

.method public setCover(Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;)V
    .registers 8

    .line 63
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 66
    :cond_9
    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEModel_setCover(JLcom/bytedance/ies/nle/editor_jni/NLEModel;JLcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;)V

    return-void
.end method

.method public setRewind(ZLcom/bytedance/ies/nle/editor_jni/VecNLETrackType;)V
    .registers 10

    .line 201
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 204
    :cond_9
    invoke-static {p2}, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackType;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecNLETrackType;)J

    move-result-wide v4

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEModel_setRewind(JLcom/bytedance/ies/nle/editor_jni/NLEModel;ZJLcom/bytedance/ies/nle/editor_jni/VecNLETrackType;)V

    return-void
.end method

.method public setSetting(Lcom/bytedance/ies/nle/editor_jni/NLESetting;)V
    .registers 8

    .line 169
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 172
    :cond_9
    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESetting;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLESetting;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEModel_setSetting(JLcom/bytedance/ies/nle/editor_jni/NLEModel;JLcom/bytedance/ies/nle/editor_jni/NLESetting;)V

    return-void
.end method

.method public setThousandFps(J)V
    .registers 7

    .line 85
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 88
    :cond_9
    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEModel_setThousandFps(JLcom/bytedance/ies/nle/editor_jni/NLEModel;J)V

    return-void
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 29
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCMemOwnDerived:Z

    .line 30
    invoke-super {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigSetCMemOwn(Z)V

    return-void
.end method

.method public updateRelativeSizeWhileGlobalCanvasChanged(FF)V
    .registers 7

    .line 189
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 192
    :cond_9
    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEModel_updateRelativeSizeWhileGlobalCanvasChanged(JLcom/bytedance/ies/nle/editor_jni/NLEModel;FF)V

    return-void
.end method
