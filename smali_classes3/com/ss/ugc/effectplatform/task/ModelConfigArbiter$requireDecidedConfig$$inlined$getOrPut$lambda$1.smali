.class public final Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$requireDecidedConfig$$inlined$getOrPut$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/ugc/effectplatform/task/FetchModelListTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->requireDecidedConfig(IZ)Lcom/ss/ugc/effectplatform/model/LoadedModelList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $bidKey$inlined:Ljava/lang/String;

.field final synthetic $businessId$inlined:I

.field final synthetic this$0:Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;


# direct methods
.method constructor <init>(Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;ILjava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$requireDecidedConfig$$inlined$getOrPut$lambda$1;->this$0:Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;

    iput p2, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$requireDecidedConfig$$inlined$getOrPut$lambda$1;->$businessId$inlined:I

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$requireDecidedConfig$$inlined$getOrPut$lambda$1;->$bidKey$inlined:Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/Exception;I)V
    .registers 5

    const-string p2, "exception"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object p2, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$requireDecidedConfig$$inlined$getOrPut$lambda$1;->this$0:Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;

    # getter for: Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->errorExceptionMap:Lbytekn/foundation/collections/SharedMutableMap;
    invoke-static {p2}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->access$getErrorExceptionMap$p(Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;)Lbytekn/foundation/collections/SharedMutableMap;

    move-result-object p2

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$requireDecidedConfig$$inlined$getOrPut$lambda$1;->$bidKey$inlined:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object p2, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    const-string v0, "FetchModelListTask"

    const-string v1, "fetch model list error happens!"

    invoke-virtual {p2, v0, v1, p1}, Lbytekn/foundation/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    iget-object p1, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$requireDecidedConfig$$inlined$getOrPut$lambda$1;->this$0:Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;

    # getter for: Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->fetchModelListTaskMap:Lbytekn/foundation/collections/SharedMutableMap;
    invoke-static {p1}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->access$getFetchModelListTaskMap$p(Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;)Lbytekn/foundation/collections/SharedMutableMap;

    move-result-object p1

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$requireDecidedConfig$$inlined$getOrPut$lambda$1;->$bidKey$inlined:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lbytekn/foundation/collections/SharedMutableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onResult(Lcom/ss/ugc/effectplatform/model/ServerConfig;I)V
    .registers 4

    const-string p2, "result"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget-object p2, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->Companion:Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$Companion;

    invoke-virtual {p2}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$Companion;->getSDecidedConfig()Lbytekn/foundation/collections/SharedMutableMap;

    move-result-object p2

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$requireDecidedConfig$$inlined$getOrPut$lambda$1;->$bidKey$inlined:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/ServerConfig;->getLoadedModelList()Lcom/ss/ugc/effectplatform/model/LoadedModelList;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object p1, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$requireDecidedConfig$$inlined$getOrPut$lambda$1;->this$0:Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;

    # getter for: Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->fetchModelListTaskMap:Lbytekn/foundation/collections/SharedMutableMap;
    invoke-static {p1}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->access$getFetchModelListTaskMap$p(Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;)Lbytekn/foundation/collections/SharedMutableMap;

    move-result-object p1

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$requireDecidedConfig$$inlined$getOrPut$lambda$1;->$bidKey$inlined:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lbytekn/foundation/collections/SharedMutableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
