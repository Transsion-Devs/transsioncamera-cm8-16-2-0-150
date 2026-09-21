.class public final Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private final data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gallery20/sdk/ai_art/guide/Banner;",
            ">;"
        }
    .end annotation
.end field

.field private final realItemCount:I

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final scrollPositionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final startPosition:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gallery20/sdk/ai_art/guide/Banner;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;->data:Ljava/util/List;

    .line 36
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;->realItemCount:I

    const/4 v0, 0x1

    if-gt p1, v0, :cond_14

    const/4 v0, 0x0

    .line 44
    :cond_14
    iput v0, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;->startPosition:I

    .line 48
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;->scrollPositionMap:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_8

    .line 16
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_8
    invoke-direct {p0, p1}, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final calculateActualDataPosition(I)I
    .registers 4

    .line 38
    iget v0, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;->realItemCount:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_6

    return p1

    :cond_6
    if-nez p1, :cond_10

    .line 39
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;->data:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v1

    return p0

    .line 40
    :cond_10
    invoke-virtual {p0}, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;->getItemCount()I

    move-result p0

    sub-int/2addr p0, v1

    if-ne p1, p0, :cond_19

    const/4 p0, 0x0

    return p0

    :cond_19
    sub-int/2addr p1, v1

    return p1
.end method

.method public final getData()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gallery20/sdk/ai_art/guide/Banner;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;->data:Ljava/util/List;

    return-object p0
.end method

.method public getItemCount()I
    .registers 3

    .line 45
    iget v0, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;->realItemCount:I

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;->data:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-gt v0, v1, :cond_c

    return p0

    :cond_c
    add-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public final getRealItemCount()I
    .registers 1

    .line 36
    iget p0, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;->realItemCount:I

    return p0
.end method

.method public final getStartPosition()I
    .registers 1

    .line 44
    iget p0, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;->startPosition:I

    return p0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 16
    check-cast p1, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;->onBindViewHolder(Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter$ViewHolder;I)V
    .registers 6

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, p2}, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;->calculateActualDataPosition(I)I

    move-result v0

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindViewHolder() called with: holder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", actualPosition = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "AIArtGuideAdapter"

    invoke-static {v1, p2}, Lcom/gallery20/base/LogExtKt;->ld(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;->data:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gallery20/sdk/ai_art/guide/Banner;

    .line 28
    invoke-virtual {p1}, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter$ViewHolder;->getBinding()Lcom/gallery20/sdk/ai_art/databinding/ItemAiArtGuideBinding;

    move-result-object p1

    .line 29
    iget-object p2, p1, Lcom/gallery20/sdk/ai_art/databinding/ItemAiArtGuideBinding;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/gallery20/sdk/ai_art/guide/Banner;->getTitle()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 30
    iget-object p2, p1, Lcom/gallery20/sdk/ai_art/databinding/ItemAiArtGuideBinding;->image:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/gallery20/sdk/ai_art/guide/Banner;->getPreview()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 31
    iget-object p2, p1, Lcom/gallery20/sdk/ai_art/databinding/ItemAiArtGuideBinding;->description:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/gallery20/sdk/ai_art/guide/Banner;->getDescription()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 32
    iget-object p1, p1, Lcom/gallery20/sdk/ai_art/databinding/ItemAiArtGuideBinding;->hintForAi:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/gallery20/sdk/ai_art/guide/Banner;->getHint()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter$ViewHolder;
    .registers 5

    const-string p0, "parent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget p0, Lcom/gallery20/sdk/ai_art/R$layout;->item_ai_art_guide:I

    invoke-static {p1, p0}, Lcom/gallery20/base/CommonExtKt;->inflate(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p0

    .line 8
    invoke-static {}, Lcom/gallery20/base/base_ui/ViewHolderExtKt;->getViewHolderConstructorCache()Ljava/util/HashMap;

    move-result-object p1

    .line 89
    const-class p2, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter$ViewHolder;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_29

    .line 8
    const-class v0, Landroid/view/View;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const-string v1, "getConstructor(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_29
    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 8
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_38

    check-cast p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter$ViewHolder;

    return-object p0

    :cond_38
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type com.gallery20.sdk.ai_art.guide.AIArtGuideAdapter.ViewHolder"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public final restoreScrollPositionForExtraPage()V
    .registers 7

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreScrollPositionForExtraPage() called: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;->scrollPositionMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AIArtGuideAdapter"

    invoke-static {v1, v0}, Lcom/gallery20/base/LogExtKt;->ld(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1d

    goto :goto_82

    .line 71
    :cond_1d
    iget-object v1, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;->scrollPositionMap:Ljava/util/Map;

    iget v2, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;->realItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_50

    .line 73
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    instance-of v5, v4, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter$ViewHolder;

    if-eqz v5, :cond_3c

    check-cast v4, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter$ViewHolder;

    goto :goto_3d

    :cond_3c
    move-object v4, v2

    :goto_3d
    if-eqz v4, :cond_50

    invoke-virtual {v4}, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter$ViewHolder;->getBinding()Lcom/gallery20/sdk/ai_art/databinding/ItemAiArtGuideBinding;

    move-result-object v4

    if-eqz v4, :cond_50

    iget-object v4, v4, Lcom/gallery20/sdk/ai_art/databinding/ItemAiArtGuideBinding;->scrollView:Landroid/widget/ScrollView;

    if-eqz v4, :cond_50

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v3, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 75
    :cond_50
    iget-object v1, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;->scrollPositionMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_82

    .line 77
    invoke-virtual {p0}, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;->getItemCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    instance-of v0, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter$ViewHolder;

    if-eqz v0, :cond_6f

    move-object v2, p0

    check-cast v2, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter$ViewHolder;

    :cond_6f
    if-eqz v2, :cond_82

    invoke-virtual {v2}, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter$ViewHolder;->getBinding()Lcom/gallery20/sdk/ai_art/databinding/ItemAiArtGuideBinding;

    move-result-object p0

    if-eqz p0, :cond_82

    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/databinding/ItemAiArtGuideBinding;->scrollView:Landroid/widget/ScrollView;

    if-eqz p0, :cond_82

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v3, v0}, Landroid/widget/ScrollView;->scrollTo(II)V

    :cond_82
    :goto_82
    return-void
.end method

.method public final saveScrollPosition()V
    .registers 7

    .line 59
    iget-object v0, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_5

    return-void

    .line 60
    :cond_5
    iget v1, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;->startPosition:I

    iget v2, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;->realItemCount:I

    add-int/lit8 v2, v2, -0x2

    if-gt v1, v2, :cond_42

    .line 61
    :goto_d
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    instance-of v4, v3, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter$ViewHolder;

    if-eqz v4, :cond_18

    check-cast v3, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter$ViewHolder;

    goto :goto_19

    :cond_18
    const/4 v3, 0x0

    :goto_19
    if-eqz v3, :cond_3d

    invoke-virtual {v3}, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter$ViewHolder;->getBinding()Lcom/gallery20/sdk/ai_art/databinding/ItemAiArtGuideBinding;

    move-result-object v3

    if-eqz v3, :cond_3d

    iget-object v3, v3, Lcom/gallery20/sdk/ai_art/databinding/ItemAiArtGuideBinding;->scrollView:Landroid/widget/ScrollView;

    if-eqz v3, :cond_3d

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v3

    .line 62
    iget-object v4, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;->scrollPositionMap:Ljava/util/Map;

    invoke-virtual {p0, v1}, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;->calculateActualDataPosition(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    :cond_3d
    if-eq v1, v2, :cond_42

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 65
    :cond_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveScrollPosition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;->scrollPositionMap:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AIArtGuideAdapter"

    invoke-static {v0, p0}, Lcom/gallery20/base/LogExtKt;->ld(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
