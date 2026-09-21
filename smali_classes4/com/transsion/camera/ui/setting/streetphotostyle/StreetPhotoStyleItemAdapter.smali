.class public Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$OnItemClickListener;,
        Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;
    }
.end annotation


# instance fields
.field private volatile isEnable:Z

.field private mCurrentPosition:I

.field private final mDataList:Ljava/util/List;

.field private mHeight:I

.field private mListener:Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$OnItemClickListener;

.field private mOrientation:I

.field private mWidth:I


# direct methods
.method public static synthetic $r8$lambda$GldwNOBxQoZ9S20_KjQPgnRYRF4(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;ILandroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;->lambda$onBindViewHolder$1(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bj1dg65rPuBKdhRmjsK_JeEiyno(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;)V
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;->rtLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 98
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;->rtLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;II)V
    .registers 5

    .line 66
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x2

    .line 22
    iput v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;->mCurrentPosition:I

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;->isEnable:Z

    .line 67
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;->mDataList:Ljava/util/List;

    .line 68
    iput p3, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;->mOrientation:I

    .line 69
    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;->setCurrentPosition(IZ)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(ILandroid/view/View;)V
    .registers 3

    .line 112
    iget-boolean p2, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;->isEnable:Z

    if-eqz p2, :cond_7

    .line 113
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;->updateCurrentPosition(I)V

    :cond_7
    return-void
.end method

.method private updateCurrentPosition(I)V
    .registers 4

    .line 132
    iget v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;->mCurrentPosition:I

    if-ne v0, p1, :cond_5

    return-void

    .line 135
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;->mListener:Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$OnItemClickListener;

    if-eqz v0, :cond_14

    .line 136
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItem;

    invoke-interface {v0, v1}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$OnItemClickListener;->onItemSelected(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItem;)V

    .line 138
    :cond_14
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 139
    iget v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;->mCurrentPosition:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 140
    iput p1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;->mCurrentPosition:I

    return-void
.end method

.method private updateItemTitleLayoutIfNeed(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;)V
    .registers 5

    .line 122
    iget-object p0, p1, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 123
    iget-object v0, p1, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    .line 124
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->street_photo_style_item_title_padding_0_180:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    .line 123
    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 125
    iget-object v0, p1, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/R$dimen;->street_photo_style_item_title_width_0_180:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 126
    iget-object v0, p1, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/R$dimen;->street_photo_style_item_title_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v0, 0x51

    .line 127
    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 128
    iget-object p0, p1, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 129
    iget-object p0, p1, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 20
    check-cast p1, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;->onBindViewHolder(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;I)V
    .registers 7

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItem;

    .line 84
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;->updateItemTitleLayoutIfNeed(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;)V

    .line 85
    iget v1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;->mOrientation:I

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_14

    add-int/lit16 v1, v1, 0xb4

    goto :goto_1a

    :cond_14
    const/16 v2, 0x10e

    if-ne v1, v2, :cond_1a

    add-int/lit16 v1, v1, -0xb4

    .line 92
    :cond_1a
    :goto_1a
    iget v2, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;->mWidth:I

    iget v3, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;->mHeight:I

    invoke-virtual {p1, v2, v3, v1}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;->updateSizeAndOrientation(III)V

    .line 93
    iget v1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;->mCurrentPosition:I

    if-ne p2, v1, :cond_37

    .line 94
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;->ivItemSign:Landroid/widget/ImageView;

    sget v2, Lcom/transsion/camera/R$drawable;->lc_street_photo_style_item_cover_selected:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    new-instance v2, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_55

    .line 103
    :cond_37
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;->ivItemSign:Landroid/widget/ImageView;

    sget v2, Lcom/transsion/camera/R$drawable;->lc_street_photo_style_item_cover_transparent:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;->rtLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 105
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;->rtLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 106
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 107
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 109
    :goto_55
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;->ivItem:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget v2, v0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItem;->filterIconId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;->ivItem:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v0, v0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItem;->filterNameId:I

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;
    .registers 6

    .line 77
    new-instance p2, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$layout;->street_photo_style_thumbnail_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;-><init>(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public onOrientationChanged(IZ)V
    .registers 3

    .line 154
    iput p1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;->mOrientation:I

    .line 155
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setCurrentPosition(IZ)V
    .registers 4

    .line 143
    iget v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;->mCurrentPosition:I

    .line 144
    iput p1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;->mCurrentPosition:I

    if-eqz p2, :cond_c

    .line 146
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 147
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_c
    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 151
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;->isEnable:Z

    return-void
.end method

.method public setOnItemSelectedListener(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$OnItemClickListener;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;->mListener:Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$OnItemClickListener;

    return-void
.end method
