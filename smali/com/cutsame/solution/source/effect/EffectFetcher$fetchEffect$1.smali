.class public final Lcom/cutsame/solution/source/effect/EffectFetcher$fetchEffect$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cutsame/solution/source/effect/EffectFetcher;->a(Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;

.field public final synthetic b:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;Lkotlin/jvm/functions/Function1;)V
    .registers 3

    iput-object p1, p0, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchEffect$1;->a:Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;

    iput-object p2, p0, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchEffect$1;->b:Lkotlin/jvm/functions/Function1;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/Exception;)V
    .registers 4

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetchEffect single fail, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", resource_id: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchEffect$1;->a:Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->getResource_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CUT_PREPARE_EFFECT_FETCHER"

    invoke-static {v0, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchEffect$1;->b:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchEffect$1;->a:Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onProgress(IJ)V
    .registers 4

    return-void
.end method

.method public onSuccess()V
    .registers 3

    const-string v0, "fetchEffect single success. resource_id: "

    .line 1
    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchEffect$1;->a:Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;

    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->getResource_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchEffect$1;->a:Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;

    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CUT_PREPARE_EFFECT_FETCHER"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchEffect$1;->b:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchEffect$1;->a:Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
