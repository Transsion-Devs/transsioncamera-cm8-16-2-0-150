.class public Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;
.super Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;
.source "SourceFile"


# instance fields
.field private nleSegmentTransition:Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;

.field private transient swigCMemOwnDerived:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 395
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_NLETrackSlot()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 7

    .line 17
    invoke-static {p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_SWIGSmartPtrUpcast(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;-><init>(JZ)V

    .line 18
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCMemOwnDerived:Z

    .line 19
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    return-void
.end method

.method public static dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;
    .registers 5

    .line 52
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 53
    :cond_10
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;-><init>(JZ)V

    return-object p0
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 23
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    return-wide v0
.end method

.method public static getKEYFRAME_TIMERANGE_KEY()Ljava/lang/String;
    .registers 1

    .line 326
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_KEYFRAME_TIMERANGE_KEY_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addChromaChannel(Lcom/bytedance/ies/nle/editor_jni/NLEChromaChannel;)V
    .registers 8

    .line 186
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEChromaChannel;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEChromaChannel;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_addChromaChannel(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLEChromaChannel;)V

    return-void
.end method

.method public addFilter(Lcom/bytedance/ies/nle/editor_jni/NLEFilter;)V
    .registers 8

    .line 148
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEFilter;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEFilter;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_addFilter(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLEFilter;)V

    return-void
.end method

.method public addKeyframe(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V
    .registers 8

    .line 267
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_addKeyframe(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    return-void
.end method

.method public addKeyframeValue(Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphValue;)V
    .registers 8

    .line 298
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphValue;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphValue;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_addKeyframeValue(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphValue;)V

    return-void
.end method

.method public addMask(Lcom/bytedance/ies/nle/editor_jni/NLEMask;)V
    .registers 8

    .line 167
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMask;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEMask;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_addMask(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLEMask;)V

    return-void
.end method

.method public addNoiceReduction(Lcom/bytedance/ies/nle/editor_jni/NLENoiseReduction;)V
    .registers 8

    .line 224
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLENoiseReduction;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLENoiseReduction;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_addNoiceReduction(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLENoiseReduction;)V

    return-void
.end method

.method public addOrUpdateKeyframe(JJZ)Ljava/lang/String;
    .registers 14

    .line 346
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_addOrUpdateKeyframe(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JJZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public addVideoAnim(Lcom/bytedance/ies/nle/editor_jni/NLEVideoAnimation;)V
    .registers 8

    .line 129
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoAnimation;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEVideoAnimation;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_addVideoAnim(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLEVideoAnimation;)V

    return-void
.end method

.method public addVideoEffect(Lcom/bytedance/ies/nle/editor_jni/NLEVideoEffect;)V
    .registers 8

    .line 205
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEffect;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEVideoEffect;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_addVideoEffect(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLEVideoEffect;)V

    return-void
.end method

.method public adjustKeyFrame()V
    .registers 3

    .line 334
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_adjustKeyFrame__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    return-void
.end method

.method public adjustKeyFrame(J)V
    .registers 5

    .line 330
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_adjustKeyFrame__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;J)V

    return-void
.end method

.method public canKeyFrameAddedForTextSticker()Z
    .registers 3

    .line 353
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_canKeyFrameAddedForTextSticker(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)Z

    move-result p0

    return p0
.end method

.method public clearChromaChannel()V
    .registers 3

    .line 194
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_clearChromaChannel(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    return-void
.end method

.method public clearFilter()V
    .registers 3

    .line 156
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_clearFilter(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    return-void
.end method

.method public clearKeyframe()V
    .registers 3

    .line 275
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_clearKeyframe(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    return-void
.end method

.method public clearKeyframeValue()V
    .registers 3

    .line 306
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_clearKeyframeValue(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    return-void
.end method

.method public clearMask()V
    .registers 3

    .line 175
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_clearMask(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    return-void
.end method

.method public clearNoiceReduction()V
    .registers 3

    .line 232
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_clearNoiceReduction(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    return-void
.end method

.method public clearVideoAnim()V
    .registers 3

    .line 137
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_clearVideoAnim(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    return-void
.end method

.method public clearVideoEffect()V
    .registers 3

    .line 213
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_clearVideoEffect(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    return-void
.end method

.method public clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;
    .registers 5

    .line 57
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_clone(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

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

    .line 11
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object p0

    return-object p0
.end method

.method public createKeyframe()Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;
    .registers 5

    .line 318
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_createKeyframe(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 319
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;-><init>(JZ)V

    return-object p0
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 37
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 38
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCMemOwnDerived:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 39
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCMemOwnDerived:Z

    .line 40
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->delete_NLETrackSlot(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_27

    .line 42
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    .line 44
    :cond_18
    iget-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->nleSegmentTransition:Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;

    if-eqz v0, :cond_22

    .line 45
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;->delete()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->nleSegmentTransition:Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;

    .line 48
    :cond_22
    invoke-super {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->delete()V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_14

    .line 49
    monitor-exit p0

    return-void

    :goto_27
    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_14

    throw v0
.end method

.method protected finalize()V
    .registers 1

    .line 33
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->delete()V

    return-void
.end method

.method public findKeyframe(JJ)Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;
    .registers 12

    .line 341
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_findKeyframe(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JJ)J

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmp-long p2, p0, p2

    if-nez p2, :cond_11

    const/4 p0, 0x0

    return-object p0

    .line 342
    :cond_11
    new-instance p2, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p1, p3}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;-><init>(JZ)V

    return-object p2
.end method

.method public getAIMatting()Lcom/bytedance/ies/nle/editor_jni/NLEAIMatting;
    .registers 5

    .line 124
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_getAIMatting(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 125
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEAIMatting;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEAIMatting;-><init>(JZ)V

    return-object p0
.end method

.method public getAudioFilter()Lcom/bytedance/ies/nle/editor_jni/NLEFilter;
    .registers 5

    .line 262
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_getAudioFilter(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 263
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEFilter;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEFilter;-><init>(JZ)V

    return-object p0
.end method

.method public getAutoFillFrame()Lcom/bytedance/ies/nle/editor_jni/NLEAutoFillFrame;
    .registers 5

    .line 115
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_getAutoFillFrame(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 116
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEAutoFillFrame;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEAutoFillFrame;-><init>(JZ)V

    return-object p0
.end method

.method public getChromaChannels()Lcom/bytedance/ies/nle/editor_jni/VecNLEChromaChannelSPtr;
    .registers 4

    .line 201
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecNLEChromaChannelSPtr;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_getChromaChannels(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLEChromaChannelSPtr;-><init>(JZ)V

    return-object v0
.end method

.method public getEndTransition()Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;
    .registers 5

    .line 100
    iget-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->nleSegmentTransition:Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;

    if-nez v0, :cond_1b

    .line 101
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_getEndTransition(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_12

    const/4 v0, 0x0

    goto :goto_19

    .line 102
    :cond_12
    new-instance v2, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;-><init>(JZ)V

    move-object v0, v2

    :goto_19
    iput-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->nleSegmentTransition:Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;

    .line 104
    :cond_1b
    iget-object p0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->nleSegmentTransition:Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;

    return-object p0
.end method

.method public getFilterByName(Ljava/lang/String;)Lcom/bytedance/ies/nle/editor_jni/NLEFilter;
    .registers 4

    .line 385
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_getFilterByName(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Ljava/lang/String;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 386
    :cond_e
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLEFilter;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEFilter;-><init>(JZ)V

    return-object v0
.end method

.method public getFilters()Lcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtr;
    .registers 4

    .line 163
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtr;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_getFilters(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtr;-><init>(JZ)V

    return-object v0
.end method

.method public getKeyframeGraphType()Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType;
    .registers 3

    .line 294
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_getKeyframeGraphType(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType;->swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType;

    move-result-object p0

    return-object p0
.end method

.method public getKeyframeValues()Lcom/bytedance/ies/nle/editor_jni/VecNLEKeyframeGraphValue;
    .registers 4

    .line 310
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecNLEKeyframeGraphValue;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_getKeyframeValues(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLEKeyframeGraphValue;-><init>(JZ)V

    return-object v0
.end method

.method public getKeyframes()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;
    .registers 4

    .line 282
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_getKeyframes(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;-><init>(JZ)V

    return-object v0
.end method

.method public getKeyframesUUIDList()Lcom/bytedance/ies/nle/editor_jni/VecString;
    .registers 4

    .line 251
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecString;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_getKeyframesUUIDList(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecString;-><init>(JZ)V

    return-object v0
.end method

.method public getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;
    .registers 5

    .line 76
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_getMainSegment(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 77
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegment;-><init>(JZ)V

    return-object p0
.end method

.method public getMasks()Lcom/bytedance/ies/nle/editor_jni/VecNLEMaskSPtr;
    .registers 4

    .line 182
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecNLEMaskSPtr;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_getMasks(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLEMaskSPtr;-><init>(JZ)V

    return-object v0
.end method

.method public getNoiceReductions()Lcom/bytedance/ies/nle/editor_jni/VecNLENoiseReductionSPtr;
    .registers 4

    .line 236
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecNLENoiseReductionSPtr;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_getNoiceReductions(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLENoiseReductionSPtr;-><init>(JZ)V

    return-object v0
.end method

.method public getPinAlgorithmFile()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;
    .registers 5

    .line 88
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_getPinAlgorithmFile(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 89
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;-><init>(JZ)V

    return-object p0
.end method

.method public getSortKeyframe()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;
    .registers 4

    .line 314
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_getSortKeyframe(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;-><init>(JZ)V

    return-object v0
.end method

.method public getVideoAnims()Lcom/bytedance/ies/nle/editor_jni/VecNLEVideoAnimationSPtr;
    .registers 4

    .line 144
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecNLEVideoAnimationSPtr;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_getVideoAnims(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLEVideoAnimationSPtr;-><init>(JZ)V

    return-object v0
.end method

.method public getVideoEffects()Lcom/bytedance/ies/nle/editor_jni/VecNLEVideoEffectSPtr;
    .registers 4

    .line 220
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecNLEVideoEffectSPtr;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_getVideoEffects(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLEVideoEffectSPtr;-><init>(JZ)V

    return-object v0
.end method

.method public hasKeyframeGraphType()Z
    .registers 3

    .line 286
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_hasKeyframeGraphType(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)Z

    move-result p0

    return p0
.end method

.method public hasKeyframesUUIDList()Z
    .registers 3

    .line 240
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_hasKeyframesUUIDList(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)Z

    move-result p0

    return p0
.end method

.method public keyframeAtTime(JJ)Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;
    .registers 12

    .line 380
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_keyframeAtTime(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JJ)J

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmp-long p2, p0, p2

    if-nez p2, :cond_11

    const/4 p0, 0x0

    return-object p0

    .line 381
    :cond_11
    new-instance p2, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p1, p3}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;-><init>(JZ)V

    return-object p2
.end method

.method public removeChromaChannel(Lcom/bytedance/ies/nle/editor_jni/NLEChromaChannel;)Z
    .registers 8

    .line 190
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEChromaChannel;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEChromaChannel;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_removeChromaChannel(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLEChromaChannel;)Z

    move-result p0

    return p0
.end method

.method public removeFilter(Lcom/bytedance/ies/nle/editor_jni/NLEFilter;)Z
    .registers 8

    .line 152
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEFilter;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEFilter;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_removeFilter(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLEFilter;)Z

    move-result p0

    return p0
.end method

.method public removeFilterByName(Ljava/lang/String;)Lcom/bytedance/ies/nle/editor_jni/NLEFilter;
    .registers 4

    .line 390
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_removeFilterByName(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Ljava/lang/String;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 391
    :cond_e
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLEFilter;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEFilter;-><init>(JZ)V

    return-object v0
.end method

.method public removeKeyframe(JJ)Z
    .registers 12

    .line 373
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_removeKeyframe__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JJ)Z

    move-result p0

    return p0
.end method

.method public removeKeyframe(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)Z
    .registers 8

    .line 271
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_removeKeyframe__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)Z

    move-result p0

    return p0
.end method

.method public removeKeyframeValue(Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphValue;)Z
    .registers 8

    .line 302
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphValue;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphValue;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_removeKeyframeValue(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphValue;)Z

    move-result p0

    return p0
.end method

.method public removeMask(Lcom/bytedance/ies/nle/editor_jni/NLEMask;)Z
    .registers 8

    .line 171
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMask;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEMask;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_removeMask(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLEMask;)Z

    move-result p0

    return p0
.end method

.method public removeNoiceReduction(Lcom/bytedance/ies/nle/editor_jni/NLENoiseReduction;)Z
    .registers 8

    .line 228
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLENoiseReduction;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLENoiseReduction;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_removeNoiceReduction(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLENoiseReduction;)Z

    move-result p0

    return p0
.end method

.method public removeVideoAnim(Lcom/bytedance/ies/nle/editor_jni/NLEVideoAnimation;)Z
    .registers 8

    .line 133
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoAnimation;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEVideoAnimation;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_removeVideoAnim(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLEVideoAnimation;)Z

    move-result p0

    return p0
.end method

.method public removeVideoEffect(Lcom/bytedance/ies/nle/editor_jni/NLEVideoEffect;)Z
    .registers 8

    .line 209
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEffect;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEVideoEffect;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_removeVideoEffect(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLEVideoEffect;)Z

    move-result p0

    return p0
.end method

.method public setAIMatting(Lcom/bytedance/ies/nle/editor_jni/NLEAIMatting;)V
    .registers 8

    .line 120
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEAIMatting;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEAIMatting;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_setAIMatting(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLEAIMatting;)V

    return-void
.end method

.method public setAudioFilter(Lcom/bytedance/ies/nle/editor_jni/NLEFilter;)V
    .registers 8

    .line 255
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEFilter;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEFilter;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_setAudioFilter(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLEFilter;)V

    return-void
.end method

.method public setAutoFillFrame(Lcom/bytedance/ies/nle/editor_jni/NLEAutoFillFrame;)V
    .registers 8

    .line 108
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEAutoFillFrame;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEAutoFillFrame;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_setAutoFillFrame(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLEAutoFillFrame;)V

    return-void
.end method

.method public setEndTransition(Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;)V
    .registers 8

    .line 93
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_setEndTransition(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;)V

    return-void
.end method

.method public setKeyframeGraphType(Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType;)V
    .registers 4

    .line 290
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_setKeyframeGraphType(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;I)V

    return-void
.end method

.method public setKeyframesUUIDList(Lcom/bytedance/ies/nle/editor_jni/VecString;)V
    .registers 8

    .line 244
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/VecString;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecString;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_setKeyframesUUIDList(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/VecString;)V

    return-void
.end method

.method public setMainSegment(Lcom/bytedance/ies/nle/editor_jni/NLESegment;)V
    .registers 8

    .line 62
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegment;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLESegment;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_setMainSegment(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLESegment;)V

    return-void
.end method

.method public setPinAlgorithmFile(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
    .registers 8

    .line 81
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_setPinAlgorithmFile(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V

    return-void
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 27
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCMemOwnDerived:Z

    .line 28
    invoke-super {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigSetCMemOwn(Z)V

    return-void
.end method

.method public syncEffectResource(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;
    .registers 8

    .line 368
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_syncEffectResource(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_14

    const/4 p0, 0x0

    return-object p0

    .line 369
    :cond_14
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;-><init>(JZ)V

    return-object v0
.end method

.method public updateKeyframe(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;
    .registers 8

    .line 360
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackSlot_updateKeyframe(JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_14

    const/4 p0, 0x0

    return-object p0

    .line 361
    :cond_14
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;-><init>(JZ)V

    return-object v0
.end method
