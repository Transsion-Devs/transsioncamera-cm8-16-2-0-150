.class public abstract Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCustomDefault:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field protected mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected mListener:Lcom/transsion/camera/feature/mode/makeup/listener/RvListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/feature/mode/makeup/listener/RvListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mLowLight:Z

.field private mScreenFormType:I

.field protected mSelectedPosition:I


# direct methods
.method public static synthetic $r8$lambda$iP9HAuD0pYBFfqNrayblBKEkqYg(Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;Landroid/view/View;Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;Landroid/view/View;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->lambda$onCreateViewHolder$0(Landroid/view/View;Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "RvAdapter"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/transsion/camera/feature/mode/makeup/listener/RvListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/transsion/camera/feature/mode/makeup/listener/RvListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mScreenFormType:I

    .line 73
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mList:Ljava/util/List;

    .line 74
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mListener:Lcom/transsion/camera/feature/mode/makeup/listener/RvListener;

    .line 75
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$0(Landroid/view/View;Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;Landroid/view/View;)V
    .registers 5

    .line 101
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_4a

    .line 104
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mListener:Lcom/transsion/camera/feature/mode/makeup/listener/RvListener;

    if-eqz p1, :cond_4a

    .line 105
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    if-gez p1, :cond_12

    goto :goto_4a

    .line 109
    :cond_12
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p2

    sget v0, Lcom/transsion/camera/feature/makeup/R$layout;->restore_layout:I

    if-ne p2, v0, :cond_1c

    const/4 p2, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p2, 0x0

    :goto_1d
    if-eqz p2, :cond_2b

    .line 110
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mCustomDefault:Z

    if-eqz v0, :cond_2b

    .line 111
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "restore item is disabled!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_2b
    if-nez p2, :cond_3f

    .line 115
    iget p2, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mSelectedPosition:I

    if-eq p2, p1, :cond_3f

    .line 116
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->updateSelectedItemByPosition(I)V

    .line 117
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mListener:Lcom/transsion/camera/feature/mode/makeup/listener/RvListener;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, p3, v0, p1}, Lcom/transsion/camera/feature/mode/makeup/listener/RvListener;->onItemSelected(Landroid/view/View;Ljava/lang/Object;I)V

    .line 120
    :cond_3f
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mListener:Lcom/transsion/camera/feature/mode/makeup/listener/RvListener;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p3, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/listener/RvListener;->onClickSelectedItem(Landroid/view/View;Ljava/lang/Object;I)V

    :cond_4a
    :goto_4a
    return-void
.end method


# virtual methods
.method public getCurrentItem()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mSelectedPosition:I

    if-le v0, v1, :cond_13

    if-ltz v1, :cond_13

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method protected abstract getHolder(Landroid/view/View;I)Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I)",
            "Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public getItemCount()I
    .registers 1

    .line 133
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mList:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 23
    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder<",
            "TT;>;I)V"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget v4, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mSelectedPosition:I

    iget-boolean v5, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mLowLight:Z

    iget-boolean v6, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mCustomDefault:Z

    move-object v1, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;->bindHolder(Ljava/lang/Object;IIZZ)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder<",
            "TT;>;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->getHolder(Landroid/view/View;I)Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;

    move-result-object p2

    .line 92
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter$1;-><init>(Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;)V

    .line 99
    iget-object v1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x3f4ccccd    # 0.8f

    invoke-static {v1, v2, v0}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 100
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;Landroid/view/View;Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public updateCustomDefault(Z)V
    .registers 2

    return-void
.end method

.method public updateList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mList:Ljava/util/List;

    .line 84
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateLowLight(Z)V
    .registers 2

    .line 43
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mLowLight:Z

    .line 44
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateScreenFormType(I)V
    .registers 3

    .line 66
    iget v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mScreenFormType:I

    if-eq v0, p1, :cond_9

    .line 67
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mScreenFormType:I

    .line 68
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_9
    return-void
.end method

.method public abstract updateSelectedItemById(I)V
.end method

.method protected updateSelectedItemByPosition(I)V
    .registers 2

    .line 55
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mSelectedPosition:I

    return-void
.end method
