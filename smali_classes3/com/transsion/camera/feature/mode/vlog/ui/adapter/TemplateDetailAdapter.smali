.class public Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$ItemClickListener;,
        Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$ContentViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentPosition:I

.field private mEnable:Z

.field public mItemClickListener:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$ItemClickListener;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mSupportFreeShot:Z

.field private final mTemplateItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/TempDetail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$9pnuGpfdXsJJ3r3RQoF0lqf384Q(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ZILandroid/view/View;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;->lambda$onBindViewHolder$0(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ZILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$ItemClickListener;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/TempDetail;",
            ">;",
            "Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$ItemClickListener;",
            "I)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;->mCurrentPosition:I

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;->mEnable:Z

    .line 43
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;->mTemplateItemList:Ljava/util/List;

    .line 45
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;->mItemClickListener:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$ItemClickListener;

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/vlog/R$bool;->vlog_mode_support_free_shot:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;->mSupportFreeShot:Z

    .line 49
    invoke-virtual {p0, p4}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;->setCurrentPosition(I)V

    .line 50
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;->setEnable(Z)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ZILandroid/view/View;)V
    .registers 5

    .line 92
    iget-boolean p4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;->mEnable:Z

    if-eqz p4, :cond_23

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_23

    :cond_d
    if-eqz p2, :cond_14

    const/4 p1, 0x0

    .line 97
    invoke-direct {p0, p3, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;->updateCurrentPosition(ILcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V

    return-void

    .line 99
    :cond_14
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;->mTemplateItemList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/vlog/bean/TempDetail;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/TempDetail;->getTemplateItem()Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    move-result-object p1

    .line 100
    invoke-direct {p0, p3, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;->updateCurrentPosition(ILcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V

    :cond_23
    :goto_23
    return-void
.end method

.method private updateCurrentPosition(ILcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V
    .registers 5

    .line 106
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;->mCurrentPosition:I

    if-ne v0, p1, :cond_5

    return-void

    .line 110
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;->mItemClickListener:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$ItemClickListener;

    if-eqz v0, :cond_d

    const/4 v1, 0x1

    .line 111
    invoke-interface {v0, p1, p2, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$ItemClickListener;->onItemClick(ILcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;Z)V

    .line 114
    :cond_d
    iget p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;->mCurrentPosition:I

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 115
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;->mCurrentPosition:I

    .line 116
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 1

    .line 121
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;->mTemplateItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 14

    .line 69
    move-object v0, p1

    check-cast v0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$ContentViewHolder;

    .line 70
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;->mTemplateItemList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/vlog/bean/TempDetail;

    .line 71
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/TempDetail;->getTemplateItem()Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1f

    .line 72
    iget-boolean v5, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;->mSupportFreeShot:Z

    if-eqz v5, :cond_1f

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/TempDetail;->getPage()I

    move-result v1

    if-ne v1, v3, :cond_1f

    move v1, v3

    goto :goto_20

    :cond_1f
    move v1, v4

    :goto_20
    const/16 v5, 0x8

    if-eqz v1, :cond_51

    .line 74
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$ContentViewHolder;->templateBackgroundImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$ContentViewHolder;->templateName:Landroid/widget/TextView;

    const-string v6, "10086"

    invoke-static {v6}, Lcom/transsion/camera/feature/mode/vlog/TemplateInfo;->getTitle(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    .line 76
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$ContentViewHolder;->templateImg:Landroid/widget/ImageView;

    iget v7, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;->mCurrentPosition:I

    if-ne v7, p2, :cond_45

    .line 77
    const-string v6, "10087"

    invoke-static {v6}, Lcom/transsion/camera/feature/mode/vlog/TemplateInfo;->getCover(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_49

    .line 78
    :cond_45
    invoke-static {v6}, Lcom/transsion/camera/feature/mode/vlog/TemplateInfo;->getCover(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 76
    :goto_49
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_a0

    .line 80
    :cond_51
    iget-object v6, v0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$ContentViewHolder;->templateBackgroundImg:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    iget-object v6, v0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$ContentViewHolder;->templateName:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getTemplateItem()Lcom/cutsame/solution/template/model/TemplateItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cutsame/solution/template/model/TemplateItem;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/transsion/camera/feature/mode/vlog/TemplateInfo;->getTitle(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 82
    iget-object v6, v0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$ContentViewHolder;->templateImg:Landroid/widget/ImageView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getTemplateItem()Lcom/cutsame/solution/template/model/TemplateItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cutsame/solution/template/model/TemplateItem;->getId()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/vlog/TemplateInfo;->getCover(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    :goto_a0
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$ContentViewHolder;->templateName:Landroid/widget/TextView;

    iget v6, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;->mCurrentPosition:I

    if-ne v6, p2, :cond_af

    .line 86
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;->mContext:Landroid/content/Context;

    sget v7, Lcom/transsion/camera/feature/vlog/R$color;->vlog_template_item_name_text_selected_color:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    goto :goto_b0

    :cond_af
    const/4 v6, -0x1

    .line 85
    :goto_b0
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$ContentViewHolder;->templateName:Landroid/widget/TextView;

    iget v6, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;->mCurrentPosition:I

    if-ne v6, p2, :cond_ba

    goto :goto_bb

    :cond_ba
    move v3, v4

    :goto_bb
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 88
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$ContentViewHolder;->templateItemCover:Landroid/widget/ImageView;

    iget v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;->mCurrentPosition:I

    if-ne v3, p2, :cond_c5

    goto :goto_c6

    :cond_c5
    move v4, v5

    :goto_c6
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v3, 0x3f6b851f    # 0.92f

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 91
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ZI)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 5

    .line 64
    new-instance p2, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$ContentViewHolder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/transsion/camera/feature/vlog/R$layout;->template_item_content:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$ContentViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setCurrentPosition(I)V
    .registers 5

    .line 125
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;->mCurrentPosition:I

    .line 127
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;->mTemplateItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/vlog/bean/TempDetail;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/TempDetail;->getTemplateItem()Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    move-result-object p1

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;->mItemClickListener:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$ItemClickListener;

    if-eqz v0, :cond_18

    .line 129
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;->mCurrentPosition:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$ItemClickListener;->onItemClick(ILcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;Z)V

    .line 132
    :cond_18
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 58
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;->mEnable:Z

    return-void
.end method
