.class public Lcom/cutsame/solution/source/effect/EffectFetcher;
.super Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cutsame/solution/source/effect/EffectFetcher$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/cutsame/solution/source/effect/EffectFetcher$Companion;


# instance fields
.field public final a:Lcom/ss/ugc/effectplatform/EffectPlatform;

.field public final b:Lcom/cutsame/solution/config/EffectFetcherConfig;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/cutsame/solution/source/effect/EffectFetcher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cutsame/solution/source/effect/EffectFetcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cutsame/solution/source/effect/EffectFetcher;->Companion:Lcom/cutsame/solution/source/effect/EffectFetcher$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/ss/ugc/effectplatform/EffectPlatform;Lcom/cutsame/solution/config/EffectFetcherConfig;)V
    .registers 4

    const-string v0, "effectPlatform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "effectFetcherConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/cutsame/solution/source/effect/EffectFetcher;->a:Lcom/ss/ugc/effectplatform/EffectPlatform;

    .line 3
    iput-object p2, p0, Lcom/cutsame/solution/source/effect/EffectFetcher;->b:Lcom/cutsame/solution/config/EffectFetcherConfig;

    return-void
.end method

.method public static final synthetic access$fetchEffect(Lcom/cutsame/solution/source/effect/EffectFetcher;Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;Lkotlin/jvm/functions/Function1;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/cutsame/solution/source/effect/EffectFetcher;->a(Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$isEffectReady(Lcom/cutsame/solution/source/effect/EffectFetcher;Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/cutsame/solution/source/effect/EffectFetcher;->a(Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$onFetch$removePanel(Ljava/util/Set;JLjava/util/List;Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$Callback;Ljava/lang/String;)V
    .registers 9

    .line 1
    invoke-interface {p0, p5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "feature panel success panel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ",remainder size "

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p5

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v0, "CUT_PREPARE_EFFECT_FETCHER"

    invoke-static {v0, p5}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4b

    const-string p0, "fetchEffect: end cost "

    .line 6
    invoke-static {p0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {v0, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-interface {p4, p3}, Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$Callback;->notifySuccess(Ljava/util/List;)V

    :cond_4b
    return-void
.end method


# virtual methods
.method public final a(Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;Lkotlin/jvm/functions/Function1;)V
    .registers 5

    .line 129
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->getResource_id()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fetchEffect single, resource_id: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CUT_PREPARE_EFFECT_FETCHER"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object p0, p0, Lcom/cutsame/solution/source/effect/EffectFetcher;->a:Lcom/ss/ugc/effectplatform/EffectPlatform;

    new-instance v0, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchEffect$1;

    invoke-direct {v0, p1, p2}, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchEffect$1;-><init>(Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, p1, v0}, Lcom/ss/ugc/effectplatform/EffectPlatform;->downloadThirdPartyEffect(Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;)V

    return-void
.end method

.method public final a(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .registers 15

    .line 1
    const-string v0, "fetchPanel panel: "

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CUT_PREPARE_EFFECT_FETCHER"

    invoke-static {v2, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_26

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_26
    check-cast v5, Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$EffectItem;

    .line 110
    iget-object v5, v5, Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$EffectItem;->id:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "resource_ids.append(effectItem.id)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_44

    const-string v4, ","

    .line 112
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "resource_ids.append(\",\")"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_44
    move v4, v6

    goto :goto_15

    .line 115
    :cond_46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", resource_ids: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "panel"

    .line 117
    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "resource_ids"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v1, p0, Lcom/cutsame/solution/source/effect/EffectFetcher;->b:Lcom/cutsame/solution/config/EffectFetcherConfig;

    invoke-virtual {v1}, Lcom/cutsame/solution/config/EffectFetcherConfig;->getEffectLitExtraMap()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_8b

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_82

    goto :goto_8b

    .line 120
    :cond_82
    iget-object v1, p0, Lcom/cutsame/solution/source/effect/EffectFetcher;->b:Lcom/cutsame/solution/config/EffectFetcherConfig;

    invoke-virtual {v1}, Lcom/cutsame/solution/config/EffectFetcherConfig;->getEffectLitExtraMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 123
    :cond_8b
    :goto_8b
    iget-object v1, p0, Lcom/cutsame/solution/source/effect/EffectFetcher;->a:Lcom/ss/ugc/effectplatform/EffectPlatform;

    .line 124
    iget-object v2, p0, Lcom/cutsame/solution/source/effect/EffectFetcher;->b:Lcom/cutsame/solution/config/EffectFetcherConfig;

    invoke-virtual {v2}, Lcom/cutsame/solution/config/EffectFetcherConfig;->getEffectLitPath()Ljava/lang/String;

    move-result-object v2

    .line 125
    const-class v3, Lcom/cutsame/solution/source/effect/EffectsResponse;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 127
    new-instance v4, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchPanel$2;

    move-object v8, p0

    move-object v6, p1

    move-object v5, p2

    move-object v9, p3

    move-object v7, p4

    invoke-direct/range {v4 .. v9}, Lcom/cutsame/solution/source/effect/EffectFetcher$fetchPanel$2;-><init>(Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lcom/cutsame/solution/source/effect/EffectFetcher;Ljava/util/List;)V

    .line 128
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/ss/ugc/effectplatform/EffectPlatform;->fetchThirdPartyEffectInfo(Ljava/lang/String;Ljava/util/Map;Lkotlin/reflect/KClass;Lcom/ss/ugc/effectplatform/listener/IEffectPlatformBaseListener;)V

    return-void
.end method

.method public final a(Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 131
    :cond_4
    iget-object p0, p0, Lcom/cutsame/solution/source/effect/EffectFetcher;->a:Lcom/ss/ugc/effectplatform/EffectPlatform;

    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/EffectPlatform;->isThirdPartyEffectReady(Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;)Z

    move-result p0

    return p0
.end method

.method public onFetch(Ljava/util/List;Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$Callback;)V
    .registers 12

    const-string v0, "effectItemList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v0, "EffectFetcher: begin "

    .line 2
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CUT_PREPARE_EFFECT_FETCHER"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 147
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$EffectItem;

    .line 148
    iget-object v6, v3, Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$EffectItem;->type:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_47

    .line 150
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 151
    iget-object v7, v3, Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$EffectItem;->type:Ljava/lang/String;

    const-string v8, "it.type"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_47
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 156
    :cond_4b
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    .line 157
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "toDownloadPanels.size "

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_90

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 291
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 292
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/util/List;

    .line 293
    new-instance v1, Lcom/cutsame/solution/source/effect/EffectFetcher$onFetch$2$1;

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/cutsame/solution/source/effect/EffectFetcher$onFetch$2$1;-><init>(Ljava/lang/String;Ljava/util/Set;JLjava/util/List;Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$Callback;)V

    invoke-virtual {p0, v8, v2, v6, v1}, Lcom/cutsame/solution/source/effect/EffectFetcher;->a(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    goto :goto_6c

    :cond_90
    return-void
.end method
