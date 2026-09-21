.class public final Lcom/cutsame/solution/source/effect/DownloadableModelSupportSingleton;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/cutsame/solution/source/effect/DownloadableModelSupportSingleton;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/cutsame/solution/source/effect/DownloadableModelSupportSingleton;

    invoke-direct {v0}, Lcom/cutsame/solution/source/effect/DownloadableModelSupportSingleton;-><init>()V

    sput-object v0, Lcom/cutsame/solution/source/effect/DownloadableModelSupportSingleton;->INSTANCE:Lcom/cutsame/solution/source/effect/DownloadableModelSupportSingleton;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized getEffectFetcher(Landroid/content/Context;Lcom/cutsame/solution/config/EffectFetcherConfig;)Lcom/ss/ugc/effectplatform/bridge/EffectFetcher;
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "effectFetcherConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/cutsame/solution/source/effect/DownloadableModelSupportSingleton;->init(Landroid/content/Context;Lcom/cutsame/solution/config/EffectFetcherConfig;)V

    .line 2
    sget-object p1, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;->Companion:Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager$Companion;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager$Companion;->getInstance()Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;->getEffectFetcher()Lcom/ss/ugc/effectplatform/algorithm/AlgorithmEffectFetcher;

    move-result-object p1
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-object p1

    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public final init(Landroid/content/Context;Lcom/cutsame/solution/config/EffectFetcherConfig;)V
    .registers 8

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "effectFetcherConfig"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;->Companion:Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager$Companion;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager$Companion;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_a7

    .line 2
    new-instance v0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;

    invoke-direct {v0}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;-><init>()V

    .line 3
    new-instance v1, Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;

    sget-object v2, Lcom/cutsame/solution/source/effect/EffectGsonConverter;->INSTANCE:Lcom/cutsame/solution/source/effect/EffectGsonConverter;

    invoke-direct {v1, v2}, Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;-><init>(Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IAndroidJsonConverter;)V

    invoke-virtual {v0, v1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->jsonConverter(Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;

    move-result-object v0

    .line 4
    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->appID(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;

    move-result-object v0

    .line 5
    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->accessKey(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;

    move-result-object v0

    .line 6
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "MODEL"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->deviceType(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {p2}, Lcom/cutsame/solution/config/EffectFetcherConfig;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->hosts(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/ss/android/vesdk/VESDK;->getEffectSDKVer()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getEffectSDKVer()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->sdkVersion(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v2}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->exclusionPattern(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;

    move-result-object v0

    .line 10
    sget-object v3, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;->INSTANCE:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;

    sget-object v4, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;->EFFECT_MANAGER_MODEL:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;

    invoke-virtual {v3, p1, v4}, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;->getBaseDir(Landroid/content/Context;Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;)Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {v0, v3}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->algorithmDir(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;

    move-result-object v0

    .line 12
    new-instance v3, Lcom/cutsame/solution/source/effect/EffectNetWorkerClient;

    invoke-direct {v3}, Lcom/cutsame/solution/source/effect/EffectNetWorkerClient;-><init>()V

    invoke-virtual {v0, v3}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->effectNetWorker(Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;

    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->appContext(Ljava/lang/Object;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;

    move-result-object p1

    .line 14
    invoke-virtual {p1, v2}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->appVersion(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;

    move-result-object p1

    .line 15
    sget-boolean v0, Lcom/bytedance/ies/cutsame/cut_android/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_76

    const-string v0, "test"

    goto :goto_78

    :cond_76
    const-string v0, "online"

    :goto_78
    invoke-virtual {p1, v0}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->channel(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;

    move-result-object p1

    .line 16
    invoke-virtual {p1, v1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->deviceId(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;

    move-result-object p1

    const-string v0, "android"

    .line 17
    invoke-virtual {p1, v0}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->platform(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;

    move-result-object p1

    const-string v0, "cn"

    .line 18
    invoke-virtual {p1, v0}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->region(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;

    move-result-object p1

    .line 20
    sget-object v0, Lcom/ss/ugc/effectplatform/EffectConfig$ModelFileEnv;->ONLINE:Lcom/ss/ugc/effectplatform/EffectConfig$ModelFileEnv;

    invoke-virtual {p1, v0}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->modelFileEnv(Lcom/ss/ugc/effectplatform/EffectConfig$ModelFileEnv;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;

    move-result-object p1

    .line 21
    sget-object v0, Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;->ORIGIN:Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;

    invoke-virtual {p1, v0}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->modelType(Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;

    move-result-object p1

    .line 22
    invoke-virtual {p2}, Lcom/cutsame/solution/config/EffectFetcherConfig;->getModelPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->algorithmDir(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->build()Lcom/ss/ugc/effectplatform/EffectConfig;

    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager$Companion;->initialize(Lcom/ss/ugc/effectplatform/EffectConfig;)V

    :cond_a7
    return-void
.end method
