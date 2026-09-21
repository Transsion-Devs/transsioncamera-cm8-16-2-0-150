.class public abstract Lcom/ss/ugc/effectplatform/task/BaseTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbytekn/foundation/task/ITask;


# instance fields
.field private final callbackManager:Lcom/ss/ugc/effectplatform/listener/CallbackManager;

.field private isCanceled:Z

.field private taskId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ss/ugc/effectplatform/listener/CallbackManager;)V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/BaseTask;->taskId:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/task/BaseTask;->callbackManager:Lcom/ss/ugc/effectplatform/listener/CallbackManager;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/ss/ugc/effectplatform/listener/CallbackManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 13
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/ss/ugc/effectplatform/task/BaseTask;-><init>(Ljava/lang/String;Lcom/ss/ugc/effectplatform/listener/CallbackManager;)V

    return-void
.end method


# virtual methods
.method protected abstract execute()V
.end method

.method public getId()Ljava/lang/String;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/BaseTask;->taskId:Ljava/lang/String;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "0"

    return-object p0
.end method

.method protected final isCanceled()Z
    .registers 1

    .line 18
    iget-boolean p0, p0, Lcom/ss/ugc/effectplatform/task/BaseTask;->isCanceled:Z

    return p0
.end method

.method public onPreExecute()V
    .registers 1

    return-void
.end method

.method public run()V
    .registers 3

    .line 36
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/BaseTask;->taskId:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 37
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/task/BaseTask;->callbackManager:Lcom/ss/ugc/effectplatform/listener/CallbackManager;

    if-eqz v1, :cond_b

    invoke-virtual {v1, v0}, Lcom/ss/ugc/effectplatform/listener/CallbackManager;->getEffectPlatformBaseListener(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/listener/IEffectPlatformBaseListener;

    .line 42
    :cond_b
    iget-boolean v0, p0, Lcom/ss/ugc/effectplatform/task/BaseTask;->isCanceled:Z

    if-eqz v0, :cond_10

    goto :goto_1e

    .line 45
    :cond_10
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/task/BaseTask;->execute()V

    .line 46
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/BaseTask;->taskId:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 47
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/BaseTask;->callbackManager:Lcom/ss/ugc/effectplatform/listener/CallbackManager;

    if-eqz p0, :cond_1e

    invoke-virtual {p0, v0}, Lcom/ss/ugc/effectplatform/listener/CallbackManager;->getEffectPlatformBaseListener(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/listener/IEffectPlatformBaseListener;

    :cond_1e
    :goto_1e
    return-void
.end method
