.class final Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$videoFilters$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;-><init>(Lcom/ss/android/vesdk/VEEditor;Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$KeyframeProxyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$videoFilters$2;->this$0:Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 33
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$videoFilters$2;->invoke()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    const-string v1, "canvas blend"

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    .line 36
    const-string v1, "mask_filter"

    .line 35
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    .line 37
    const-string v1, "chroma"

    .line 35
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    .line 38
    const-string v1, "audio volume filter"

    .line 35
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    .line 39
    const-string v1, "color_filter"

    .line 35
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    .line 40
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$videoFilters$2;->this$0:Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;

    # invokes: Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->getAdjustTypes()Ljava/util/List;
    invoke-static {p0}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->access$getAdjustTypes(Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    const/4 v1, 0x0

    .line 38
    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_42

    .line 35
    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .line 34
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 38
    :cond_42
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
