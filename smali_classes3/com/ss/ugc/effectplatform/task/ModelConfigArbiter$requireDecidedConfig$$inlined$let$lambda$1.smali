.class public final Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$requireDecidedConfig$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->requireDecidedConfig(IZ)Lcom/ss/ugc/effectplatform/model/LoadedModelList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $it:Lcom/ss/ugc/effectplatform/model/LoadedModelList;

.field final synthetic this$0:Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;


# direct methods
.method constructor <init>(Lcom/ss/ugc/effectplatform/model/LoadedModelList;Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;)V
    .registers 3

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$requireDecidedConfig$$inlined$let$lambda$1;->$it:Lcom/ss/ugc/effectplatform/model/LoadedModelList;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$requireDecidedConfig$$inlined$let$lambda$1;->this$0:Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 59
    sget-object v0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelInfoMemoryCache;->INSTANCE:Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelInfoMemoryCache;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$requireDecidedConfig$$inlined$let$lambda$1;->$it:Lcom/ss/ugc/effectplatform/model/LoadedModelList;

    sget-object v2, Lcom/ss/ugc/effectplatform/cache/EffectCacheManager;->INSTANCE:Lcom/ss/ugc/effectplatform/cache/EffectCacheManager;

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$requireDecidedConfig$$inlined$let$lambda$1;->this$0:Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;

    # getter for: Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;
    invoke-static {p0}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->access$getEffectConfig$p(Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;)Lcom/ss/ugc/effectplatform/EffectConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/EffectConfig;->getAlgorithmDir()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/ss/ugc/effectplatform/cache/EffectCacheManager;->getCache(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/cache/ICache;

    move-result-object p0

    if-eqz p0, :cond_1c

    check-cast p0, Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;

    invoke-virtual {v0, v1, p0}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelInfoMemoryCache;->buildCache(Lcom/ss/ugc/effectplatform/model/LoadedModelList;Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;)V

    return-void

    :cond_1c
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.ss.ugc.effectplatform.cache.AlgorithmModelCache"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
