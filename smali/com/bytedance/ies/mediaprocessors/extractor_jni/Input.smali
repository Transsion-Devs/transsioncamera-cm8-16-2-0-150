.class public Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 96
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->new_Input__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;Ljava/lang/String;Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;)V
    .registers 13

    .line 100
    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;)J

    move-result-wide v0

    invoke-static {p3}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;)J

    move-result-wide v4

    invoke-virtual {p4}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;->swigValue()I

    move-result v7

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-static/range {v0 .. v7}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->new_Input__SWIG_1(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;Ljava/lang/String;JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;I)J

    move-result-wide p1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;Ljava/lang/String;Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringFloatMap;Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringStringMap;Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;)V
    .registers 21

    .line 104
    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;)J

    move-result-wide v0

    invoke-static/range {p3 .. p3}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;)J

    move-result-wide v4

    invoke-static/range {p4 .. p4}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringFloatMap;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringFloatMap;)J

    move-result-wide v7

    invoke-static/range {p5 .. p5}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringStringMap;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringStringMap;)J

    move-result-wide v10

    invoke-virtual/range {p6 .. p6}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;->swigValue()I

    move-result v13

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    move-object/from16 v9, p4

    move-object/from16 v12, p5

    invoke-static/range {v0 .. v13}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->new_Input__SWIG_2(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;Ljava/lang/String;JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringFloatMap;JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringStringMap;I)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public algorithmKey()Ljava/lang/String;
    .registers 3

    .line 112
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Input_algorithmKey__SWIG_1(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Input;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public algorithmKey(Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;)Ljava/lang/String;
    .registers 4

    .line 108
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;->swigCPtr:J

    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Input_algorithmKey__SWIG_0(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Input;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 34
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 35
    iget-boolean v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 36
    iput-boolean v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;->swigCMemOwn:Z

    .line 37
    invoke-static {v0, v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->delete_Input(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 39
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;->delete()V

    return-void
.end method

.method public getAlgorithmConf()Ljava/lang/String;
    .registers 3

    .line 57
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Input_algorithmConf_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Input;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFloatParams()Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringFloatMap;
    .registers 5

    .line 74
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Input_floatParams_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Input;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 75
    :cond_e
    new-instance p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringFloatMap;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringFloatMap;-><init>(JZ)V

    return-object p0
.end method

.method public getIntParams()Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;
    .registers 5

    .line 65
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Input_intParams_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Input;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 66
    :cond_e
    new-instance p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;-><init>(JZ)V

    return-object p0
.end method

.method public getResList()Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;
    .registers 5

    .line 48
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Input_resList_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Input;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 49
    :cond_e
    new-instance p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;-><init>(JZ)V

    return-object p0
.end method

.method public getStringParams()Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringStringMap;
    .registers 5

    .line 83
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Input_stringParams_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Input;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 84
    :cond_e
    new-instance p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringStringMap;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringStringMap;-><init>(JZ)V

    return-object p0
.end method

.method public getType()Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;
    .registers 3

    .line 92
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Input_type_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Input;)I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;->swigToEnum(I)Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;

    move-result-object p0

    return-object p0
.end method

.method public setAlgorithmConf(Ljava/lang/String;)V
    .registers 4

    .line 53
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Input_algorithmConf_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Input;Ljava/lang/String;)V

    return-void
.end method

.method public setFloatParams(Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringFloatMap;)V
    .registers 8

    .line 70
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringFloatMap;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringFloatMap;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Input_floatParams_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Input;JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringFloatMap;)V

    return-void
.end method

.method public setIntParams(Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;)V
    .registers 8

    .line 61
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Input_intParams_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Input;JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;)V

    return-void
.end method

.method public setResList(Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;)V
    .registers 8

    .line 44
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Input_resList_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Input;JLcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;)V

    return-void
.end method

.method public setStringParams(Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringStringMap;)V
    .registers 8

    .line 79
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringStringMap;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringStringMap;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Input_stringParams_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Input;JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringStringMap;)V

    return-void
.end method

.method public setType(Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;)V
    .registers 4

    .line 88
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;->swigCPtr:J

    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Input_type_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Input;I)V

    return-void
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;->swigCMemOwn:Z

    return-void
.end method
