.class final Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask$onFail$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;->onFail(Lcom/ss/ugc/effectplatform/model/ExceptionResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $exceptionResult:Lcom/ss/ugc/effectplatform/model/ExceptionResult;

.field final synthetic this$0:Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;


# direct methods
.method constructor <init>(Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;Lcom/ss/ugc/effectplatform/model/ExceptionResult;)V
    .registers 3

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask$onFail$1;->this$0:Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask$onFail$1;->$exceptionResult:Lcom/ss/ugc/effectplatform/model/ExceptionResult;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 20
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask$onFail$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .registers 4

    .line 79
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask$onFail$1;->this$0:Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;

    # getter for: Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;->executionContext:Lcom/ss/ugc/effectplatform/ExecutionContext;
    invoke-static {v0}, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;->access$getExecutionContext$p(Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;)Lcom/ss/ugc/effectplatform/ExecutionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/ExecutionContext;->getCallbackManager()Lcom/ss/ugc/effectplatform/listener/CallbackManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask$onFail$1;->this$0:Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;

    # getter for: Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;->taskFlag:Ljava/lang/String;
    invoke-static {v1}, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;->access$getTaskFlag$p(Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/ugc/effectplatform/listener/CallbackManager;->getEffectPlatformBaseListener(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/listener/IEffectPlatformBaseListener;

    move-result-object v0

    if-eqz v0, :cond_1c

    const/4 v1, 0x0

    .line 80
    iget-object v2, p0, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask$onFail$1;->$exceptionResult:Lcom/ss/ugc/effectplatform/model/ExceptionResult;

    invoke-interface {v0, v1, v2}, Lcom/ss/ugc/effectplatform/listener/IEffectPlatformBaseListener;->onFail(Ljava/lang/Object;Lcom/ss/ugc/effectplatform/model/ExceptionResult;)V

    .line 81
    :cond_1c
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask$onFail$1;->this$0:Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;

    # getter for: Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;->executionContext:Lcom/ss/ugc/effectplatform/ExecutionContext;
    invoke-static {v0}, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;->access$getExecutionContext$p(Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;)Lcom/ss/ugc/effectplatform/ExecutionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/ExecutionContext;->getCallbackManager()Lcom/ss/ugc/effectplatform/listener/CallbackManager;

    move-result-object v0

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask$onFail$1;->this$0:Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;

    # getter for: Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;->taskFlag:Ljava/lang/String;
    invoke-static {p0}, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;->access$getTaskFlag$p(Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ss/ugc/effectplatform/listener/CallbackManager;->removeEffectPlatformBaseListener(Ljava/lang/String;)V

    return-void
.end method
