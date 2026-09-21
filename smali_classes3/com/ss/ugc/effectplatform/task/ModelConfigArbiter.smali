.class public final Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$Companion;

.field private static INSTANCE:Lbytekn/foundation/concurrent/SharedReference;

.field private static final sDecidedConfig:Lbytekn/foundation/collections/SharedMutableMap;

.field private static final sSingleModelInfoMap:Lbytekn/foundation/collections/SharedMutableMap;


# instance fields
.field private final buildInAssetsManager:Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;

.field private final effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

.field private final errorExceptionMap:Lbytekn/foundation/collections/SharedMutableMap;

.field private final fetchModelListTaskMap:Lbytekn/foundation/collections/SharedMutableMap;

.field private final fetchModelTaskTryCountMap:Lbytekn/foundation/collections/SharedMutableMap;

.field private final fetchSingleModelTaskMap:Lbytekn/foundation/collections/SharedMutableMap;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->Companion:Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$Companion;

    .line 125
    new-instance v0, Lbytekn/foundation/collections/SharedMutableMap;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lbytekn/foundation/collections/SharedMutableMap;-><init>(Z)V

    sput-object v0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->sDecidedConfig:Lbytekn/foundation/collections/SharedMutableMap;

    .line 126
    new-instance v0, Lbytekn/foundation/collections/SharedMutableMap;

    invoke-direct {v0, v2}, Lbytekn/foundation/collections/SharedMutableMap;-><init>(Z)V

    sput-object v0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->sSingleModelInfoMap:Lbytekn/foundation/collections/SharedMutableMap;

    .line 127
    new-instance v0, Lbytekn/foundation/concurrent/SharedReference;

    invoke-direct {v0, v1}, Lbytekn/foundation/concurrent/SharedReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->INSTANCE:Lbytekn/foundation/concurrent/SharedReference;

    return-void
.end method

.method private constructor <init>(Lcom/ss/ugc/effectplatform/EffectConfig;)V
    .registers 4

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    .line 26
    new-instance v0, Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getAppContext()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getExclusionPattern()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->buildInAssetsManager:Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;

    .line 28
    new-instance p1, Lbytekn/foundation/collections/SharedMutableMap;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lbytekn/foundation/collections/SharedMutableMap;-><init>(Z)V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->errorExceptionMap:Lbytekn/foundation/collections/SharedMutableMap;

    .line 30
    new-instance p1, Lbytekn/foundation/collections/SharedMutableMap;

    invoke-direct {p1, v0}, Lbytekn/foundation/collections/SharedMutableMap;-><init>(Z)V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->fetchModelListTaskMap:Lbytekn/foundation/collections/SharedMutableMap;

    .line 31
    new-instance p1, Lbytekn/foundation/collections/SharedMutableMap;

    invoke-direct {p1, v0}, Lbytekn/foundation/collections/SharedMutableMap;-><init>(Z)V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->fetchModelTaskTryCountMap:Lbytekn/foundation/collections/SharedMutableMap;

    .line 32
    new-instance p1, Lbytekn/foundation/collections/SharedMutableMap;

    invoke-direct {p1, v0}, Lbytekn/foundation/collections/SharedMutableMap;-><init>(Z)V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->fetchSingleModelTaskMap:Lbytekn/foundation/collections/SharedMutableMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ss/ugc/effectplatform/EffectConfig;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 24
    invoke-direct {p0, p1}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;-><init>(Lcom/ss/ugc/effectplatform/EffectConfig;)V

    return-void
.end method

.method public static final synthetic access$getEffectConfig$p(Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;)Lcom/ss/ugc/effectplatform/EffectConfig;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    return-object p0
.end method

.method public static final synthetic access$getErrorExceptionMap$p(Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;)Lbytekn/foundation/collections/SharedMutableMap;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->errorExceptionMap:Lbytekn/foundation/collections/SharedMutableMap;

    return-object p0
.end method

.method public static final synthetic access$getFetchModelListTaskMap$p(Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;)Lbytekn/foundation/collections/SharedMutableMap;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->fetchModelListTaskMap:Lbytekn/foundation/collections/SharedMutableMap;

    return-object p0
.end method

.method public static final synthetic access$getINSTANCE$cp()Lbytekn/foundation/concurrent/SharedReference;
    .registers 1

    .line 24
    sget-object v0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->INSTANCE:Lbytekn/foundation/concurrent/SharedReference;

    return-object v0
.end method

.method public static final synthetic access$getSDecidedConfig$cp()Lbytekn/foundation/collections/SharedMutableMap;
    .registers 1

    .line 24
    sget-object v0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->sDecidedConfig:Lbytekn/foundation/collections/SharedMutableMap;

    return-object v0
.end method

.method public static synthetic requireDecidedConfig$default(Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;IZILjava/lang/Object;)Lcom/ss/ugc/effectplatform/model/LoadedModelList;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 35
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->requireDecidedConfig(IZ)Lcom/ss/ugc/effectplatform/model/LoadedModelList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic requireDecidedConfigNonBlocking$default(Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;IZILjava/lang/Object;)Lcom/ss/ugc/effectplatform/model/LoadedModelList;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x1

    .line 73
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->requireDecidedConfigNonBlocking(IZ)Lcom/ss/ugc/effectplatform/model/LoadedModelList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic requireSingleModelNonBlocking$default(Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;ILjava/lang/String;ZILjava/lang/Object;)Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x1

    .line 107
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->requireSingleModelNonBlocking(ILjava/lang/String;Z)Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized requireDecidedConfig(IZ)Lcom/ss/ugc/effectplatform/model/LoadedModelList;
    .registers 10

    monitor-enter p0

    .line 36
    :try_start_1
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/EffectConfig;->getCustomModelsMappingConfig()Lcom/ss/ugc/effectplatform/algorithm/ModelsMappingConfig;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/algorithm/ModelsMappingConfig;->getBusinessTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    goto :goto_17

    :catchall_10
    move-exception p1

    goto/16 :goto_9e

    :cond_13
    invoke-static {p1}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiterKt;->convertBusinessIdToKey(I)Ljava/lang/String;

    move-result-object v0

    .line 37
    :goto_17
    sget-object v1, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->sDecidedConfig:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-virtual {v1, v0}, Lbytekn/foundation/collections/SharedMutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_96

    .line 38
    iget-object v2, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->fetchModelTaskTryCountMap:Lbytekn/foundation/collections/SharedMutableMap;

    .line 157
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2f

    const/4 v3, 0x0

    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 160
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_2f
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-nez p2, :cond_3f

    .line 39
    iget-object p2, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {p2}, Lcom/ss/ugc/effectplatform/EffectConfig;->getModelApiMaxTryCount()I

    move-result p2

    if-ge v2, p2, :cond_7d

    .line 40
    :cond_3f
    iget-object p2, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->fetchModelListTaskMap:Lbytekn/foundation/collections/SharedMutableMap;

    .line 164
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_58

    .line 41
    new-instance v3, Lcom/ss/ugc/effectplatform/task/FetchModelListTask;

    iget-object v4, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    iget-object v5, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->buildInAssetsManager:Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;

    new-instance v6, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$requireDecidedConfig$$inlined$getOrPut$lambda$1;

    invoke-direct {v6, p0, p1, v0}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$requireDecidedConfig$$inlined$getOrPut$lambda$1;-><init>(Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;ILjava/lang/String;)V

    invoke-direct {v3, v4, v5, p1, v6}, Lcom/ss/ugc/effectplatform/task/FetchModelListTask;-><init>(Lcom/ss/ugc/effectplatform/EffectConfig;Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;ILcom/ss/ugc/effectplatform/task/FetchModelListTask$Callback;)V

    .line 167
    invoke-interface {p2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_58
    check-cast v3, Lcom/ss/ugc/effectplatform/task/FetchModelListTask;

    .line 54
    iget-object p1, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->fetchModelTaskTryCountMap:Lbytekn/foundation/collections/SharedMutableMap;

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-virtual {v3}, Lcom/ss/ugc/effectplatform/task/FetchModelListTask;->waitForCompletion()V

    .line 56
    invoke-virtual {v1, v0}, Lbytekn/foundation/collections/SharedMutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/ugc/effectplatform/model/LoadedModelList;

    if-eqz p1, :cond_7d

    .line 57
    new-instance p2, Lbytekn/foundation/concurrent/executor/AsyncExecutor;

    invoke-direct {p2}, Lbytekn/foundation/concurrent/executor/AsyncExecutor;-><init>()V

    new-instance v2, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$requireDecidedConfig$$inlined$let$lambda$1;

    invoke-direct {v2, p1, p0}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$requireDecidedConfig$$inlined$let$lambda$1;-><init>(Lcom/ss/ugc/effectplatform/model/LoadedModelList;Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;)V

    invoke-virtual {p2, v2}, Lbytekn/foundation/concurrent/executor/AsyncExecutor;->execute(Ljava/lang/Runnable;)V

    .line 64
    :cond_7d
    invoke-virtual {v1, v0}, Lbytekn/foundation/collections/SharedMutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_96

    .line 65
    iget-object p1, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->errorExceptionMap:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-virtual {p1, v0}, Lbytekn/foundation/collections/SharedMutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Exception;

    if-eqz p1, :cond_8e

    throw p1

    .line 66
    :cond_8e
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "error happens when requireDecidedConfig"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_96
    invoke-virtual {v1, v0}, Lbytekn/foundation/collections/SharedMutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/ugc/effectplatform/model/LoadedModelList;
    :try_end_9c
    .catchall {:try_start_1 .. :try_end_9c} :catchall_10

    monitor-exit p0

    return-object p1

    :goto_9e
    :try_start_9e
    monitor-exit p0
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_10

    throw p1
.end method

.method public final requireDecidedConfigNonBlocking(IZ)Lcom/ss/ugc/effectplatform/model/LoadedModelList;
    .registers 6

    .line 74
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/EffectConfig;->getCustomModelsMappingConfig()Lcom/ss/ugc/effectplatform/algorithm/ModelsMappingConfig;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/algorithm/ModelsMappingConfig;->getBusinessTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    goto :goto_13

    :cond_f
    invoke-static {p1}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiterKt;->convertBusinessIdToKey(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_13
    sget-object v1, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->sDecidedConfig:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-virtual {v1, v0}, Lbytekn/foundation/collections/SharedMutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/ugc/effectplatform/model/LoadedModelList;

    if-nez v0, :cond_35

    if-eqz p2, :cond_35

    .line 77
    iget-object p2, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {p2}, Lcom/ss/ugc/effectplatform/EffectConfig;->getTaskManager()Lcom/ss/ugc/effectplatform/task/TaskManager;

    move-result-object p2

    if-eqz p2, :cond_35

    new-instance v1, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$requireDecidedConfigNonBlocking$1;

    sget-object v2, Lcom/ss/ugc/effectplatform/util/TaskUtil;->INSTANCE:Lcom/ss/ugc/effectplatform/util/TaskUtil;

    invoke-virtual {v2}, Lcom/ss/ugc/effectplatform/util/TaskUtil;->generateTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$requireDecidedConfigNonBlocking$1;-><init>(Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;ILjava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/ss/ugc/effectplatform/task/TaskManager;->commit(Lbytekn/foundation/task/ITask;)V

    :cond_35
    return-object v0
.end method

.method public final declared-synchronized requireSingleModel(ILjava/lang/String;)Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;
    .registers 14

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p2, :cond_59

    .line 92
    :try_start_4
    sget-object v1, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->sSingleModelInfoMap:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-virtual {v1, p2}, Lbytekn/foundation/collections/SharedMutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    if-nez v2, :cond_55

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 95
    iget-object v3, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->fetchSingleModelTaskMap:Lbytekn/foundation/collections/SharedMutableMap;

    .line 171
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3d

    .line 96
    new-instance v5, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelInfoByNameTask;

    iget-object v6, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v8, p1

    move-object v7, p2

    invoke-direct/range {v5 .. v10}, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelInfoByNameTask;-><init>(Lcom/ss/ugc/effectplatform/EffectConfig;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-interface {v3, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v5

    goto :goto_3e

    :catchall_3a
    move-exception v0

    move-object p1, v0

    goto :goto_57

    :cond_3d
    move-object v7, p2

    .line 95
    :goto_3e
    check-cast v4, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelInfoByNameTask;

    .line 98
    invoke-virtual {v4}, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelInfoByNameTask;->runDirectly()Lcom/ss/ugc/effectplatform/model/algorithm/SingleAlgorithmModelResponse;

    move-result-object p1

    if-eqz p1, :cond_4a

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/algorithm/SingleAlgorithmModelResponse;->getData()Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    move-result-object v0

    :cond_4a
    if-eqz v0, :cond_4f

    .line 100
    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_4f
    iget-object p1, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->fetchSingleModelTaskMap:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-virtual {p1, v2}, Lbytekn/foundation/collections/SharedMutableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_54
    .catchall {:try_start_4 .. :try_end_54} :catchall_3a

    move-object v2, v0

    .line 104
    :cond_55
    monitor-exit p0

    return-object v2

    :goto_57
    :try_start_57
    monitor-exit p0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_3a

    throw p1

    .line 91
    :cond_59
    monitor-exit p0

    return-object v0
.end method

.method public final requireSingleModelNonBlocking(ILjava/lang/String;Z)Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;
    .registers 7

    if-eqz p2, :cond_25

    .line 109
    sget-object v0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->sSingleModelInfoMap:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-virtual {v0, p2}, Lbytekn/foundation/collections/SharedMutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    if-nez v0, :cond_24

    if-eqz p3, :cond_24

    .line 111
    iget-object p3, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {p3}, Lcom/ss/ugc/effectplatform/EffectConfig;->getTaskManager()Lcom/ss/ugc/effectplatform/task/TaskManager;

    move-result-object p3

    if-eqz p3, :cond_24

    new-instance v1, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$requireSingleModelNonBlocking$1;

    sget-object v2, Lcom/ss/ugc/effectplatform/util/TaskUtil;->INSTANCE:Lcom/ss/ugc/effectplatform/util/TaskUtil;

    invoke-virtual {v2}, Lcom/ss/ugc/effectplatform/util/TaskUtil;->generateTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$requireSingleModelNonBlocking$1;-><init>(Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Lcom/ss/ugc/effectplatform/task/TaskManager;->commit(Lbytekn/foundation/task/ITask;)V

    :cond_24
    return-object v0

    :cond_25
    const/4 p0, 0x0

    return-object p0
.end method
