.class public Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$OnItemClickListener;,
        Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field protected mCurrentPosition:I

.field protected final mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field protected mListener:Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$OnItemClickListener;

.field protected mLowLight:Z

.field private volatile mNeedAnimation:Z

.field protected mOrientation:I

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mWidth:I


# direct methods
.method public static synthetic $r8$lambda$-McoOiZLRJbnMLGDEfWEkGxuZuU(Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;)V
    .registers 3

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->itemRootLayout:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->itemRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 154
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y46y609PDNrk_k4Dms8H0M72GQM(Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;ILcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;Landroid/view/View;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->lambda$onBindViewHolder$1(ILcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;",
            ">;II)V"
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mCurrentPosition:I

    const/4 v1, 0x1

    .line 35
    iput-boolean v1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mNeedAnimation:Z

    .line 105
    iput-object p1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mDataList:Ljava/util/List;

    .line 106
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 107
    iput p3, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mOrientation:I

    goto :goto_16

    .line 109
    :cond_14
    iput v0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mOrientation:I

    .line 111
    :goto_16
    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->setCurrentPosition(IZ)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(ILcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;Landroid/view/View;)V
    .registers 4

    .line 175
    invoke-static {p3}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p3

    if-nez p3, :cond_7

    return-void

    .line 178
    :cond_7
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->updateCurrentPosition(I)V

    .line 179
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const/16 p1, 0x16

    iget-object p2, p2, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;->mImageStyleValue:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    return-void
.end method

.method private updateItemTitleLayoutIfNeed(Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;)V
    .registers 5

    .line 189
    iget-object p0, p1, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 190
    iget-object v0, p1, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    .line 191
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_item_title_padding_0_180:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    .line 190
    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 192
    iget-object v0, p1, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_item_title_width_0_180:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 193
    iget-object v0, p1, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_item_title_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v0, 0x51

    .line 194
    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 195
    iget-object p0, p1, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 196
    iget-object p0, p1, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .registers 1

    .line 297
    iget p0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mCurrentPosition:I

    return p0
.end method

.method public getItemCount()I
    .registers 1

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 27
    check-cast p1, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;I)V
    .registers 7

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;

    .line 137
    iget v1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mWidth:I

    iget v2, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mHeight:I

    invoke-virtual {p1, v1, v2}, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->updateSize(II)V

    .line 138
    iget v1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mOrientation:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->setOrientation(IZ)V

    .line 140
    iget v1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mCurrentPosition:I

    if-ne p2, v1, :cond_43

    .line 141
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v1

    if-nez v1, :cond_38

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->supportColorStyle()Z

    move-result v1

    if-nez v1, :cond_38

    .line 142
    iget-boolean v1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mLowLight:Z

    if-eqz v1, :cond_31

    .line 143
    iget-object v1, p1, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->ivItemSign:Landroid/widget/ImageView;

    sget v3, Lcom/transsion/camera/feature/imagestyle/R$drawable;->lc_image_style_item_cover_ring_screen_light:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_38

    .line 145
    :cond_31
    iget-object v1, p1, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->ivItemSign:Landroid/widget/ImageView;

    sget v3, Lcom/transsion/camera/feature/imagestyle/R$drawable;->lc_image_style_item_cover_selected:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 150
    :cond_38
    :goto_38
    iget-object v1, p1, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    new-instance v3, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_6c

    .line 157
    :cond_43
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v1

    if-nez v1, :cond_56

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->supportColorStyle()Z

    move-result v1

    if-nez v1, :cond_56

    .line 158
    iget-object v1, p1, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->ivItemSign:Landroid/widget/ImageView;

    sget v3, Lcom/transsion/camera/feature/imagestyle/R$drawable;->lc_image_style_item_cover_transparent:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 160
    :cond_56
    iget-object v1, p1, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->itemRootLayout:Landroid/widget/FrameLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 161
    iget-object v1, p1, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->itemRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 162
    iget-object v1, p1, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 163
    iget-object v1, p1, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 165
    :goto_6c
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v1

    if-nez v1, :cond_78

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->supportColorStyle()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 166
    :cond_78
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v3, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mCurrentPosition:I

    if-ne p2, v3, :cond_7f

    const/4 v2, 0x1

    :cond_7f
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 169
    :cond_82
    iget-object v1, p1, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->rotatableImageViewItem:Lcom/transsion/camera/app/ui/widget/IRotatable;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->setImageView(Lcom/transsion/camera/app/ui/widget/IRotatable;)V

    .line 170
    invoke-virtual {p1}, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    iget v2, v0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;->mFilterIconId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 171
    iget-object v1, p1, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;->mFilterNameId:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x3f6b851f    # 0.92f

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 174
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, v0}, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;ILcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;
    .registers 5

    .line 122
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p0

    if-nez p0, :cond_12

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz p0, :cond_f

    goto :goto_12

    .line 125
    :cond_f
    sget p0, Lcom/transsion/camera/feature/imagestyle/R$layout;->image_style_thumbnail_item:I

    goto :goto_14

    .line 123
    :cond_12
    :goto_12
    sget p0, Lcom/transsion/camera/feature/imagestyle/R$layout;->image_style_thumbnail_item_ui5:I

    .line 127
    :goto_14
    new-instance p2, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onOrientationChanged(IZ)V
    .registers 5

    .line 261
    iput-boolean p2, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mNeedAnimation:Z

    .line 262
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p2

    if-nez p2, :cond_e

    .line 263
    iput p1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mOrientation:I

    .line 264
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 268
    :cond_e
    iget-object p2, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_41

    iget p2, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mOrientation:I

    if-ne p2, p1, :cond_17

    goto :goto_41

    .line 271
    :cond_17
    iput p1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mOrientation:I

    const/4 p2, 0x0

    .line 272
    :goto_1a
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_41

    .line 273
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 274
    iget-object v1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;

    if-nez v0, :cond_33

    goto :goto_3e

    .line 278
    :cond_33
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v1

    if-gez v1, :cond_3a

    goto :goto_3e

    :cond_3a
    const/4 v1, 0x1

    .line 282
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->setOrientation(IZ)V

    :goto_3e
    add-int/lit8 p2, p2, 0x1

    goto :goto_1a

    :cond_41
    :goto_41
    return-void
.end method

.method public setCurrentPosition(IZ)V
    .registers 6

    .line 232
    iget v0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mCurrentPosition:I

    .line 233
    iput p1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mCurrentPosition:I

    if-eqz p2, :cond_42

    .line 236
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p2

    if-nez p2, :cond_13

    .line 237
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 238
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void

    :cond_13
    const/4 p2, 0x0

    move v0, p2

    .line 242
    :goto_15
    iget-object v1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_42

    .line 243
    iget-object v1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 244
    iget-object v2, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;

    if-nez v1, :cond_2e

    goto :goto_3f

    .line 248
    :cond_2e
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v2

    if-gez v2, :cond_35

    goto :goto_3f

    .line 252
    :cond_35
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v2, p1, :cond_3b

    const/4 v2, 0x1

    goto :goto_3c

    :cond_3b
    move v2, p2

    :goto_3c
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    :goto_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_42
    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    return-void
.end method

.method public setOnItemSelectedListener(Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$OnItemClickListener;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mListener:Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$OnItemClickListener;

    return-void
.end method

.method protected updateCurrentPosition(I)V
    .registers 6

    .line 200
    iget v0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mCurrentPosition:I

    if-ne v0, p1, :cond_5

    return-void

    .line 204
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mListener:Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$OnItemClickListener;

    if-eqz v0, :cond_14

    .line 205
    iget-object v1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$OnItemClickListener;->onItemSelected(Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;)V

    .line 209
    :cond_14
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_25

    .line 210
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 211
    iget v0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mCurrentPosition:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 212
    iput p1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mCurrentPosition:I

    return-void

    :cond_25
    const/4 v0, 0x0

    move v1, v0

    .line 216
    :goto_27
    iget-object v2, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_54

    .line 217
    iget-object v2, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 218
    iget-object v3, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;

    if-nez v2, :cond_40

    goto :goto_51

    .line 222
    :cond_40
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v3

    if-gez v3, :cond_47

    goto :goto_51

    .line 226
    :cond_47
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v3, p1, :cond_4d

    const/4 v3, 0x1

    goto :goto_4e

    :cond_4d
    move v3, v0

    :goto_4e
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    :goto_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 228
    :cond_54
    iput p1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mCurrentPosition:I

    return-void
.end method

.method public updateItemSize(II)V
    .registers 3

    .line 287
    iput p1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mWidth:I

    .line 288
    iput p2, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mHeight:I

    return-void
.end method

.method public updateLowLight(Z)V
    .registers 2

    .line 292
    iput-boolean p1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mLowLight:Z

    .line 293
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
