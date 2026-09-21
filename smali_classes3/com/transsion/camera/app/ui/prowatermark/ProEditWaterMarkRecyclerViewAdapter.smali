.class public Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$IProEditWatermarkEventListener;,
        Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$ItemViewHolder;,
        Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$CustomItemViewHolder;
    }
.end annotation


# instance fields
.field private mBrandChecked:Z

.field private mCityChecked:Z

.field private final mEditWatermarkUIItems:Ljava/util/List;

.field private mHideBrandItemView:Z

.field private mHideLocationItemView:Z

.field private mIProEditWatermarkEventListener:Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$IProEditWatermarkEventListener;

.field private mIsSortMode:Z

.field private mTextChecked:Z

.field private mTextWaterMarkSummary:Ljava/lang/String;

.field private mTimeChecked:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmIProEditWatermarkEventListener(Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;)Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$IProEditWatermarkEventListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->mIProEditWatermarkEventListener:Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$IProEditWatermarkEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSortMode(Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->mIsSortMode:Z

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->mEditWatermarkUIItems:Ljava/util/List;

    return-void
.end method

.method private updateItemCheckState(Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$ItemViewHolder;I)V
    .registers 5

    .line 213
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->mIsSortMode:Z

    if-eqz v0, :cond_5

    goto :goto_2e

    .line 216
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->mEditWatermarkUIItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result p2

    if-nez p2, :cond_1a

    .line 218
    iget-object v0, p1, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$ItemViewHolder;->mCheckBox:Lcom/transsion/widgetslib/view/OSCheckBox;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->mTimeChecked:Z

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/OSCheckBox;->setChecked(Z)V

    :cond_1a
    const/4 v0, 0x1

    if-ne p2, v0, :cond_24

    .line 221
    iget-object v0, p1, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$ItemViewHolder;->mCheckBox:Lcom/transsion/widgetslib/view/OSCheckBox;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->mCityChecked:Z

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/OSCheckBox;->setChecked(Z)V

    :cond_24
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2e

    .line 224
    iget-object p1, p1, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$ItemViewHolder;->mCheckBox:Lcom/transsion/widgetslib/view/OSCheckBox;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->mBrandChecked:Z

    invoke-virtual {p1, p0}, Lcom/transsion/widgetslib/view/OSCheckBox;->setChecked(Z)V

    :cond_2e
    :goto_2e
    return-void
.end method


# virtual methods
.method public getEditWaterMarkUIItems()Ljava/util/List;
    .registers 1

    .line 240
    iget-object p0, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->mEditWatermarkUIItems:Ljava/util/List;

    return-object p0
.end method

.method public getItemCount()I
    .registers 1

    .line 230
    iget-object p0, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->mEditWatermarkUIItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .registers 2

    .line 236
    iget-object p0, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->mEditWatermarkUIItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getItemType()I

    move-result p0

    return p0
.end method

.method public hideBrandItemView()V
    .registers 5

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->mHideBrandItemView:Z

    const/4 v0, 0x0

    move v1, v0

    .line 71
    :goto_5
    iget-object v2, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->mEditWatermarkUIItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 72
    iget-object v2, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->mEditWatermarkUIItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1e

    move v0, v1

    goto :goto_21

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 78
    :cond_21
    :goto_21
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public hideLocationItemView()V
    .registers 5

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->mHideLocationItemView:Z

    const/4 v1, 0x0

    move v2, v1

    .line 58
    :goto_5
    iget-object v3, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->mEditWatermarkUIItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_20

    .line 59
    iget-object v3, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->mEditWatermarkUIItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v3

    if-ne v3, v0, :cond_1d

    move v1, v2

    goto :goto_20

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 65
    :cond_20
    :goto_20
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 12

    .line 173
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$color;->watermark_unselected_checkbox:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 174
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->getItemViewType(I)I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v1, :cond_9a

    .line 176
    move-object v1, p1

    check-cast v1, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$ItemViewHolder;

    .line 177
    iget-object v4, v1, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$ItemViewHolder;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->mEditWatermarkUIItems:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {v5}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    invoke-direct {p0, v1, p2}, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->updateItemCheckState(Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$ItemViewHolder;I)V

    .line 179
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v5, -0x1

    .line 180
    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v5, -0x2

    .line 181
    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 182
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 183
    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->mHideLocationItemView:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_56

    iget-object v5, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->mEditWatermarkUIItems:Ljava/util/List;

    .line 184
    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {v5}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v5

    if-ne v5, v6, :cond_56

    move v5, v6

    goto :goto_57

    :cond_56
    move v5, v3

    .line 185
    :goto_57
    iget-boolean v7, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->mHideBrandItemView:Z

    if-eqz v7, :cond_6b

    iget-object v7, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->mEditWatermarkUIItems:Ljava/util/List;

    .line 186
    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {v7}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_6b

    goto :goto_6c

    :cond_6b
    move v6, v3

    :goto_6c
    if-nez v5, :cond_70

    if-eqz v6, :cond_7e

    .line 188
    :cond_70
    iput v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 189
    iput v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 190
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 193
    :cond_7e
    iget-object v4, v1, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$ItemViewHolder;->mCheckBox:Lcom/transsion/widgetslib/view/OSCheckBox;

    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->mIsSortMode:Z

    if-eqz v5, :cond_86

    move v5, v2

    goto :goto_87

    :cond_86
    move v5, v3

    :goto_87
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 194
    iget-object v4, v1, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$ItemViewHolder;->mCheckBox:Lcom/transsion/widgetslib/view/OSCheckBox;

    invoke-virtual {v4, v0}, Lcom/transsion/widgetslib/view/OSCheckBox;->setUncheckedBorderColor(I)V

    .line 195
    iget-object v0, v1, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$ItemViewHolder;->mSortImageView:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->mIsSortMode:Z

    if-eqz v1, :cond_96

    move v2, v3

    :cond_96
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_cc

    .line 198
    :cond_9a
    move-object v1, p1

    check-cast v1, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$CustomItemViewHolder;

    .line 199
    iget-object v4, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->mTextWaterMarkSummary:Ljava/lang/String;

    if-eqz v4, :cond_a6

    .line 200
    iget-object v5, v1, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$CustomItemViewHolder;->mTextWatermarkSummaryView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :cond_a6
    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->mIsSortMode:Z

    if-nez v4, :cond_b1

    .line 203
    iget-object v4, v1, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$CustomItemViewHolder;->mCustomCheckBox:Lcom/transsion/widgetslib/view/OSCheckBox;

    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->mTextChecked:Z

    invoke-virtual {v4, v5}, Lcom/transsion/widgetslib/view/OSCheckBox;->setChecked(Z)V

    .line 205
    :cond_b1
    iget-object v4, v1, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$CustomItemViewHolder;->mCustomCheckBox:Lcom/transsion/widgetslib/view/OSCheckBox;

    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->mIsSortMode:Z

    if-eqz v5, :cond_b9

    move v5, v2

    goto :goto_ba

    :cond_b9
    move v5, v3

    :goto_ba
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v4, v1, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$CustomItemViewHolder;->mCustomCheckBox:Lcom/transsion/widgetslib/view/OSCheckBox;

    invoke-virtual {v4, v0}, Lcom/transsion/widgetslib/view/OSCheckBox;->setUncheckedBorderColor(I)V

    .line 207
    iget-object v0, v1, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$CustomItemViewHolder;->mSortImageView:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->mIsSortMode:Z

    if-eqz v1, :cond_c9

    move v2, v3

    :cond_c9
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    :goto_cc
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->mEditWatermarkUIItems:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 6

    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_17

    .line 166
    new-instance p2, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$ItemViewHolder;

    sget v2, Lcom/transsion/camera/R$layout;->pro_edit_watermark_item_ui_layout:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$ItemViewHolder;-><init>(Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;Landroid/view/View;)V

    return-object p2

    .line 168
    :cond_17
    new-instance p2, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$CustomItemViewHolder;

    sget v2, Lcom/transsion/camera/R$layout;->pro_edit_watermark_item_ui_custom_layout:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$CustomItemViewHolder;-><init>(Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setItemChecked(ZZZZ)V
    .registers 5

    .line 39
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->mTimeChecked:Z

    .line 40
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->mCityChecked:Z

    .line 41
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->mTextChecked:Z

    .line 42
    iput-boolean p4, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->mBrandChecked:Z

    return-void
.end method

.method public setProEditWatermarkEventListener(Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$IProEditWatermarkEventListener;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->mIProEditWatermarkEventListener:Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$IProEditWatermarkEventListener;

    return-void
.end method

.method public setSortMode(Z)V
    .registers 2

    .line 51
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->mIsSortMode:Z

    .line 52
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setTextWaterMarkSummary(Ljava/lang/String;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->mTextWaterMarkSummary:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateItemsList(Ljava/util/List;)V
    .registers 3

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->mEditWatermarkUIItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 157
    iget-object v0, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->mEditWatermarkUIItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 158
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
