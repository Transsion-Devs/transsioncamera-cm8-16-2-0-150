.class public Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$ItemViewHolder;,
        Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private mCurrentPosition:I

.field private final mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItemViewHolderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$ItemViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$OnItemClickListener;

.field private mOrientation:I


# direct methods
.method public static synthetic $r8$lambda$5ueJV6sGWtMRM2w6izk0ZHRPxpI(Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;ILandroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->lambda$onBindViewHolder$0(ILandroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmOrientation(Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->mOrientation:I

    return p0
.end method

.method public constructor <init>(Ljava/util/List;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;",
            ">;II)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->mCurrentPosition:I

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->mItemViewHolderList:Ljava/util/List;

    .line 45
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->mDataList:Ljava/util/List;

    .line 46
    iput p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->mOrientation:I

    .line 47
    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->setCurrentPosition(IZ)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(ILandroid/view/View;)V
    .registers 5

    .line 69
    invoke-static {p2}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_12

    :cond_7
    const-wide/16 v0, 0x32

    .line 72
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isFastDoubleClick(J)Z

    move-result p2

    if-nez p2, :cond_12

    .line 73
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->updateCurrentPosition(I)V

    :cond_12
    :goto_12
    return-void
.end method

.method private updateCurrentPosition(I)V
    .registers 4

    .line 99
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->mCurrentPosition:I

    if-ne v0, p1, :cond_5

    return-void

    .line 103
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->mListener:Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$OnItemClickListener;

    if-eqz v0, :cond_14

    .line 104
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$OnItemClickListener;->onItemSelected(Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;)V

    .line 106
    :cond_14
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 107
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->mCurrentPosition:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 108
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->mCurrentPosition:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 21
    check-cast p1, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$ItemViewHolder;I)V
    .registers 7

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;

    .line 60
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->mItemViewHolderList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 61
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->mItemViewHolderList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_15
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->mCurrentPosition:I

    if-ne p2, v2, :cond_1d

    const/4 v2, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 65
    iget-object v1, p1, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$ItemViewHolder;->ivItem:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->mOrientation:I

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 66
    iget-object v1, p1, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$ItemViewHolder;->ivItem:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget v0, v0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;->dualIconId:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealWithoutAnimation(Landroid/view/View;)V

    .line 68
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$ItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$ItemViewHolder;
    .registers 6

    .line 53
    new-instance p2, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$ItemViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$layout;->dual_device_group_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$ItemViewHolder;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setCurrentPosition(IZ)V
    .registers 4

    .line 112
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->mCurrentPosition:I

    .line 113
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->mCurrentPosition:I

    if-eqz p2, :cond_c

    .line 116
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 117
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_c
    return-void
.end method

.method public setItemEnable(Z)V
    .registers 3

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->mItemViewHolderList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$ItemViewHolder;

    .line 80
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_6

    :cond_18
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$OnItemClickListener;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->mListener:Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$OnItemClickListener;

    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    .line 89
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->mOrientation:I

    .line 90
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
