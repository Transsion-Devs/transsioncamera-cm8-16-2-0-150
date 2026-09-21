.class final Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask$onSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;->onSuccess(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;


# direct methods
.method constructor <init>(Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask$onSuccess$1;->this$0:Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask$onSuccess$1;->$result:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 20
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask$onSuccess$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask$onSuccess$1;->this$0:Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;

    # getter for: Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;->executionContext:Lcom/ss/ugc/effectplatform/ExecutionContext;
    invoke-static {v0}, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;->access$getExecutionContext$p(Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;)Lcom/ss/ugc/effectplatform/ExecutionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/ExecutionContext;->getCallbackManager()Lcom/ss/ugc/effectplatform/listener/CallbackManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask$onSuccess$1;->this$0:Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;

    # getter for: Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;->taskFlag:Ljava/lang/String;
    invoke-static {v1}, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;->access$getTaskFlag$p(Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/ugc/effectplatform/listener/CallbackManager;->getEffectPlatformBaseListener(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/listener/IEffectPlatformBaseListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 68
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask$onSuccess$1;->$result:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/ss/ugc/effectplatform/listener/IEffectPlatformBaseListener;->onSuccess(Ljava/lang/Object;)V

    .line 69
    :cond_1b
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask$onSuccess$1;->this$0:Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;

    # getter for: Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;->executionContext:Lcom/ss/ugc/effectplatform/ExecutionContext;
    invoke-static {v0}, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;->access$getExecutionContext$p(Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;)Lcom/ss/ugc/effectplatform/ExecutionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/ExecutionContext;->getCallbackManager()Lcom/ss/ugc/effectplatform/listener/CallbackManager;

    move-result-object v0

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask$onSuccess$1;->this$0:Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;

    # getter for: Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;->taskFlag:Ljava/lang/String;
    invoke-static {p0}, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;->access$getTaskFlag$p(Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ss/ugc/effectplatform/listener/CallbackManager;->removeEffectPlatformBaseListener(Ljava/lang/String;)V

    return-void
.end method
