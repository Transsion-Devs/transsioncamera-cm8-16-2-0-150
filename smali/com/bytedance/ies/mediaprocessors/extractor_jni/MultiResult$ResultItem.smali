.class public Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultItem"
.end annotation


# instance fields
.field private transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 111
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->new_MultiResult_ResultItem__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean p3, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;->swigCMemOwn:Z

    .line 52
    iput-wide p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;JJ)V
    .registers 6

    .line 115
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;->swigValue()I

    move-result p1

    invoke-static {p1, p2, p3, p4, p5}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->new_MultiResult_ResultItem__SWIG_1(IJJ)J

    move-result-wide p1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .registers 6

    .line 119
    invoke-static {p1, p2, p3, p4, p5}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->new_MultiResult_ResultItem__SWIG_2(Ljava/lang/String;JJ)J

    move-result-wide p1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 56
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 69
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 70
    iget-boolean v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 71
    iput-boolean v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;->swigCMemOwn:Z

    .line 72
    invoke-static {v0, v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->delete_MultiResult_ResultItem(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 74
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;->swigCPtr:J
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_14

    .line 76
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

    .line 65
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;->delete()V

    return-void
.end method

.method public getData()J
    .registers 3

    .line 99
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->MultiResult_ResultItem_data_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSize()J
    .registers 3

    .line 107
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->MultiResult_ResultItem_size_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStringType()Ljava/lang/String;
    .registers 3

    .line 91
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->MultiResult_ResultItem_stringType_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;
    .registers 3

    .line 83
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->MultiResult_ResultItem_type_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;)I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;->swigToEnum(I)Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;

    move-result-object p0

    return-object p0
.end method

.method public memcpyStructResult([B)V
    .registers 4

    .line 123
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->MultiResult_ResultItem_memcpyStructResult(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;[B)V

    return-void
.end method

.method public setData(J)V
    .registers 5

    .line 95
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->MultiResult_ResultItem_data_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;J)V

    return-void
.end method

.method public setSize(J)V
    .registers 5

    .line 103
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->MultiResult_ResultItem_size_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;J)V

    return-void
.end method

.method public setStringType(Ljava/lang/String;)V
    .registers 4

    .line 87
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->MultiResult_ResultItem_stringType_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;Ljava/lang/String;)V

    return-void
.end method

.method public setType(Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;)V
    .registers 4

    .line 79
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;->swigCPtr:J

    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->MultiResult_ResultItem_type_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;I)V

    return-void
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 60
    iput-boolean p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;->swigCMemOwn:Z

    return-void
.end method
