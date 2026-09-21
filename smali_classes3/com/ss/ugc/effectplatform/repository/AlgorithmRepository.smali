.class public final Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository$Companion;

.field private static INSTANCE:Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;


# instance fields
.field private final algorithmModelCache:Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;

.field private buildInAssetsManager:Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;

.field private final config:Lcom/ss/ugc/effectplatform/EffectConfig;

.field private effectFetcher:Lcom/ss/ugc/effectplatform/algorithm/AlgorithmEffectFetcher;

.field private modelConfigArbiter:Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;

.field private resourceFinder:Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceFinder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;->Companion:Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/ss/ugc/effectplatform/EffectConfig;)V
    .registers 7

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;->config:Lcom/ss/ugc/effectplatform/EffectConfig;

    .line 38
    new-instance v0, Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getAppContext()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getExclusionPattern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;->buildInAssetsManager:Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;

    .line 42
    sget-object v0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->Companion:Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$Companion;

    invoke-virtual {v0, p1}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$Companion;->getInstance(Lcom/ss/ugc/effectplatform/EffectConfig;)Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;->modelConfigArbiter:Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;

    .line 43
    sget-object v0, Lcom/ss/ugc/effectplatform/cache/EffectCacheManager;->INSTANCE:Lcom/ss/ugc/effectplatform/cache/EffectCacheManager;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getAlgorithmDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/ugc/effectplatform/cache/EffectCacheManager;->getCache(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/cache/ICache;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 44
    instance-of v2, v1, Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;

    if-nez v2, :cond_2d

    goto :goto_32

    .line 49
    :cond_2d
    check-cast v1, Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;

    iput-object v1, p0, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;->algorithmModelCache:Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;

    return-void

    .line 45
    :cond_32
    :goto_32
    new-instance v1, Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getAlgorithmDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getSdkVersion()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_43

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_44

    :cond_43
    const/4 v3, 0x0

    .line 46
    :goto_44
    iget-object v4, p0, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;->buildInAssetsManager:Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;

    .line 45
    invoke-direct {v1, v2, v3, v4}, Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;-><init>(Ljava/lang/String;ILcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;)V

    iput-object v1, p0, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;->algorithmModelCache:Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;

    .line 47
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getAlgorithmDir()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lcom/ss/ugc/effectplatform/cache/EffectCacheManager;->setCache(Ljava/lang/String;Lcom/ss/ugc/effectplatform/cache/ICache;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ss/ugc/effectplatform/EffectConfig;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 33
    invoke-direct {p0, p1}, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;-><init>(Lcom/ss/ugc/effectplatform/EffectConfig;)V

    return-void
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;
    .registers 1

    .line 33
    sget-object v0, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;->INSTANCE:Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;

    return-object v0
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;)V
    .registers 1

    .line 33
    sput-object p0, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;->INSTANCE:Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;

    return-void
.end method

.method private final areRequirementsReady([Ljava/lang/String;)Z
    .registers 7

    .line 96
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;->algorithmModelCache:Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->checkDiskLruCache()Z

    .line 97
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_2d

    aget-object v3, p1, v2

    .line 99
    invoke-static {}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelInfoMemoryCache;->hasBuiltCache()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 100
    sget-object v4, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->INSTANCE:Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;

    invoke-virtual {v4, v3}, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->getNameOfModel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelInfoMemoryCache;->isModelReady(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 102
    invoke-direct {p0, v3}, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;->checkModelReadyLocal(Ljava/lang/String;)Z

    move-result v4

    goto :goto_27

    .line 105
    :cond_23
    invoke-direct {p0, v3}, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;->checkModelReadyLocal(Ljava/lang/String;)Z

    move-result v4

    :cond_27
    :goto_27
    if-nez v4, :cond_2a

    return v1

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_2d
    const/4 p0, 0x1

    return p0
.end method

.method private final checkModelReadyLocal(Ljava/lang/String;)Z
    .registers 6

    .line 116
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;->getResourceFinder()Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceFinder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceFinder;->isResourceAvailable(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    .line 121
    :try_start_9
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;->getEffectFetcherInternal()Lcom/ss/ugc/effectplatform/algorithm/AlgorithmEffectFetcher;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v2, v3}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmEffectFetcher;->collectNeedDownloadModelsListNonBlocking$default(Lcom/ss/ugc/effectplatform/algorithm/AlgorithmEffectFetcher;[Ljava/lang/String;IILjava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    if-eqz p0, :cond_21

    .line 122
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1d} :catch_22

    if-eqz p0, :cond_20

    goto :goto_21

    :cond_20
    return v1

    :cond_21
    :goto_21
    return v0

    :catch_22
    return v1
.end method

.method private final getEffectFetcherInternal()Lcom/ss/ugc/effectplatform/algorithm/AlgorithmEffectFetcher;
    .registers 6

    .line 58
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;->effectFetcher:Lcom/ss/ugc/effectplatform/algorithm/AlgorithmEffectFetcher;

    if-eqz v0, :cond_5

    return-object v0

    .line 59
    :cond_5
    new-instance v0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmEffectFetcher;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;->config:Lcom/ss/ugc/effectplatform/EffectConfig;

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;->modelConfigArbiter:Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;

    iget-object v3, p0, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;->buildInAssetsManager:Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;

    iget-object v4, p0, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;->algorithmModelCache:Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmEffectFetcher;-><init>(Lcom/ss/ugc/effectplatform/EffectConfig;Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;)V

    .line 60
    iput-object v0, p0, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;->effectFetcher:Lcom/ss/ugc/effectplatform/algorithm/AlgorithmEffectFetcher;

    return-object v0
.end method

.method private final getResourceFinder()Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceFinder;
    .registers 5

    .line 65
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;->resourceFinder:Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceFinder;

    if-eqz v0, :cond_5

    return-object v0

    .line 66
    :cond_5
    new-instance v0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceFinder;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;->algorithmModelCache:Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;->buildInAssetsManager:Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;

    iget-object v3, p0, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;->config:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {v3}, Lcom/ss/ugc/effectplatform/EffectConfig;->getModelDownloadEventListener()Lcom/ss/ugc/effectplatform/listener/IModelDownloadEventListener;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceFinder;-><init>(Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;Lcom/ss/ugc/effectplatform/listener/IModelDownloadEventListener;)V

    .line 67
    iput-object v0, p0, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;->resourceFinder:Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceFinder;

    return-object v0
.end method


# virtual methods
.method public final areRequirementsReady(Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;)Z
    .registers 4

    const-string v0, "effect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;->config:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/EffectConfig;->getJsonConverter()Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ss/ugc/effectplatform/util/AlgorithmUtils;->getResourceNameArrayOfEffect(Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 87
    array-length v1, v0

    if-nez v1, :cond_15

    goto :goto_1a

    .line 91
    :cond_15
    invoke-direct {p0, v0}, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;->areRequirementsReady([Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 88
    :cond_1a
    :goto_1a
    sget-object p0, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "effect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " returned empty resourceNameArrayOfEffect"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AlgorithmRepository"

    invoke-virtual {p0, v0, p1}, Lbytekn/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final getConfig$effectplatform_release()Lcom/ss/ugc/effectplatform/EffectConfig;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;->config:Lcom/ss/ugc/effectplatform/EffectConfig;

    return-object p0
.end method
