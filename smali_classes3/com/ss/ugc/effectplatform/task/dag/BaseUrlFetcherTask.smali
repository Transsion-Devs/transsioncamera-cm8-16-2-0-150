.class public Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;
.super Lcom/ss/ugc/effectplatform/task/dag/DagTask;
.source "SourceFile"


# instance fields
.field private final executionContext:Lcom/ss/ugc/effectplatform/ExecutionContext;

.field private final request:Lcom/ss/ugc/effectplatform/bridge/network/NetRequest;

.field private final responseModel:Lkotlin/reflect/KClass;

.field private final retryCount:I

.field private final taskFlag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ss/ugc/effectplatform/ExecutionContext;ILcom/ss/ugc/effectplatform/bridge/network/NetRequest;Lkotlin/reflect/KClass;Ljava/lang/String;)V
    .registers 7

    const-string v0, "executionContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseModel"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskFlag"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/task/dag/DagTask;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;->executionContext:Lcom/ss/ugc/effectplatform/ExecutionContext;

    iput p2, p0, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;->retryCount:I

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;->request:Lcom/ss/ugc/effectplatform/bridge/network/NetRequest;

    iput-object p4, p0, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;->responseModel:Lkotlin/reflect/KClass;

    iput-object p5, p0, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;->taskFlag:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getExecutionContext$p(Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;)Lcom/ss/ugc/effectplatform/ExecutionContext;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;->executionContext:Lcom/ss/ugc/effectplatform/ExecutionContext;

    return-object p0
.end method

.method public static final synthetic access$getTaskFlag$p(Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;)Ljava/lang/String;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;->taskFlag:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected getDataPostProcessorPipeLine()Lbytekn/foundation/task/IPipeLine;
    .registers 1

    .line 54
    new-instance p0, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask$getDataPostProcessorPipeLine$1;

    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask$getDataPostProcessorPipeLine$1;-><init>()V

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;->taskFlag:Ljava/lang/String;

    return-object p0
.end method

.method protected onFail(Lcom/ss/ugc/effectplatform/model/ExceptionResult;)V
    .registers 4

    const-string v0, "exceptionResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_c

    goto :goto_14

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "un know error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    :goto_14
    invoke-virtual {p0, v0}, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->notifyBehindTasksFailed(Ljava/lang/Exception;)V

    .line 75
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;->taskFlag:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    return-void

    .line 78
    :cond_20
    new-instance v0, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask$onFail$1;

    invoke-direct {v0, p0, p1}, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask$onFail$1;-><init>(Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;Lcom/ss/ugc/effectplatform/model/ExceptionResult;)V

    invoke-virtual {p0, v0}, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/Object;)V
    .registers 3

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->notifyBehindTasksSuccess()V

    .line 63
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;->taskFlag:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    .line 66
    :cond_11
    new-instance v0, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask$onSuccess$1;

    invoke-direct {v0, p0, p1}, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask$onSuccess$1;-><init>(Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public run()V
    .registers 6

    const/4 v0, 0x0

    .line 32
    :cond_1
    iget v1, p0, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;->retryCount:I

    if-ge v0, v1, :cond_5f

    .line 34
    :try_start_5
    new-instance v1, Lcom/ss/ugc/effectplatform/task/pipline/NetRequestFetcherPipeLine;

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;->executionContext:Lcom/ss/ugc/effectplatform/ExecutionContext;

    invoke-virtual {v2}, Lcom/ss/ugc/effectplatform/ExecutionContext;->getEffectNetWorker()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object v2

    invoke-virtual {v2}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;

    invoke-direct {v1, v2}, Lcom/ss/ugc/effectplatform/task/pipline/NetRequestFetcherPipeLine;-><init>(Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;)V

    .line 35
    new-instance v2, Lcom/ss/ugc/effectplatform/task/pipline/NetResponseJsonStringPipeLine;

    invoke-direct {v2}, Lcom/ss/ugc/effectplatform/task/pipline/NetResponseJsonStringPipeLine;-><init>()V

    .line 15
    new-instance v3, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask$run$$inlined$continueWith$1;

    invoke-direct {v3, v1, v2}, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask$run$$inlined$continueWith$1;-><init>(Lbytekn/foundation/task/IPipeLine;Lbytekn/foundation/task/IPipeLine;)V

    .line 36
    new-instance v1, Lcom/ss/ugc/effectplatform/task/pipline/JsonParserPipeLine;

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;->executionContext:Lcom/ss/ugc/effectplatform/ExecutionContext;

    invoke-virtual {v2}, Lcom/ss/ugc/effectplatform/ExecutionContext;->getJsonConverter()Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;

    move-result-object v2

    iget-object v4, p0, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;->responseModel:Lkotlin/reflect/KClass;

    invoke-direct {v1, v2, v4}, Lcom/ss/ugc/effectplatform/task/pipline/JsonParserPipeLine;-><init>(Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;Lkotlin/reflect/KClass;)V

    .line 15
    new-instance v2, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask$run$$inlined$continueWith$2;

    invoke-direct {v2, v3, v1}, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask$run$$inlined$continueWith$2;-><init>(Lbytekn/foundation/task/IPipeLine;Lbytekn/foundation/task/IPipeLine;)V

    .line 37
    new-instance v1, Lcom/ss/ugc/effectplatform/task/pipline/DataCheckerPipeLine;

    invoke-direct {v1}, Lcom/ss/ugc/effectplatform/task/pipline/DataCheckerPipeLine;-><init>()V

    .line 15
    new-instance v3, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask$run$$inlined$continueWith$3;

    invoke-direct {v3, v2, v1}, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask$run$$inlined$continueWith$3;-><init>(Lbytekn/foundation/task/IPipeLine;Lbytekn/foundation/task/IPipeLine;)V

    .line 38
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;->getDataPostProcessorPipeLine()Lbytekn/foundation/task/IPipeLine;

    move-result-object v1

    .line 15
    new-instance v2, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask$run$$inlined$continueWith$4;

    invoke-direct {v2, v3, v1}, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask$run$$inlined$continueWith$4;-><init>(Lbytekn/foundation/task/IPipeLine;Lbytekn/foundation/task/IPipeLine;)V

    .line 39
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;->request:Lcom/ss/ugc/effectplatform/bridge/network/NetRequest;

    invoke-interface {v2, v1}, Lbytekn/foundation/task/IPipeLine;->doJob(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 40
    invoke-virtual {p0, v1}, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;->onSuccess(Ljava/lang/Object;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_4e} :catch_4f

    return-void

    :catch_4f
    move-exception v1

    add-int/lit8 v0, v0, 0x1

    .line 44
    iget v2, p0, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;->retryCount:I

    if-ne v0, v2, :cond_1

    .line 45
    new-instance v0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;

    invoke-direct {v0, v1}, Lcom/ss/ugc/effectplatform/model/ExceptionResult;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p0, v0}, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;->onFail(Lcom/ss/ugc/effectplatform/model/ExceptionResult;)V

    return-void

    .line 50
    :cond_5f
    new-instance v0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;

    const/16 v1, 0x2715

    invoke-direct {v0, v1}, Lcom/ss/ugc/effectplatform/model/ExceptionResult;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;->onFail(Lcom/ss/ugc/effectplatform/model/ExceptionResult;)V

    return-void
.end method
