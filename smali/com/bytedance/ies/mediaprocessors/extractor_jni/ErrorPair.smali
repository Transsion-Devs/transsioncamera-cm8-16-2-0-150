.class public Lcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 40
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->new_ErrorPair__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    .line 44
    invoke-static {p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->new_ErrorPair__SWIG_1(ILjava/lang/String;)J

    move-result-wide p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;)V
    .registers 4

    .line 48
    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->new_ErrorPair__SWIG_2(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 30
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 31
    iget-boolean v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 32
    iput-boolean v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;->swigCMemOwn:Z

    .line 33
    invoke-static {v0, v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->delete_ErrorPair(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 35
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;->swigCPtr:J
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_14

    .line 37
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

    .line 26
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;->delete()V

    return-void
.end method

.method public getFirst()I
    .registers 3

    .line 56
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->ErrorPair_first_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;)I

    move-result p0

    return p0
.end method

.method public getSecond()Ljava/lang/String;
    .registers 3

    .line 64
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->ErrorPair_second_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setFirst(I)V
    .registers 4

    .line 52
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->ErrorPair_first_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;I)V

    return-void
.end method

.method public setSecond(Ljava/lang/String;)V
    .registers 4

    .line 60
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->ErrorPair_second_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;Ljava/lang/String;)V

    return-void
.end method
