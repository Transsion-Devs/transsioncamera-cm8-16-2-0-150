.class public Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;
.super Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter<",
        "Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$OnItemClickListener;


# direct methods
.method public static synthetic $r8$lambda$EQX1LthE1VMBsXac12LHU8CAmzE(Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;ZLcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;ILandroid/view/View;)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;->lambda$onBindViewHolder$0(Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;ZLcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;ILandroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "EffectButtonRVAdapter"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;ZLcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;ILandroid/view/View;)V
    .registers 6

    .line 62
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 65
    :cond_9
    invoke-static {}, Lcom/transsion/camera/feature/mode/makeup/utils/CommonUtils;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 66
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "too fast click"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_18
    if-eqz p2, :cond_26

    .line 69
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mIntensityDefault:Z

    if-eqz p1, :cond_26

    .line 70
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "restore item is disabled!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 73
    :cond_26
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;->mListener:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$OnItemClickListener;

    invoke-interface {p0, p3, p4}, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$OnItemClickListener;->onItemClick(Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;I)V

    return-void
.end method


# virtual methods
.method public getItem(I)Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;
    .registers 2

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;->mItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    return-object p0
.end method

.method public getItemCount()I
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;->mItems:Ljava/util/List;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 82
    :cond_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 21
    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;I)V
    .registers 16

    .line 43
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    const/4 v0, 0x2

    .line 45
    invoke-virtual {v5}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getId()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_14

    move v4, v2

    goto :goto_15

    :cond_14
    move v4, v3

    .line 47
    :goto_15
    iget v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mSelect:I

    if-ne p2, v0, :cond_1b

    move v8, v2

    goto :goto_1c

    :cond_1b
    move v8, v3

    :goto_1c
    invoke-virtual {v5}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getId()I

    move-result v9

    .line 48
    invoke-virtual {v5}, Lcom/transsion/camera/feature/mode/makeup/data/ButtonItem;->getIcon()I

    move-result v11

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v5}, Lcom/transsion/camera/feature/mode/makeup/data/ButtonItem;->getTitle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object v6, p0

    move-object v7, p1

    move v10, v4

    .line 47
    invoke-virtual/range {v6 .. v12}, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->onBindViewHolderInternal(Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;ZIZILjava/lang/String;)V

    move-object v2, v6

    .line 51
    new-instance p0, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$1;

    invoke-direct {p0, v2, p2}, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$1;-><init>(Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;I)V

    .line 59
    iget-object p1, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x3f6147ae    # 0.88f

    invoke-static {p1, v0, p0}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 60
    iget-object p0, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 61
    iget-object p0, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$$ExternalSyntheticLambda0;

    move v6, p2

    move-object v3, v7

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;ZLcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;",
            ">;)V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;->mItems:Ljava/util/List;

    return-void
.end method

.method public setListener(Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$OnItemClickListener;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;->mListener:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$OnItemClickListener;

    return-void
.end method
