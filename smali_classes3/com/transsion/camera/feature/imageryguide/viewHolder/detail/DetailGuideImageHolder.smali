.class public Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideImageHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEnable:Z

.field private final mReLoadListener:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$IReLoadListener;


# direct methods
.method public static synthetic $r8$lambda$Fvvg_JlqjII12vemKcw6_kJ3wDU(Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideImageHolder;Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;ILandroid/view/View;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideImageHolder;->lambda$updateImageHolder$0(Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;ILandroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Guide_ImageHolder"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideImageHolder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/content/Context;Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$IReLoadListener;)V
    .registers 4

    .line 35
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideImageHolder;->mEnable:Z

    .line 37
    iput-object p2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideImageHolder;->mContext:Landroid/content/Context;

    .line 38
    iput-object p3, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideImageHolder;->mReLoadListener:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$IReLoadListener;

    return-void
.end method

.method private synthetic lambda$updateImageHolder$0(Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;ILandroid/view/View;)V
    .registers 7

    .line 99
    sget-object p4, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideImageHolder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[updateImageHolder click] mEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideImageHolder;->mEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,isFailed :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->isImgVideoLoadingFailed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 100
    iget-boolean p4, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideImageHolder;->mEnable:Z

    if-eqz p4, :cond_3c

    iget-object p4, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideImageHolder;->mReLoadListener:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$IReLoadListener;

    if-eqz p4, :cond_3c

    .line 102
    invoke-virtual {p1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->isImgVideoLoadingFailed()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 103
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideImageHolder;->mReLoadListener:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$IReLoadListener;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p0, p1, p3, p2}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$IReLoadListener;->reLoadResource(Ljava/lang/String;II)V

    :cond_3c
    return-void
.end method

.method private updateTextDescriptionLayoutParams(Landroid/widget/TextView;I)V
    .registers 5

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x1

    if-gt p2, v1, :cond_16

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideImageHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/transsion/camera/feature/imageryguide/R$dimen;->detail_item_description_no_title_top_margin:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_22

    .line 113
    :cond_16
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideImageHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/transsion/camera/feature/imageryguide/R$dimen;->detail_item_description_normal_top_margin:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_22
    const/4 p2, 0x0

    .line 111
    invoke-virtual {v0, p2, p0, p2, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 116
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public setEnable(Z)V
    .registers 2

    .line 120
    iput-boolean p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideImageHolder;->mEnable:Z

    return-void
.end method

.method public updateImageHolder(Ljava/util/List;I)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;",
            ">;I)V"
        }
    .end annotation

    .line 42
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    .line 43
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/transsion/camera/feature/imageryguide/R$id;->detail_guide_img_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 44
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v3, Lcom/transsion/camera/feature/imageryguide/R$id;->detail_guide_img_introduce:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 45
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v4, Lcom/transsion/camera/feature/imageryguide/R$id;->detail_guide_img:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 46
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v5, Lcom/transsion/camera/feature/imageryguide/R$id;->detail_img_load_filed:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 47
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v6, Lcom/transsion/camera/feature/imageryguide/R$id;->detail_guide_img_loading:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/transsion/widgetslib/view/OSLoadingView;

    .line 49
    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailItemBeanList()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;

    .line 51
    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "string"

    const/4 v10, 0x1

    if-eqz v8, :cond_84

    .line 52
    iget-object v8, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideImageHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideImageHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v9, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 53
    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailName()Ljava/lang/String;

    move-result-object v11

    if-eqz v8, :cond_70

    .line 55
    iget-object v11, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideImageHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 57
    :cond_70
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v8

    if-ne v8, v10, :cond_84

    .line 59
    invoke-virtual {v1, v10}, Landroid/view/View;->setLayoutDirection(I)V

    const/4 v8, 0x4

    .line 60
    invoke-virtual {v1, v8}, Landroid/view/View;->setTextDirection(I)V

    .line 64
    :cond_84
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    const/16 v11, 0x8

    if-gt v8, v10, :cond_8e

    move v8, v11

    goto :goto_8f

    :cond_8e
    move v8, v7

    :goto_8f
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 65
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideImageHolder;->updateTextDescriptionLayoutParams(Landroid/widget/TextView;I)V

    .line 67
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideImageHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/feature/imageryguide/utils/IconUtils;->getTextIcon(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    .line 68
    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d8

    .line 69
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideImageHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailDescription()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideImageHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 70
    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailDescription()Ljava/lang/String;

    move-result-object v8

    if-eqz v1, :cond_cd

    .line 72
    iget-object v8, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideImageHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 74
    :cond_cd
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, -0x1

    if-eq p1, v1, :cond_d8

    .line 76
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideImageHolder;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, p1}, Lcom/transsion/camera/utils/UIUtils;->replaceTextViewWithIcon(Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 80
    :cond_d8
    invoke-virtual {v6}, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->getItemImgVideoFilePath()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_f2

    .line 81
    invoke-virtual {v6}, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->isImgVideoLoadingFailed()Z

    move-result p1

    if-eqz p1, :cond_eb

    .line 82
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12c

    .line 85
    :cond_eb
    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12c

    .line 89
    :cond_f2
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 90
    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideImageHolder;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    new-instance v1, Ljava/io/File;

    .line 92
    invoke-virtual {v6}, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->getItemImgVideoFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideImageHolder;->mContext:Landroid/content/Context;

    .line 93
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/imageryguide/R$dimen;->detail_item_image_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideImageHolder;->mContext:Landroid/content/Context;

    .line 94
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/transsion/camera/feature/imageryguide/R$dimen;->detail_item_image_width:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 93
    invoke-virtual {p1, v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 95
    invoke-virtual {p1, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 98
    :goto_12c
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideImageHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v6, v0, p2}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideImageHolder$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideImageHolder;Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
