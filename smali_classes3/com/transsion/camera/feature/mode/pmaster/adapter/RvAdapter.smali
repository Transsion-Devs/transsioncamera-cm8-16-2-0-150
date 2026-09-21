.class public abstract Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter$RvAdapterAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter$RvAdapterAnimator;

.field private mInflater:Landroid/view/LayoutInflater;

.field protected mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected mListener:Lcom/transsion/camera/feature/mode/pmaster/listener/RvListener;

.field private mLowLight:Z

.field protected mOrientation:I

.field protected mScreenFormType:I

.field protected mSelectedPostion:I


# direct methods
.method public static synthetic $r8$lambda$72zQAg0RzroMMsTRqpldzN7_mQo(Landroid/view/View;)Z
    .registers 1

    .line 91
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$k5NdB4GEyIeob_fBJSDg0Jlkpq0(Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;Landroid/view/View;Lcom/transsion/camera/feature/mode/pmaster/holder/RvHolder;ILandroid/view/View;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->lambda$onCreateViewHolder$1(Landroid/view/View;Lcom/transsion/camera/feature/mode/pmaster/holder/RvHolder;ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/transsion/camera/feature/mode/pmaster/listener/RvListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/transsion/camera/feature/mode/pmaster/listener/RvListener;",
            ")V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 32
    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter$RvAdapterAnimator;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter$RvAdapterAnimator;-><init>(Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->mAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter$RvAdapterAnimator;

    .line 58
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->mList:Ljava/util/List;

    .line 59
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->mListener:Lcom/transsion/camera/feature/mode/pmaster/listener/RvListener;

    .line 60
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$1(Landroid/view/View;Lcom/transsion/camera/feature/mode/pmaster/holder/RvHolder;ILandroid/view/View;)V
    .registers 7

    .line 101
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_43

    .line 104
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->mListener:Lcom/transsion/camera/feature/mode/pmaster/listener/RvListener;

    if-eqz p1, :cond_43

    .line 105
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    if-gez p1, :cond_12

    goto :goto_43

    .line 109
    :cond_12
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    sget v1, Lcom/transsion/camera/feature/pmaster/R$layout;->pmaster_restore_layout:I

    if-eq v0, v1, :cond_32

    .line 110
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-eq v0, p3, :cond_32

    .line 111
    iget v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->mSelectedPostion:I

    if-eq v0, p1, :cond_32

    .line 112
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->updateSelectedItemByPosition(I)V

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->mListener:Lcom/transsion/camera/feature/mode/pmaster/listener/RvListener;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p4, v1, p1}, Lcom/transsion/camera/feature/mode/pmaster/listener/RvListener;->onItemSelected(Landroid/view/View;Ljava/lang/Object;I)V

    .line 116
    :cond_32
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p2

    if-eq p2, p3, :cond_43

    .line 117
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->mListener:Lcom/transsion/camera/feature/mode/pmaster/listener/RvListener;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->mList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p4, p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/listener/RvListener;->onClickSelectedItem(Landroid/view/View;Ljava/lang/Object;I)V

    :cond_43
    :goto_43
    return-void
.end method


# virtual methods
.method public getCurrentItem()Ljava/lang/Object;
    .registers 3

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->mSelectedPostion:I

    if-le v0, v1, :cond_13

    if-ltz v1, :cond_13

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->mList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method protected abstract getHolder(Landroid/view/View;II)Lcom/transsion/camera/feature/mode/pmaster/holder/RvHolder;
.end method

.method public getItemCount()I
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->mList:Ljava/util/List;

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

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->mList:Ljava/util/List;

    return-object p0
.end method

.method public abstract getPinnedView()Landroid/view/View;
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 24
    check-cast p1, Lcom/transsion/camera/feature/mode/pmaster/holder/RvHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/mode/pmaster/holder/RvHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/feature/mode/pmaster/holder/RvHolder;I)V
    .registers 11

    .line 126
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget v4, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->mSelectedPostion:I

    iget-boolean v5, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->mLowLight:Z

    iget v6, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->mScreenFormType:I

    iget v7, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->mOrientation:I

    move-object v1, p1

    move v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/camera/feature/mode/pmaster/holder/RvHolder;->bindHolder(Ljava/lang/Object;IIZII)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/mode/pmaster/holder/RvHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/mode/pmaster/holder/RvHolder;
    .registers 6

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 89
    iget v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->mScreenFormType:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->getHolder(Landroid/view/View;II)Lcom/transsion/camera/feature/mode/pmaster/holder/RvHolder;

    move-result-object p2

    .line 90
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 91
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 92
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x3f4ccccd    # 0.8f

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->mAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter$RvAdapterAnimator;

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 95
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez v0, :cond_38

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_35

    goto :goto_38

    .line 98
    :cond_35
    sget v0, Lcom/transsion/camera/feature/pmaster/R$layout;->pmaster_footer_layout:I

    goto :goto_3a

    .line 96
    :cond_38
    :goto_38
    sget v0, Lcom/transsion/camera/feature/pmaster/R$layout;->pmaster_footer_layout_ui4:I

    .line 100
    :goto_3a
    iget-object v1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;Landroid/view/View;Lcom/transsion/camera/feature/mode/pmaster/holder/RvHolder;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
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

    .line 68
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->mList:Ljava/util/List;

    .line 69
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateLowLight(Z)V
    .registers 2

    .line 42
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->mLowLight:Z

    .line 43
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateOrientation(I)V
    .registers 3

    .line 142
    iget v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->mOrientation:I

    if-eq v0, p1, :cond_f

    .line 143
    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->mOrientation:I

    .line 144
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-nez p1, :cond_f

    .line 145
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_f
    return-void
.end method

.method public updateScreenFormType(I)V
    .registers 3

    .line 135
    iget v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->mScreenFormType:I

    if-eq v0, p1, :cond_9

    .line 136
    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->mScreenFormType:I

    .line 137
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_9
    return-void
.end method

.method public abstract updateSelectItemProgress(IIZ)V
.end method

.method public abstract updateSelectedItemById(I)V
.end method

.method protected updateSelectedItemByPosition(I)V
    .registers 2

    .line 47
    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->mSelectedPostion:I

    return-void
.end method

.method public viewRatioChange()V
    .registers 2

    .line 151
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_b

    .line 152
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_b
    return-void
.end method
