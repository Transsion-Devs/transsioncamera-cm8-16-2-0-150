.class public Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractor;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlgorithmTypeC300()Ljava/lang/String;
    .registers 1

    .line 21
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->AlgorithmTypeC300_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAlgorithmTypeClip128()Ljava/lang/String;
    .registers 1

    .line 17
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->AlgorithmTypeClip128_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAlgorithmTypeRelation()Ljava/lang/String;
    .registers 1

    .line 25
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->AlgorithmTypeRelation_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join(Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)Ljava/lang/String;
    .registers 3

    .line 45
    invoke-static {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->join__SWIG_1(JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join(Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 41
    invoke-static {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->join__SWIG_0(JLcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static onResult([B)V
    .registers 1

    .line 13
    invoke-static {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->onResult([B)V

    return-void
.end method

.method public static split(Ljava/lang/String;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;
    .registers 4

    .line 37
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;

    invoke-static {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->split__SWIG_1(Ljava/lang/String;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;-><init>(JZ)V

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;
    .registers 4

    .line 33
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;

    invoke-static {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->split__SWIG_0(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;-><init>(JZ)V

    return-object v0
.end method

.method public static strContains(Ljava/lang/String;Ljava/lang/String;)I
    .registers 2

    .line 29
    invoke-static {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->strContains(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
