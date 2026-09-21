.class public Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;
.super Lcom/bytedance/ies/nle/editor_jni/NLESegment;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwnDerived:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 396
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_NLESegmentAudio()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 7

    .line 19
    invoke-static {p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_SWIGSmartPtrUpcast(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegment;-><init>(JZ)V

    .line 20
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCMemOwnDerived:Z

    .line 21
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    return-void
.end method

.method public static dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;
    .registers 5

    .line 50
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 51
    :cond_10
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;-><init>(JZ)V

    return-object p0
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 25
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    return-wide v0
.end method

.method public static getREPEAT_INFINITE()I
    .registers 1

    .line 213
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_REPEAT_INFINITE_get()I

    move-result v0

    return v0
.end method

.method public static getREPEAT_NORMAL()I
    .registers 1

    .line 209
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_REPEAT_NORMAL_get()I

    move-result v0

    return v0
.end method


# virtual methods
.method public addCurveSpeedPoint(Lcom/bytedance/ies/nle/editor_jni/NLEPoint;)V
    .registers 8

    .line 174
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEPoint;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_addCurveSpeedPoint(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;JLcom/bytedance/ies/nle/editor_jni/NLEPoint;)V

    return-void
.end method

.method public addSegCurveSpeedPoint(Lcom/bytedance/ies/nle/editor_jni/NLEPoint;)V
    .registers 8

    .line 190
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEPoint;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_addSegCurveSpeedPoint(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;JLcom/bytedance/ies/nle/editor_jni/NLEPoint;)V

    return-void
.end method

.method public changerToEffectJson()Ljava/lang/String;
    .registers 3

    .line 392
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_changerToEffectJson(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public clearCurveSpeedPoint()V
    .registers 3

    .line 182
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_clearCurveSpeedPoint(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)V

    return-void
.end method

.method public clearSegCurveSpeedPoint()V
    .registers 3

    .line 198
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_clearSegCurveSpeedPoint(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)V

    return-void
.end method

.method public clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;
    .registers 5

    .line 55
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)J

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
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 39
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 40
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCMemOwnDerived:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 41
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCMemOwnDerived:Z

    .line 42
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->delete_NLESegmentAudio(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1d

    .line 44
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

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
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->delete()V

    return-void
.end method

.method public getAVFile()Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;
    .registers 5

    .line 266
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_getAVFile(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 267
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;-><init>(JZ)V

    return-object p0
.end method

.method public getAbsSpeed()F
    .registers 3

    .line 293
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_getAbsSpeed(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)F

    move-result p0

    return p0
.end method

.method public getActionBeamAvgSpeed()D
    .registers 3

    .line 321
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_getActionBeamAvgSpeed(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getChanger()Lcom/bytedance/ies/nle/editor_jni/NLEAudioChanger;
    .registers 3

    .line 255
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_getChanger(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEAudioChanger;->swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/NLEAudioChanger;

    move-result-object p0

    return-object p0
.end method

.method public getCurveActionBeam()Lcom/bytedance/ies/nle/editor_jni/NLECurveActionBeam;
    .registers 5

    .line 157
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_getCurveActionBeam(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 158
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLECurveActionBeam;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLECurveActionBeam;-><init>(JZ)V

    return-object p0
.end method

.method public getCurveAveSpeed()D
    .registers 3

    .line 314
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_getCurveAveSpeed(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getCurveSpeedPoints()Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;
    .registers 4

    .line 186
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_getCurveSpeedPoints(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;-><init>(JZ)V

    return-object v0
.end method

.method public getCurveSpeedType()Lcom/bytedance/ies/nle/editor_jni/NLECurveSpeedType;
    .registers 3

    .line 146
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_getCurveSpeedType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLECurveSpeedType;->swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/NLECurveSpeedType;

    move-result-object p0

    return-object p0
.end method

.method public getDuration()J
    .registers 3

    .line 388
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_getDuration(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDurationWithoutCurveSpeed()J
    .registers 3

    .line 371
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_getDurationWithoutCurveSpeed(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFadeInLength()J
    .registers 3

    .line 71
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_getFadeInLength(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFadeOutLength()J
    .registers 3

    .line 86
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_getFadeOutLength(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getKeepTone()Z
    .registers 3

    .line 240
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_getKeepTone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)Z

    move-result p0

    return p0
.end method

.method public getPlayResource()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;
    .registers 5

    .line 383
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_getPlayResource(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 384
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;-><init>(JZ)V

    return-object p0
.end method

.method public getRawDuration()J
    .registers 3

    .line 379
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_getRawDuration(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRepeatCount()I
    .registers 3

    .line 225
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_getRepeatCount(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)I

    move-result p0

    return p0
.end method

.method public getResource()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;
    .registers 5

    .line 362
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_getResource(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 363
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;-><init>(JZ)V

    return-object p0
.end method

.method public getReversedAVFile()Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;
    .registers 5

    .line 278
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_getReversedAVFile(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 279
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;-><init>(JZ)V

    return-object p0
.end method

.method public getRewind()Z
    .registers 3

    .line 307
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_getRewind(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)Z

    move-result p0

    return p0
.end method

.method public getSegCurveSpeedPoints()Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;
    .registers 4

    .line 202
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_getSegCurveSpeedPoints(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;-><init>(JZ)V

    return-object v0
.end method

.method public getSeqCurveSpeedPoints()Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;
    .registers 4

    .line 331
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_getSeqCurveSpeedPoints(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;-><init>(JZ)V

    return-object v0
.end method

.method public getSpeed()F
    .registers 3

    .line 170
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_getSpeed(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)F

    move-result p0

    return p0
.end method

.method public getTimeClipEnd()J
    .registers 3

    .line 131
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_getTimeClipEnd(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeClipStart()J
    .registers 3

    .line 116
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_getTimeClipStart(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVolume()F
    .registers 3

    .line 101
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_getVolume(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)F

    move-result p0

    return p0
.end method

.method public hasChanger()Z
    .registers 3

    .line 244
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_hasChanger(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)Z

    move-result p0

    return p0
.end method

.method public hasCurveSpeedType()Z
    .registers 3

    .line 135
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_hasCurveSpeedType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)Z

    move-result p0

    return p0
.end method

.method public hasFadeInLength()Z
    .registers 3

    .line 60
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_hasFadeInLength(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)Z

    move-result p0

    return p0
.end method

.method public hasFadeOutLength()Z
    .registers 3

    .line 75
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_hasFadeOutLength(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)Z

    move-result p0

    return p0
.end method

.method public hasKeepTone()Z
    .registers 3

    .line 229
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_hasKeepTone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)Z

    move-result p0

    return p0
.end method

.method public hasRepeatCount()Z
    .registers 3

    .line 217
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_hasRepeatCount(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)Z

    move-result p0

    return p0
.end method

.method public hasSpeed()Z
    .registers 3

    .line 162
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_hasSpeed(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)Z

    move-result p0

    return p0
.end method

.method public hasTimeClipEnd()Z
    .registers 3

    .line 120
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_hasTimeClipEnd(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)Z

    move-result p0

    return p0
.end method

.method public hasTimeClipStart()Z
    .registers 3

    .line 105
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_hasTimeClipStart(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)Z

    move-result p0

    return p0
.end method

.method public hasVolume()Z
    .registers 3

    .line 90
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_hasVolume(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;)Z

    move-result p0

    return p0
.end method

.method public removeCurveSpeedPoint(Lcom/bytedance/ies/nle/editor_jni/NLEPoint;)Z
    .registers 8

    .line 178
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEPoint;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_removeCurveSpeedPoint(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;JLcom/bytedance/ies/nle/editor_jni/NLEPoint;)Z

    move-result p0

    return p0
.end method

.method public removeSegCurveSpeedPoint(Lcom/bytedance/ies/nle/editor_jni/NLEPoint;)Z
    .registers 8

    .line 194
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEPoint;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_removeSegCurveSpeedPoint(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;JLcom/bytedance/ies/nle/editor_jni/NLEPoint;)Z

    move-result p0

    return p0
.end method

.method public setAVFile(Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;)V
    .registers 8

    .line 259
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_setAVFile(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;JLcom/bytedance/ies/nle/editor_jni/NLEResourceAV;)V

    return-void
.end method

.method public setAbsSpeed(F)V
    .registers 4

    .line 286
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_setAbsSpeed(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;F)V

    return-void
.end method

.method public setChanger(Lcom/bytedance/ies/nle/editor_jni/NLEAudioChanger;)V
    .registers 4

    .line 248
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEAudioChanger;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_setChanger(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;I)V

    return-void
.end method

.method public setCurveActionBeam(Lcom/bytedance/ies/nle/editor_jni/NLECurveActionBeam;)V
    .registers 8

    .line 150
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLECurveActionBeam;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLECurveActionBeam;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_setCurveActionBeam(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;JLcom/bytedance/ies/nle/editor_jni/NLECurveActionBeam;)V

    return-void
.end method

.method public setCurveActionBeamPoints(Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)V
    .registers 8

    .line 358
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_setCurveActionBeamPoints(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)V

    return-void
.end method

.method public setCurveSpeedPoints(Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)V
    .registers 8

    .line 349
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_setCurveSpeedPoints(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)V

    return-void
.end method

.method public setCurveSpeedType(Lcom/bytedance/ies/nle/editor_jni/NLECurveSpeedType;)V
    .registers 4

    .line 139
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLECurveSpeedType;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_setCurveSpeedType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;I)V

    return-void
.end method

.method public setFadeInLength(J)V
    .registers 5

    .line 64
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_setFadeInLength(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;J)V

    return-void
.end method

.method public setFadeOutLength(J)V
    .registers 5

    .line 79
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_setFadeOutLength(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;J)V

    return-void
.end method

.method public setKeepTone(Z)V
    .registers 4

    .line 233
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_setKeepTone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;Z)V

    return-void
.end method

.method public setRepeatCount(I)V
    .registers 4

    .line 221
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_setRepeatCount(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;I)V

    return-void
.end method

.method public setReversedAVFile(Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;)V
    .registers 8

    .line 271
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_setReversedAVFile(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;JLcom/bytedance/ies/nle/editor_jni/NLEResourceAV;)V

    return-void
.end method

.method public setRewind(Z)V
    .registers 4

    .line 300
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_setRewind(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;Z)V

    return-void
.end method

.method public setSegCurveSpeedPoints(Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)V
    .registers 8

    .line 340
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_setSegCurveSpeedPoints(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)V

    return-void
.end method

.method public setSpeed(F)V
    .registers 4

    .line 166
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_setSpeed(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;F)V

    return-void
.end method

.method public setTimeClipEnd(J)V
    .registers 5

    .line 124
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_setTimeClipEnd(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;J)V

    return-void
.end method

.method public setTimeClipStart(J)V
    .registers 5

    .line 109
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_setTimeClipStart(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;J)V

    return-void
.end method

.method public setVolume(F)V
    .registers 4

    .line 94
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentAudio_setVolume(JLcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;F)V

    return-void
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 29
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->swigCMemOwnDerived:Z

    .line 30
    invoke-super {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegment;->swigSetCMemOwn(Z)V

    return-void
.end method
