.class public final Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelInfoByNameTask;
.super Lcom/ss/ugc/effectplatform/task/BaseTask;
.source "SourceFile"


# instance fields
.field private final bigVersion:Ljava/lang/String;

.field private final businessId:I

.field private final config:Lcom/ss/ugc/effectplatform/EffectConfig;

.field private final modelName:Ljava/lang/String;

.field private final taskFlag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ss/ugc/effectplatform/EffectConfig;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getCallbackManager$effectplatform_release()Lcom/ss/ugc/effectplatform/listener/CallbackManager;

    move-result-object v0

    invoke-direct {p0, p5, v0}, Lcom/ss/ugc/effectplatform/task/BaseTask;-><init>(Ljava/lang/String;Lcom/ss/ugc/effectplatform/listener/CallbackManager;)V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelInfoByNameTask;->config:Lcom/ss/ugc/effectplatform/EffectConfig;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelInfoByNameTask;->modelName:Ljava/lang/String;

    iput p3, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelInfoByNameTask;->businessId:I

    iput-object p4, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelInfoByNameTask;->bigVersion:Ljava/lang/String;

    iput-object p5, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelInfoByNameTask;->taskFlag:Ljava/lang/String;

    return-void
.end method

.method private final buildEffectRequest()Lcom/ss/ugc/effectplatform/bridge/network/NetRequest;
    .registers 12

    .line 73
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelInfoByNameTask;->config:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/EffectConfig;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_b

    goto :goto_c

    :cond_b
    move-object v0, v1

    :goto_c
    const-string v2, "sdk_version"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 74
    iget-object v2, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelInfoByNameTask;->config:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {v2}, Lcom/ss/ugc/effectplatform/EffectConfig;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1b

    move-object v1, v2

    :cond_1b
    const-string v2, "device_type"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 75
    const-string v2, "device_platform"

    const-string v3, "android"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 76
    iget-object v3, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelInfoByNameTask;->config:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {v3}, Lcom/ss/ugc/effectplatform/EffectConfig;->getModelFileEnv()Lcom/ss/ugc/effectplatform/EffectConfig$ModelFileEnv;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3b

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_3c

    :cond_3b
    move-object v3, v4

    :goto_3c
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "status"

    invoke-static {v5, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    .line 77
    const-string v5, "name"

    iget-object v6, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelInfoByNameTask;->modelName:Ljava/lang/String;

    invoke-static {v5, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    filled-new-array {v0, v1, v2, v3, v5}, [Lkotlin/Pair;

    move-result-object v0

    .line 72
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 79
    iget v1, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelInfoByNameTask;->businessId:I

    if-lez v1, :cond_63

    .line 80
    const-string v2, "busi_id"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_63
    sget-object v5, Lcom/ss/ugc/effectplatform/util/EffectRequestUtil;->INSTANCE:Lcom/ss/ugc/effectplatform/util/EffectRequestUtil;

    iget-object v6, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelInfoByNameTask;->config:Lcom/ss/ugc/effectplatform/EffectConfig;

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lcom/ss/ugc/effectplatform/util/EffectRequestUtil;->addCommonParams$default(Lcom/ss/ugc/effectplatform/util/EffectRequestUtil;Lcom/ss/ugc/effectplatform/EffectConfig;ZZILjava/lang/Object;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 83
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelInfoByNameTask;->bigVersion:Ljava/lang/String;

    if-eqz v1, :cond_84

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7d

    move-object v4, v1

    :cond_7d
    if-eqz v4, :cond_84

    const-string v1, "big_version"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_84
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelInfoByNameTask;->config:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/EffectConfig;->getHost()Ljava/lang/String;

    move-result-object p0

    .line 85
    sget-object v1, Lcom/ss/ugc/effectplatform/util/NetworkUtils;->INSTANCE:Lcom/ss/ugc/effectplatform/util/NetworkUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/model/api/model"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/ss/ugc/effectplatform/util/NetworkUtils;->buildRequestUrl(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 86
    new-instance v2, Lcom/ss/ugc/effectplatform/bridge/network/NetRequest;

    sget-object v4, Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;->GET:Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;

    const/16 v9, 0x3c

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/ss/ugc/effectplatform/bridge/network/NetRequest;-><init>(Ljava/lang/String;Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2
.end method

.method private final onFail(Lcom/ss/ugc/effectplatform/model/ExceptionResult;)V
    .registers 8

    .line 59
    sget-object v0, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetch single model info failed!, "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "FetchModelInfoByNameTask"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lbytekn/foundation/logger/Logger;->e$default(Lbytekn/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method private final onSuccess(Lcom/ss/ugc/effectplatform/model/algorithm/SingleAlgorithmModelResponse;)V
    .registers 2

    return-void
.end method


# virtual methods
.method protected execute()V
    .registers 1

    .line 27
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelInfoByNameTask;->runDirectly()Lcom/ss/ugc/effectplatform/model/algorithm/SingleAlgorithmModelResponse;

    return-void
.end method

.method public final runDirectly()Lcom/ss/ugc/effectplatform/model/algorithm/SingleAlgorithmModelResponse;
    .registers 6

    .line 31
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelInfoByNameTask;->buildEffectRequest()Lcom/ss/ugc/effectplatform/bridge/network/NetRequest;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelInfoByNameTask;->config:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getEffectNetWorker()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object v1

    invoke-virtual {v1}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;

    const/4 v2, 0x0

    if-nez v1, :cond_1e

    .line 34
    new-instance v0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;

    const/16 v1, 0x271b

    invoke-direct {v0, v1}, Lcom/ss/ugc/effectplatform/model/ExceptionResult;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelInfoByNameTask;->onFail(Lcom/ss/ugc/effectplatform/model/ExceptionResult;)V

    return-object v2

    .line 38
    :cond_1e
    :try_start_1e
    invoke-interface {v1, v0}, Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;->fetchFromNetwork(Lcom/ss/ugc/effectplatform/bridge/network/NetRequest;)Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;->getBodyStream()Lcom/ss/ugc/effectplatform/bridge/network/ByteReadStream;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/ugc/effectplatform/extension/StreamExKt;->convertToString(Lcom/ss/ugc/effectplatform/bridge/network/ByteReadStream;)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_3d

    .line 41
    new-instance v0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;

    const/16 v1, 0x2712

    invoke-direct {v0, v1}, Lcom/ss/ugc/effectplatform/model/ExceptionResult;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelInfoByNameTask;->onFail(Lcom/ss/ugc/effectplatform/model/ExceptionResult;)V

    return-object v2

    :catch_3b
    move-exception v0

    goto :goto_64

    .line 44
    :cond_3d
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelInfoByNameTask;->config:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getJsonConverter()Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;

    move-result-object v1

    if-eqz v1, :cond_52

    .line 9
    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;->getIJsonConverter()Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IAndroidJsonConverter;

    move-result-object v1

    const-class v3, Lcom/ss/ugc/effectplatform/model/algorithm/SingleAlgorithmModelResponse;

    invoke-interface {v1, v0, v3}, Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IAndroidJsonConverter;->convertJsonToObj(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/ugc/effectplatform/model/algorithm/SingleAlgorithmModelResponse;

    goto :goto_53

    :cond_52
    move-object v0, v2

    :goto_53
    if-nez v0, :cond_60

    .line 46
    new-instance v0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;

    const/16 v1, 0x2718

    invoke-direct {v0, v1}, Lcom/ss/ugc/effectplatform/model/ExceptionResult;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelInfoByNameTask;->onFail(Lcom/ss/ugc/effectplatform/model/ExceptionResult;)V

    return-object v2

    .line 49
    :cond_60
    invoke-direct {p0, v0}, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelInfoByNameTask;->onSuccess(Lcom/ss/ugc/effectplatform/model/algorithm/SingleAlgorithmModelResponse;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_63} :catch_3b

    return-object v0

    .line 52
    :goto_64
    sget-object v1, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    const-string v3, "FetchModelInfoByNameTask"

    const-string v4, "fetch single model info failed!"

    invoke-virtual {v1, v3, v4, v0}, Lbytekn/foundation/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    new-instance v1, Lcom/ss/ugc/effectplatform/model/ExceptionResult;

    invoke-direct {v1, v0}, Lcom/ss/ugc/effectplatform/model/ExceptionResult;-><init>(Ljava/lang/Exception;)V

    invoke-direct {p0, v1}, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelInfoByNameTask;->onFail(Lcom/ss/ugc/effectplatform/model/ExceptionResult;)V

    return-object v2
.end method
