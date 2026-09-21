.class public Lcom/bytedance/ies/nle/editor_jni/NLECurveSpeedCalculator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .registers 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLECurveSpeedCalculator;->swigCMemOwn:Z

    .line 28
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLECurveSpeedCalculator;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)V
    .registers 4

    .line 61
    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_NLECurveSpeedCalculator(JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/ies/nle/editor_jni/NLECurveSpeedCalculator;-><init>(JZ)V

    return-void
.end method

.method public static calculateCubePoint(FLcom/bytedance/ies/nle/editor_jni/NLEPoint;Lcom/bytedance/ies/nle/editor_jni/NLEPoint;Lcom/bytedance/ies/nle/editor_jni/NLEPoint;Lcom/bytedance/ies/nle/editor_jni/NLEPoint;)Lcom/bytedance/ies/nle/editor_jni/NLEPoint;
    .registers 18

    .line 145
    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEPoint;)J

    move-result-wide v1

    invoke-static {p2}, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEPoint;)J

    move-result-wide v4

    invoke-static/range {p3 .. p3}, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEPoint;)J

    move-result-wide v7

    invoke-static/range {p4 .. p4}, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEPoint;)J

    move-result-wide v10

    move v0, p0

    move-object v3, p1

    move-object v6, p2

    move-object/from16 v9, p3

    move-object/from16 v12, p4

    invoke-static/range {v0 .. v12}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLECurveSpeedCalculator_calculateCubePoint(FJLcom/bytedance/ies/nle/editor_jni/NLEPoint;JLcom/bytedance/ies/nle/editor_jni/NLEPoint;JLcom/bytedance/ies/nle/editor_jni/NLEPoint;JLcom/bytedance/ies/nle/editor_jni/NLEPoint;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p2, p0, v0

    if-nez p2, :cond_23

    const/4 p0, 0x0

    return-object p0

    .line 146
    :cond_23
    new-instance p2, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;

    const/4 v0, 0x1

    invoke-direct {p2, p0, p1, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;-><init>(JZ)V

    return-object p2
.end method

.method public static generateBezierPathLookupTable(Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;
    .registers 4

    .line 112
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)J

    move-result-wide v1

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLECurveSpeedCalculator_generateBezierPathLookupTable(JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;-><init>(JZ)V

    return-object v0
.end method

.method public static generateThirdBezierPathPoints(Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;
    .registers 4

    .line 104
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)J

    move-result-wide v1

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLECurveSpeedCalculator_generateThirdBezierPathPoints(JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;-><init>(JZ)V

    return-object v0
.end method

.method public static getAveActionBeamSpeedRatio(Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)D
    .registers 3

    .line 75
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLECurveSpeedCalculator_getAveActionBeamSpeedRatio(JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getBezierPoint(Lcom/bytedance/ies/nle/editor_jni/NLEPoint;Lcom/bytedance/ies/nle/editor_jni/NLEPoint;JJ)Lcom/bytedance/ies/nle/editor_jni/NLEPoint;
    .registers 16

    .line 132
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEPoint;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEPoint;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-static/range {v0 .. v9}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLECurveSpeedCalculator_getBezierPoint(JLcom/bytedance/ies/nle/editor_jni/NLEPoint;JLcom/bytedance/ies/nle/editor_jni/NLEPoint;JJ)J

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmp-long p2, p0, p2

    if-nez p2, :cond_18

    const/4 p0, 0x0

    return-object p0

    .line 133
    :cond_18
    new-instance p2, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p1, p3}, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;-><init>(JZ)V

    return-object p2
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLECurveSpeedCalculator;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 32
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLECurveSpeedCalculator;->swigCPtr:J

    return-wide v0
.end method

.method public static recursiveCalculateCubePoint(Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;F)Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;
    .registers 5

    .line 121
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)J

    move-result-wide v1

    invoke-static {v1, v2, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLECurveSpeedCalculator_recursiveCalculateCubePoint(JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;F)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;-><init>(JZ)V

    return-object v0
.end method

.method public static segmentPToSequenceP(Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;
    .registers 4

    .line 54
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)J

    move-result-wide v1

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLECurveSpeedCalculator_segmentPToSequenceP(JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;-><init>(JZ)V

    return-object v0
.end method

.method public static splitCurvePoints(Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;JJ)Lcom/bytedance/ies/nle/editor_jni/PairNLEPoint2NLEPoint;
    .registers 13

    .line 150
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/PairNLEPoint2NLEPoint;

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)J

    move-result-wide v1

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLECurveSpeedCalculator_splitCurvePoints(JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;JJ)J

    move-result-wide p0

    const/4 p2, 0x1

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/PairNLEPoint2NLEPoint;-><init>(JZ)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 41
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLECurveSpeedCalculator;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 42
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLECurveSpeedCalculator;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 43
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLECurveSpeedCalculator;->swigCMemOwn:Z

    .line 44
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->delete_NLECurveSpeedCalculator(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 46
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLECurveSpeedCalculator;->swigCPtr:J
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_14

    .line 48
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

    .line 37
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLECurveSpeedCalculator;->delete()V

    return-void
.end method

.method public getAveCurveSpeedRatio()D
    .registers 3

    .line 68
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLECurveSpeedCalculator;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLECurveSpeedCalculator_getAveCurveSpeedRatio(JLcom/bytedance/ies/nle/editor_jni/NLECurveSpeedCalculator;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSpeedRatioBySeqDelta(JJ)D
    .registers 12

    .line 82
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLECurveSpeedCalculator;->swigCPtr:J

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLECurveSpeedCalculator_getSpeedRatioBySeqDelta(JLcom/bytedance/ies/nle/editor_jni/NLECurveSpeedCalculator;JJ)D

    move-result-wide p0

    return-wide p0
.end method

.method public segmentDelToSequenceDel(JJ)J
    .registers 12

    .line 96
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLECurveSpeedCalculator;->swigCPtr:J

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLECurveSpeedCalculator_segmentDelToSequenceDel(JLcom/bytedance/ies/nle/editor_jni/NLECurveSpeedCalculator;JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public sequenceDelToSegmentDel(JJ)J
    .registers 12

    .line 89
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLECurveSpeedCalculator;->swigCPtr:J

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLECurveSpeedCalculator_sequenceDelToSegmentDel(JLcom/bytedance/ies/nle/editor_jni/NLECurveSpeedCalculator;JJ)J

    move-result-wide p0

    return-wide p0
.end method
