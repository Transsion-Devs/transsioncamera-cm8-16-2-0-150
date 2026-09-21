.class public Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVideoHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEnable:Z

.field private final mReLoadListener:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$IReLoadListener;


# direct methods
.method public static synthetic $r8$lambda$Q0HbrLJvTVzdaLWZ--Ayjq3__iY(Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVideoHolder;Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;ILandroid/view/View;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVideoHolder;->lambda$updateVideoHolder$0(Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/content/Context;Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$IReLoadListener;)V
    .registers 4

    .line 31
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVideoHolder;->mEnable:Z

    .line 33
    iput-object p2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVideoHolder;->mContext:Landroid/content/Context;

    .line 34
    iput-object p3, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVideoHolder;->mReLoadListener:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$IReLoadListener;

    return-void
.end method

.method private synthetic lambda$updateVideoHolder$0(Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;ILandroid/view/View;)V
    .registers 5

    .line 62
    iget-boolean p4, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVideoHolder;->mEnable:Z

    if-eqz p4, :cond_18

    iget-object p4, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVideoHolder;->mReLoadListener:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$IReLoadListener;

    if-eqz p4, :cond_18

    .line 64
    invoke-virtual {p1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->isImgVideoLoadingFailed()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVideoHolder;->mReLoadListener:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$IReLoadListener;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p0, p1, p3, p2}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$IReLoadListener;->reLoadResource(Ljava/lang/String;II)V

    :cond_18
    return-void
.end method

.method private updateTextDescriptionLayoutParams(Landroid/widget/TextView;I)V
    .registers 5

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x1

    if-gt p2, v1, :cond_16

    .line 102
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVideoHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/transsion/camera/feature/imageryguide/R$dimen;->detail_item_description_no_title_top_margin:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_22

    .line 103
    :cond_16
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVideoHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/transsion/camera/feature/imageryguide/R$dimen;->detail_item_description_normal_top_margin:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_22
    const/4 p2, 0x0

    .line 101
    invoke-virtual {v0, p2, p0, p2, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 106
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public setEnable(Z)V
    .registers 2

    .line 110
    iput-boolean p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVideoHolder;->mEnable:Z

    return-void
.end method

.method public updateVideoHolder(Ljava/util/List;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;",
            ">;I)V"
        }
    .end annotation

    .line 38
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    .line 39
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/transsion/camera/feature/imageryguide/R$id;->detail_guide_video_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 40
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v3, Lcom/transsion/camera/feature/imageryguide/R$id;->detail_guide_video_introduce:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 41
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v4, Lcom/transsion/camera/feature/imageryguide/R$id;->detail_img_load_filed:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 42
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v5, Lcom/transsion/camera/feature/imageryguide/R$id;->detail_guide_video:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;

    .line 43
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v6, Lcom/transsion/camera/feature/imageryguide/R$id;->detail_guide_video_loading_view:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/transsion/widgetslib/view/OSLoadingView;

    .line 45
    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailItemBeanList()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;

    .line 47
    invoke-virtual {v6}, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->getItemImgVideoFilePath()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x8

    if-nez v8, :cond_5f

    .line 48
    invoke-virtual {v6}, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->isImgVideoLoadingFailed()Z

    move-result v4

    if-eqz v4, :cond_58

    .line 49
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6c

    .line 52
    :cond_58
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6c

    .line 56
    :cond_5f
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 58
    invoke-virtual {v6}, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->getItemImgVideoFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->setVideoSourceAndStart(Ljava/lang/String;)V

    .line 61
    :goto_6c
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v4, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVideoHolder$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v6, v0, p2}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVideoHolder$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVideoHolder;Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailName()Ljava/lang/String;

    move-result-object p2

    const-string v3, "string"

    const/4 v4, 0x1

    if-eqz p2, :cond_b7

    .line 70
    iget-object p2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVideoHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVideoHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v3, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 71
    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailName()Ljava/lang/String;

    move-result-object v5

    if-eqz p2, :cond_a3

    .line 73
    iget-object v5, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVideoHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 75
    :cond_a3
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p2

    if-ne p2, v4, :cond_b7

    .line 77
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutDirection(I)V

    const/4 p2, 0x4

    .line 78
    invoke-virtual {v1, p2}, Landroid/view/View;->setTextDirection(I)V

    .line 82
    :cond_b7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-gt p2, v4, :cond_be

    move v7, v9

    :cond_be
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 83
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVideoHolder;->updateTextDescriptionLayoutParams(Landroid/widget/TextView;I)V

    .line 85
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVideoHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/imageryguide/utils/IconUtils;->getTextIcon(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    .line 86
    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailDescription()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_107

    .line 87
    iget-object p2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVideoHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailDescription()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVideoHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 88
    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_fc

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVideoHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    :cond_fc
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, -0x1

    if-eq p1, p2, :cond_107

    .line 94
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVideoHolder;->mContext:Landroid/content/Context;

    invoke-static {p0, v2, p1}, Lcom/transsion/camera/utils/UIUtils;->replaceTextViewWithIcon(Landroid/content/Context;Landroid/widget/TextView;I)V

    :cond_107
    return-void
.end method
