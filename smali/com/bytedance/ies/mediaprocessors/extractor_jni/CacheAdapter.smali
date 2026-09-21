.class public Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 59
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->new_CacheAdapter()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;-><init>(JZ)V

    .line 60
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;->swigCPtr:J

    invoke-static {p0, v0, v1, v2, v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->CacheAdapter_director_connect(Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;JZZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public clear(Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)V
    .registers 8

    .line 81
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->CacheAdapter_clear(JLcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)V

    return-void
.end method

.method public clearAll()V
    .registers 3

    .line 93
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->CacheAdapter_clearAll(JLcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;)V

    return-void
.end method

.method public clearTypes(Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;)V
    .registers 8

    .line 85
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->CacheAdapter_clearTypes__SWIG_0(JLcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;)V

    return-void
.end method

.method public clearTypes(Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)V
    .registers 8

    .line 89
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->CacheAdapter_clearTypes__SWIG_1(JLcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)V

    return-void
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 34
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 35
    iget-boolean v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 36
    iput-boolean v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;->swigCMemOwn:Z

    .line 37
    invoke-static {v0, v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->delete_CacheAdapter(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 39
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;->delete()V

    return-void
.end method

.method public query(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;
    .registers 9

    .line 64
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;

    iget-wide v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;)J

    move-result-wide v4

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->CacheAdapter_query__SWIG_0(JLcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;JLcom/bytedance/ies/mediaprocessors/extractor_jni/Input;)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;-><init>(JZ)V

    return-object v0
.end method

.method public query(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;
    .registers 5

    .line 68
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->CacheAdapter_query__SWIG_1(JLcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p2, p0, v0

    if-nez p2, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 69
    :cond_e
    new-instance p2, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;

    const/4 v0, 0x1

    invoke-direct {p2, p0, p1, v0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;-><init>(JZ)V

    return-object p2
.end method

.method public save(Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;)V
    .registers 8

    .line 73
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->CacheAdapter_save__SWIG_0(JLcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;JLcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;)V

    return-void
.end method

.method public save(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;)V
    .registers 8

    .line 77
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->CacheAdapter_save__SWIG_1(JLcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;JLcom/bytedance/ies/mediaprocessors/extractor_jni/Result;)V

    return-void
.end method

.method protected swigDirectorDisconnect()V
    .registers 2

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, v0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;->swigSetCMemOwn(Z)V

    .line 45
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;->delete()V

    return-void
.end method

.method public swigReleaseOwnership()V
    .registers 4

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, v0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;->swigSetCMemOwn(Z)V

    .line 50
    iget-wide v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;->swigCPtr:J

    invoke-static {p0, v1, v2, v0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->CacheAdapter_change_ownership(Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;JZ)V

    return-void
.end method

.method public swigSetCMemOwn(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;->swigCMemOwn:Z

    return-void
.end method

.method public swigTakeOwnership()V
    .registers 4

    const/4 v0, 0x1

    .line 54
    invoke-virtual {p0, v0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;->swigSetCMemOwn(Z)V

    .line 55
    iget-wide v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;->swigCPtr:J

    invoke-static {p0, v1, v2, v0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->CacheAdapter_change_ownership(Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;JZ)V

    return-void
.end method
