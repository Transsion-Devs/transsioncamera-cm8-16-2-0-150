.class public final Lcom/cutsame/solution/source/effect/EffectFetcher$onFetch$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cutsame/solution/source/effect/EffectFetcher;->onFetch(Ljava/util/List;Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/Set;

.field public final synthetic c:J

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$Callback;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;JLjava/util/List;Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$Callback;)V
    .registers 7

    iput-object p1, p0, Lcom/cutsame/solution/source/effect/EffectFetcher$onFetch$2$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/cutsame/solution/source/effect/EffectFetcher$onFetch$2$1;->b:Ljava/util/Set;

    iput-wide p3, p0, Lcom/cutsame/solution/source/effect/EffectFetcher$onFetch$2$1;->c:J

    iput-object p5, p0, Lcom/cutsame/solution/source/effect/EffectFetcher$onFetch$2$1;->d:Ljava/util/List;

    iput-object p6, p0, Lcom/cutsame/solution/source/effect/EffectFetcher$onFetch$2$1;->e:Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$Callback;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cutsame/solution/source/effect/EffectFetcher$onFetch$2$1;->invoke(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/String;)V
    .registers 9

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/cutsame/solution/source/effect/EffectFetcher$onFetch$2$1;->b:Ljava/util/Set;

    iget-wide v2, p0, Lcom/cutsame/solution/source/effect/EffectFetcher$onFetch$2$1;->c:J

    iget-object v4, p0, Lcom/cutsame/solution/source/effect/EffectFetcher$onFetch$2$1;->d:Ljava/util/List;

    iget-object v5, p0, Lcom/cutsame/solution/source/effect/EffectFetcher$onFetch$2$1;->e:Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$Callback;

    iget-object v6, p0, Lcom/cutsame/solution/source/effect/EffectFetcher$onFetch$2$1;->a:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/cutsame/solution/source/effect/EffectFetcher;->access$onFetch$removePanel(Ljava/util/Set;JLjava/util/List;Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$Callback;Ljava/lang/String;)V

    return-void
.end method
