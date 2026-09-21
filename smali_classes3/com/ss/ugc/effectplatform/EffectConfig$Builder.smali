.class public Lcom/ss/ugc/effectplatform/EffectConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ugc/effectplatform/EffectConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private accessKey:Ljava/lang/String;

.field private algorithmDir:Ljava/lang/String;

.field private appContext:Ljava/lang/Object;

.field private appID:Ljava/lang/String;

.field private appLanguage:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private cache:Lcom/ss/ugc/effectplatform/cache/ICache;

.field private channel:Ljava/lang/String;

.field private customModelsMappingConfig:Lcom/ss/ugc/effectplatform/algorithm/ModelsMappingConfig;

.field private customSdkVersion:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private deviceType:Ljava/lang/String;

.field private draftList:Ljava/util/List;

.field private effectDir:Ljava/lang/String;

.field private effectFetcher:Lcom/ss/ugc/effectplatform/bridge/EffectFetcher;

.field private effectMaxCacheSize:J

.field private effectNetWorker:Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;

.field private exclusionPattern:Ljava/lang/String;

.field private filterType:Ljava/lang/Integer;

.field private gpuVersion:Ljava/lang/String;

.field private hosts:Ljava/lang/String;

.field private iopInfo:Ljava/util/HashMap;

.field private jsonConverter:Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;

.field private mExecutor:Lbytekn/foundation/concurrent/executor/ExecutorService;

.field private modelApiMaxTryCount:I

.field private modelFileEnv:Lcom/ss/ugc/effectplatform/EffectConfig$ModelFileEnv;

.field private modelType:Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;

.field private monitorReport:Lcom/ss/ugc/effectplatform/monitor/IMonitorReport;

.field private platform:Ljava/lang/String;

.field private region:Ljava/lang/String;

.field private requestStrategy:I

.field private retryCount:I

.field private sdkVersion:Ljava/lang/String;

.field private testStatus:Ljava/lang/String;

.field private verifySignature:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 259
    iput v0, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->retryCount:I

    const/4 v0, 0x3

    .line 261
    iput v0, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->modelApiMaxTryCount:I

    .line 277
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->iopInfo:Ljava/util/HashMap;

    .line 290
    sget-object v0, Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;->ORIGIN:Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->modelType:Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;

    const-wide/32 v0, 0x32000000

    .line 302
    iput-wide v0, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->effectMaxCacheSize:J

    return-void
.end method


# virtual methods
.method public final accessKey(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;
    .registers 3

    const-string v0, "accessKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->accessKey:Ljava/lang/String;

    return-object p0
.end method

.method public final algorithmDir(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;
    .registers 2

    .line 415
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->algorithmDir:Ljava/lang/String;

    return-object p0
.end method

.method public final appContext(Ljava/lang/Object;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;
    .registers 2

    .line 588
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->appContext:Ljava/lang/Object;

    return-object p0
.end method

.method public final appID(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;
    .registers 2

    .line 489
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->appID:Ljava/lang/String;

    return-object p0
.end method

.method public final appVersion(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;
    .registers 3

    const-string v0, "appVersion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->appVersion:Ljava/lang/String;

    return-object p0
.end method

.method public final build()Lcom/ss/ugc/effectplatform/EffectConfig;
    .registers 2

    .line 642
    new-instance v0, Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-direct {v0, p0}, Lcom/ss/ugc/effectplatform/EffectConfig;-><init>(Lcom/ss/ugc/effectplatform/EffectConfig$Builder;)V

    return-object v0
.end method

.method public final channel(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;
    .registers 3

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->channel:Ljava/lang/String;

    return-object p0
.end method

.method public final deviceId(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;
    .registers 3

    const-string v0, "deviceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final deviceType(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;
    .registers 3

    const-string v0, "deviceType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->deviceType:Ljava/lang/String;

    return-object p0
.end method

.method public final effectDir(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;
    .registers 2

    .line 403
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->effectDir:Ljava/lang/String;

    return-object p0
.end method

.method public final effectFetcher(Lcom/ss/ugc/effectplatform/bridge/EffectFetcher;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;
    .registers 2

    .line 523
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->effectFetcher:Lcom/ss/ugc/effectplatform/bridge/EffectFetcher;

    return-object p0
.end method

.method public final effectNetWorker(Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;
    .registers 3

    const-string v0, "effectINetworkClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 468
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->effectNetWorker:Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;

    return-object p0
.end method

.method public final exclusionPattern(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;
    .registers 3

    const-string v0, "pattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 592
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->exclusionPattern:Ljava/lang/String;

    return-object p0
.end method

.method public final getAccessKey()Ljava/lang/String;
    .registers 1

    .line 228
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->accessKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getAlgorithmDir()Ljava/lang/String;
    .registers 1

    .line 257
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->algorithmDir:Ljava/lang/String;

    return-object p0
.end method

.method public final getAppContext()Ljava/lang/Object;
    .registers 1

    .line 288
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->appContext:Ljava/lang/Object;

    return-object p0
.end method

.method public final getAppID()Ljava/lang/String;
    .registers 1

    .line 238
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->appID:Ljava/lang/String;

    return-object p0
.end method

.method public final getAppLanguage()Ljava/lang/String;
    .registers 1

    .line 263
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->appLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public final getAppVersion()Ljava/lang/String;
    .registers 1

    .line 232
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->appVersion:Ljava/lang/String;

    return-object p0
.end method

.method public final getCache()Lcom/ss/ugc/effectplatform/cache/ICache;
    .registers 1

    .line 244
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->cache:Lcom/ss/ugc/effectplatform/cache/ICache;

    return-object p0
.end method

.method public final getChannel()Ljava/lang/String;
    .registers 1

    .line 249
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->channel:Ljava/lang/String;

    return-object p0
.end method

.method public final getCustomModelsMappingConfig()Lcom/ss/ugc/effectplatform/algorithm/ModelsMappingConfig;
    .registers 1

    .line 300
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->customModelsMappingConfig:Lcom/ss/ugc/effectplatform/algorithm/ModelsMappingConfig;

    return-object p0
.end method

.method public final getCustomSdkVersion()Ljava/lang/String;
    .registers 1

    .line 304
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->customSdkVersion:Ljava/lang/String;

    return-object p0
.end method

.method public final getDeviceId()Ljava/lang/String;
    .registers 1

    .line 234
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final getDeviceType()Ljava/lang/String;
    .registers 1

    .line 253
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->deviceType:Ljava/lang/String;

    return-object p0
.end method

.method public final getDraftList()Ljava/util/List;
    .registers 1

    .line 285
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->draftList:Ljava/util/List;

    return-object p0
.end method

.method public final getEffectDir()Ljava/lang/String;
    .registers 1

    .line 255
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->effectDir:Ljava/lang/String;

    return-object p0
.end method

.method public final getEffectFetcher()Lcom/ss/ugc/effectplatform/bridge/EffectFetcher;
    .registers 1

    .line 267
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->effectFetcher:Lcom/ss/ugc/effectplatform/bridge/EffectFetcher;

    return-object p0
.end method

.method public final getEffectMaxCacheSize()J
    .registers 3

    .line 302
    iget-wide v0, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->effectMaxCacheSize:J

    return-wide v0
.end method

.method public final getEffectNetWorker()Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;
    .registers 1

    .line 240
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->effectNetWorker:Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;

    return-object p0
.end method

.method public final getExclusionPattern()Ljava/lang/String;
    .registers 1

    .line 292
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->exclusionPattern:Ljava/lang/String;

    return-object p0
.end method

.method public final getFilterType()Ljava/lang/Integer;
    .registers 1

    .line 298
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->filterType:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getGpuVersion()Ljava/lang/String;
    .registers 1

    .line 273
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->gpuVersion:Ljava/lang/String;

    return-object p0
.end method

.method public final getHosts()Ljava/lang/String;
    .registers 1

    .line 281
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->hosts:Ljava/lang/String;

    return-object p0
.end method

.method public final getIopInfo()Ljava/util/HashMap;
    .registers 1

    .line 277
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->iopInfo:Ljava/util/HashMap;

    return-object p0
.end method

.method public final getJsonConverter()Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;
    .registers 1

    .line 242
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->jsonConverter:Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;

    return-object p0
.end method

.method public final getMExecutor()Lbytekn/foundation/concurrent/executor/ExecutorService;
    .registers 1

    .line 265
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->mExecutor:Lbytekn/foundation/concurrent/executor/ExecutorService;

    return-object p0
.end method

.method public final getModelApiMaxTryCount()I
    .registers 1

    .line 261
    iget p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->modelApiMaxTryCount:I

    return p0
.end method

.method public final getModelFileEnv()Lcom/ss/ugc/effectplatform/EffectConfig$ModelFileEnv;
    .registers 1

    .line 294
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->modelFileEnv:Lcom/ss/ugc/effectplatform/EffectConfig$ModelFileEnv;

    return-object p0
.end method

.method public final getModelType()Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;
    .registers 1

    .line 290
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->modelType:Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;

    return-object p0
.end method

.method public final getMonitorReport()Lcom/ss/ugc/effectplatform/monitor/IMonitorReport;
    .registers 1

    .line 269
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->monitorReport:Lcom/ss/ugc/effectplatform/monitor/IMonitorReport;

    return-object p0
.end method

.method public final getPlatform()Ljava/lang/String;
    .registers 1

    .line 251
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->platform:Ljava/lang/String;

    return-object p0
.end method

.method public final getRegion()Ljava/lang/String;
    .registers 1

    .line 236
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->region:Ljava/lang/String;

    return-object p0
.end method

.method public final getRequestStrategy()I
    .registers 1

    .line 279
    iget p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->requestStrategy:I

    return p0
.end method

.method public final getRetryCount()I
    .registers 1

    .line 259
    iget p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->retryCount:I

    return p0
.end method

.method public final getSdkVersion()Ljava/lang/String;
    .registers 1

    .line 230
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->sdkVersion:Ljava/lang/String;

    return-object p0
.end method

.method public final getTestStatus()Ljava/lang/String;
    .registers 1

    .line 271
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->testStatus:Ljava/lang/String;

    return-object p0
.end method

.method public final getVerifySignature()Z
    .registers 1

    .line 306
    iget-boolean p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->verifySignature:Z

    return p0
.end method

.method public final hosts(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;
    .registers 3

    const-string v0, "hosts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->hosts:Ljava/lang/String;

    return-object p0
.end method

.method public final jsonConverter(Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;
    .registers 3

    const-string v0, "jsonConverter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->jsonConverter:Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;

    return-object p0
.end method

.method public final modelFileEnv(Lcom/ss/ugc/effectplatform/EffectConfig$ModelFileEnv;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;
    .registers 3

    const-string v0, "modelFileEnv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 596
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->modelFileEnv:Lcom/ss/ugc/effectplatform/EffectConfig$ModelFileEnv;

    return-object p0
.end method

.method public final modelType(Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;
    .registers 3

    const-string v0, "modelType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 600
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->modelType:Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;

    return-object p0
.end method

.method public final monitorReport(Lcom/ss/ugc/effectplatform/monitor/IMonitorReport;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;
    .registers 3

    const-string v0, "monitorReport"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 533
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->monitorReport:Lcom/ss/ugc/effectplatform/monitor/IMonitorReport;

    return-object p0
.end method

.method public final platform(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;
    .registers 3

    const-string v0, "platform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->platform:Ljava/lang/String;

    return-object p0
.end method

.method public final region(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;
    .registers 3

    const-string v0, "region"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 426
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->region:Ljava/lang/String;

    return-object p0
.end method

.method public final retryCount(I)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;
    .registers 2

    .line 444
    iput p1, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->retryCount:I

    return-object p0
.end method

.method public final sdkVersion(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/EffectConfig$Builder;
    .registers 3

    const-string v0, "sdkVersion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->sdkVersion:Ljava/lang/String;

    return-object p0
.end method
