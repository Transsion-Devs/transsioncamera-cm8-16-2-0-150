.class public final Lcom/ss/ugc/effectplatform/algorithm/AlgorithmEffectFetcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/ugc/effectplatform/bridge/EffectFetcher;


# instance fields
.field private final algorithmConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

.field private final algorithmModelCache:Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;

.field private final buildInAssetsManager:Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;

.field private final fetchModelTask:Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelAndEffectTask;

.field private final modelConfigArbiter:Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;


# direct methods
.method public constructor <init>(Lcom/ss/ugc/effectplatform/EffectConfig;Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;)V
    .registers 13

    const-string v0, "algorithmConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildInAssetsManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "algorithmModelCache"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmEffectFetcher;->algorithmConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmEffectFetcher;->modelConfigArbiter:Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmEffectFetcher;->buildInAssetsManager:Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;

    iput-object p4, p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmEffectFetcher;->algorithmModelCache:Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;

    .line 25
    new-instance v1, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelAndEffectTask;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v7, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelAndEffectTask;-><init>(Lcom/ss/ugc/effectplatform/task/SyncTask;Lcom/ss/ugc/effectplatform/bridge/EffectFetcherArguments;Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;Lcom/ss/ugc/effectplatform/EffectConfig;)V

    iput-object v1, p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmEffectFetcher;->fetchModelTask:Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelAndEffectTask;

    return-void
.end method

.method public static synthetic collectNeedDownloadModelsListNonBlocking$default(Lcom/ss/ugc/effectplatform/algorithm/AlgorithmEffectFetcher;[Ljava/lang/String;IILjava/lang/Object;)Ljava/util/Collection;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 33
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmEffectFetcher;->collectNeedDownloadModelsListNonBlocking([Ljava/lang/String;I)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final collectNeedDownloadModelsListNonBlocking([Ljava/lang/String;I)Ljava/util/Collection;
    .registers 7

    .line 34
    sget-object v0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->Companion:Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$Companion;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$Companion;->getInstance()Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p2, v3, v1, v2}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->requireDecidedConfigNonBlocking$default(Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;IZILjava/lang/Object;)Lcom/ss/ugc/effectplatform/model/LoadedModelList;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 36
    :try_start_f
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmEffectFetcher;->fetchModelTask:Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelAndEffectTask;

    invoke-virtual {p0, p2, p1, v0}, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelAndEffectTask;->collectNeedDownloadModelsListInternal(I[Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/LoadedModelList;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_1c

    goto :goto_27

    :catchall_1c
    move-exception p0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 37
    :goto_27
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_33

    move-object p0, p1

    :cond_33
    check-cast p0, Ljava/util/Collection;

    return-object p0

    .line 35
    :cond_36
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method
