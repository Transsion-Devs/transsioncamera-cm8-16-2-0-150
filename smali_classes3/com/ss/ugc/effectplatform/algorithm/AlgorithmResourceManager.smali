.class public final Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager$Companion;

.field private static INSTANCE:Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;

.field private static libraryLoader:Lcom/ss/ugc/effectplatform/algorithm/ILibraryLoader;


# instance fields
.field private final algorithmModelCache:Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;

.field private final algorithmRepository:Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;

.field private buildInAssetsManager:Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;

.field private final effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

.field private effectFetcher:Lcom/ss/ugc/effectplatform/algorithm/AlgorithmEffectFetcher;

.field private resourceFinder:Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;->Companion:Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager$Companion;

    .line 106
    sget-object v0, Lcom/ss/ugc/effectplatform/algorithm/ILibraryLoader$SoLibraryLoader;->INSTANCE:Lcom/ss/ugc/effectplatform/algorithm/ILibraryLoader$SoLibraryLoader;

    sput-object v0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;->libraryLoader:Lcom/ss/ugc/effectplatform/algorithm/ILibraryLoader;

    return-void
.end method

.method private constructor <init>(Lcom/ss/ugc/effectplatform/EffectConfig;)V
    .registers 7

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    .line 25
    new-instance v0, Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getAppContext()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getExclusionPattern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;->buildInAssetsManager:Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;

    .line 32
    sget-object v0, Lcom/ss/ugc/effectplatform/cache/EffectCacheManager;->INSTANCE:Lcom/ss/ugc/effectplatform/cache/EffectCacheManager;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getAlgorithmDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/ugc/effectplatform/cache/EffectCacheManager;->getCache(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/cache/ICache;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 33
    instance-of v2, v1, Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;

    if-nez v2, :cond_25

    goto :goto_2a

    .line 38
    :cond_25
    check-cast v1, Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;

    iput-object v1, p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;->algorithmModelCache:Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;

    goto :goto_4a

    .line 34
    :cond_2a
    :goto_2a
    new-instance v1, Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getAlgorithmDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getSdkVersion()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3b

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3c

    :cond_3b
    const/4 v3, 0x0

    .line 35
    :goto_3c
    iget-object v4, p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;->buildInAssetsManager:Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;

    .line 34
    invoke-direct {v1, v2, v3, v4}, Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;-><init>(Ljava/lang/String;ILcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;)V

    iput-object v1, p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;->algorithmModelCache:Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;

    .line 36
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getAlgorithmDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/ss/ugc/effectplatform/cache/EffectCacheManager;->setCache(Ljava/lang/String;Lcom/ss/ugc/effectplatform/cache/ICache;)V

    .line 40
    :goto_4a
    sget-object v0, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;->Companion:Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository$Companion;

    invoke-virtual {v0, p1}, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository$Companion;->initialize(Lcom/ss/ugc/effectplatform/EffectConfig;)V

    .line 41
    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository$Companion;->getInstance()Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;->algorithmRepository:Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ss/ugc/effectplatform/EffectConfig;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 22
    invoke-direct {p0, p1}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;-><init>(Lcom/ss/ugc/effectplatform/EffectConfig;)V

    return-void
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;
    .registers 1

    .line 22
    sget-object v0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;->INSTANCE:Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;

    return-object v0
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;)V
    .registers 1

    .line 22
    sput-object p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;->INSTANCE:Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;

    return-void
.end method

.method private final getEffectFetcherInternal()Lcom/ss/ugc/effectplatform/algorithm/AlgorithmEffectFetcher;
    .registers 6

    .line 67
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;->effectFetcher:Lcom/ss/ugc/effectplatform/algorithm/AlgorithmEffectFetcher;

    if-eqz v0, :cond_5

    return-object v0

    .line 68
    :cond_5
    new-instance v0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmEffectFetcher;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    sget-object v2, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->Companion:Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$Companion;

    invoke-virtual {v2, v1}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$Companion;->getInstance(Lcom/ss/ugc/effectplatform/EffectConfig;)Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;

    move-result-object v2

    iget-object v3, p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;->buildInAssetsManager:Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;

    iget-object v4, p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;->algorithmModelCache:Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmEffectFetcher;-><init>(Lcom/ss/ugc/effectplatform/EffectConfig;Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;)V

    .line 69
    iput-object v0, p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;->effectFetcher:Lcom/ss/ugc/effectplatform/algorithm/AlgorithmEffectFetcher;

    return-object v0
.end method


# virtual methods
.method public final getCustomResourceFinder()Lcom/ss/ugc/effectplatform/algorithm/IResourceFinder;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getEffectFetcher()Lcom/ss/ugc/effectplatform/algorithm/AlgorithmEffectFetcher;
    .registers 1

    .line 63
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;->getEffectFetcherInternal()Lcom/ss/ugc/effectplatform/algorithm/AlgorithmEffectFetcher;

    move-result-object p0

    return-object p0
.end method

.method public final getResourceFinder()Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder;
    .registers 6

    .line 45
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;->resourceFinder:Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder;

    if-eqz v0, :cond_5

    return-object v0

    .line 46
    :cond_5
    new-instance v0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;->algorithmModelCache:Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;->buildInAssetsManager:Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;

    iget-object v3, p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {v3}, Lcom/ss/ugc/effectplatform/EffectConfig;->getModelDownloadEventListener()Lcom/ss/ugc/effectplatform/listener/IModelDownloadEventListener;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder;-><init>(Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;Lcom/ss/ugc/effectplatform/listener/IModelDownloadEventListener;Lcom/ss/ugc/effectplatform/EffectConfig;)V

    .line 48
    iput-object v0, p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;->resourceFinder:Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder;

    return-object v0
.end method
