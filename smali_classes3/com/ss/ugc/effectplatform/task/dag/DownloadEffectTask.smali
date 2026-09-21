.class public final Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;
.super Lcom/ss/ugc/effectplatform/task/dag/DagTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask$Companion;


# instance fields
.field private final businessId:I

.field private final effect:Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;

.field private final effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

.field private final listener:Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->Companion:Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/ss/ugc/effectplatform/EffectConfig;Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;ILcom/ss/ugc/effectplatform/task/pipline/DownloadListener;)V
    .registers 6

    const-string v0, "effectConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "effect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/task/dag/DagTask;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->effect:Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;

    iput p3, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->businessId:I

    iput-object p4, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->listener:Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ss/ugc/effectplatform/EffectConfig;Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;ILcom/ss/ugc/effectplatform/task/pipline/DownloadListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_5

    const/4 p3, 0x0

    :cond_5
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_a

    const/4 p4, 0x0

    .line 23
    :cond_a
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;-><init>(Lcom/ss/ugc/effectplatform/EffectConfig;Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;ILcom/ss/ugc/effectplatform/task/pipline/DownloadListener;)V

    return-void
.end method


# virtual methods
.method public final getBusinessId()I
    .registers 1

    .line 22
    iget p0, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->businessId:I

    return p0
.end method

.method public final getEffectConfig()Lcom/ss/ugc/effectplatform/EffectConfig;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .registers 1

    .line 26
    const-string p0, ""

    return-object p0
.end method

.method public final getListener()Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->listener:Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;

    return-object p0
.end method

.method public run()V
    .registers 21

    move-object/from16 v0, p0

    .line 29
    iget-object v1, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->effect:Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;

    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 30
    sget-object v1, Lcom/ss/ugc/effectplatform/util/EffectUtils;->INSTANCE:Lcom/ss/ugc/effectplatform/util/EffectUtils;

    iget-object v2, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {v2}, Lcom/ss/ugc/effectplatform/EffectConfig;->getEffectDir()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->effect:Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;

    invoke-virtual {v1, v2, v3}, Lcom/ss/ugc/effectplatform/util/EffectUtils;->setEffectPath(Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;)V

    .line 34
    :cond_1b
    sget-object v1, Lcom/ss/ugc/effectplatform/UseComplexDiff;->INSTANCE:Lcom/ss/ugc/effectplatform/UseComplexDiff;

    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/UseComplexDiff;->getEnableComplexDiff()Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 33
    sget-object v1, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    iget-object v2, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->effect:Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;

    invoke-virtual {v2}, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbytekn/foundation/io/file/FileManager;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 34
    iget-object v1, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->effect:Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;

    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/ugc/effectplatform/util/EffectUtilKt;->checkEffectChildrenFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 35
    sget-object v1, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetchEffect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->effect:Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;

    invoke-virtual {v3}, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->effect:Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;

    invoke-virtual {v3}, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " already exists!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dag/DownloadEffectTask"

    invoke-virtual {v1, v3, v2}, Lbytekn/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->notifyBehindTasksSuccess()V

    .line 37
    new-instance v1, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask$run$1;

    invoke-direct {v1, v0}, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask$run$1;-><init>(Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;)V

    invoke-virtual {v0, v1}, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void

    .line 42
    :cond_7a
    sget-object v1, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;->Companion:Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository$Companion;

    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository$Companion;->getInstance()Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;->getConfig$effectplatform_release()Lcom/ss/ugc/effectplatform/EffectConfig;

    move-result-object v1

    .line 43
    iget-object v2, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {v2}, Lcom/ss/ugc/effectplatform/EffectConfig;->getEffectNetWorker()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object v2

    invoke-virtual {v2}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;

    if-eqz v4, :cond_21f

    .line 44
    iget-object v2, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->effect:Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;

    invoke-virtual {v2}, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->getUrl_list()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_21f

    iget-object v2, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {v2}, Lcom/ss/ugc/effectplatform/EffectConfig;->getTaskManager()Lcom/ss/ugc/effectplatform/task/TaskManager;

    move-result-object v2

    if-nez v2, :cond_a5

    goto/16 :goto_21f

    .line 53
    :cond_a5
    iget-object v2, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->effect:Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;

    iget-object v3, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {v3}, Lcom/ss/ugc/effectplatform/EffectConfig;->getJsonConverter()Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/ugc/effectplatform/util/AlgorithmUtils;->getResourceNameArrayOfEffect(Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;)[Ljava/lang/String;

    move-result-object v2

    .line 54
    const-string v3, "null cannot be cast to non-null type com.ss.ugc.effectplatform.cache.DiskLruCacheImpl"

    const/4 v5, 0x0

    const/16 v16, 0x1

    if-eqz v2, :cond_1ad

    array-length v6, v2

    if-nez v6, :cond_bd

    goto/16 :goto_1ad

    .line 65
    :cond_bd
    iget-object v6, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->effect:Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;

    invoke-virtual {v6}, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->getUrl_list()Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_c8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 66
    :cond_c8
    iget-object v7, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {v7}, Lcom/ss/ugc/effectplatform/EffectConfig;->getEffectDir()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->effect:Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;

    invoke-virtual {v8}, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->getFilePath()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->effect:Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;

    invoke-virtual {v9}, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->getNeed_unzip()Ljava/lang/Boolean;

    move-result-object v9

    if-eqz v9, :cond_e1

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    goto :goto_e3

    :cond_e1
    move/from16 v9, v16

    .line 67
    :goto_e3
    iget-object v10, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {v10}, Lcom/ss/ugc/effectplatform/EffectConfig;->getCache()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object v10

    invoke-virtual {v10}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_1a7

    check-cast v10, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;

    iget-object v3, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->effect:Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;

    invoke-virtual {v3}, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->getUri()Ljava/lang/String;

    move-result-object v3

    .line 68
    iget-object v11, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->listener:Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;

    if-eqz v11, :cond_102

    new-instance v5, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask$run$downloadEffectTask$1$1;

    iget-object v11, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->listener:Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;

    invoke-direct {v5, v11}, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask$run$downloadEffectTask$1$1;-><init>(Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;)V

    :cond_102
    move-object v12, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move-object v9, v10

    move-object v10, v3

    .line 65
    new-instance v3, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x280

    const/4 v15, 0x0

    invoke-direct/range {v3 .. v15}, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;-><init>(Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 71
    new-instance v14, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask$run$fetchModelListInfoTask$1;

    invoke-direct {v14, v0}, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask$run$fetchModelListInfoTask$1;-><init>(Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;)V

    .line 86
    new-instance v5, Lcom/ss/ugc/effectplatform/task/dag/DagTask$Builder;

    iget-object v6, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {v6}, Lcom/ss/ugc/effectplatform/EffectConfig;->getTaskManager()Lcom/ss/ugc/effectplatform/task/TaskManager;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/ss/ugc/effectplatform/task/dag/DagTask$Builder;-><init>(Lcom/ss/ugc/effectplatform/task/TaskManager;)V

    .line 87
    invoke-virtual {v5, v3}, Lcom/ss/ugc/effectplatform/task/dag/DagTask$Builder;->add(Lcom/ss/ugc/effectplatform/task/dag/DagTask;)Lcom/ss/ugc/effectplatform/task/dag/DagTask$Builder;

    move-result-object v3

    .line 88
    invoke-virtual {v3, v14}, Lcom/ss/ugc/effectplatform/task/dag/DagTask$Builder;->add(Lcom/ss/ugc/effectplatform/task/dag/DagTask;)Lcom/ss/ugc/effectplatform/task/dag/DagTask$Builder;

    move-result-object v15

    .line 90
    array-length v3, v2

    const/16 v17, 0x0

    move/from16 v5, v17

    :goto_130
    if-ge v5, v3, :cond_18d

    aget-object v7, v2, v5

    move v6, v3

    .line 92
    new-instance v3, Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask;

    move v8, v5

    .line 93
    new-instance v5, Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;

    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getAppContext()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getExclusionPattern()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    sget-object v9, Lcom/ss/ugc/effectplatform/cache/EffectCacheManager;->INSTANCE:Lcom/ss/ugc/effectplatform/cache/EffectCacheManager;

    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getAlgorithmDir()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/ss/ugc/effectplatform/cache/EffectCacheManager;->getCache(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/cache/ICache;

    move-result-object v9

    if-eqz v9, :cond_185

    check-cast v9, Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;

    move v10, v8

    .line 96
    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getAlgorithmDir()Ljava/lang/String;

    move-result-object v8

    .line 97
    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getModelType()Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;

    move-result-object v11

    sget-object v12, Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;->ZIP:Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;

    if-ne v11, v12, :cond_166

    move v11, v6

    move-object v6, v9

    move/from16 v9, v16

    :goto_164
    move v12, v10

    goto :goto_16b

    :cond_166
    move v11, v6

    move-object v6, v9

    move/from16 v9, v17

    goto :goto_164

    .line 98
    :goto_16b
    iget v10, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->businessId:I

    move v13, v12

    const/16 v12, 0x80

    move/from16 v18, v13

    const/4 v13, 0x0

    move/from16 v19, v11

    const/4 v11, 0x0

    .line 92
    invoke-direct/range {v3 .. v13}, Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask;-><init>(Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 101
    invoke-virtual {v15, v3}, Lcom/ss/ugc/effectplatform/task/dag/DagTask$Builder;->add(Lcom/ss/ugc/effectplatform/task/dag/DagTask;)Lcom/ss/ugc/effectplatform/task/dag/DagTask$Builder;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/ss/ugc/effectplatform/task/dag/DagTask$Builder;->dependOn(Lcom/ss/ugc/effectplatform/task/dag/DagTask;)Lcom/ss/ugc/effectplatform/task/dag/DagTask$Builder;

    add-int/lit8 v5, v18, 0x1

    move/from16 v3, v19

    goto :goto_130

    .line 94
    :cond_185
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.ss.ugc.effectplatform.cache.AlgorithmModelCache"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_18d
    new-instance v1, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask$run$6;

    invoke-direct {v1, v0}, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask$run$6;-><init>(Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;)V

    invoke-virtual {v15, v1}, Lcom/ss/ugc/effectplatform/task/dag/DagTask$Builder;->onSuccess(Lkotlin/jvm/functions/Function0;)Lcom/ss/ugc/effectplatform/task/dag/DagTask$Builder;

    move-result-object v1

    .line 111
    new-instance v2, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask$run$7;

    invoke-direct {v2, v0}, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask$run$7;-><init>(Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;)V

    invoke-virtual {v1, v2}, Lcom/ss/ugc/effectplatform/task/dag/DagTask$Builder;->onFail(Lkotlin/jvm/functions/Function1;)Lcom/ss/ugc/effectplatform/task/dag/DagTask$Builder;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/task/dag/DagTask$Builder;->build()Lcom/ss/ugc/effectplatform/task/dag/DagTask;

    move-result-object v0

    .line 118
    invoke-interface {v0}, Lbytekn/foundation/task/ITask;->run()V

    return-void

    .line 67
    :cond_1a7
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1ad
    :goto_1ad
    iget-object v1, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->effect:Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;

    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->getUrl_list()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1b8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 56
    :cond_1b8
    iget-object v2, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {v2}, Lcom/ss/ugc/effectplatform/EffectConfig;->getEffectDir()Ljava/lang/String;

    move-result-object v6

    iget-object v2, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->effect:Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;

    invoke-virtual {v2}, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->getFilePath()Ljava/lang/String;

    move-result-object v7

    iget-object v2, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->effect:Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;

    invoke-virtual {v2}, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->getNeed_unzip()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_1d0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    :cond_1d0
    move/from16 v8, v16

    .line 57
    iget-object v2, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {v2}, Lcom/ss/ugc/effectplatform/EffectConfig;->getCache()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object v2

    invoke-virtual {v2}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_219

    move-object v9, v2

    check-cast v9, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;

    iget-object v2, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->effect:Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;

    invoke-virtual {v2}, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->getUri()Ljava/lang/String;

    move-result-object v10

    .line 58
    iget-object v2, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->listener:Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;

    if-eqz v2, :cond_1f4

    new-instance v2, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask$run$3$1;

    iget-object v3, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->listener:Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;

    invoke-direct {v2, v3}, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask$run$3$1;-><init>(Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;)V

    move-object v11, v2

    goto :goto_1f5

    :cond_1f4
    move-object v11, v5

    :goto_1f5
    iget-object v2, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->listener:Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;

    if-eqz v2, :cond_202

    new-instance v2, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask$run$4$1;

    iget-object v3, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->listener:Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;

    invoke-direct {v2, v3}, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask$run$4$1;-><init>(Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;)V

    move-object v12, v2

    goto :goto_203

    :cond_202
    move-object v12, v5

    .line 59
    :goto_203
    iget-object v2, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->listener:Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;

    if-eqz v2, :cond_20e

    new-instance v5, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask$run$5$1;

    iget-object v0, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;->listener:Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;

    invoke-direct {v5, v0}, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask$run$5$1;-><init>(Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;)V

    :cond_20e
    move-object v13, v5

    .line 55
    new-instance v3, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;

    move-object v5, v1

    invoke-direct/range {v3 .. v13}, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;-><init>(Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    .line 60
    invoke-interface {v3}, Lbytekn/foundation/task/ITask;->run()V

    return-void

    .line 57
    :cond_219
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_21f
    :goto_21f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "missing necessary parameters"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0, v1}, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->notifyBehindTasksFailed(Ljava/lang/Exception;)V

    .line 47
    new-instance v2, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask$run$2;

    invoke-direct {v2, v0, v1}, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask$run$2;-><init>(Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;Ljava/lang/IllegalArgumentException;)V

    invoke-virtual {v0, v2}, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
