.class public Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$PagerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PagerAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$PagerAdapter$PagerViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private final mDetailBean:Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

.field private final mDetailItemBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;


# direct methods
.method public static synthetic $r8$lambda$wedUROcoUkPkPkuNEpPU_0xO7R8(Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$PagerAdapter;Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;ILandroid/view/View;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$PagerAdapter;->lambda$onBindViewHolder$0(Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;)V
    .registers 3

    .line 150
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$PagerAdapter;->this$0:Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 151
    iput-object p2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$PagerAdapter;->mDetailBean:Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    .line 152
    invoke-virtual {p2}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailItemBeanList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$PagerAdapter;->mDetailItemBeans:Ljava/util/List;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;ILandroid/view/View;)V
    .registers 6

    .line 192
    invoke-static {}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onBindViewHolder click] mEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$PagerAdapter;->this$0:Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;

    invoke-static {v1}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->-$$Nest$fgetmEnable(Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,isFailed :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->isImgVideoLoadingFailed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 193
    iget-object p3, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$PagerAdapter;->this$0:Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;

    invoke-static {p3}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->-$$Nest$fgetmEnable(Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;)Z

    move-result p3

    if-eqz p3, :cond_55

    iget-object p3, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$PagerAdapter;->this$0:Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;

    invoke-static {p3}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->-$$Nest$fgetmReLoadListener(Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;)Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$IReLoadListener;

    move-result-object p3

    if-eqz p3, :cond_55

    .line 195
    invoke-virtual {p1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->isImgVideoLoadingFailed()Z

    move-result p1

    if-eqz p1, :cond_55

    .line 196
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$PagerAdapter;->this$0:Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;

    invoke-static {p1}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->-$$Nest$fgetmReLoadListener(Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;)Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$IReLoadListener;

    move-result-object p1

    iget-object p3, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$PagerAdapter;->mDetailBean:Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    invoke-virtual {p3}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailName()Ljava/lang/String;

    move-result-object p3

    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$PagerAdapter;->this$0:Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;

    invoke-static {p0}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->-$$Nest$fgetmPosition(Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;)I

    move-result p0

    invoke-interface {p1, p3, p0, p2}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$IReLoadListener;->reLoadResource(Ljava/lang/String;II)V

    :cond_55
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 1

    .line 203
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$PagerAdapter;->mDetailItemBeans:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 10

    .line 163
    move-object v0, p1

    check-cast v0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$PagerAdapter$PagerViewHolder;

    .line 164
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$PagerAdapter;->mDetailItemBeans:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;

    .line 166
    iget-object v2, v0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$PagerAdapter$PagerViewHolder;->imageView:Landroid/widget/ImageView;

    .line 167
    iget-object v3, v0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$PagerAdapter$PagerViewHolder;->imageFailedView:Landroid/widget/ImageView;

    .line 168
    iget-object v4, v0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$PagerAdapter$PagerViewHolder;->loadingView:Lcom/transsion/widgetslib/view/OSLoadingView;

    .line 170
    invoke-virtual {v1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->getItemImgVideoFilePath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x8

    if-nez v5, :cond_2e

    .line 171
    invoke-virtual {v1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->isImgVideoLoadingFailed()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_27

    .line 172
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_74

    .line 175
    :cond_27
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_74

    .line 179
    :cond_2e
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 180
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    iget-object v0, v0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$PagerAdapter$PagerViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    .line 182
    invoke-virtual {v1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->getItemImgVideoFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$PagerAdapter;->this$0:Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;

    invoke-static {v3}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->-$$Nest$fgetmContext(Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;)Landroid/content/Context;

    move-result-object v3

    .line 183
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/imageryguide/R$dimen;->detail_item_image_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$PagerAdapter;->this$0:Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;

    invoke-static {v4}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->-$$Nest$fgetmContext(Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;)Landroid/content/Context;

    move-result-object v4

    .line 184
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/feature/imageryguide/R$dimen;->detail_item_image_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 183
    invoke-virtual {v0, v3, v4}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 185
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 188
    :goto_74
    invoke-static {}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onBindViewHolder] filePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->getItemImgVideoFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ,failed :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->isImgVideoLoadingFailed()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ,position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 188
    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 191
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$PagerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v1, p2}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$PagerAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$PagerAdapter;Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 6

    .line 158
    new-instance p2, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$PagerAdapter$PagerViewHolder;

    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$PagerAdapter;->this$0:Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;

    invoke-static {v0}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->-$$Nest$fgetmContext(Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/imageryguide/R$layout;->detail_pager_item_img_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$PagerAdapter$PagerViewHolder;-><init>(Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$PagerAdapter;Landroid/view/View;)V

    return-object p2
.end method
