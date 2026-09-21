.class public Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;
.super Lcom/bytedance/ies/mediaprocessors/extractor_jni/IResult;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwnDerived:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 47
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->new_Result__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .registers 7

    .line 16
    invoke-static {p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Result_SWIGSmartPtrUpcast(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/IResult;-><init>(JZ)V

    .line 17
    iput-boolean p3, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->swigCMemOwnDerived:Z

    .line 18
    iput-wide p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;)V
    .registers 4

    .line 55
    invoke-virtual {p3}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;->swigValue()I

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->new_Result__SWIG_2(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide p1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;JI)V
    .registers 7

    .line 59
    invoke-virtual {p3}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;->swigValue()I

    move-result p3

    invoke-static/range {p1 .. p6}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->new_Result__SWIG_3(Ljava/lang/String;Ljava/lang/String;IJI)J

    move-result-wide p1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .registers 7

    .line 51
    invoke-static/range {p1 .. p6}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->new_Result__SWIG_1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)J

    move-result-wide p1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;-><init>(JZ)V

    return-void
.end method

.method public static getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 22
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 36
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 37
    iget-boolean v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->swigCMemOwnDerived:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 38
    iput-boolean v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->swigCMemOwnDerived:Z

    .line 39
    invoke-static {v0, v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->delete_Result(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1d

    .line 41
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->swigCPtr:J

    .line 43
    :cond_18
    invoke-super {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/IResult;->delete()V
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
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->delete()V

    return-void
.end method

.method public freeResult()V
    .registers 3

    .line 123
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Result_freeResult(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Result;)V

    return-void
.end method

.method public freeStringTypeResult()Z
    .registers 3

    .line 131
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Result_freeStringTypeResult(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Result;)Z

    move-result p0

    return p0
.end method

.method public freeStructResult()V
    .registers 3

    .line 127
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Result_freeStructResult(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Result;)V

    return-void
.end method

.method public getAlgorithmKey()Ljava/lang/String;
    .registers 3

    .line 111
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Result_algorithmKey_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Result;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAlgorithmStringType()Ljava/lang/String;
    .registers 3

    .line 95
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Result_algorithmStringType_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Result;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAlgorithmType()Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;
    .registers 3

    .line 103
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Result_algorithmType_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Result;)I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;->swigToEnum(I)Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;

    move-result-object p0

    return-object p0
.end method

.method public getAssetId()Ljava/lang/String;
    .registers 3

    .line 87
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Result_assetId_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Result;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getResult()J
    .registers 3

    .line 79
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Result_result_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Result;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getResultLength()J
    .registers 3

    .line 71
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Result_resultLength_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Result;)J

    move-result-wide v0

    return-wide v0
.end method

.method public memcpyStructResult([B)V
    .registers 4

    .line 119
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Result_memcpyStructResult(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Result;[B)V

    return-void
.end method

.method public resetData()V
    .registers 3

    .line 63
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Result_resetData(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Result;)V

    return-void
.end method

.method public setAlgorithmKey(Ljava/lang/String;)V
    .registers 4

    .line 107
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Result_algorithmKey_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Result;Ljava/lang/String;)V

    return-void
.end method

.method public setAlgorithmStringType(Ljava/lang/String;)V
    .registers 4

    .line 91
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Result_algorithmStringType_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Result;Ljava/lang/String;)V

    return-void
.end method

.method public setAlgorithmType(Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;)V
    .registers 4

    .line 99
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->swigCPtr:J

    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Result_algorithmType_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Result;I)V

    return-void
.end method

.method public setAssetId(Ljava/lang/String;)V
    .registers 4

    .line 83
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Result_assetId_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Result;Ljava/lang/String;)V

    return-void
.end method

.method public setResult(J)V
    .registers 5

    .line 75
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Result_result_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Result;J)V

    return-void
.end method

.method public setResultLength(J)V
    .registers 5

    .line 67
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Result_resultLength_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Result;J)V

    return-void
.end method

.method public setResultNative([B)V
    .registers 4

    .line 115
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Result_setResultNative(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Result;[B)V

    return-void
.end method

.method public swigSetCMemOwn(Z)V
    .registers 2

    .line 26
    iput-boolean p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->swigCMemOwnDerived:Z

    .line 27
    invoke-super {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/IResult;->swigSetCMemOwn(Z)V

    return-void
.end method
