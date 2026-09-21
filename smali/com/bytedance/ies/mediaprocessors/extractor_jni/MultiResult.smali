.class public Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;
.super Lcom/bytedance/ies/mediaprocessors/extractor_jni/IResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;
    }
.end annotation


# instance fields
.field private transient swigCMemOwnDerived:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 181
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->new_MultiResult()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 7

    .line 16
    invoke-static {p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->MultiResult_SWIGSmartPtrUpcast(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/IResult;-><init>(JZ)V

    .line 17
    iput-boolean p3, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;->swigCMemOwnDerived:Z

    .line 18
    iput-wide p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 22
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 173
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->MultiResult_clear(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;)V

    return-void
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 36
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 37
    iget-boolean v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;->swigCMemOwnDerived:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 38
    iput-boolean v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;->swigCMemOwnDerived:Z

    .line 39
    invoke-static {v0, v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->delete_MultiResult(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1d

    .line 41
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;->swigCPtr:J

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

.method public emplace(Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;JJ)V
    .registers 14

    .line 165
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;->swigCPtr:J

    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;->swigValue()I

    move-result v3

    move-object v2, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-static/range {v0 .. v7}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->MultiResult_emplace__SWIG_0(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;IJJ)V

    return-void
.end method

.method public emplace(Ljava/lang/String;JJ)V
    .registers 14

    .line 169
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-static/range {v0 .. v7}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->MultiResult_emplace__SWIG_1(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;Ljava/lang/String;JJ)V

    return-void
.end method

.method protected finalize()V
    .registers 1

    .line 32
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;->delete()V

    return-void
.end method

.method public getAssetId()Ljava/lang/String;
    .registers 3

    .line 133
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->MultiResult_assetId_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getResultItem(Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;
    .registers 4

    .line 160
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;->swigCPtr:J

    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->MultiResult_getResultItem__SWIG_1(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;I)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_12

    const/4 p0, 0x0

    return-object p0

    .line 161
    :cond_12
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;-><init>(JZ)V

    return-object v0
.end method

.method public getResultItem(Ljava/lang/String;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;
    .registers 4

    .line 155
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->MultiResult_getResultItem__SWIG_0(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;Ljava/lang/String;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 156
    :cond_e
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;-><init>(JZ)V

    return-object v0
.end method

.method public getStringTypes()Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;
    .registers 5

    .line 150
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->MultiResult_stringTypes_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 151
    :cond_e
    new-instance p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;-><init>(JZ)V

    return-object p0
.end method

.method public getTypes()Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;
    .registers 5

    .line 141
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->MultiResult_types_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 142
    :cond_e
    new-instance p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;-><init>(JZ)V

    return-object p0
.end method

.method public resultCount()J
    .registers 3

    .line 177
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->MultiResult_resultCount(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;)J

    move-result-wide v0

    return-wide v0
.end method

.method public setAssetId(Ljava/lang/String;)V
    .registers 4

    .line 129
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->MultiResult_assetId_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;Ljava/lang/String;)V

    return-void
.end method

.method public setStringTypes(Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)V
    .registers 8

    .line 146
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->MultiResult_stringTypes_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)V

    return-void
.end method

.method public setTypes(Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;)V
    .registers 8

    .line 137
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->MultiResult_types_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;)V

    return-void
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 26
    iput-boolean p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;->swigCMemOwnDerived:Z

    .line 27
    invoke-super {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/IResult;->swigSetCMemOwn(Z)V

    return-void
.end method
