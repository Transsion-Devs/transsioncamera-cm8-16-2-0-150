.class public final Lcom/volcengine/ck/highlight/utils/MultiResultUtilsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiResultUtils"


# direct methods
.method public static final getC3(Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;",
            ")",
            "Ljava/util/List<",
            "Lcom/volcengine/ck/highlight/data/HLCategory;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractor;->getAlgorithmTypeC300()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;->getResultItem(Ljava/lang/String;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_17

    :catch_15
    move-object p0, v1

    goto :goto_44

    .line 47
    :cond_17
    :try_start_17
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;->getSize()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v2, v2, [B

    .line 48
    invoke-virtual {p0, v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;->memcpyStructResult([B)V

    .line 49
    const-class p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_NHClassificationBuffer;

    .line 50
    const-string v3, "parseFrom"

    const-class v4, [B

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 51
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3c

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_NHClassificationBuffer;

    goto :goto_44

    :cond_3c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type com.bytedance.ies.mediaprocessors.extractor.protobuf.ExtractorProtobuf.C_NHClassificationBuffer"

    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_44} :catch_15

    :goto_44
    if-nez p0, :cond_47

    goto :goto_99

    .line 44
    :cond_47
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_NHClassificationBuffer;->getMClassificationInfosList()Ljava/util/List;

    move-result-object p0

    const-string v1, "it.mClassificationInfosList"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    .line 125
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_56
    :goto_56
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_97

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_NHClassificationInfo;

    .line 45
    invoke-virtual {v1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_NHClassificationInfo;->getNumClasses()I

    move-result v2

    if-lez v2, :cond_56

    const/4 v3, 0x0

    :goto_69
    add-int/lit8 v4, v3, 0x1

    .line 47
    invoke-virtual {v1, v3}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_NHClassificationInfo;->getExceedThresh(I)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_73

    goto :goto_92

    .line 51
    :cond_73
    invoke-virtual {v1, v3}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_NHClassificationInfo;->getId(I)I

    move-result v5

    .line 52
    invoke-static {v5}, Lcom/volcengine/ck/highlight/data/C3DataKt;->getC3TagWithIndex(I)Lcom/volcengine/ck/highlight/data/C3Tag;

    move-result-object v5

    if-nez v5, :cond_7e

    goto :goto_92

    .line 55
    :cond_7e
    new-instance v7, Lcom/volcengine/ck/highlight/data/HLCategory;

    .line 56
    invoke-virtual {v5}, Lcom/volcengine/ck/highlight/data/C3Tag;->getId()I

    move-result v8

    .line 57
    invoke-virtual {v5}, Lcom/volcengine/ck/highlight/data/C3Tag;->getName()Ljava/lang/String;

    move-result-object v5

    .line 59
    invoke-virtual {v1, v3}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_NHClassificationInfo;->getConfidence(I)F

    move-result v3

    .line 55
    invoke-direct {v7, v8, v5, v6, v3}, Lcom/volcengine/ck/highlight/data/HLCategory;-><init>(ILjava/lang/String;ZF)V

    .line 54
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_92
    if-lt v4, v2, :cond_95

    goto :goto_56

    :cond_95
    move v3, v4

    goto :goto_69

    .line 43
    :cond_97
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_99
    if-nez v1, :cond_a2

    .line 65
    const-string p0, "MultiResultUtils"

    const-string v1, "C3 C_NHClassificationBuffer getProtobufResult failure"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a2
    return-object v0
.end method

.method public static final getRelation(Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;",
            ")",
            "Ljava/util/List<",
            "Lcom/volcengine/ck/highlight/data/HLCategory;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractor;->getAlgorithmTypeRelation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;->getResultItem(Ljava/lang/String;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_16

    goto :goto_44

    .line 47
    :cond_16
    :try_start_16
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;->getSize()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v2, v2, [B

    .line 48
    invoke-virtual {p0, v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;->memcpyStructResult([B)V

    .line 49
    const-class p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_NHClassificationBuffer;

    .line 50
    const-string v3, "parseFrom"

    const-class v4, [B

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 51
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3c

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_NHClassificationBuffer;

    move-object v1, p0

    goto :goto_44

    :cond_3c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type com.bytedance.ies.mediaprocessors.extractor.protobuf.ExtractorProtobuf.C_NHClassificationBuffer"

    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_44} :catch_44

    :catch_44
    :goto_44
    if-nez v1, :cond_47

    goto :goto_97

    .line 74
    :cond_47
    invoke-virtual {v1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_NHClassificationBuffer;->getMClassificationInfosList()Ljava/util/List;

    move-result-object p0

    const-string v1, "it.mClassificationInfosList"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    .line 140
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_56
    :goto_56
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_97

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_NHClassificationInfo;

    .line 75
    invoke-virtual {v1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_NHClassificationInfo;->getNumClasses()I

    move-result v2

    if-lez v2, :cond_56

    const/4 v3, 0x0

    :goto_69
    add-int/lit8 v4, v3, 0x1

    .line 77
    invoke-virtual {v1, v3}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_NHClassificationInfo;->getExceedThresh(I)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_73

    goto :goto_92

    .line 81
    :cond_73
    invoke-virtual {v1, v3}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_NHClassificationInfo;->getId(I)I

    move-result v5

    .line 82
    invoke-static {v5}, Lcom/volcengine/ck/highlight/data/C3DataKt;->relationTagIndexToTag(I)Lcom/volcengine/ck/highlight/data/RelationTag;

    move-result-object v5

    if-nez v5, :cond_7e

    goto :goto_92

    .line 85
    :cond_7e
    new-instance v7, Lcom/volcengine/ck/highlight/data/HLCategory;

    .line 86
    invoke-virtual {v5}, Lcom/volcengine/ck/highlight/data/C3Tag;->getId()I

    move-result v8

    .line 87
    invoke-virtual {v5}, Lcom/volcengine/ck/highlight/data/C3Tag;->getName()Ljava/lang/String;

    move-result-object v5

    .line 89
    invoke-virtual {v1, v3}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_NHClassificationInfo;->getConfidence(I)F

    move-result v3

    .line 85
    invoke-direct {v7, v8, v5, v6, v3}, Lcom/volcengine/ck/highlight/data/HLCategory;-><init>(ILjava/lang/String;ZF)V

    .line 84
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_92
    if-lt v4, v2, :cond_95

    goto :goto_56

    :cond_95
    move v3, v4

    goto :goto_69

    :cond_97
    :goto_97
    return-object v0
.end method

.method public static final getScore(Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;)Lcom/volcengine/ck/highlight/data/HLScore;
    .registers 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;->AFTER_EFFECT:Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;

    invoke-virtual {p0, v0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;->getResultItem(Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_10

    :catch_e
    move-object p0, v0

    goto :goto_3d

    .line 47
    :cond_10
    :try_start_10
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;->getSize()J

    move-result-wide v1

    long-to-int v1, v1

    new-array v1, v1, [B

    .line 48
    invoke-virtual {p0, v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult$ResultItem;->memcpyStructResult([B)V

    .line 49
    const-class p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_AfterEffectBuffer;

    .line 50
    const-string v2, "parseFrom"

    const-class v3, [B

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 51
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_35

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_AfterEffectBuffer;

    goto :goto_3d

    :cond_35
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type com.bytedance.ies.mediaprocessors.extractor.protobuf.ExtractorProtobuf.C_AfterEffectBuffer"

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_3d} :catch_e

    :goto_3d
    if-nez p0, :cond_41

    move-object p0, v0

    goto :goto_7c

    .line 25
    :cond_41
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_AfterEffectBuffer;->getMScoresList()Ljava/util/List;

    move-result-object p0

    const-string v1, "it.mScoresList"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    .line 110
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_50
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_AEScoreInfo;

    .line 26
    new-instance v1, Lcom/volcengine/ck/highlight/data/HLScore;

    .line 27
    invoke-virtual {v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_AEScoreInfo;->getScore()F

    move-result v2

    .line 28
    invoke-virtual {v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_AEScoreInfo;->getFaceScore()F

    move-result v3

    .line 29
    invoke-virtual {v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_AEScoreInfo;->getQualityScore()F

    move-result v4

    .line 30
    invoke-virtual {v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_AEScoreInfo;->getSharepnessScore()F

    move-result v5

    .line 31
    invoke-virtual {v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_AEScoreInfo;->getMeaninglessScore()F

    move-result v6

    .line 26
    invoke-direct/range {v1 .. v6}, Lcom/volcengine/ck/highlight/data/HLScore;-><init>(FFFFF)V

    move-object v0, v1

    goto :goto_50

    .line 24
    :cond_77
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v7, v0

    move-object v0, p0

    move-object p0, v7

    :goto_7c
    if-nez v0, :cond_85

    .line 35
    const-string v0, "MultiResultUtils"

    const-string v1, "C_AfterEffectBuffer getProtobufResult failure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_85
    return-object p0
.end method
