.class public final Lcom/ss/ugc/effectplatform/task/FetchModelListTask;
.super Lcom/ss/ugc/effectplatform/task/BaseTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ugc/effectplatform/task/FetchModelListTask$Callback;
    }
.end annotation


# instance fields
.field private final bid:I

.field private final buildInAssetsManager:Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;

.field private final config:Lcom/ss/ugc/effectplatform/EffectConfig;

.field private final customModelsMappingConfig:Lcom/ss/ugc/effectplatform/algorithm/ModelsMappingConfig;

.field private final hasStarted:Lbytekn/foundation/concurrent/lock/AtomicBoolean;

.field private final resultCallback:Lcom/ss/ugc/effectplatform/task/FetchModelListTask$Callback;


# direct methods
.method public constructor <init>(Lcom/ss/ugc/effectplatform/EffectConfig;Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;ILcom/ss/ugc/effectplatform/task/FetchModelListTask$Callback;)V
    .registers 7

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildInAssetsManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 34
    invoke-direct {p0, v0, v0, v1, v0}, Lcom/ss/ugc/effectplatform/task/BaseTask;-><init>(Ljava/lang/String;Lcom/ss/ugc/effectplatform/listener/CallbackManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/FetchModelListTask;->config:Lcom/ss/ugc/effectplatform/EffectConfig;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/task/FetchModelListTask;->buildInAssetsManager:Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;

    iput p3, p0, Lcom/ss/ugc/effectplatform/task/FetchModelListTask;->bid:I

    iput-object p4, p0, Lcom/ss/ugc/effectplatform/task/FetchModelListTask;->resultCallback:Lcom/ss/ugc/effectplatform/task/FetchModelListTask$Callback;

    .line 36
    new-instance p2, Lbytekn/foundation/concurrent/lock/AtomicBoolean;

    const/4 p4, 0x0

    invoke-direct {p2, p4}, Lbytekn/foundation/concurrent/lock/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/task/FetchModelListTask;->hasStarted:Lbytekn/foundation/concurrent/lock/AtomicBoolean;

    .line 37
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getCustomModelsMappingConfig()Lcom/ss/ugc/effectplatform/algorithm/ModelsMappingConfig;

    move-result-object p2

    if-eqz p2, :cond_26

    goto :goto_2b

    .line 38
    :cond_26
    new-instance p2, Lcom/ss/ugc/effectplatform/task/DefaultModelsMappingConfig;

    invoke-direct {p2, p1, p3}, Lcom/ss/ugc/effectplatform/task/DefaultModelsMappingConfig;-><init>(Lcom/ss/ugc/effectplatform/EffectConfig;I)V

    :goto_2b
    iput-object p2, p0, Lcom/ss/ugc/effectplatform/task/FetchModelListTask;->customModelsMappingConfig:Lcom/ss/ugc/effectplatform/algorithm/ModelsMappingConfig;

    return-void
.end method

.method private final buildRequest()Lcom/ss/ugc/effectplatform/bridge/network/NetRequest;
    .registers 12

    .line 50
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 51
    :try_start_5
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/FetchModelListTask;->buildInAssetsManager:Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;

    const-string v2, "model/effect_local_config.json"

    invoke-virtual {v0, v2}, Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    goto :goto_1f

    :catchall_14
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    :goto_1f
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_27

    move-object v0, v3

    .line 51
    :cond_27
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_67

    .line 55
    :try_start_2b
    iget-object v2, p0, Lcom/ss/ugc/effectplatform/task/FetchModelListTask;->config:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {v2}, Lcom/ss/ugc/effectplatform/EffectConfig;->getJsonConverter()Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 9
    invoke-virtual {v2}, Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;->getIJsonConverter()Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IAndroidJsonConverter;

    move-result-object v2

    const-class v4, Lcom/ss/ugc/effectplatform/model/TagInfo;

    invoke-interface {v2, v0, v4}, Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IAndroidJsonConverter;->convertJsonToObj(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/ugc/effectplatform/model/TagInfo;

    goto :goto_43

    :catchall_40
    move-exception v0

    goto :goto_48

    :cond_42
    move-object v0, v3

    .line 54
    :goto_43
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_47
    .catchall {:try_start_2b .. :try_end_47} :catchall_40

    goto :goto_52

    :goto_48
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 56
    :goto_52
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    goto :goto_5a

    :cond_59
    move-object v3, v0

    .line 54
    :goto_5a
    check-cast v3, Lcom/ss/ugc/effectplatform/model/TagInfo;

    if-eqz v3, :cond_67

    .line 57
    const-string v0, "tag"

    invoke-virtual {v3}, Lcom/ss/ugc/effectplatform/model/TagInfo;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_67
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/FetchModelListTask;->customModelsMappingConfig:Lcom/ss/ugc/effectplatform/algorithm/ModelsMappingConfig;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/algorithm/ModelsMappingConfig;->getRequestParams()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7c

    .line 60
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/FetchModelListTask;->customModelsMappingConfig:Lcom/ss/ugc/effectplatform/algorithm/ModelsMappingConfig;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/algorithm/ModelsMappingConfig;->getRequestParams()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 62
    :cond_7c
    sget-object v2, Lcom/ss/ugc/effectplatform/util/EffectRequestUtil;->INSTANCE:Lcom/ss/ugc/effectplatform/util/EffectRequestUtil;

    iget-object v3, p0, Lcom/ss/ugc/effectplatform/task/FetchModelListTask;->config:Lcom/ss/ugc/effectplatform/EffectConfig;

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/ss/ugc/effectplatform/util/EffectRequestUtil;->addCommonParams$default(Lcom/ss/ugc/effectplatform/util/EffectRequestUtil;Lcom/ss/ugc/effectplatform/EffectConfig;ZZILjava/lang/Object;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 63
    new-instance v2, Lcom/ss/ugc/effectplatform/bridge/network/NetRequest;

    sget-object v0, Lcom/ss/ugc/effectplatform/util/NetworkUtils;->INSTANCE:Lcom/ss/ugc/effectplatform/util/NetworkUtils;

    iget-object v3, p0, Lcom/ss/ugc/effectplatform/task/FetchModelListTask;->config:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {v3}, Lcom/ss/ugc/effectplatform/EffectConfig;->getHost()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/FetchModelListTask;->customModelsMappingConfig:Lcom/ss/ugc/effectplatform/algorithm/ModelsMappingConfig;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/algorithm/ModelsMappingConfig;->getRequestPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/ss/ugc/effectplatform/util/NetworkUtils;->buildRequestUrl(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;->GET:Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;

    const/16 v9, 0x3c

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/ss/ugc/effectplatform/bridge/network/NetRequest;-><init>(Ljava/lang/String;Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2
.end method


# virtual methods
.method protected execute()V
    .registers 4

    .line 71
    sget-object v0, Lbytekn/foundation/utils/Stopwatch;->Companion:Lbytekn/foundation/utils/Stopwatch$Companion;

    invoke-virtual {v0}, Lbytekn/foundation/utils/Stopwatch$Companion;->createStarted()Lbytekn/foundation/utils/Stopwatch;

    .line 73
    :try_start_5
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/task/BaseTask;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_d

    goto/16 :goto_a3

    .line 76
    :cond_d
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/task/FetchModelListTask;->buildRequest()Lcom/ss/ugc/effectplatform/bridge/network/NetRequest;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/task/FetchModelListTask;->config:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getEffectNetWorker()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object v1

    invoke-virtual {v1}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    invoke-interface {v1, v0}, Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;->fetchFromNetwork(Lcom/ss/ugc/effectplatform/bridge/network/NetRequest;)Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;

    move-result-object v0

    goto :goto_28

    :catch_25
    move-exception v0

    goto :goto_95

    :cond_27
    move-object v0, v2

    :goto_28
    if-eqz v0, :cond_34

    .line 78
    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;->getBodyStream()Lcom/ss/ugc/effectplatform/bridge/network/ByteReadStream;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-static {v0}, Lcom/ss/ugc/effectplatform/extension/StreamExKt;->convertToString(Lcom/ss/ugc/effectplatform/bridge/network/ByteReadStream;)Ljava/lang/String;

    move-result-object v2

    :cond_34
    if-eqz v2, :cond_82

    .line 80
    sget-object v0, Lcom/ss/ugc/effectplatform/util/TextUtils;->INSTANCE:Lcom/ss/ugc/effectplatform/util/TextUtils;

    invoke-virtual {v0, v2}, Lcom/ss/ugc/effectplatform/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_71

    .line 81
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/FetchModelListTask;->customModelsMappingConfig:Lcom/ss/ugc/effectplatform/algorithm/ModelsMappingConfig;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/algorithm/ModelsMappingConfig;->getDataProcessor()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_60

    .line 83
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/task/FetchModelListTask;->resultCallback:Lcom/ss/ugc/effectplatform/task/FetchModelListTask$Callback;

    if-eqz v1, :cond_5a

    new-instance v2, Lcom/ss/ugc/effectplatform/model/ServerConfig;

    invoke-direct {v2, v0}, Lcom/ss/ugc/effectplatform/model/ServerConfig;-><init>(Ljava/util/List;)V

    iget v0, p0, Lcom/ss/ugc/effectplatform/task/FetchModelListTask;->bid:I

    invoke-interface {v1, v2, v0}, Lcom/ss/ugc/effectplatform/task/FetchModelListTask$Callback;->onResult(Lcom/ss/ugc/effectplatform/model/ServerConfig;I)V

    .line 84
    :cond_5a
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/FetchModelListTask;->config:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/EffectConfig;->getModelDownloadEventListener()Lcom/ss/ugc/effectplatform/listener/IModelDownloadEventListener;

    return-void

    .line 86
    :cond_60
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/FetchModelListTask;->resultCallback:Lcom/ss/ugc/effectplatform/task/FetchModelListTask$Callback;

    if-eqz v0, :cond_a3

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "result return null when parseResponse"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/ss/ugc/effectplatform/task/FetchModelListTask;->bid:I

    invoke-interface {v0, v1, v2}, Lcom/ss/ugc/effectplatform/task/FetchModelListTask$Callback;->onFail(Ljava/lang/Exception;I)V

    return-void

    .line 89
    :cond_71
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/FetchModelListTask;->resultCallback:Lcom/ss/ugc/effectplatform/task/FetchModelListTask$Callback;

    if-eqz v0, :cond_a3

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "responseString is empty when convertToString"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/ss/ugc/effectplatform/task/FetchModelListTask;->bid:I

    invoke-interface {v0, v1, v2}, Lcom/ss/ugc/effectplatform/task/FetchModelListTask$Callback;->onFail(Ljava/lang/Exception;I)V

    return-void

    .line 92
    :cond_82
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/FetchModelListTask;->resultCallback:Lcom/ss/ugc/effectplatform/task/FetchModelListTask$Callback;

    if-eqz v0, :cond_a3

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "responseString return null when convertToString"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/ss/ugc/effectplatform/task/FetchModelListTask;->bid:I

    invoke-interface {v0, v1, v2}, Lcom/ss/ugc/effectplatform/task/FetchModelListTask$Callback;->onFail(Ljava/lang/Exception;I)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_92} :catch_25
    .catchall {:try_start_5 .. :try_end_92} :catchall_93

    return-void

    :catchall_93
    move-exception p0

    .line 98
    throw p0

    .line 95
    :goto_95
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/task/FetchModelListTask;->config:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getModelDownloadEventListener()Lcom/ss/ugc/effectplatform/listener/IModelDownloadEventListener;

    .line 96
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/task/FetchModelListTask;->resultCallback:Lcom/ss/ugc/effectplatform/task/FetchModelListTask$Callback;

    if-eqz v1, :cond_a3

    iget p0, p0, Lcom/ss/ugc/effectplatform/task/FetchModelListTask;->bid:I

    invoke-interface {v1, v0, p0}, Lcom/ss/ugc/effectplatform/task/FetchModelListTask$Callback;->onFail(Ljava/lang/Exception;I)V

    :cond_a3
    :goto_a3
    return-void
.end method

.method public final waitForCompletion()V
    .registers 3

    .line 41
    # getter for: Lcom/ss/ugc/effectplatform/task/FetchModelListTaskKt;->classLock:Lbytekn/foundation/concurrent/lock/Lock;
    invoke-static {}, Lcom/ss/ugc/effectplatform/task/FetchModelListTaskKt;->access$getClassLock$p()Lbytekn/foundation/concurrent/lock/Lock;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->acquire()V

    .line 42
    :try_start_7
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/task/FetchModelListTask;->hasStarted:Lbytekn/foundation/concurrent/lock/AtomicBoolean;

    invoke-virtual {v1}, Lbytekn/foundation/concurrent/lock/AtomicBoolean;->getValue()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 43
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/task/BaseTask;->run()V

    .line 44
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/FetchModelListTask;->hasStarted:Lbytekn/foundation/concurrent/lock/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lbytekn/foundation/concurrent/lock/AtomicBoolean;->setValue(Z)V

    goto :goto_1b

    :catchall_19
    move-exception p0

    goto :goto_21

    .line 46
    :cond_1b
    :goto_1b
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_19

    .line 8
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    return-void

    :goto_21
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    throw p0
.end method
