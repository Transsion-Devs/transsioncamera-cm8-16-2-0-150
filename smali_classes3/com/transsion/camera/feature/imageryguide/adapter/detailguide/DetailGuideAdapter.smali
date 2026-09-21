.class public Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDetailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;",
            ">;"
        }
    .end annotation
.end field

.field private mEnable:Z

.field private final mReLoadListener:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$IReLoadListener;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Guide_DetailGuideAdapter"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$IReLoadListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;",
            ">;",
            "Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$IReLoadListener;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->mEnable:Z

    .line 42
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->mDetailList:Ljava/util/List;

    .line 44
    iput-object p3, p0, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->mReLoadListener:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$IReLoadListener;

    return-void
.end method

.method private getDetailItemType(Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;)I
    .registers 4

    .line 166
    sget-object p0, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getDetailItemType]  detailBean: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailItemBeanList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_4c

    .line 168
    invoke-virtual {p1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailItemBeanList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->getItemImgVideoUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/feature/imageryguide/utils/FileUtils;->isImageFile(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_37

    return v0

    .line 170
    :cond_37
    invoke-virtual {p1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailItemBeanList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->getItemImgVideoUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/feature/imageryguide/utils/FileUtils;->isVideoFile(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4c

    return v1

    .line 175
    :cond_4c
    invoke-virtual {p1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailItemBeanList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v1, :cond_5b

    .line 176
    invoke-virtual {p1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getItemType()I

    move-result p0

    return p0

    :cond_5b
    return v0
.end method

.method private setViewHolderEnable(Z)V
    .registers 5

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_5

    goto :goto_43

    .line 99
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_c

    goto :goto_43

    :cond_c
    const/4 v0, 0x0

    .line 103
    :goto_d
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_43

    .line 104
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 106
    instance-of v2, v1, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideImageHolder;

    if-eqz v2, :cond_23

    .line 107
    check-cast v1, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideImageHolder;

    .line 108
    invoke-virtual {v1, p1}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideImageHolder;->setEnable(Z)V

    goto :goto_40

    .line 109
    :cond_23
    instance-of v2, v1, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVideoHolder;

    if-eqz v2, :cond_2d

    .line 110
    check-cast v1, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVideoHolder;

    .line 111
    invoke-virtual {v1, p1}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVideoHolder;->setEnable(Z)V

    goto :goto_40

    .line 112
    :cond_2d
    instance-of v2, v1, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;

    if-eqz v2, :cond_37

    .line 113
    check-cast v1, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;

    .line 114
    invoke-virtual {v1, p1}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->setEnable(Z)V

    goto :goto_40

    .line 115
    :cond_37
    instance-of v2, v1, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;

    if-eqz v2, :cond_40

    .line 116
    check-cast v1, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;

    .line 117
    invoke-virtual {v1, p1}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->setEnable(Z)V

    :cond_40
    :goto_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_43
    :goto_43
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 1

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->mDetailList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .registers 3

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->mDetailList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->getDetailItemType(Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;)I

    move-result p0

    return p0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    .line 184
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 185
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 5

    .line 72
    instance-of v0, p1, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideImageHolder;

    if-eqz v0, :cond_c

    .line 73
    move-object v0, p1

    check-cast v0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideImageHolder;

    .line 74
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->mDetailList:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideImageHolder;->updateImageHolder(Ljava/util/List;I)V

    .line 76
    :cond_c
    instance-of v0, p1, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVideoHolder;

    if-eqz v0, :cond_18

    .line 77
    move-object v0, p1

    check-cast v0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVideoHolder;

    .line 78
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->mDetailList:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVideoHolder;->updateVideoHolder(Ljava/util/List;I)V

    .line 80
    :cond_18
    instance-of v0, p1, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;

    if-eqz v0, :cond_24

    .line 81
    move-object v0, p1

    check-cast v0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;

    .line 82
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->mDetailList:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->updateHorizontalHolder(Ljava/util/List;I)V

    .line 84
    :cond_24
    instance-of v0, p1, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;

    if-eqz v0, :cond_2f

    .line 85
    check-cast p1, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->mDetailList:Ljava/util/List;

    invoke-virtual {p1, p0, p2}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->updateVerticalHolder(Ljava/util/List;I)V

    :cond_2f
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_50

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3a

    const/4 v1, 0x3

    if-eq p2, v1, :cond_24

    const/4 v1, 0x4

    if-eq p2, v1, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 61
    :cond_e
    new-instance p2, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/imageryguide/R$layout;->detail_guide_vertical_holder:I

    .line 62
    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->mReLoadListener:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$IReLoadListener;

    invoke-direct {p2, p1, v0, p0}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;-><init>(Landroid/view/View;Landroid/content/Context;Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$IReLoadListener;)V

    return-object p2

    .line 58
    :cond_24
    new-instance p2, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/imageryguide/R$layout;->detail_guide_horizontal_holder:I

    .line 59
    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->mReLoadListener:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$IReLoadListener;

    invoke-direct {p2, p1, v0, p0}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;-><init>(Landroid/view/View;Landroid/content/Context;Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$IReLoadListener;)V

    return-object p2

    .line 55
    :cond_3a
    new-instance p2, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVideoHolder;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/imageryguide/R$layout;->detail_guide_video_holder:I

    .line 56
    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->mReLoadListener:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$IReLoadListener;

    invoke-direct {p2, p1, v0, p0}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVideoHolder;-><init>(Landroid/view/View;Landroid/content/Context;Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$IReLoadListener;)V

    return-object p2

    .line 52
    :cond_50
    new-instance p2, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideImageHolder;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/imageryguide/R$layout;->detail_guide_image_holder:I

    .line 53
    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->mReLoadListener:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$IReLoadListener;

    invoke-direct {p2, p1, v0, p0}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideImageHolder;-><init>(Landroid/view/View;Landroid/content/Context;Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$IReLoadListener;)V

    return-object p2
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    .line 190
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 p1, 0x0

    .line 191
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 91
    iput-boolean p1, p0, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->mEnable:Z

    .line 92
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->setViewHolderEnable(Z)V

    return-void
.end method

.method public updateDetailData(Ljava/util/List;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;",
            ">;II)V"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->mDetailList:Ljava/util/List;

    .line 135
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->getItemViewType(I)I

    move-result p1

    if-eqz p1, :cond_44

    const/4 v0, 0x1

    if-eq p1, v0, :cond_44

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2f

    const/4 v0, 0x4

    if-eq p1, v0, :cond_12

    goto :goto_43

    .line 151
    :cond_12
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-nez p1, :cond_1d

    .line 153
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 155
    :cond_1d
    instance-of v0, p1, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;

    if-eqz v0, :cond_43

    .line 156
    check-cast p1, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;

    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->mDetailList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    invoke-virtual {p1, p0, p3}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideVerticalHolder;->updateDetailItem(Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;I)V

    return-void

    .line 142
    :cond_2f
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-nez p1, :cond_3a

    .line 144
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 146
    :cond_3a
    instance-of p0, p1, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;

    if-eqz p0, :cond_43

    .line 147
    check-cast p1, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;

    invoke-virtual {p1, p3}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->updateDetailItem(I)V

    :cond_43
    :goto_43
    return-void

    .line 139
    :cond_44
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
