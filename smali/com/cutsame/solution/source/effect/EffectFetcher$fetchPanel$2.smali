.class public final Lcom/cutsame/solution/source/effect/EffectFetcher$fetchPanel$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/ugc/effectplatform/listener/IEffectPlatformBaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cutsame/solution/source/effect/EffectFetcher;->a(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Lcom/cutsame/solution/source/effect/EffectFetcher;

.field public final synthetic e:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lcom/cutsame/solution/source/effect/EffectFetcher;Ljava/util/List;)V
    .registers 6

    iput-object p1, p0, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchPanel$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchPanel$2;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchPanel$2;->c:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchPanel$2;->d:Lcom/cutsame/solution/source/effect/EffectFetcher;

    iput-object p5, p0, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchPanel$2;->e:Ljava/util/List;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/util/List;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/util/List;Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;)V
    .registers 9

    if-nez p4, :cond_3

    goto :goto_42

    .line 1
    :cond_3
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_7
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$EffectItem;

    iget-object v2, v1, Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$EffectItem;->id:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->getResource_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v1, v1, Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$EffectItem;->type:Ljava/lang/String;

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    check-cast v0, Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$EffectItem;

    if-nez v0, :cond_2f

    goto :goto_35

    .line 2
    :cond_2f
    invoke-virtual {p4}, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->getFilePath()Ljava/lang/String;

    move-result-object p3

    .line 3
    iput-object p3, v0, Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$EffectItem;->path:Ljava/lang/String;

    .line 5
    :goto_35
    invoke-virtual {p4}, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->getResource_id()Ljava/lang/String;

    move-result-object p3

    if-eqz p0, :cond_4c

    invoke-static {p0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p4

    invoke-interface {p4, p3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 7
    :goto_42
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4b

    .line 8
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4b
    return-void

    .line 9
    :cond_4c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.collections.MutableCollection<T>"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic access$onSuccess$removeEffect(Ljava/util/List;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/util/List;Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;)V
    .registers 5

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchPanel$2;->a(Ljava/util/List;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/util/List;Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/cutsame/solution/source/effect/EffectsResponse;Lcom/ss/ugc/effectplatform/model/ExceptionResult;)V
    .registers 4

    const-string p1, "exception"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fetchPanel fail, panel: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchPanel$2;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", items: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchPanel$2;->b:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x7d

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CUT_PREPARE_EFFECT_FETCHER"

    invoke-static {p2, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchPanel$2;->c:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchPanel$2;->a:Ljava/lang/String;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic onFail(Ljava/lang/Object;Lcom/ss/ugc/effectplatform/model/ExceptionResult;)V
    .registers 3

    .line 1
    check-cast p1, Lcom/cutsame/solution/source/effect/EffectsResponse;

    invoke-virtual {p0, p1, p2}, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchPanel$2;->onFail(Lcom/cutsame/solution/source/effect/EffectsResponse;Lcom/ss/ugc/effectplatform/model/ExceptionResult;)V

    return-void
.end method

.method public onSuccess(Lcom/cutsame/solution/source/effect/EffectsResponse;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "response"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetchPanel success, panel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchPanel$2;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CUT_PREPARE_EFFECT_FETCHER"

    invoke-static {v3, v2}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Lcom/cutsame/solution/source/effect/EffectsResponse;->getData()Lcom/cutsame/solution/source/effect/EffectList;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/cutsame/solution/source/effect/EffectList;->getEffect_list()Ljava/util/ArrayList;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_47

    const-string v1, "fetchPanel success, resData is null"

    .line 5
    invoke-static {v3, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v1, v0, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchPanel$2;->c:Lkotlin/jvm/functions/Function1;

    iget-object v0, v0, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchPanel$2;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 10
    :cond_47
    iget-object v2, v0, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchPanel$2;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v2, v4, :cond_58

    const-string v2, "fetchPanel success, size !="

    .line 11
    invoke-static {v3, v2}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_58
    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_69
    if-ge v6, v4, :cond_7b

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    .line 80
    check-cast v7, Lcom/cutsame/solution/source/effect/Effect;

    .line 81
    invoke-virtual {v7}, Lcom/cutsame/solution/source/effect/Effect;->getResource_id()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_69

    :cond_7b
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 94
    iget-object v4, v0, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchPanel$2;->d:Lcom/cutsame/solution/source/effect/EffectFetcher;

    iget-object v6, v0, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchPanel$2;->c:Lkotlin/jvm/functions/Function1;

    iget-object v7, v0, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchPanel$2;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchPanel$2;->e:Ljava/util/List;

    .line 148
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_8b
    if-ge v5, v8, :cond_103

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v5, v5, 0x1

    check-cast v9, Lcom/cutsame/solution/source/effect/Effect;

    .line 149
    new-instance v10, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;

    .line 150
    invoke-virtual {v9}, Lcom/cutsame/solution/source/effect/Effect;->getId()Ljava/lang/String;

    move-result-object v11

    .line 151
    invoke-virtual {v9}, Lcom/cutsame/solution/source/effect/Effect;->getResource_id()Ljava/lang/String;

    move-result-object v12

    .line 152
    invoke-virtual {v9}, Lcom/cutsame/solution/source/effect/Effect;->getName()Ljava/lang/String;

    move-result-object v13

    .line 153
    invoke-virtual {v9}, Lcom/cutsame/solution/source/effect/Effect;->getUri()Ljava/lang/String;

    move-result-object v14

    .line 154
    invoke-virtual {v9}, Lcom/cutsame/solution/source/effect/Effect;->getUrl_list()Ljava/util/List;

    move-result-object v15

    .line 155
    invoke-virtual {v9}, Lcom/cutsame/solution/source/effect/Effect;->getNeed_unzip()Z

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 156
    invoke-virtual {v9}, Lcom/cutsame/solution/source/effect/Effect;->getModel_names()Ljava/lang/String;

    move-result-object v17

    .line 157
    invoke-virtual {v9}, Lcom/cutsame/solution/source/effect/Effect;->getRequirements()Ljava/util/List;

    move-result-object v18

    .line 159
    invoke-virtual {v9}, Lcom/cutsame/solution/source/effect/Effect;->getFilePath()Ljava/lang/String;

    move-result-object v20

    const/16 v19, 0x0

    .line 160
    invoke-direct/range {v10 .. v20}, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "isEffectReady "

    .line 172
    invoke-static {v11}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    # invokes: Lcom/cutsame/solution/source/effect/EffectFetcher;->a(Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;)Z
    invoke-static {v4, v10}, Lcom/cutsame/solution/source/effect/EffectFetcher;->access$isEffectReady(Lcom/cutsame/solution/source/effect/EffectFetcher;Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", id: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", uri"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/cutsame/solution/source/effect/Effect;->getUri()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    # invokes: Lcom/cutsame/solution/source/effect/EffectFetcher;->a(Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;)Z
    invoke-static {v4, v10}, Lcom/cutsame/solution/source/effect/EffectFetcher;->access$isEffectReady(Lcom/cutsame/solution/source/effect/EffectFetcher;Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;)Z

    move-result v9

    if-eqz v9, :cond_fa

    .line 174
    invoke-static {v2, v6, v7, v0, v10}, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchPanel$2;->a(Ljava/util/List;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/util/List;Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;)V

    goto :goto_8b

    .line 176
    :cond_fa
    new-instance v9, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchPanel$2$onSuccess$1$1;

    invoke-direct {v9, v2, v6, v7, v0}, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchPanel$2$onSuccess$1$1;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/util/List;)V

    # invokes: Lcom/cutsame/solution/source/effect/EffectFetcher;->a(Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;Lkotlin/jvm/functions/Function1;)V
    invoke-static {v4, v10, v9}, Lcom/cutsame/solution/source/effect/EffectFetcher;->access$fetchEffect(Lcom/cutsame/solution/source/effect/EffectFetcher;Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;Lkotlin/jvm/functions/Function1;)V

    goto :goto_8b

    :cond_103
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/cutsame/solution/source/effect/EffectsResponse;

    invoke-virtual {p0, p1}, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchPanel$2;->onSuccess(Lcom/cutsame/solution/source/effect/EffectsResponse;)V

    return-void
.end method
