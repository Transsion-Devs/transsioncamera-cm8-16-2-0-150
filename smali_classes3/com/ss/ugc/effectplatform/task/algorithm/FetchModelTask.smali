.class public final Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;
.super Lcom/ss/ugc/effectplatform/task/BaseTask;
.source "SourceFile"


# instance fields
.field private final algorithmModelCache:Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;

.field private final buildInAssetsManager:Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;

.field private final businessId:I

.field private final config:Lcom/ss/ugc/effectplatform/EffectConfig;

.field private final modelConfigArbiter:Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;

.field private final modelNames:[Ljava/lang/String;

.field private final taskFlag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ss/ugc/effectplatform/EffectConfig;Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;[Ljava/lang/String;ILjava/lang/String;)V
    .registers 9

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildInAssetsManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "algorithmModelCache"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getCallbackManager$effectplatform_release()Lcom/ss/ugc/effectplatform/listener/CallbackManager;

    move-result-object v0

    invoke-direct {p0, p7, v0}, Lcom/ss/ugc/effectplatform/task/BaseTask;-><init>(Ljava/lang/String;Lcom/ss/ugc/effectplatform/listener/CallbackManager;)V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->config:Lcom/ss/ugc/effectplatform/EffectConfig;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->modelConfigArbiter:Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->buildInAssetsManager:Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;

    iput-object p4, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->algorithmModelCache:Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;

    iput-object p5, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->modelNames:[Ljava/lang/String;

    iput p6, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->businessId:I

    iput-object p7, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->taskFlag:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ss/ugc/effectplatform/EffectConfig;Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;[Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 11

    and-int/lit8 p9, p8, 0x10

    const/4 v0, 0x0

    if-eqz p9, :cond_6

    move-object p5, v0

    :cond_6
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_b

    const/4 p6, 0x0

    :cond_b
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_10

    move-object p7, v0

    .line 48
    :cond_10
    invoke-direct/range {p0 .. p7}, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;-><init>(Lcom/ss/ugc/effectplatform/EffectConfig;Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;[Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private final canFallbackToBuiltInResources([Ljava/lang/String;)Z
    .registers 6

    if-eqz p1, :cond_13

    .line 159
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_13

    aget-object v3, p1, v2

    .line 160
    invoke-direct {p0, v3}, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->isExactBuiltInResource(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    return v1

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_13
    const/4 p0, 0x1

    return p0
.end method

.method private final collectNeedDownloadModelsList(I[Ljava/lang/String;Z)Ljava/util/ArrayList;
    .registers 5

    .line 170
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->modelConfigArbiter:Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1, p3}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->requireDecidedConfig(IZ)Lcom/ss/ugc/effectplatform/model/LoadedModelList;

    move-result-object p3

    if-eqz p3, :cond_f

    .line 172
    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->collectNeedDownloadModelsListInternal(I[Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/LoadedModelList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 171
    :cond_f
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "model list with "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not found!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final downloadAndUpdateModel(Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;)J
    .registers 5

    .line 129
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->config:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/EffectConfig;->getEffectNetWorker()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object v0

    invoke-virtual {v0}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;

    if-eqz v0, :cond_1a

    .line 130
    new-instance v1, Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader;

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->algorithmModelCache:Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;

    invoke-direct {v1, p0, v0}, Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader;-><init>(Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;)V

    .line 131
    invoke-virtual {v1, p1, p2}, Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader;->download(Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;)J

    move-result-wide p0

    return-wide p0

    :cond_1a
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private final downloadAndUpdateModelList(Lcom/ss/ugc/effectplatform/model/Effect;Ljava/util/ArrayList;)V
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    .line 82
    const-string v10, "modelInfo"

    sget-object v0, Lcom/ss/ugc/effectplatform/util/NetStatusChecker;->INSTANCE:Lcom/ss/ugc/effectplatform/util/NetStatusChecker;

    iget-object v2, v1, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->config:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {v2}, Lcom/ss/ugc/effectplatform/EffectConfig;->getAppContext()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ss/ugc/effectplatform/util/NetStatusChecker;->isNetConnected(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_49

    .line 83
    :cond_1b
    sget-object v1, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " failed!, network unavailable!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "effect_platform"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lbytekn/foundation/logger/Logger;->e$default(Lbytekn/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 84
    new-instance v0, Lcom/ss/ugc/effectplatform/exception/NetException;

    const/16 v1, 0x271b

    const-string v2, "network unavailable"

    invoke-direct {v0, v1, v2}, Lcom/ss/ugc/effectplatform/exception/NetException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 86
    :cond_49
    :goto_49
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v0, 0x0

    :goto_4e
    if-ge v0, v11, :cond_ea

    move-object/from16 v12, p2

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v13, v0, 0x1

    move-object v3, v2

    check-cast v3, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    .line 87
    sget-object v0, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download model: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", version: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "effect_platform"

    invoke-virtual {v0, v4, v2}, Lbytekn/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    sget-object v0, Lbytekn/foundation/utils/Stopwatch;->Companion:Lbytekn/foundation/utils/Stopwatch$Companion;

    invoke-virtual {v0}, Lbytekn/foundation/utils/Stopwatch$Companion;->createStarted()Lbytekn/foundation/utils/Stopwatch;

    move-result-object v4

    .line 90
    :try_start_89
    iget-object v0, v1, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->config:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/EffectConfig;->getModelDownloadEventListener()Lcom/ss/ugc/effectplatform/listener/IModelDownloadEventListener;

    .line 91
    sget-object v0, Lbytekn/foundation/concurrent/clock/DefaultClock;->INSTANCE:Lbytekn/foundation/concurrent/clock/DefaultClock;

    invoke-virtual {v0}, Lbytekn/foundation/concurrent/clock/DefaultClock;->getUptimeMillis()J

    move-result-wide v5

    .line 92
    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->config:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/EffectConfig;->getModelType()Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->downloadAndUpdateModel(Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;)J

    move-result-wide v7

    const-wide/16 v14, 0x0

    cmp-long v0, v7, v14

    if-lez v0, :cond_b9

    .line 95
    invoke-direct {v1, v9, v3}, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->parseEffect(Lcom/ss/ugc/effectplatform/model/Effect;Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;)Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object v2

    sget-object v0, Lcom/ss/ugc/effectplatform/common/EffectConstants;->INSTANCE:Lcom/ss/ugc/effectplatform/common/EffectConstants;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/common/EffectConstants;->getKB()I

    move-result v0

    int-to-long v14, v0

    div-long/2addr v7, v14

    invoke-direct/range {v1 .. v8}, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->onDownloadSuccess(Lcom/ss/ugc/effectplatform/model/Effect;Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;Lbytekn/foundation/utils/Stopwatch;JJ)V

    goto :goto_e7

    :catch_b7
    move-exception v0

    goto :goto_da

    .line 98
    :cond_b9
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download model fail, downloadFileSize = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-direct {v1, v9, v3}, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->parseEffect(Lcom/ss/ugc/effectplatform/model/Effect;Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;)Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object v2

    invoke-direct {v1, v2, v3, v0}, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->onDownloadFailure(Lcom/ss/ugc/effectplatform/model/Effect;Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;Ljava/lang/Exception;)V

    .line 100
    invoke-direct {v1, v3, v0}, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->onFailOver(Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;Ljava/lang/Exception;)V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_d9} :catch_b7

    goto :goto_e7

    .line 103
    :goto_da
    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v9, v3}, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->parseEffect(Lcom/ss/ugc/effectplatform/model/Effect;Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;)Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object v2

    invoke-direct {v1, v2, v3, v0}, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->onDownloadFailure(Lcom/ss/ugc/effectplatform/model/Effect;Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;Ljava/lang/Exception;)V

    .line 104
    invoke-direct {v1, v3, v0}, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->onFailOver(Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;Ljava/lang/Exception;)V

    :goto_e7
    move v0, v13

    goto/16 :goto_4e

    :cond_ea
    return-void
.end method

.method private final fetchModels([Ljava/lang/String;)V
    .registers 8

    if-eqz p1, :cond_4e

    .line 60
    # getter for: Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTaskKt;->classLock:Lbytekn/foundation/concurrent/lock/Lock;
    invoke-static {}, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTaskKt;->access$getClassLock$p()Lbytekn/foundation/concurrent/lock/Lock;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->acquire()V

    .line 63
    :try_start_9
    iget v1, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->businessId:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, v2}, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->collectNeedDownloadModelsList(I[Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_45

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0, v2, v1}, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->downloadAndUpdateModelList(Lcom/ss/ugc/effectplatform/model/Effect;Ljava/util/ArrayList;)V

    .line 67
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_18} :catch_1b
    .catchall {:try_start_9 .. :try_end_18} :catchall_19

    goto :goto_45

    :catchall_19
    move-exception p0

    goto :goto_4a

    :catch_1b
    move-exception v1

    .line 69
    :try_start_1c
    sget-object v2, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    const-string v3, "effect_platform"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fetchModels: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " exception happens!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lbytekn/foundation/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    invoke-direct {p0, p1}, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->canFallbackToBuiltInResources([Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_49

    .line 74
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_45
    .catchall {:try_start_1c .. :try_end_45} :catchall_19

    .line 8
    :cond_45
    :goto_45
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    return-void

    .line 74
    :cond_49
    :try_start_49
    throw v1
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_19

    .line 8
    :goto_4a
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    throw p0

    :cond_4e
    return-void
.end method

.method private final isExactBuiltInResource(Ljava/lang/String;)Z
    .registers 5

    .line 268
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->buildInAssetsManager:Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "model"

    invoke-static {v1}, Lcom/ss/ugc/effectplatform/util/StringUtilKt;->joinFileSeperator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;->exists(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3a

    .line 270
    sget-object v0, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "model: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is built in resource"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "effect_platform"

    invoke-virtual {v0, v1, p1}, Lbytekn/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    return p0
.end method

.method private final normalizeResourceName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 242
    sget-object p0, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->INSTANCE:Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;

    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->getNameOfModel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final onDownloadFailure(Lcom/ss/ugc/effectplatform/model/Effect;Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;Ljava/lang/Exception;)V
    .registers 14

    .line 135
    new-instance p1, Lcom/ss/ugc/effectplatform/model/ExceptionResult;

    invoke-direct {p1, p3}, Lcom/ss/ugc/effectplatform/model/ExceptionResult;-><init>(Ljava/lang/Exception;)V

    .line 136
    invoke-virtual {p2}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getFile_url()Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;->getUrl_list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_27

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_1d

    :cond_1c
    move-object v0, v1

    :goto_1d
    if-eqz v0, :cond_27

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 138
    :cond_27
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->config:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/EffectConfig;->getMonitorReport()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object v0

    invoke-virtual {v0}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/ss/ugc/effectplatform/monitor/IMonitorReport;

    if-eqz v2, :cond_8f

    iget-object v4, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->config:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {p2}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getVersion()Ljava/lang/String;

    move-result-object v6

    iget-object p2, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->config:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {p2}, Lcom/ss/ugc/effectplatform/EffectConfig;->getModelType()Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 140
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "error_code"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    if-eqz v1, :cond_5b

    goto :goto_5d

    .line 141
    :cond_5b
    const-string v1, ""

    :goto_5d
    const-string p2, "download_url"

    invoke-static {p2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    filled-new-array {p1, p2}, [Lkotlin/Pair;

    move-result-object p1

    .line 139
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v8

    .line 142
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7e

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_78

    goto :goto_7e

    :cond_78
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_7c
    move-object v9, p1

    goto :goto_8b

    :cond_7e
    :goto_7e
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object p1

    goto :goto_7c

    :goto_8b
    const/4 v3, 0x0

    .line 138
    invoke-static/range {v2 .. v9}, Lcom/ss/ugc/effectplatform/monitor/MobExtensionKt;->mobModelDownload(Lcom/ss/ugc/effectplatform/monitor/IMonitorReport;ZLcom/ss/ugc/effectplatform/EffectConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 143
    :cond_8f
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->config:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/EffectConfig;->getModelDownloadEventListener()Lcom/ss/ugc/effectplatform/listener/IModelDownloadEventListener;

    return-void
.end method

.method private final onDownloadSuccess(Lcom/ss/ugc/effectplatform/model/Effect;Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;Lbytekn/foundation/utils/Stopwatch;JJ)V
    .registers 22

    .line 147
    sget-object v0, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "model::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " download success!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "effect_platform"

    invoke-virtual {v0, v2, v1}, Lbytekn/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    sget-object v0, Lcom/ss/ugc/effectplatform/common/EffectConstants;->INSTANCE:Lcom/ss/ugc/effectplatform/common/EffectConstants;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/common/EffectConstants;->getKB()I

    move-result v0

    int-to-long v0, v0

    div-long v0, p6, v0

    move-object/from16 v2, p2

    .line 149
    invoke-virtual {v2, v0, v1}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->setTotalSize(J)V

    .line 150
    sget-object v0, Lbytekn/foundation/concurrent/clock/DefaultClock;->INSTANCE:Lbytekn/foundation/concurrent/clock/DefaultClock;

    invoke-virtual {v0}, Lbytekn/foundation/concurrent/clock/DefaultClock;->getUptimeMillis()J

    move-result-wide v0

    sub-long v0, v0, p4

    .line 151
    iget-object v3, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->config:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {v3}, Lcom/ss/ugc/effectplatform/EffectConfig;->getMonitorReport()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object v3

    invoke-virtual {v3}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/ss/ugc/effectplatform/monitor/IMonitorReport;

    if-eqz v4, :cond_9a

    iget-object v6, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->config:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {v2}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getVersion()Ljava/lang/String;

    move-result-object v8

    iget-object v3, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->config:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {v3}, Lcom/ss/ugc/effectplatform/EffectConfig;->getModelType()Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 152
    const-string v3, "size"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const-string v5, "duration"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v5, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    filled-new-array {v3, v0}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v10

    const/16 v12, 0x40

    const/4 v13, 0x0

    const/4 v5, 0x1

    const/4 v11, 0x0

    .line 151
    invoke-static/range {v4 .. v13}, Lcom/ss/ugc/effectplatform/monitor/MobExtensionKt;->mobModelDownload$default(Lcom/ss/ugc/effectplatform/monitor/IMonitorReport;ZLcom/ss/ugc/effectplatform/EffectConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)V

    .line 153
    :cond_9a
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->config:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/EffectConfig;->getModelDownloadEventListener()Lcom/ss/ugc/effectplatform/listener/IModelDownloadEventListener;

    .line 154
    invoke-static {v2}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelInfoMemoryCache;->writeModelInfo(Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;)V

    return-void
.end method

.method private final onFailOver(Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;Ljava/lang/Exception;)V
    .registers 6

    .line 120
    sget-object v0, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "model::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",info.getVersion() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " download failure"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "effect_platform"

    invoke-virtual {v0, v2, v1, p2}, Lbytekn/foundation/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->algorithmModelCache:Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;->getLocalModelInfoByName(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/model/LocalModelInfo;

    move-result-object p0

    if-eqz p0, :cond_60

    .line 123
    sget-object v0, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->INSTANCE:Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->getVersion()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_54

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_54
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->isBigVersionEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5f

    return-void

    .line 124
    :cond_5f
    throw p2

    .line 121
    :cond_60
    throw p2
.end method

.method private final parseEffect(Lcom/ss/ugc/effectplatform/model/Effect;Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;)Lcom/ss/ugc/effectplatform/model/Effect;
    .registers 62

    if-eqz p1, :cond_3

    return-object p1

    .line 113
    :cond_3
    new-instance v0, Lcom/ss/ugc/effectplatform/model/Effect;

    const v57, 0x1fffff

    const/16 v58, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const-wide/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const-wide/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, -0x1

    invoke-direct/range {v0 .. v58}, Lcom/ss/ugc/effectplatform/model/Effect;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/UrlModel;Lcom/ss/ugc/effectplatform/model/UrlModel;Lcom/ss/ugc/effectplatform/model/UrlModel;Lcom/ss/ugc/effectplatform/model/UrlModel;ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 114
    invoke-virtual/range {p2 .. p2}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/ugc/effectplatform/model/Effect;->setName(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final collectNeedDownloadModelsListInternal(I[Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/LoadedModelList;)Ljava/util/ArrayList;
    .registers 36

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "decidedConfig"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_148

    .line 178
    array-length v5, v2

    const/4 v6, 0x0

    move v7, v6

    :goto_17
    if-ge v7, v5, :cond_148

    aget-object v8, v2, v7

    .line 180
    invoke-direct {v0, v8}, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->normalizeResourceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 182
    invoke-static {v9, v3}, Lcom/ss/ugc/effectplatform/util/AlgorithmUtils;->getLatestModelInfo(Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/LoadedModelList;)Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    move-result-object v10

    .line 183
    const-string v11, "model: "

    const-string v12, " not exist in server"

    const-string v13, "effect_platform"

    if-nez v10, :cond_9c

    .line 184
    sget-object v15, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v13, v14}, Lbytekn/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v14, v0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->modelConfigArbiter:Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;

    const/16 v16, 0x0

    if-eqz v14, :cond_4a

    invoke-virtual {v14, v1, v9, v6}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->requireSingleModelNonBlocking(ILjava/lang/String;Z)Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    move-result-object v14

    goto :goto_4c

    :cond_4a
    move-object/from16 v14, v16

    :goto_4c
    if-nez v14, :cond_77

    .line 186
    invoke-static {}, Lbytekn/foundation/concurrent/CurrentThreadKt;->isMainThread()Z

    move-result v17

    if-nez v17, :cond_77

    .line 187
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fetch single model: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from server"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v13, v6}, Lbytekn/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v6, v0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->modelConfigArbiter:Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;

    if-eqz v6, :cond_75

    invoke-virtual {v6, v1, v9}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->requireSingleModel(ILjava/lang/String;)Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    move-result-object v16

    :cond_75
    move-object/from16 v14, v16

    :cond_77
    if-nez v14, :cond_99

    .line 191
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " fetched failed!"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v19, 0x4

    const/16 v20, 0x0

    const-string v16, "effect_platform"

    const/16 v18, 0x0

    invoke-static/range {v15 .. v20}, Lbytekn/foundation/logger/Logger;->e$default(Lbytekn/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_9c

    :cond_99
    move-object v10, v14

    const/4 v6, 0x1

    goto :goto_9d

    :cond_9c
    :goto_9c
    const/4 v6, 0x0

    :goto_9d
    if-eqz v10, :cond_130

    .line 202
    invoke-virtual {v10}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getVersion()Ljava/lang/String;

    move-result-object v11

    .line 203
    invoke-virtual {v10}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getType()I

    move-result v12

    .line 206
    invoke-direct {v0, v8}, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->isExactBuiltInResource(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d2

    .line 209
    sget-object v14, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->INSTANCE:Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;

    invoke-virtual {v14, v8}, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->getVersionOfModel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    .line 210
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 213
    invoke-virtual {v14, v8}, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->getSizeOfModel(Ljava/lang/String;)I

    move-result v8

    .line 214
    invoke-static {v15, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_c7

    const/4 v1, 0x1

    goto :goto_c8

    :cond_c7
    const/4 v1, 0x0

    :goto_c8
    if-ne v8, v12, :cond_cc

    const/4 v14, 0x1

    goto :goto_cd

    :cond_cc
    const/4 v14, 0x0

    :goto_cd
    if-eqz v1, :cond_d2

    if-eqz v14, :cond_d2

    goto :goto_129

    .line 222
    :cond_d2
    iget-object v1, v0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->algorithmModelCache:Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;

    invoke-virtual {v1, v9}, Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;->getLocalModelInfoByName(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/model/LocalModelInfo;

    move-result-object v1

    if-nez v1, :cond_f0

    .line 224
    sget-object v8, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "local model is null with name: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Lbytekn/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_f0
    invoke-static {v1, v10}, Lcom/ss/ugc/effectplatform/util/AlgorithmUtils;->isModelNeedUpdate(Lcom/ss/ugc/effectplatform/model/LocalModelInfo;Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;)Z

    move-result v1

    if-eqz v1, :cond_129

    if-eqz v6, :cond_fd

    .line 228
    invoke-virtual {v10}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getFile_url()Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;

    move-result-object v1

    goto :goto_101

    :cond_fd
    invoke-virtual {v3, v9}, Lcom/ss/ugc/effectplatform/model/LoadedModelList;->getDownloadUrl(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;

    move-result-object v1

    .line 229
    :goto_101
    new-instance v21, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    const/16 v30, 0x7f

    const/16 v31, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-direct/range {v21 .. v31}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;JIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v6, v21

    .line 230
    invoke-virtual {v6, v9}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->setName(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v6, v11}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->setVersion(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v6, v1}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->setFile_url(Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;)V

    .line 233
    invoke-virtual {v6, v12}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->setType(I)V

    .line 234
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_129
    :goto_129
    add-int/lit8 v7, v7, 0x1

    move/from16 v1, p1

    const/4 v6, 0x0

    goto/16 :goto_17

    .line 199
    :cond_130
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_148
    return-object v4
.end method

.method protected execute()V
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->modelNames:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->fetchModels([Ljava/lang/String;)V

    return-void
.end method
