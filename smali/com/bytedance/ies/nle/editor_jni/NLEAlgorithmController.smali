.class public Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public beginGenVideoFrames(ILcom/bytedance/ies/nle/editor_jni/NLEAlgorithmCallbackWrapper;)I
    .registers 10

    .line 96
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;->swigCPtr:J

    invoke-static {p2}, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmCallbackWrapper;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmCallbackWrapper;)J

    move-result-wide v4

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEAlgorithmController_beginGenVideoFrames(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;IJLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmCallbackWrapper;)I

    move-result p0

    return p0
.end method

.method public cancelGenVideoFrame(I)I
    .registers 4

    .line 80
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEAlgorithmController_cancelGenVideoFrame(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;I)I

    move-result p0

    return p0
.end method

.method public checkScoresFile(Ljava/lang/String;)I
    .registers 4

    .line 72
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEAlgorithmController_checkScoresFile(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 34
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 35
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 36
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;->swigCMemOwn:Z

    .line 37
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->delete_NLEAlgorithmController(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 39
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;->delete()V

    return-void
.end method

.method public genRandomSolve()I
    .registers 3

    .line 76
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEAlgorithmController_genRandomSolve(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;)I

    move-result p0

    return p0
.end method

.method public genSmartCutting()I
    .registers 3

    .line 84
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEAlgorithmController_genSmartCutting(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;)I

    move-result p0

    return p0
.end method

.method public getAllVideoRangeData()Lcom/bytedance/ies/nle/editor_jni/VecNLEClipAlgorithmParam;
    .registers 4

    .line 64
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecNLEClipAlgorithmParam;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEAlgorithmController_getAllVideoRangeData(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLEClipAlgorithmParam;-><init>(JZ)V

    return-object v0
.end method

.method public initBingoAlgorithm()I
    .registers 3

    .line 44
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEAlgorithmController_initBingoAlgorithm(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;)I

    move-result p0

    return p0
.end method

.method public initSmartAlgorithm(JJLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;)I
    .registers 16

    .line 56
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;->swigCPtr:J

    invoke-static {p5}, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;)J

    move-result-wide v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object v9, p5

    invoke-static/range {v0 .. v9}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEAlgorithmController_initSmartAlgorithm(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;JJJLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;)I

    move-result p0

    return p0
.end method

.method public reInitSmartAlgorithmIfPossible()I
    .registers 3

    .line 60
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEAlgorithmController_reInitSmartAlgorithmIfPossible(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;)I

    move-result p0

    return p0
.end method

.method public removeAllVideoSound()I
    .registers 3

    .line 88
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEAlgorithmController_removeAllVideoSound(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;)I

    move-result p0

    return p0
.end method

.method public restoreAllVideoSound()I
    .registers 3

    .line 92
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEAlgorithmController_restoreAllVideoSound(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;)I

    move-result p0

    return p0
.end method

.method public setInterimScoresToFile(Ljava/lang/String;)I
    .registers 4

    .line 68
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEAlgorithmController_setInterimScoresToFile(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setMusicAndResult(Ljava/lang/String;IILcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;)I
    .registers 14

    .line 52
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;->swigCPtr:J

    invoke-static {p4}, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;)J

    move-result-wide v6

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEAlgorithmController_setMusicAndResult(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;Ljava/lang/String;IIJLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;)I

    move-result p0

    return p0
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;->swigCMemOwn:Z

    return-void
.end method

.method public updateAlgorithmFromNormal()I
    .registers 3

    .line 48
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEAlgorithmController_updateAlgorithmFromNormal(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;)I

    move-result p0

    return p0
.end method
