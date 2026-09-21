.class public Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$OnItemClickListener;,
        Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private volatile isEnable:Z

.field private final mContext:Landroid/content/Context;

.field private final mCurrentPage:I

.field private mCurrentPosition:I

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$OnItemClickListener;

.field private mSupportFreeShotEditor:Z


# direct methods
.method public static synthetic $r8$lambda$-Z_X6JF9hJHqByZp4yic-pqB9Ls(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$ItemViewHolder;)V
    .registers 3

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 114
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$s2bAC8zvBfkQSF-zbC2JXpFTyKw(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$ItemViewHolder;ILandroid/view/View;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->lambda$onBindViewHolder$1(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$ItemViewHolder;ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;IIZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;",
            ">;IIZ)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->mCurrentPosition:I

    .line 35
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->isEnable:Z

    .line 75
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->mDataList:Ljava/util/List;

    .line 77
    iput p4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->mCurrentPage:I

    .line 78
    iput-boolean p5, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->mSupportFreeShotEditor:Z

    .line 79
    invoke-virtual {p0, p3, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->setCurrentPosition(IZ)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$ItemViewHolder;ILandroid/view/View;)V
    .registers 4

    .line 130
    iget-boolean p3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->isEnable:Z

    if-eqz p3, :cond_f

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 131
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->updateCurrentPosition(I)V

    :cond_f
    return-void
.end method

.method private updateCurrentPosition(I)V
    .registers 4

    .line 142
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->mCurrentPosition:I

    if-ne v0, p1, :cond_12

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->mListener:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$OnItemClickListener;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$OnItemClickListener;->onTemplateEditSelected(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V

    return-void

    .line 147
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->mListener:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$OnItemClickListener;

    if-eqz v0, :cond_21

    .line 148
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$OnItemClickListener;->onTemplateItemSelected(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V

    .line 151
    :cond_21
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 152
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->mCurrentPosition:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 154
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->mCurrentPosition:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 1

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->mDataList:Ljava/util/List;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 27
    check-cast p1, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$ItemViewHolder;I)V
    .registers 10

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    .line 103
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->mCurrentPosition:I

    const/4 v2, 0x0

    if-ne p2, v1, :cond_43

    .line 104
    iget-object v1, p1, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$ItemViewHolder;->ivItemSign:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    iget-object v1, p1, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$ItemViewHolder;->ivEditItem:Landroid/widget/ImageView;

    iget v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->mCurrentPage:I

    const/4 v4, 0x2

    const/16 v5, 0x8

    if-eq v3, v4, :cond_22

    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->mSupportFreeShotEditor:Z

    if-eqz v3, :cond_20

    goto :goto_22

    :cond_20
    move v3, v5

    goto :goto_23

    :cond_22
    :goto_22
    move v3, v2

    :goto_23
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    iget-object v1, p1, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$ItemViewHolder;->ivCoverItemBackGround:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    iget-object v1, p1, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->mContext:Landroid/content/Context;

    sget v4, Lcom/transsion/camera/feature/vlog/R$color;->vlog_template_item_name_text_selected_color:I

    .line 109
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    .line 108
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    iget-object v1, p1, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    new-instance v3, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$ItemViewHolder;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_6a

    .line 117
    :cond_43
    iget-object v1, p1, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$ItemViewHolder;->ivEditItem:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    iget-object v1, p1, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$ItemViewHolder;->ivItemSign:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    iget-object v1, p1, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$ItemViewHolder;->ivCoverItemBackGround:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    iget-object v1, p1, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->mContext:Landroid/content/Context;

    sget v4, Lcom/transsion/camera/feature/vlog/R$color;->vlog_white:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    iget-object v1, p1, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 122
    iget-object v1, p1, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 125
    :goto_6a
    iget-object v1, p1, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$ItemViewHolder;->ivCoverItem:Landroid/widget/ImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getTemplateItem()Lcom/cutsame/solution/template/model/TemplateItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cutsame/solution/template/model/TemplateItem;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/vlog/TemplateInfo;->getCover(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    iget-object v1, p1, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getTemplateItem()Lcom/cutsame/solution/template/model/TemplateItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cutsame/solution/template/model/TemplateItem;->getId()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/TemplateInfo;->getTitle(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 128
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x3f6b851f    # 0.92f

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 129
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$ItemViewHolder;I)V

    const/16 p0, 0x12c

    invoke-static {v0, p0, v2, v1}, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;->setOnclickListener(Landroid/view/View;IZLandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$ItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$ItemViewHolder;
    .registers 5

    .line 95
    new-instance p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$ItemViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsion/camera/feature/vlog/R$layout;->vlog_editor_replace_item:I

    const/4 v1, 0x0

    .line 96
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$ItemViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public setCurrentPosition(IZ)V
    .registers 4

    .line 158
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->mCurrentPosition:I

    .line 159
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->mCurrentPosition:I

    if-eqz p2, :cond_c

    .line 162
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 163
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_c
    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 168
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->isEnable:Z

    return-void
.end method

.method public setOnItemSelectedListener(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$OnItemClickListener;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->mListener:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$OnItemClickListener;

    return-void
.end method

.method public updateDataList(Ljava/util/List;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;",
            ">;I)V"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->mDataList:Ljava/util/List;

    const/4 p1, 0x1

    .line 84
    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->setCurrentPosition(IZ)V

    .line 85
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
