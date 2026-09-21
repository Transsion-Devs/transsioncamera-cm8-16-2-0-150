.class public Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder$ViewTag;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDetailBean:Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

.field private mEnable:Z

.field private mPosition:I

.field private final mReLoadListener:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$IReLoadListener;

.field private mVerticalDescription:Landroid/widget/TextView;

.field private mVerticalImgLinearLayout:Landroid/widget/LinearLayout;

.field private mVerticalTitle:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$5NGjnST7lg3pGYWPnIiHoEF1Wd0(Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->lambda$updateItemImgView$0(Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 30
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Guide_VerticalHolder"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/content/Context;Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$IReLoadListener;)V
    .registers 4

    .line 47
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mEnable:Z

    .line 49
    iput-object p2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mContext:Landroid/content/Context;

    .line 50
    iput-object p3, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mReLoadListener:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$IReLoadListener;

    .line 52
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->initView()V

    return-void
.end method

.method private initView()V
    .registers 3

    .line 56
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/imageryguide/R$id;->detail_vertical_item_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mVerticalTitle:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/imageryguide/R$id;->detail_vertical_item_description:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mVerticalDescription:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/imageryguide/R$id;->detail_vertical_img_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mVerticalImgLinearLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method private synthetic lambda$updateItemImgView$0(Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;Landroid/view/View;Landroid/view/View;)V
    .registers 6

    .line 147
    sget-object p3, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[view click] mEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,isFailed :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {p1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->isImgVideoLoadingFailed()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " ,tag :"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-static {p3, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder$ViewTag;

    .line 150
    iget-boolean p2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mEnable:Z

    if-eqz p2, :cond_5b

    iget-object p2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mReLoadListener:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$IReLoadListener;

    if-eqz p2, :cond_5b

    if-eqz p1, :cond_5b

    .line 153
    invoke-virtual {p1}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder$ViewTag;->isDownLoadFailed()Z

    move-result p2

    if-eqz p2, :cond_5b

    .line 154
    iget-object p2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mReLoadListener:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$IReLoadListener;

    iget-object p3, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mDetailBean:Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    invoke-virtual {p3}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailName()Ljava/lang/String;

    move-result-object p3

    iget p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mPosition:I

    invoke-virtual {p1}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder$ViewTag;->getPosition()I

    move-result p1

    invoke-interface {p2, p3, p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$IReLoadListener;->reLoadResource(Ljava/lang/String;II)V

    :cond_5b
    return-void
.end method

.method private updateItemImgView(Landroid/view/View;I)V
    .registers 13

    .line 108
    sget v0, Lcom/transsion/camera/feature/imageryguide/R$id;->detail_guide_vertical_img_item_title_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 109
    sget v1, Lcom/transsion/camera/feature/imageryguide/R$id;->detail_guide_vertical_img_item_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 110
    sget v2, Lcom/transsion/camera/feature/imageryguide/R$id;->detail_guide_vertical_item_img:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 111
    sget v3, Lcom/transsion/camera/feature/imageryguide/R$id;->detail_img_load_filed:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 112
    sget v4, Lcom/transsion/camera/feature/imageryguide/R$id;->detail_guide_vertical_item_img_loading:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/transsion/widgetslib/view/OSLoadingView;

    .line 114
    iget-object v5, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mDetailBean:Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    invoke-virtual {v5}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailItemBeanList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;

    .line 115
    iget-object v6, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mDetailBean:Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    invoke-virtual {v6}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailItemBeanList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;

    invoke-virtual {v6}, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->getItemName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_64

    .line 117
    iget-object v7, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "string"

    invoke-virtual {v7, v6, v9, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_64

    .line 119
    iget-object v6, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 122
    :cond_64
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    const/16 v7, 0x8

    if-eqz v6, :cond_6e

    move v8, v1

    goto :goto_6f

    :cond_6e
    move v8, v7

    .line 123
    :goto_6f
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 125
    invoke-virtual {v5}, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->getItemImgVideoFilePath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8c

    .line 126
    invoke-virtual {v5}, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->isImgVideoLoadingFailed()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 127
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c6

    .line 130
    :cond_85
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c6

    .line 134
    :cond_8c
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 135
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    .line 137
    invoke-virtual {v5}, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->getItemImgVideoFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mContext:Landroid/content/Context;

    .line 138
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/camera/feature/imageryguide/R$dimen;->detail_item_image_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v3, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mContext:Landroid/content/Context;

    .line 139
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/imageryguide/R$dimen;->detail_item_image_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 138
    invoke-virtual {v0, v1, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 140
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 143
    :goto_c6
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateItemImgView]  detailPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,filePath :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->getItemImgVideoFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,itemTitleName :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,mEnable :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ,failed :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v5}, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->isImgVideoLoadingFailed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 145
    new-instance v0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder$ViewTag;

    invoke-virtual {v5}, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->isImgVideoLoadingFailed()Z

    move-result v1

    invoke-direct {v0, p2, v1}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder$ViewTag;-><init>(IZ)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 146
    new-instance p2, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v5, p1}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateTextDescriptionLayoutParams(Landroid/widget/TextView;I)V
    .registers 5

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x1

    if-gt p2, v1, :cond_16

    .line 176
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/transsion/camera/feature/imageryguide/R$dimen;->detail_item_description_no_title_top_margin:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_22

    .line 177
    :cond_16
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/transsion/camera/feature/imageryguide/R$dimen;->detail_item_description_normal_top_margin:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_22
    const/4 p2, 0x0

    .line 175
    invoke-virtual {v0, p2, p0, p2, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 180
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public setEnable(Z)V
    .registers 2

    .line 160
    iput-boolean p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mEnable:Z

    return-void
.end method

.method public updateDetailItem(Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;I)V
    .registers 3

    .line 164
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mDetailBean:Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    .line 165
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mVerticalImgLinearLayout:Landroid/widget/LinearLayout;

    if-nez p1, :cond_7

    return-void

    .line 169
    :cond_7
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 170
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->updateItemImgView(Landroid/view/View;I)V

    return-void
.end method

.method public updateVerticalHolder(Ljava/util/List;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;",
            ">;I)V"
        }
    .end annotation

    .line 62
    iput p2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mPosition:I

    .line 63
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    iput-object p2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mDetailBean:Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    .line 65
    invoke-virtual {p2}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "string"

    const/4 v1, 0x1

    if-eqz p2, :cond_55

    .line 66
    iget-object p2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mDetailBean:Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v0, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 67
    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mDetailBean:Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailName()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_3b

    .line 69
    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 71
    :cond_3b
    iget-object p2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mVerticalTitle:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p2

    if-ne p2, v1, :cond_55

    .line 73
    iget-object p2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mVerticalTitle:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 74
    iget-object p2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mVerticalTitle:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Landroid/view/View;->setTextDirection(I)V

    .line 78
    :cond_55
    iget-object p2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mVerticalTitle:Landroid/widget/TextView;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-le v2, v1, :cond_60

    move v2, v3

    goto :goto_62

    :cond_60
    const/16 v2, 0x8

    :goto_62
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 79
    iget-object p2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mVerticalDescription:Landroid/widget/TextView;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->updateTextDescriptionLayoutParams(Landroid/widget/TextView;I)V

    .line 81
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mDetailBean:Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/imageryguide/utils/IconUtils;->getTextIcon(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    .line 82
    iget-object p2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mDetailBean:Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailDescription()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_b9

    .line 83
    iget-object p2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mDetailBean:Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailDescription()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v2, v0, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mDetailBean:Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_aa

    .line 86
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_aa
    iget-object p2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mVerticalDescription:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, -0x1

    if-eq p1, p2, :cond_b9

    .line 90
    iget-object p2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mVerticalDescription:Landroid/widget/TextView;

    invoke-static {p2, v0, p1}, Lcom/transsion/camera/utils/UIUtils;->replaceTextViewWithIcon(Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 94
    :cond_b9
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mVerticalImgLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    move p1, v3

    .line 95
    :goto_bf
    iget-object p2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mDetailBean:Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailItemBeanList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_108

    .line 96
    iget-object p2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsion/camera/feature/imageryguide/R$layout;->detail_guide_vertical_img:I

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 97
    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->updateItemImgView(Landroid/view/View;I)V

    .line 98
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mVerticalImgLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 99
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 100
    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mDetailBean:Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailItemBeanList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-eq p1, v2, :cond_102

    .line 101
    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/transsion/camera/feature/imageryguide/R$dimen;->detail_item_bar_vertical_item_margin:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v3, v3, v3, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 103
    :cond_102
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_bf

    :cond_108
    return-void
.end method
