.class public final Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;


# direct methods
.method public constructor <init>(Lcom/ss/ugc/effectplatform/EffectConfig;)V
    .registers 3

    const-string v0, "effectConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    return-void
.end method

.method public static final synthetic access$getEffectConfig$p(Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository;)Lcom/ss/ugc/effectplatform/EffectConfig;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    return-object p0
.end method


# virtual methods
.method public final downloadThirdPartyEffect(Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;)V
    .registers 11

    const-string v0, "effect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/EffectConfig;->getTaskManager()Lcom/ss/ugc/effectplatform/task/TaskManager;

    move-result-object v0

    if-eqz v0, :cond_1c

    new-instance v1, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/ss/ugc/effectplatform/task/dag/DownloadEffectTask;-><init>(Lcom/ss/ugc/effectplatform/EffectConfig;Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;ILcom/ss/ugc/effectplatform/task/pipline/DownloadListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lcom/ss/ugc/effectplatform/task/TaskManager;->commit(Lbytekn/foundation/task/ITask;)V

    :cond_1c
    return-void
.end method

.method public final fetchThirdPartyEffectInfo(Ljava/lang/String;Ljava/util/Map;Lkotlin/reflect/KClass;Lcom/ss/ugc/effectplatform/listener/IEffectPlatformBaseListener;)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    const-string/jumbo v4, "urlPath"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "responseModel"

    move-object/from16 v9, p3

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v4, Lcom/ss/ugc/effectplatform/util/TaskUtil;->INSTANCE:Lcom/ss/ugc/effectplatform/util/TaskUtil;

    invoke-virtual {v4}, Lcom/ss/ugc/effectplatform/util/TaskUtil;->generateTaskId()Ljava/lang/String;

    move-result-object v10

    if-eqz v3, :cond_26

    .line 39
    iget-object v4, v0, Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {v4}, Lcom/ss/ugc/effectplatform/EffectConfig;->getCallbackManager$effectplatform_release()Lcom/ss/ugc/effectplatform/listener/CallbackManager;

    move-result-object v4

    invoke-virtual {v4, v10, v3}, Lcom/ss/ugc/effectplatform/listener/CallbackManager;->putEffectPlatformBaseListener(Ljava/lang/String;Lcom/ss/ugc/effectplatform/listener/IEffectPlatformBaseListener;)V

    .line 41
    :cond_26
    sget-object v11, Lcom/ss/ugc/effectplatform/util/EffectRequestUtil;->INSTANCE:Lcom/ss/ugc/effectplatform/util/EffectRequestUtil;

    iget-object v12, v0, Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    const/4 v15, 0x6

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lcom/ss/ugc/effectplatform/util/EffectRequestUtil;->addCommonParams$default(Lcom/ss/ugc/effectplatform/util/EffectRequestUtil;Lcom/ss/ugc/effectplatform/EffectConfig;ZZILjava/lang/Object;)Ljava/util/HashMap;

    move-result-object v3

    if-eqz v2, :cond_3f

    .line 42
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3c

    goto :goto_3f

    .line 43
    :cond_3c
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 45
    :cond_3f
    :goto_3f
    new-instance v11, Lcom/ss/ugc/effectplatform/bridge/network/NetRequest;

    sget-object v2, Lcom/ss/ugc/effectplatform/util/NetworkUtils;->INSTANCE:Lcom/ss/ugc/effectplatform/util/NetworkUtils;

    iget-object v4, v0, Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {v4}, Lcom/ss/ugc/effectplatform/EffectConfig;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/ss/ugc/effectplatform/util/NetworkUtils;->buildRequestUrl(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;->GET:Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;

    const/16 v18, 0x3c

    const/16 v19, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v11 .. v19}, Lcom/ss/ugc/effectplatform/bridge/network/NetRequest;-><init>(Ljava/lang/String;Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 46
    new-instance v6, Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository$fetchThirdPartyEffectInfo$executionContext$1;

    invoke-direct {v6, v0}, Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository$fetchThirdPartyEffectInfo$executionContext$1;-><init>(Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository;)V

    .line 60
    iget-object v1, v0, Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getTaskManager()Lcom/ss/ugc/effectplatform/task/TaskManager;

    move-result-object v1

    if-eqz v1, :cond_7c

    new-instance v5, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;

    .line 61
    iget-object v0, v0, Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/EffectConfig;->getRetryCount()I

    move-result v7

    move-object v8, v11

    .line 60
    invoke-direct/range {v5 .. v10}, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;-><init>(Lcom/ss/ugc/effectplatform/ExecutionContext;ILcom/ss/ugc/effectplatform/bridge/network/NetRequest;Lkotlin/reflect/KClass;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/ss/ugc/effectplatform/task/TaskManager;->commit(Lbytekn/foundation/task/ITask;)V

    :cond_7c
    return-void
.end method

.method public final isThirdPartyEffectDownloaded(Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;)Z
    .registers 8

    const-string v0, "effect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 84
    sget-object v0, Lcom/ss/ugc/effectplatform/util/EffectUtils;->INSTANCE:Lcom/ss/ugc/effectplatform/util/EffectUtils;

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/EffectConfig;->getEffectDir()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/ss/ugc/effectplatform/util/EffectUtils;->setEffectPath(Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;)V

    .line 86
    :cond_1a
    sget-object p0, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbytekn/foundation/io/file/FileManager;->exists(Ljava/lang/String;)Z

    move-result p0

    .line 87
    sget-object v0, Lcom/ss/ugc/effectplatform/UseComplexDiff;->INSTANCE:Lcom/ss/ugc/effectplatform/UseComplexDiff;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/UseComplexDiff;->getEnableComplexDiff()Z

    move-result v0

    if-eqz v0, :cond_7a

    if-eqz p0, :cond_7a

    .line 88
    sget-object p0, Lbytekn/foundation/concurrent/clock/DefaultClock;->INSTANCE:Lbytekn/foundation/concurrent/clock/DefaultClock;

    invoke-virtual {p0}, Lbytekn/foundation/concurrent/clock/DefaultClock;->getCurrentTimeMillis()J

    move-result-wide v0

    .line 89
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/ugc/effectplatform/util/EffectUtilKt;->checkEffectChildrenFile(Ljava/lang/String;)Z

    move-result v2

    .line 90
    sget-object v3, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkEffectChildrenFile effect: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", result: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", time cost: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lbytekn/foundation/concurrent/clock/DefaultClock;->getCurrentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v0

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "checkEffect"

    invoke-virtual {v3, p1, p0}, Lbytekn/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_7a
    return p0
.end method
