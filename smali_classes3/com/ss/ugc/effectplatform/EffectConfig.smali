.class public Lcom/ss/ugc/effectplatform/EffectConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ugc/effectplatform/EffectConfig$Builder;,
        Lcom/ss/ugc/effectplatform/EffectConfig$ModelFileEnv;,
        Lcom/ss/ugc/effectplatform/EffectConfig$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/ss/ugc/effectplatform/EffectConfig$Companion;


# instance fields
.field private accessKey:Ljava/lang/String;

.field private algorithmDir:Ljava/lang/String;

.field private apiAddress:Ljava/lang/String;

.field private appContext:Ljava/lang/Object;

.field private appId:Ljava/lang/String;

.field private appLanguage:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private cache:Lbytekn/foundation/concurrent/SharedReference;

.field private final callbackManager:Lcom/ss/ugc/effectplatform/listener/CallbackManager;

.field private channel:Ljava/lang/String;

.field private customModelsMappingConfig:Lcom/ss/ugc/effectplatform/algorithm/ModelsMappingConfig;

.field private customSdkVersion:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private deviceType:Ljava/lang/String;

.field private draftList:Ljava/util/List;

.field private effectDir:Ljava/lang/String;

.field private final effectDownloadManager:Lcom/ss/ugc/effectplatform/repository/EffectDownloadManager;

.field private final effectFetcher:Lbytekn/foundation/concurrent/SharedReference;

.field private effectMaxCacheSize:J

.field private final effectNetWorker:Lbytekn/foundation/concurrent/SharedReference;

.field private exclusionPattern:Ljava/lang/String;

.field private executor:Lbytekn/foundation/concurrent/executor/ExecutorService;

.field private fileUnZipper:Lbytekn/foundation/concurrent/SharedReference;

.field private filterType:Ljava/lang/Integer;

.field private gpuVersion:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private iopInfo:Ljava/util/HashMap;

.field private jsonConverter:Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;

.field private modelApiMaxTryCount:I

.field private modelFileEnv:Lcom/ss/ugc/effectplatform/EffectConfig$ModelFileEnv;

.field private modelType:Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;

.field private monitorReport:Lbytekn/foundation/concurrent/SharedReference;

.field private platform:Ljava/lang/String;

.field private region:Ljava/lang/String;

.field private requestStrategy:I

.field private retryCount:I

.field private sdkVersion:Ljava/lang/String;

.field private taskManager:Lcom/ss/ugc/effectplatform/task/TaskManager;

.field private testStatus:Ljava/lang/String;

.field private verifySignature:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ss/ugc/effectplatform/EffectConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/ugc/effectplatform/EffectConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ss/ugc/effectplatform/EffectConfig;->Companion:Lcom/ss/ugc/effectplatform/EffectConfig$Companion;

    return-void
.end method

.method protected constructor <init>(Lcom/ss/ugc/effectplatform/EffectConfig$Builder;)V
    .registers 7

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const-string v0, "/effect/api"

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->apiAddress:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->getAccessKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->accessKey:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->sdkVersion:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->appVersion:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->deviceId:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->getChannel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2b

    goto :goto_2d

    :cond_2b
    const-string v0, "online"

    :goto_2d
    iput-object v0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->channel:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->getPlatform()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_38

    const-string v0, "android"

    goto :goto_3c

    :cond_38
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->getPlatform()Ljava/lang/String;

    move-result-object v0

    :goto_3c
    iput-object v0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->platform:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->deviceType:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->getEffectDir()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4b

    goto :goto_4d

    :cond_4b
    const-string v0, ""

    :goto_4d
    iput-object v0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->effectDir:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->getRegion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->region:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->getAppID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5e

    const-string v0, "0"

    goto :goto_62

    :cond_5e
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->getAppID()Ljava/lang/String;

    move-result-object v0

    :goto_62
    iput-object v0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->appId:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->getAppLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->appLanguage:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->getIopInfo()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->iopInfo:Ljava/util/HashMap;

    .line 146
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->getRetryCount()I

    move-result v0

    iput v0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->retryCount:I

    .line 148
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->getModelApiMaxTryCount()I

    move-result v0

    iput v0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->modelApiMaxTryCount:I

    .line 150
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->getRequestStrategy()I

    move-result v0

    iput v0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->requestStrategy:I

    .line 155
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->getJsonConverter()Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;

    move-result-object v0

    if-eqz v0, :cond_89

    goto :goto_8d

    :cond_89
    invoke-static {}, Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverterKt;->createDefaultJsonConverter()Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;

    move-result-object v0

    :goto_8d
    iput-object v0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->jsonConverter:Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;

    .line 157
    new-instance v0, Lbytekn/foundation/concurrent/SharedReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbytekn/foundation/concurrent/SharedReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->effectNetWorker:Lbytekn/foundation/concurrent/SharedReference;

    .line 159
    new-instance v2, Lbytekn/foundation/concurrent/SharedReference;

    invoke-direct {v2, v1}, Lbytekn/foundation/concurrent/SharedReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->monitorReport:Lbytekn/foundation/concurrent/SharedReference;

    .line 161
    new-instance v2, Lbytekn/foundation/concurrent/SharedReference;

    invoke-direct {v2, v1}, Lbytekn/foundation/concurrent/SharedReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->fileUnZipper:Lbytekn/foundation/concurrent/SharedReference;

    .line 163
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->getMExecutor()Lbytekn/foundation/concurrent/executor/ExecutorService;

    move-result-object v2

    if-eqz v2, :cond_ac

    goto :goto_b1

    :cond_ac
    new-instance v2, Lbytekn/foundation/concurrent/executor/AsyncExecutor;

    invoke-direct {v2}, Lbytekn/foundation/concurrent/executor/AsyncExecutor;-><init>()V

    :goto_b1
    iput-object v2, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->executor:Lbytekn/foundation/concurrent/executor/ExecutorService;

    .line 165
    new-instance v2, Lbytekn/foundation/concurrent/SharedReference;

    invoke-direct {v2, v1}, Lbytekn/foundation/concurrent/SharedReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->effectFetcher:Lbytekn/foundation/concurrent/SharedReference;

    .line 166
    new-instance v3, Lbytekn/foundation/concurrent/SharedReference;

    invoke-direct {v3, v1}, Lbytekn/foundation/concurrent/SharedReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->cache:Lbytekn/foundation/concurrent/SharedReference;

    .line 167
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->getGpuVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->gpuVersion:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->getTestStatus()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->testStatus:Ljava/lang/String;

    .line 171
    new-instance v1, Lcom/ss/ugc/effectplatform/task/TaskManager$Builder;

    invoke-direct {v1}, Lcom/ss/ugc/effectplatform/task/TaskManager$Builder;-><init>()V

    iget-object v3, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->executor:Lbytekn/foundation/concurrent/executor/ExecutorService;

    if-nez v3, :cond_d9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_d9
    invoke-virtual {v1, v3}, Lcom/ss/ugc/effectplatform/task/TaskManager$Builder;->setExecutor(Lbytekn/foundation/concurrent/executor/ExecutorService;)Lcom/ss/ugc/effectplatform/task/TaskManager$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/task/TaskManager$Builder;->build()Lcom/ss/ugc/effectplatform/task/TaskManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->taskManager:Lcom/ss/ugc/effectplatform/task/TaskManager;

    .line 172
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->getHosts()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->host:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->getDraftList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->draftList:Ljava/util/List;

    .line 178
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->getAppContext()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->appContext:Ljava/lang/Object;

    .line 181
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->getModelType()Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->modelType:Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;

    .line 183
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->getExclusionPattern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->exclusionPattern:Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->getModelFileEnv()Lcom/ss/ugc/effectplatform/EffectConfig$ModelFileEnv;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->modelFileEnv:Lcom/ss/ugc/effectplatform/EffectConfig$ModelFileEnv;

    .line 188
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->getAlgorithmDir()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10e

    goto :goto_12a

    :cond_10e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->effectDir:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    invoke-virtual {v3}, Lbytekn/foundation/io/file/FileManager;->getSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "algorithm"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_12a
    iput-object v1, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->algorithmDir:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->getCustomModelsMappingConfig()Lcom/ss/ugc/effectplatform/algorithm/ModelsMappingConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->customModelsMappingConfig:Lcom/ss/ugc/effectplatform/algorithm/ModelsMappingConfig;

    .line 192
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->getEffectMaxCacheSize()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->effectMaxCacheSize:J

    .line 195
    sget-object v1, Lcom/ss/ugc/effectplatform/repository/EffectDownloadManager;->INSTANCE:Lcom/ss/ugc/effectplatform/repository/EffectDownloadManager;

    iput-object v1, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->effectDownloadManager:Lcom/ss/ugc/effectplatform/repository/EffectDownloadManager;

    .line 197
    new-instance v1, Lcom/ss/ugc/effectplatform/listener/CallbackManager;

    invoke-direct {v1}, Lcom/ss/ugc/effectplatform/listener/CallbackManager;-><init>()V

    iput-object v1, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->callbackManager:Lcom/ss/ugc/effectplatform/listener/CallbackManager;

    .line 199
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->getFilterType()Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->filterType:Ljava/lang/Integer;

    .line 203
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->getCustomSdkVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->customSdkVersion:Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->getVerifySignature()Z

    move-result v1

    iput-boolean v1, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->verifySignature:Z

    .line 209
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->getEffectNetWorker()Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbytekn/foundation/concurrent/SharedReference;->set(Ljava/lang/Object;)V

    .line 210
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->getEffectFetcher()Lcom/ss/ugc/effectplatform/bridge/EffectFetcher;

    move-result-object v0

    if-eqz v0, :cond_163

    goto :goto_168

    :cond_163
    new-instance v0, Lcom/ss/ugc/effectplatform/bridge/EffectFetcherImpl;

    invoke-direct {v0, p0}, Lcom/ss/ugc/effectplatform/bridge/EffectFetcherImpl;-><init>(Lcom/ss/ugc/effectplatform/EffectConfig;)V

    :goto_168
    invoke-static {v2, v0}, Lbytekn/foundation/concurrent/SharedRefrenceKt;->setValue(Lbytekn/foundation/concurrent/SharedReference;Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->monitorReport:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->getMonitorReport()Lcom/ss/ugc/effectplatform/monitor/IMonitorReport;

    move-result-object v1

    invoke-static {v0, v1}, Lbytekn/foundation/concurrent/SharedRefrenceKt;->setValue(Lbytekn/foundation/concurrent/SharedReference;Ljava/lang/Object;)V

    .line 212
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->cache:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig$Builder;->getCache()Lcom/ss/ugc/effectplatform/cache/ICache;

    move-result-object p1

    invoke-static {p0, p1}, Lbytekn/foundation/concurrent/SharedRefrenceKt;->setValue(Lbytekn/foundation/concurrent/SharedReference;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getAccessKey()Ljava/lang/String;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->accessKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getAlgorithmDir()Ljava/lang/String;
    .registers 1

    .line 188
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->algorithmDir:Ljava/lang/String;

    return-object p0
.end method

.method public final getAppContext()Ljava/lang/Object;
    .registers 1

    .line 178
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->appContext:Ljava/lang/Object;

    return-object p0
.end method

.method public final getAppId()Ljava/lang/String;
    .registers 1

    .line 135
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->appId:Ljava/lang/String;

    return-object p0
.end method

.method public final getAppLanguage()Ljava/lang/String;
    .registers 1

    .line 139
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->appLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public final getAppVersion()Ljava/lang/String;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->appVersion:Ljava/lang/String;

    return-object p0
.end method

.method public final getCache()Lbytekn/foundation/concurrent/SharedReference;
    .registers 1

    .line 166
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->cache:Lbytekn/foundation/concurrent/SharedReference;

    return-object p0
.end method

.method public final getCallbackManager$effectplatform_release()Lcom/ss/ugc/effectplatform/listener/CallbackManager;
    .registers 1

    .line 197
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->callbackManager:Lcom/ss/ugc/effectplatform/listener/CallbackManager;

    return-object p0
.end method

.method public final getChannel()Ljava/lang/String;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->channel:Ljava/lang/String;

    return-object p0
.end method

.method public final getCustomModelsMappingConfig()Lcom/ss/ugc/effectplatform/algorithm/ModelsMappingConfig;
    .registers 1

    .line 190
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->customModelsMappingConfig:Lcom/ss/ugc/effectplatform/algorithm/ModelsMappingConfig;

    return-object p0
.end method

.method public final getCustomSdkVersion()Ljava/lang/String;
    .registers 1

    .line 203
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->customSdkVersion:Ljava/lang/String;

    return-object p0
.end method

.method public final getDeviceId()Ljava/lang/String;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final getDeviceType()Ljava/lang/String;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->deviceType:Ljava/lang/String;

    return-object p0
.end method

.method public final getDraftList()Ljava/util/List;
    .registers 1

    .line 176
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->draftList:Ljava/util/List;

    return-object p0
.end method

.method public final getEffectDir()Ljava/lang/String;
    .registers 1

    .line 127
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->effectDir:Ljava/lang/String;

    return-object p0
.end method

.method public final getEffectMaxCacheSize()J
    .registers 3

    .line 192
    iget-wide v0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->effectMaxCacheSize:J

    return-wide v0
.end method

.method public final getEffectNetWorker()Lbytekn/foundation/concurrent/SharedReference;
    .registers 1

    .line 157
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->effectNetWorker:Lbytekn/foundation/concurrent/SharedReference;

    return-object p0
.end method

.method public final getExclusionPattern()Ljava/lang/String;
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->exclusionPattern:Ljava/lang/String;

    return-object p0
.end method

.method public final getExecutor()Lbytekn/foundation/concurrent/executor/ExecutorService;
    .registers 1

    .line 163
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->executor:Lbytekn/foundation/concurrent/executor/ExecutorService;

    return-object p0
.end method

.method public final getFilterType()Ljava/lang/Integer;
    .registers 1

    .line 199
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->filterType:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getGpuVersion()Ljava/lang/String;
    .registers 1

    .line 167
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->gpuVersion:Ljava/lang/String;

    return-object p0
.end method

.method public final getHost()Ljava/lang/String;
    .registers 1

    .line 172
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->host:Ljava/lang/String;

    return-object p0
.end method

.method public final getIopInfo()Ljava/util/HashMap;
    .registers 1

    .line 143
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->iopInfo:Ljava/util/HashMap;

    return-object p0
.end method

.method public final getJsonConverter()Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;
    .registers 1

    .line 154
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->jsonConverter:Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;

    return-object p0
.end method

.method public final getModelApiMaxTryCount()I
    .registers 1

    .line 148
    iget p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->modelApiMaxTryCount:I

    return p0
.end method

.method public final getModelDownloadEventListener()Lcom/ss/ugc/effectplatform/listener/IModelDownloadEventListener;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getModelFileEnv()Lcom/ss/ugc/effectplatform/EffectConfig$ModelFileEnv;
    .registers 1

    .line 185
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->modelFileEnv:Lcom/ss/ugc/effectplatform/EffectConfig$ModelFileEnv;

    return-object p0
.end method

.method public final getModelType()Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;
    .registers 1

    .line 181
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->modelType:Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;

    return-object p0
.end method

.method public final getMonitorReport()Lbytekn/foundation/concurrent/SharedReference;
    .registers 1

    .line 159
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->monitorReport:Lbytekn/foundation/concurrent/SharedReference;

    return-object p0
.end method

.method public final getPlatform()Ljava/lang/String;
    .registers 1

    .line 121
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->platform:Ljava/lang/String;

    return-object p0
.end method

.method public final getRegion()Ljava/lang/String;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->region:Ljava/lang/String;

    return-object p0
.end method

.method public final getRequestStrategy()I
    .registers 1

    .line 150
    iget p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->requestStrategy:I

    return p0
.end method

.method public final getRetryCount()I
    .registers 1

    .line 146
    iget p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->retryCount:I

    return p0
.end method

.method public final getSdkVersion()Ljava/lang/String;
    .registers 1

    .line 111
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->sdkVersion:Ljava/lang/String;

    return-object p0
.end method

.method public final getTaskManager()Lcom/ss/ugc/effectplatform/task/TaskManager;
    .registers 1

    .line 171
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->taskManager:Lcom/ss/ugc/effectplatform/task/TaskManager;

    return-object p0
.end method

.method public final setTaskManager(Lcom/ss/ugc/effectplatform/task/TaskManager;)V
    .registers 2

    .line 171
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/EffectConfig;->taskManager:Lcom/ss/ugc/effectplatform/task/TaskManager;

    return-void
.end method
