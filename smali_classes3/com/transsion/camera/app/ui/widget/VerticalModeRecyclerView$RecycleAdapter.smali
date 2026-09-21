.class public Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycleAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter$ItemHolder;,
        Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter$OnItemClickListener;
    }
.end annotation


# instance fields
.field private mHostRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mItemHeight:I

.field private mItemList:Ljava/util/List;

.field private mItemTextSize:I

.field private mNormalTextAppearance:I

.field private mOnItemClickListener:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter$OnItemClickListener;

.field private mSelectedIndex:I

.field private mSelectedTextAppearance:I


# direct methods
.method public static synthetic $r8$lambda$GP9Q13hRJx0hCRYu2g6l0P6GffE(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;ILandroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->lambda$onBindViewHolder$0(ILandroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmItemHeight(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->mItemHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmItemTextSize(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->mItemTextSize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNormalTextAppearance(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->mNormalTextAppearance:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectedTextAppearance(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->mSelectedTextAppearance:I

    return p0
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3

    .line 390
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 341
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->mSelectedIndex:I

    .line 391
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->mItemList:Ljava/util/List;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(ILandroid/view/View;)V
    .registers 7

    .line 416
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->mHostRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_49

    .line 420
    :cond_b
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->getCurSelectIndex()I

    move-result v0

    .line 421
    invoke-static {}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ViewHolder OnClick: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 422
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->setSelectedIndex(I)V

    .line 423
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->mOnItemClickListener:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter$OnItemClickListener;

    if-eqz v1, :cond_45

    .line 424
    invoke-interface {v1, p2, v0, p1}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;II)V

    .line 428
    :cond_45
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 417
    :cond_49
    :goto_49
    invoke-static {}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ViewHolder OnClick return, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->mHostRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCurSelectIndex()I
    .registers 1

    .line 465
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->mSelectedIndex:I

    return p0
.end method

.method public getItem(I)Ljava/lang/String;
    .registers 3

    if-ltz p1, :cond_16

    .line 450
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_d

    goto :goto_16

    .line 453
    :cond_d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_16
    :goto_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemCount()I
    .registers 1

    .line 434
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->mItemList:Ljava/util/List;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 437
    :cond_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    .line 396
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 397
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->mHostRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 340
    check-cast p1, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter$ItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->onBindViewHolder(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter$ItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter$ItemHolder;I)V
    .registers 5

    .line 410
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 412
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->getCurSelectIndex()I

    move-result v1

    if-ne v1, p2, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter$ItemHolder;->initView(Ljava/lang/String;Z)V

    .line 415
    :cond_12
    iget-object p1, p1, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter$ItemHolder;->root:Landroid/view/View;

    new-instance v0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 340
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter$ItemHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter$ItemHolder;
    .registers 5

    .line 404
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsion/camera/R$layout;->mode_selector_item_view:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 405
    new-instance p2, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter$ItemHolder;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter$ItemHolder;-><init>(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setItemList(Ljava/util/List;)V
    .registers 2

    .line 441
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->mItemList:Ljava/util/List;

    .line 442
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter$OnItemClickListener;)V
    .registers 2

    .line 457
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->mOnItemClickListener:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter$OnItemClickListener;

    return-void
.end method

.method public setSelectedIndex(I)V
    .registers 2

    .line 461
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->mSelectedIndex:I

    return-void
.end method

.method public updateItemHeight(I)V
    .registers 2

    .line 474
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->mItemHeight:I

    return-void
.end method

.method public updateItemTextSize(I)V
    .registers 2

    .line 478
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->mItemTextSize:I

    return-void
.end method

.method public updateTextAppearance(II)V
    .registers 3

    .line 469
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->mNormalTextAppearance:I

    .line 470
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->mSelectedTextAppearance:I

    return-void
.end method
