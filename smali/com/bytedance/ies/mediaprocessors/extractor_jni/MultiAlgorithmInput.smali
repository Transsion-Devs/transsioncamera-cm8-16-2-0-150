.class public Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;
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
    iput-boolean p3, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;Ljava/lang/String;Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)V
    .registers 15

    .line 87
    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;)J

    move-result-wide v0

    invoke-static {p3}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;)J

    move-result-wide v4

    invoke-static {p4}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)J

    move-result-wide v7

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move-object v9, p4

    invoke-static/range {v0 .. v9}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->new_MultiAlgorithmInput(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;Ljava/lang/String;JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)J

    move-result-wide p1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public algorithmKey(Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;)Ljava/lang/String;
    .registers 4

    .line 95
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;->swigCPtr:J

    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->MultiAlgorithmInput_algorithmKey__SWIG_1(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public algorithmKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 91
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->MultiAlgorithmInput_algorithmKey__SWIG_0(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 34
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 35
    iget-boolean v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 36
    iput-boolean v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;->swigCMemOwn:Z

    .line 37
    invoke-static {v0, v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->delete_MultiAlgorithmInput(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 39
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;->delete()V

    return-void
.end method

.method public getAlgorithmConf()Ljava/lang/String;
    .registers 3

    .line 75
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->MultiAlgorithmInput_algorithmConf_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getConfMd5()Ljava/lang/String;
    .registers 3

    .line 83
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->MultiAlgorithmInput_confMd5_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getResList()Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;
    .registers 5

    .line 48
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->MultiAlgorithmInput_resList_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;)J

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

.method public getStringTypes()Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;
    .registers 5

    .line 66
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->MultiAlgorithmInput_stringTypes_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 67
    :cond_e
    new-instance p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;-><init>(JZ)V

    return-object p0
.end method

.method public getTypes()Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;
    .registers 5

    .line 57
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->MultiAlgorithmInput_types_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 58
    :cond_e
    new-instance p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;-><init>(JZ)V

    return-object p0
.end method

.method public setAlgorithmConf(Ljava/lang/String;)V
    .registers 4

    .line 71
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->MultiAlgorithmInput_algorithmConf_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;Ljava/lang/String;)V

    return-void
.end method

.method public setConfMd5(Ljava/lang/String;)V
    .registers 4

    .line 79
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->MultiAlgorithmInput_confMd5_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;Ljava/lang/String;)V

    return-void
.end method

.method public setResList(Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;)V
    .registers 8

    .line 44
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->MultiAlgorithmInput_resList_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;JLcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;)V

    return-void
.end method

.method public setStringTypes(Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)V
    .registers 8

    .line 62
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->MultiAlgorithmInput_stringTypes_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)V

    return-void
.end method

.method public setTypes(Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;)V
    .registers 8

    .line 53
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->MultiAlgorithmInput_types_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;)V

    return-void
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;->swigCMemOwn:Z

    return-void
.end method
