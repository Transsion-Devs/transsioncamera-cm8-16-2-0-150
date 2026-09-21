.class public final Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask;
.super Lcom/ss/ugc/effectplatform/task/dag/DagTask;
.source "SourceFile"


# instance fields
.field private final algorithmModelCache:Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;

.field private final buildInAssetsManager:Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;

.field private final businessId:I

.field private final cacheDir:Ljava/lang/String;

.field private final effectNetWorker:Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;

.field private final modelName:Ljava/lang/String;

.field private final needUnzip:Z

.field private final taskFlag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .registers 10

    const-string v0, "effectNetWorker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildInAssetsManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "algorithmModelCache"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheDir"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/task/dag/DagTask;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask;->effectNetWorker:Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask;->buildInAssetsManager:Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask;->algorithmModelCache:Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;

    iput-object p4, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask;->modelName:Ljava/lang/String;

    iput-object p5, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask;->cacheDir:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask;->needUnzip:Z

    iput p7, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask;->businessId:I

    iput-object p8, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask;->taskFlag:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 12

    and-int/lit8 p10, p9, 0x20

    const/4 v0, 0x0

    if-eqz p10, :cond_6

    move p6, v0

    :cond_6
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_b

    move p7, v0

    :cond_b
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_10

    const/4 p8, 0x0

    .line 28
    :cond_10
    invoke-direct/range {p0 .. p8}, Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask;-><init>(Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    return-void
.end method

.method private final collectLatestModelInfo(ILjava/lang/String;Lcom/ss/ugc/effectplatform/model/LoadedModelList;)Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;
    .registers 10

    .line 79
    sget-object p0, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->INSTANCE:Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;

    invoke-virtual {p0, p2}, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->getNameOfModel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 81
    invoke-static {p0, p3}, Lcom/ss/ugc/effectplatform/util/AlgorithmUtils;->getLatestModelInfo(Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/LoadedModelList;)Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    move-result-object p2

    if-nez p2, :cond_7a

    .line 83
    sget-object v0, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not exist in server"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "effect_platform"

    invoke-virtual {v0, v1, p3}, Lbytekn/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sget-object p3, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->Companion:Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$Companion;

    invoke-virtual {p3}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$Companion;->getInstance()Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p0, v3}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->requireSingleModelNonBlocking(ILjava/lang/String;Z)Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    move-result-object v2

    if-nez v2, :cond_58

    .line 85
    invoke-static {}, Lbytekn/foundation/concurrent/CurrentThreadKt;->isMainThread()Z

    move-result v3

    if-nez v3, :cond_58

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetch single model: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from server"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbytekn/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p3}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$Companion;->getInstance()Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;

    move-result-object p3

    invoke-virtual {p3, p1, p0}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->requireSingleModel(ILjava/lang/String;)Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    move-result-object v2

    :cond_58
    if-nez v2, :cond_79

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "model: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " fetched failed!"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "effect_platform"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lbytekn/foundation/logger/Logger;->e$default(Lbytekn/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-object p2

    :cond_79
    return-object v2

    :cond_7a
    return-object p2
.end method

.method private final isExactBuiltInResource(Ljava/lang/String;)Z
    .registers 5

    .line 132
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask;->buildInAssetsManager:Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "model"

    invoke-static {v1}, Lcom/ss/ugc/effectplatform/util/StringUtilKt;->joinFileSeperator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;->exists(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3a

    .line 134
    sget-object v0, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "model: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is built in resource"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "effect_platform"

    invoke-virtual {v0, v1, p1}, Lbytekn/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    return p0
.end method

.method private final isModelDownloaded(Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;Ljava/lang/String;)Z
    .registers 10

    .line 99
    sget-object v0, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->INSTANCE:Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;

    invoke-virtual {v0, p2}, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->getNameOfModel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getType()I

    move-result v3

    .line 104
    invoke-direct {p0, p2}, Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask;->isExactBuiltInResource(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_39

    .line 107
    invoke-virtual {v0, p2}, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->getVersionOfModel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 108
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 111
    invoke-virtual {v0, p2}, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->getSizeOfModel(Ljava/lang/String;)I

    move-result p2

    .line 112
    invoke-static {v4, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_2e

    move v0, v6

    goto :goto_2f

    :cond_2e
    move v0, v5

    :goto_2f
    if-ne p2, v3, :cond_33

    move p2, v6

    goto :goto_34

    :cond_33
    move p2, v5

    :goto_34
    if-eqz v0, :cond_39

    if-eqz p2, :cond_39

    return v6

    .line 120
    :cond_39
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask;->algorithmModelCache:Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;

    invoke-virtual {p0, v1}, Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;->getLocalModelInfoByName(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/model/LocalModelInfo;

    move-result-object p0

    if-nez p0, :cond_59

    .line 122
    sget-object p2, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "local model is null with name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "effect_platform"

    invoke-virtual {p2, v1, v0}, Lbytekn/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_59
    invoke-static {p0, p1}, Lcom/ss/ugc/effectplatform/util/AlgorithmUtils;->isModelNeedUpdate(Lcom/ss/ugc/effectplatform/model/LocalModelInfo;Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;)Z

    move-result p0

    if-nez p0, :cond_60

    return v6

    :cond_60
    return v5
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask;->taskFlag:Ljava/lang/String;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, ""

    return-object p0
.end method

.method public run()V
    .registers 21

    move-object/from16 v0, p0

    .line 35
    sget-object v1, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->Companion:Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$Companion;

    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$Companion;->getInstance()Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;

    move-result-object v1

    iget v2, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask;->businessId:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->requireDecidedConfig$default(Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;IZILjava/lang/Object;)Lcom/ss/ugc/effectplatform/model/LoadedModelList;

    move-result-object v1

    if-nez v1, :cond_34

    .line 37
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "model list with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask;->businessId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not found!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->notifyBehindTasksFailed(Ljava/lang/Exception;)V

    return-void

    .line 41
    :cond_34
    iget v2, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask;->businessId:I

    iget-object v3, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask;->modelName:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1}, Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask;->collectLatestModelInfo(ILjava/lang/String;Lcom/ss/ugc/effectplatform/model/LoadedModelList;)Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    move-result-object v1

    if-nez v1, :cond_5f

    .line 44
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "model: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask;->modelName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not exist in server"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->notifyBehindTasksFailed(Ljava/lang/Exception;)V

    return-void

    .line 48
    :cond_5f
    iget-object v2, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask;->modelName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask;->isModelDownloaded(Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 49
    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->notifyBehindTasksSuccess()V

    return-void

    .line 53
    :cond_6b
    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getFile_url()Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;

    move-result-object v2

    .line 54
    new-instance v6, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    const/16 v15, 0x7f

    const/16 v16, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v6 .. v16}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;JIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 55
    sget-object v3, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->INSTANCE:Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;

    iget-object v4, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask;->modelName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->getNameOfModel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->setName(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->setVersion(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v6, v2}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->setFile_url(Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;)V

    .line 58
    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getType()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->setType(I)V

    .line 59
    sget-object v1, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download model: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", version: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "effect_platform"

    invoke-virtual {v1, v4, v2}, Lbytekn/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v6}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getFile_url()Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;

    move-result-object v1

    if-eqz v1, :cond_d0

    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;->getUrl_list()Ljava/util/List;

    move-result-object v1

    move-object v9, v1

    goto :goto_d1

    :cond_d0
    move-object v9, v5

    .line 61
    :goto_d1
    move-object v1, v9

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_12f

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_dd

    goto :goto_12f

    .line 65
    :cond_dd
    invoke-virtual {v3, v6}, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->getFullNameFromModelInfo(Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;)Ljava/lang/String;

    move-result-object v1

    .line 66
    sget-object v2, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->Companion:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Companion;

    invoke-virtual {v2, v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Companion;->toDiskLruCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    new-instance v7, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;

    iget-object v8, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask;->effectNetWorker:Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;

    .line 68
    iget-object v10, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask;->cacheDir:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask;->cacheDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    invoke-virtual {v3}, Lbytekn/foundation/io/file/FileManager;->getSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-boolean v12, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask;->needUnzip:Z

    iget-object v13, v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask;->algorithmModelCache:Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;

    invoke-virtual {v6}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getFile_url()Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;

    move-result-object v1

    if-eqz v1, :cond_115

    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;->getUri()Ljava/lang/String;

    move-result-object v5

    :cond_115
    move-object v14, v5

    .line 69
    new-instance v15, Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask$run$downloadModelTask$1;

    invoke-direct {v15, v0}, Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask$run$downloadModelTask$1;-><init>(Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask;)V

    .line 72
    new-instance v1, Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask$run$downloadModelTask$2;

    invoke-direct {v1, v0}, Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask$run$downloadModelTask$2;-><init>(Lcom/ss/ugc/effectplatform/task/dag/DownloadModelTask;)V

    const/16 v18, 0x100

    const/16 v19, 0x0

    const/16 v16, 0x0

    move-object/from16 v17, v1

    .line 67
    invoke-direct/range {v7 .. v19}, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;-><init>(Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 75
    invoke-virtual {v7}, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;->run()V

    return-void

    .line 62
    :cond_12f
    :goto_12f
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "model "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " download url is empty!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->notifyBehindTasksFailed(Ljava/lang/Exception;)V

    return-void
.end method
