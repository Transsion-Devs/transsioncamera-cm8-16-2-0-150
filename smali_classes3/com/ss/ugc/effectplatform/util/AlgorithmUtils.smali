.class public final Lcom/ss/ugc/effectplatform/util/AlgorithmUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/ss/ugc/effectplatform/util/AlgorithmUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Lcom/ss/ugc/effectplatform/util/AlgorithmUtils;

    invoke-direct {v0}, Lcom/ss/ugc/effectplatform/util/AlgorithmUtils;-><init>()V

    sput-object v0, Lcom/ss/ugc/effectplatform/util/AlgorithmUtils;->INSTANCE:Lcom/ss/ugc/effectplatform/util/AlgorithmUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getLatestModelInfo(Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/LoadedModelList;)Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;
    .registers 5

    const-string v0, "normalizedName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    .line 107
    :try_start_8
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/LoadedModelList;->getRequirementModelInfoStateList()Ljava/util/List;

    move-result-object p1

    goto :goto_10

    :catch_d
    move-exception p0

    goto :goto_33

    :cond_f
    move-object p1, v0

    :goto_10
    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_3c

    .line 109
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/ugc/effectplatform/model/LoadedModelList$ModelInfoState;

    .line 110
    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/model/LoadedModelList$ModelInfoState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 111
    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/model/LoadedModelList$ModelInfoState;->getModelInfo()Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    move-result-object p0
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_32} :catch_d

    return-object p0

    .line 116
    :goto_33
    sget-object p1, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    const-string v1, "effect_platform"

    const-string v2, "exception happens in getLatestModelInfo"

    invoke-virtual {p1, v1, v2, p0}, Lbytekn/foundation/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3c
    return-object v0
.end method

.method private final getModelNamesOfEffect(Ljava/lang/String;Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;)Ljava/util/Map;
    .registers 5

    .line 79
    sget-object p0, Lcom/ss/ugc/effectplatform/util/TextUtils;->INSTANCE:Lcom/ss/ugc/effectplatform/util/TextUtils;

    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    return-object v0

    :cond_a
    if-eqz p2, :cond_2b

    if-nez p1, :cond_14

    .line 82
    :try_start_e
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    goto :goto_14

    :catch_12
    move-exception p0

    goto :goto_22

    .line 9
    :cond_14
    :goto_14
    invoke-virtual {p2}, Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;->getIJsonConverter()Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IAndroidJsonConverter;

    move-result-object p0

    const-class p2, Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IAndroidJsonConverter;->convertJsonToObj(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_20} :catch_12

    move-object v0, p0

    goto :goto_2b

    .line 85
    :goto_22
    sget-object p1, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    const-string p2, "effect_platform"

    const-string v1, "EffectUtils#getModelNamesOfEffect"

    invoke-virtual {p1, p2, v1, p0}, Lbytekn/foundation/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2b
    :goto_2b
    return-object v0
.end method

.method private final getResourceNameArray(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;)[Ljava/lang/String;
    .registers 14

    const/4 v0, 0x0

    if-eqz p3, :cond_a

    .line 35
    check-cast p3, Ljava/util/Collection;

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p3

    goto :goto_b

    :cond_a
    move-object p3, v0

    .line 36
    :goto_b
    sget-object v1, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getResourceNameArrayOfEffect::requirements, effect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", returned requirements: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "effect_platform"

    invoke-virtual {v1, v4, v2}, Lbytekn/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0, p4, p5}, Lcom/ss/ugc/effectplatform/util/AlgorithmUtils;->getModelNamesOfEffect(Ljava/lang/String;Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;)Ljava/util/Map;

    move-result-object p5

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EffectUtils#getModelNamesOfEffect->effectId = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", modelNames = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, v4, p4}, Lbytekn/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p4, 0x0

    const/4 v1, 0x1

    if-eqz p5, :cond_98

    .line 44
    invoke-interface {p5}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5f

    move-object v2, p5

    goto :goto_60

    :cond_5f
    move-object v2, v0

    :goto_60
    if-eqz v2, :cond_98

    .line 46
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_83

    .line 48
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6d
    :goto_6d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_83

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 49
    invoke-interface {p5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 50
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6d

    .line 55
    :cond_83
    sget-object v5, Lbytekn/foundation/utils/CollectionUtil;->INSTANCE:Lbytekn/foundation/utils/CollectionUtil;

    invoke-virtual {v5, v2}, Lbytekn/foundation/utils/CollectionUtil;->isListEmpty(Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_98

    .line 56
    invoke-static {v2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_93

    move v1, p4

    goto :goto_98

    :cond_93
    if-eqz p3, :cond_98

    .line 60
    invoke-interface {p3, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_98
    :goto_98
    if-eqz v1, :cond_d4

    .line 65
    check-cast p3, Ljava/util/Collection;

    if-eqz p3, :cond_d4

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a5

    goto :goto_d4

    .line 38
    :cond_a5
    new-array v1, p4, [Ljava/lang/String;

    invoke-interface {p3, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    if-eqz p3, :cond_ce

    check-cast p3, [Ljava/lang/String;

    .line 66
    invoke-static {p3}, Lcom/ss/ugc/effectplatform/algorithm/RequirementResourceMapper;->peekResourcesNeededByRequirements([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_d5

    .line 69
    invoke-static {p3}, Lkotlin/collections/ArraysKt;->distinct([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/util/Collection;

    .line 38
    new-array p4, p4, [Ljava/lang/String;

    invoke-interface {p3, p4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_c8

    check-cast p3, [Ljava/lang/String;

    goto :goto_d5

    :cond_c8
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 38
    :cond_ce
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d4
    :goto_d4
    move-object p3, v0

    .line 73
    :cond_d5
    :goto_d5
    invoke-direct {p0, p3, p5}, Lcom/ss/ugc/effectplatform/util/AlgorithmUtils;->mergeRequirementsAndModelNames([Ljava/lang/String;Ljava/util/Map;)[Ljava/lang/String;

    move-result-object p0

    .line 74
    sget-object p3, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "fetchModels::effectId="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", returned toDownloadRequirements: "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_f9

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_f9
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v4, p1}, Lbytekn/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getResourceNameArrayOfEffect(Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;)[Ljava/lang/String;
    .registers 9

    const-string v0, "effect"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v1, Lcom/ss/ugc/effectplatform/util/AlgorithmUtils;->INSTANCE:Lcom/ss/ugc/effectplatform/util/AlgorithmUtils;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->getRequirements()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->getModel_names()Ljava/lang/String;

    move-result-object v5

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/ss/ugc/effectplatform/util/AlgorithmUtils;->getResourceNameArray(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final isModelNeedUpdate(Lcom/ss/ugc/effectplatform/model/LocalModelInfo;Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;)Z
    .registers 9

    const-string v0, "latestModelInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p0, :cond_9

    return v0

    .line 126
    :cond_9
    sget-object v1, Lcom/ss/ugc/effectplatform/util/TextUtils;->INSTANCE:Lcom/ss/ugc/effectplatform/util/TextUtils;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ss/ugc/effectplatform/util/TextUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const-string v3, ", lastest model: "

    const-string v4, "model "

    const-string v5, "effect_platform"

    if-nez v2, :cond_4e

    .line 127
    sget-object v1, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " version not equals, local model version:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->getVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v5, p0}, Lbytekn/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 130
    :cond_4e
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->getSize()I

    move-result v2

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getType()I

    move-result v6

    if-eq v2, v6, :cond_87

    .line 131
    sget-object v1, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " size not equals, local model size:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->getSize()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getType()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v5, p0}, Lbytekn/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 134
    :cond_87
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->getMD5()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfoKt;->getMD5(Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Lcom/ss/ugc/effectplatform/util/TextUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c4

    .line 135
    sget-object v1, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " md5 not equals, local model size:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->getMD5()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfoKt;->getMD5(Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v5, p0}, Lbytekn/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_c4
    const/4 p0, 0x0

    return p0
.end method

.method private final mergeRequirementsAndModelNames([Ljava/lang/String;Ljava/util/Map;)[Ljava/lang/String;
    .registers 4

    .line 149
    sget-object p0, Lbytekn/foundation/utils/CollectionUtil;->INSTANCE:Lbytekn/foundation/utils/CollectionUtil;

    invoke-virtual {p0, p2}, Lbytekn/foundation/utils/CollectionUtil;->isMapEmpty(Ljava/util/Map;)Z

    move-result p0

    if-eqz p0, :cond_9

    return-object p1

    :cond_9
    if-eqz p2, :cond_57

    .line 154
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_18
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 156
    check-cast v0, Ljava/util/Collection;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_18

    .line 159
    :cond_30
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_40

    .line 161
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 163
    :cond_40
    invoke-interface {p2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p0, 0x0

    .line 38
    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {p2, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4f

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_4f
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_57
    const/4 p0, 0x0

    return-object p0
.end method
