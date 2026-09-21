.class public final Lcom/cutsame/solution/source/effect/EffectManagerSingleton;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/cutsame/solution/source/effect/EffectManagerSingleton;

.field public static configurationInterceptor:Lkotlin/jvm/functions/Function1;

.field public static effectConfiguration:Ljava/util/Map;

.field public static instances:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/cutsame/solution/source/effect/EffectManagerSingleton;

    invoke-direct {v0}, Lcom/cutsame/solution/source/effect/EffectManagerSingleton;-><init>()V

    sput-object v0, Lcom/cutsame/solution/source/effect/EffectManagerSingleton;->INSTANCE:Lcom/cutsame/solution/source/effect/EffectManagerSingleton;

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/cutsame/solution/source/effect/EffectManagerSingleton;->effectConfiguration:Ljava/util/Map;

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/cutsame/solution/source/effect/EffectManagerSingleton;->instances:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized getConfiguration$CutSameIF_release(Landroid/content/Context;Ljava/lang/String;Lcom/cutsame/solution/config/EffectFetcherConfig;Lcom/ss/ugc/effectplatform/bridge/EffectFetcher;)Lcom/ss/ugc/effectplatform/EffectConfig;
    .registers 10

    monitor-enter p0

    :try_start_1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "region"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "effectFetcherConfig"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-boolean v0, Lcom/bytedance/ies/cutsame/cut_android/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_1a

    const-string v1, "test"

    goto :goto_1c

    :catchall_17
    move-exception p1

    goto/16 :goto_d7

    :cond_1a
    const-string v1, "online"

    :goto_1c
    const-string v2, "fetch effect channel:"

    .line 2
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cutdemo.EffectManager"

    invoke-static {v3, v2}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v2, Lcom/cutsame/solution/source/effect/EffectManagerSingleton;->effectConfiguration:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/ugc/effectplatform/EffectConfig;

    if-nez v2, :cond_d5

    new-instance v2, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;

    invoke-direct {v2}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;-><init>()V

    .line 4
    invoke-virtual {v2, v1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->channel(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/ss/android/vesdk/VESDK;->getEffectSDKVer()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getEffectSDKVer()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->sdkVersion(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;

    move-result-object v1

    const-string v2, "0"

    .line 6
    invoke-virtual {v1, v2}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->appID(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;

    move-result-object v1

    const-string v2, ""

    .line 7
    invoke-virtual {v1, v2}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->appVersion(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;

    move-result-object v1

    const-string v2, ""

    .line 8
    invoke-virtual {v1, v2}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->accessKey(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;

    move-result-object v1

    const-string v2, "android"

    .line 9
    invoke-virtual {v1, v2}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->platform(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;

    move-result-object v1

    .line 10
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "MODEL"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->deviceType(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;

    move-result-object v1

    const-string v2, "0"

    .line 11
    invoke-virtual {v1, v2}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->deviceId(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;

    move-result-object v1

    .line 12
    new-instance v2, Ljava/io/File;

    .line 13
    sget-object v3, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;->INSTANCE:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;

    sget-object v4, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;->EFFECT_MANAGER:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;

    invoke-virtual {v3, p1, v4}, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;->getBaseDir(Landroid/content/Context;Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;)Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->effectDir(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;

    move-result-object v1

    .line 15
    new-instance v2, Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;

    sget-object v3, Lcom/cutsame/solution/source/effect/EffectGsonConverter;->INSTANCE:Lcom/cutsame/solution/source/effect/EffectGsonConverter;

    invoke-direct {v2, v3}, Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;-><init>(Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IAndroidJsonConverter;)V

    invoke-virtual {v1, v2}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->jsonConverter(Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;

    move-result-object v1

    .line 16
    new-instance v2, Lcom/cutsame/solution/source/effect/EffectNetWorkerClient;

    invoke-direct {v2}, Lcom/cutsame/solution/source/effect/EffectNetWorkerClient;-><init>()V

    invoke-virtual {v1, v2}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->effectNetWorker(Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;

    move-result-object v1

    .line 17
    invoke-virtual {p3}, Lcom/cutsame/solution/config/EffectFetcherConfig;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->hosts(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;

    move-result-object v1

    .line 18
    invoke-virtual {v1, p1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->appContext(Ljava/lang/Object;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;

    move-result-object p1

    const/4 v1, 0x3

    .line 19
    invoke-virtual {p1, v1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->retryCount(I)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;

    move-result-object p1

    .line 20
    invoke-virtual {p1, p2}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->region(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;

    move-result-object p1

    .line 21
    invoke-virtual {p1, p4}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->effectFetcher(Lcom/ss/ugc/effectplatform/bridge/EffectFetcher;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;

    move-result-object p1

    .line 22
    invoke-virtual {p3}, Lcom/cutsame/solution/config/EffectFetcherConfig;->getModelPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->algorithmDir(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;

    move-result-object p1

    if-eqz v0, :cond_c4

    .line 25
    new-instance p3, Lcom/cutsame/solution/source/effect/EffectManagerSingleton$getConfiguration$1$1;

    invoke-direct {p3}, Lcom/cutsame/solution/source/effect/EffectManagerSingleton$getConfiguration$1$1;-><init>()V

    invoke-virtual {p1, p3}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->monitorReport(Lcom/ss/ugc/effectplatform/monitor/IMonitorReport;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;

    .line 41
    :cond_c4
    sget-object p3, Lcom/cutsame/solution/source/effect/EffectManagerSingleton;->configurationInterceptor:Lkotlin/jvm/functions/Function1;

    if-nez p3, :cond_c9

    goto :goto_cc

    :cond_c9
    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :goto_cc
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->build()Lcom/ss/ugc/effectplatform/EffectConfig;

    move-result-object v2

    .line 45
    sget-object p1, Lcom/cutsame/solution/source/effect/EffectManagerSingleton;->effectConfiguration:Ljava/util/Map;

    invoke-interface {p1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d5
    .catchall {:try_start_1 .. :try_end_d5} :catchall_17

    :cond_d5
    monitor-exit p0

    return-object v2

    :goto_d7
    :try_start_d7
    monitor-exit p0
    :try_end_d8
    .catchall {:try_start_d7 .. :try_end_d8} :catchall_17

    throw p1
.end method

.method public final declared-synchronized getEffectManager(Landroid/content/Context;Lcom/cutsame/solution/config/EffectFetcherConfig;)Lcom/ss/ugc/effectplatform/EffectPlatform;
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "effectFetcherConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cn"

    .line 1
    sget-object v1, Lcom/cutsame/solution/source/effect/DownloadableModelSupportSingleton;->INSTANCE:Lcom/cutsame/solution/source/effect/DownloadableModelSupportSingleton;

    invoke-virtual {v1, p1, p2}, Lcom/cutsame/solution/source/effect/DownloadableModelSupportSingleton;->init(Landroid/content/Context;Lcom/cutsame/solution/config/EffectFetcherConfig;)V

    .line 2
    new-instance v2, Lcom/ss/ugc/effectplatform/EffectPlatform;

    .line 7
    invoke-virtual {v1, p1, p2}, Lcom/cutsame/solution/source/effect/DownloadableModelSupportSingleton;->getEffectFetcher(Landroid/content/Context;Lcom/cutsame/solution/config/EffectFetcherConfig;)Lcom/ss/ugc/effectplatform/bridge/EffectFetcher;

    move-result-object v1

    .line 8
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/cutsame/solution/source/effect/EffectManagerSingleton;->getConfiguration$CutSameIF_release(Landroid/content/Context;Ljava/lang/String;Lcom/cutsame/solution/config/EffectFetcherConfig;Lcom/ss/ugc/effectplatform/bridge/EffectFetcher;)Lcom/ss/ugc/effectplatform/EffectConfig;

    move-result-object p1

    .line 9
    invoke-direct {v2, p1}, Lcom/ss/ugc/effectplatform/EffectPlatform;-><init>(Lcom/ss/ugc/effectplatform/EffectConfig;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    monitor-exit p0

    return-object v2

    :catchall_21
    move-exception p1

    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p1
.end method
