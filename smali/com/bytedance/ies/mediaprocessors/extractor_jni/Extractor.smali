.class public Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>(JZ)V
    .registers 4

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean p3, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;->swigCMemOwn:Z

    .line 19
    iput-wide p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 19

    .line 46
    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;)J

    move-result-wide v3

    invoke-static {p3}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;)J

    move-result-wide v6

    move-object v2, p1

    move-object v5, p2

    move-object v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    invoke-static/range {v0 .. v11}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->new_Extractor(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Config;JLcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;JLcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide p1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;-><init>(JZ)V

    return-void
.end method

.method public static getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 23
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;->swigCPtr:J

    return-wide v0
.end method

.method public static makeInstance(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;
    .registers 18

    .line 95
    invoke-static {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    invoke-static/range {v0 .. v11}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Extractor_makeInstance(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Config;JLcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;JLcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmp-long p2, p0, p2

    if-nez p2, :cond_20

    const/4 p0, 0x0

    return-object p0

    .line 96
    :cond_20
    new-instance p2, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p1, p3}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;-><init>(JZ)V

    return-object p2
.end method


# virtual methods
.method public clearAll()V
    .registers 3

    .line 78
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Extractor_clearAll(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;)V

    return-void
.end method

.method public clearAssets(Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)V
    .registers 8

    .line 90
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Extractor_clearAssets(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)V

    return-void
.end method

.method public clearTypes(Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;)V
    .registers 8

    .line 86
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Extractor_clearTypes__SWIG_1(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;)V

    return-void
.end method

.method public clearTypes(Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)V
    .registers 8

    .line 82
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Extractor_clearTypes__SWIG_0(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)V

    return-void
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 36
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 37
    iget-boolean v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 38
    iput-boolean v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;->swigCMemOwn:Z

    .line 39
    invoke-static {v0, v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->delete_Extractor(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 41
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;->swigCPtr:J
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_14

    .line 43
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

.method public extractFeatures(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;Z)Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;
    .registers 11

    .line 58
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;

    iget-wide v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;)J

    move-result-wide v4

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Extractor_extractFeatures__SWIG_1(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;JLcom/bytedance/ies/mediaprocessors/extractor_jni/Input;Z)J

    move-result-wide p0

    const/4 p2, 0x1

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;-><init>(JZ)V

    return-object v0
.end method

.method public extractFeatures(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;ZLcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;
    .registers 15

    .line 54
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;

    iget-wide v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;)J

    move-result-wide v4

    invoke-static {p3}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;)J

    move-result-wide v8

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    move-object v10, p3

    invoke-static/range {v1 .. v10}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Extractor_extractFeatures__SWIG_0(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;JLcom/bytedance/ies/mediaprocessors/extractor_jni/Input;ZJLcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;)J

    move-result-wide p0

    const/4 p2, 0x1

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;-><init>(JZ)V

    return-object v0
.end method

.method public extractFeatures(Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;Z)Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecMultiResult;
    .registers 11

    .line 66
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecMultiResult;

    iget-wide v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;)J

    move-result-wide v4

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Extractor_extractFeatures__SWIG_3(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;Z)J

    move-result-wide p0

    const/4 p2, 0x1

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecMultiResult;-><init>(JZ)V

    return-object v0
.end method

.method public extractFeatures(Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;ZLcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecMultiResult;
    .registers 15

    .line 62
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecMultiResult;

    iget-wide v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;)J

    move-result-wide v4

    invoke-static {p3}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;)J

    move-result-wide v8

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    move-object v10, p3

    invoke-static/range {v1 .. v10}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Extractor_extractFeatures__SWIG_2(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;JLcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;ZJLcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;)J

    move-result-wide p0

    const/4 p2, 0x1

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecMultiResult;-><init>(JZ)V

    return-object v0
.end method

.method protected finalize()V
    .registers 1

    .line 32
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;->delete()V

    return-void
.end method

.method public init()I
    .registers 3

    .line 50
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Extractor_init(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;)I

    move-result p0

    return p0
.end method

.method public queryFeatures(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;
    .registers 9

    .line 74
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;

    iget-wide v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;)J

    move-result-wide v4

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Extractor_queryFeatures__SWIG_1(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;JLcom/bytedance/ies/mediaprocessors/extractor_jni/Input;)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;-><init>(JZ)V

    return-object v0
.end method

.method public queryFeatures(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;Z)Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;
    .registers 11

    .line 70
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;

    iget-wide v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;)J

    move-result-wide v4

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Extractor_queryFeatures__SWIG_0(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;JLcom/bytedance/ies/mediaprocessors/extractor_jni/Input;Z)J

    move-result-wide p0

    const/4 p2, 0x1

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;-><init>(JZ)V

    return-object v0
.end method

.method public swigSetCMemOwn(Z)V
    .registers 2

    .line 27
    iput-boolean p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;->swigCMemOwn:Z

    return-void
.end method
