.class public Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;
.super Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter$OnItemClickListener;
    }
.end annotation


# instance fields
.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter$OnItemClickListener;


# direct methods
.method public static synthetic $r8$lambda$TfGNOiSzCcnp5k9LEjIDOiTRSJ4(Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;ILcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;Landroid/view/View;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;->lambda$onBindViewHolder$0(ILcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(ILcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;Landroid/view/View;)V
    .registers 4

    .line 58
    invoke-static {p3}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p3

    if-nez p3, :cond_7

    goto :goto_1a

    .line 61
    :cond_7
    iget p3, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mSelect:I

    if-eq p3, p1, :cond_1a

    .line 62
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;->mListener:Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter$OnItemClickListener;

    invoke-interface {p3, p2, p1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter$OnItemClickListener;->onItemClick(Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;I)V

    .line 63
    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getId()I

    move-result p2

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1a

    .line 64
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->setSelect(I)V

    :cond_1a
    :goto_1a
    return-void
.end method


# virtual methods
.method public getItem(I)Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;
    .registers 2

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;->mItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    return-object p0
.end method

.method public getItemCount()I
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;->mItems:Ljava/util/List;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 75
    :cond_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;I)V
    .registers 12

    .line 40
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    .line 42
    iget v1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mSelect:I

    const/4 v2, 0x0

    if-ne p2, v1, :cond_10

    const/4 v1, 0x1

    move v5, v1

    goto :goto_11

    :cond_10
    move v5, v2

    :goto_11
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getId()I

    move-result v6

    .line 43
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/data/ButtonItem;->getIcon()I

    move-result v7

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/data/ButtonItem;->getTitle()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    move-object v4, p1

    .line 42
    invoke-virtual/range {v3 .. v8}, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->onBindViewHolderInternal(Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;ZIILjava/lang/String;)V

    .line 44
    iget-object p0, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 46
    new-instance p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter$1;

    invoke-direct {p0, v3, p2}, Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter$1;-><init>(Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;I)V

    .line 56
    iget-object p1, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x3f6b851f    # 0.92f

    invoke-static {p1, v1, p0}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 57
    iget-object p0, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p1, v3, p2, v0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;ILcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;",
            ">;)V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;->mItems:Ljava/util/List;

    return-void
.end method

.method public setListener(Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter$OnItemClickListener;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;->mListener:Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter$OnItemClickListener;

    return-void
.end method
