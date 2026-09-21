.class public final Lcom/cutsame/solution/source/effect/EffectFetcher$fetchPanel$2$onSuccess$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cutsame/solution/source/effect/EffectFetcher$fetchPanel$2;->onSuccess(Lcom/cutsame/solution/source/effect/EffectsResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lkotlin/jvm/functions/Function1;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/util/List;)V
    .registers 5

    iput-object p1, p0, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchPanel$2$onSuccess$1$1;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchPanel$2$onSuccess$1$1;->b:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchPanel$2$onSuccess$1$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchPanel$2$onSuccess$1$1;->d:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;

    invoke-virtual {p0, p1}, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchPanel$2$onSuccess$1$1;->invoke(Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;)V
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchPanel$2$onSuccess$1$1;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchPanel$2$onSuccess$1$1;->b:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchPanel$2$onSuccess$1$1;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchPanel$2$onSuccess$1$1;->d:Ljava/util/List;

    # invokes: Lcom/cutsame/solution/source/effect/EffectFetcher$fetchPanel$2;->a(Ljava/util/List;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/util/List;Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;)V
    invoke-static {v0, v1, v2, p0, p1}, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchPanel$2;->access$onSuccess$removeEffect(Ljava/util/List;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/util/List;Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;)V

    return-void
.end method
