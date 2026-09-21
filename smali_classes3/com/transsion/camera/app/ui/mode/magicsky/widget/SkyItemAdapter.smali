.class public Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$OnItemClickListener;,
        Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentPosition:I

.field private final mDataList:Ljava/util/List;

.field private mEnable:Z

.field private mIsExpand:Z

.field private mListener:Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$OnItemClickListener;

.field private mOrientation:I

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mScreenFormType:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmEnable(Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mEnable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateCurrentPosition(Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->updateCurrentPosition(I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ZLandroid/content/Context;)V
    .registers 6

    .line 97
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mCurrentPosition:I

    const/4 v1, 0x1

    .line 34
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mEnable:Z

    .line 36
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mScreenFormType:I

    .line 98
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mDataList:Ljava/util/List;

    .line 99
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mIsExpand:Z

    .line 100
    iput-object p3, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private updateCurrentPosition(I)V
    .registers 4

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mListener:Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$OnItemClickListener;

    if-eqz v0, :cond_f

    .line 178
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$OnItemClickListener;->onItemSelected(Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;)V

    .line 180
    :cond_f
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mCurrentPosition:I

    if-ne v0, p1, :cond_14

    return-void

    .line 183
    :cond_14
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mCurrentPosition:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 1

    .line 173
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 9

    .line 120
    instance-of v0, p1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_99

    .line 121
    move-object v0, p1

    check-cast v0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;

    .line 122
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;

    .line 123
    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v3, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;->drawableId:I

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 124
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v5

    if-nez v5, :cond_33

    if-nez v4, :cond_2d

    .line 126
    iget-object v4, v0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;->itemIconView:Landroid/widget/ImageView;

    iget v5, v3, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;->drawableId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_46

    .line 128
    :cond_2d
    iget-object v5, v0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;->itemIconView:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_46

    :cond_33
    if-nez v4, :cond_3f

    .line 132
    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;->-$$Nest$fgetcompatIconView(Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;)Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    move-result-object v4

    iget v5, v3, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;->drawableId:I

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_46

    .line 134
    :cond_3f
    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;->-$$Nest$fgetcompatIconView(Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;)Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 137
    :goto_46
    iget-object v4, v0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;->viewName:Landroid/widget/TextView;

    iget-object v3, v3, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;->skyName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;->viewName:Landroid/widget/TextView;

    iget v4, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mCurrentPosition:I

    if-ne v4, p2, :cond_55

    move v4, v1

    goto :goto_56

    :cond_55
    move v4, v2

    :goto_56
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 139
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v3

    if-nez v3, :cond_6c

    .line 140
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;->focusView:Landroid/view/View;

    iget v4, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mCurrentPosition:I

    if-ne v4, p2, :cond_67

    move v4, v2

    goto :goto_69

    :cond_67
    const/16 v4, 0x8

    :goto_69
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 142
    :cond_6c
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;->viewName:Landroid/widget/TextView;

    iget v4, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mCurrentPosition:I

    if-ne v4, p2, :cond_81

    .line 143
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/feature/mode/magicsky/R$color;->sky_item_name_color_selected:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    goto :goto_8f

    .line 144
    :cond_81
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/feature/mode/magicsky/R$color;->sky_item_name_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 142
    :goto_8f
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    iget v3, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mScreenFormType:I

    iget v4, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mOrientation:I

    invoke-virtual {v0, v3, v4, v2}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;->updateRotation(IIZ)V

    .line 147
    :cond_99
    new-instance v0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$1;-><init>(Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;)V

    .line 154
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v4, 0x3f6b851f    # 0.92f

    invoke-static {v3, v4, v0}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 155
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$2;

    invoke-direct {v3, p0, p2}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$2;-><init>(Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 166
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 167
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mCurrentPosition:I

    if-ne p0, p2, :cond_c2

    goto :goto_c3

    :cond_c2
    move v1, v2

    :goto_c3
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_c6
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 6

    .line 107
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mIsExpand:Z

    if-eqz p2, :cond_7

    .line 108
    sget p2, Lcom/transsion/camera/feature/mode/magicsky/R$layout;->sky_thumbnail_item_fold:I

    goto :goto_1b

    .line 109
    :cond_7
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez p2, :cond_19

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p2

    if-eqz p2, :cond_16

    goto :goto_19

    .line 112
    :cond_16
    sget p2, Lcom/transsion/camera/feature/mode/magicsky/R$layout;->sky_thumbnail_item:I

    goto :goto_1b

    .line 110
    :cond_19
    :goto_19
    sget p2, Lcom/transsion/camera/feature/mode/magicsky/R$layout;->sky_thumbnail_item_ui4:I

    .line 114
    :goto_1b
    new-instance v0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    .line 115
    invoke-virtual {v1, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;-><init>(Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public setCurrentPosition(I)V
    .registers 2

    .line 187
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mCurrentPosition:I

    .line 188
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 192
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mEnable:Z

    return-void
.end method

.method public setOnItemSelectedListener(Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$OnItemClickListener;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mListener:Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$OnItemClickListener;

    return-void
.end method

.method public updateScreenFormType(II)Z
    .registers 8

    .line 196
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, p1, :cond_35

    .line 197
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_10

    iget v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mOrientation:I

    if-eq v0, p2, :cond_10

    goto :goto_35

    .line 204
    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_34

    iget v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mOrientation:I

    if-ne v0, p2, :cond_19

    goto :goto_34

    .line 207
    :cond_19
    iput p2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mOrientation:I

    .line 208
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->getItemCount()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_21
    if-ge v3, v0, :cond_33

    .line 210
    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;

    if-eqz v4, :cond_30

    .line 212
    invoke-virtual {v4, p1, p2, v1}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;->updateRotation(IIZ)V

    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_33
    return v2

    :cond_34
    :goto_34
    return v1

    .line 198
    :cond_35
    :goto_35
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mScreenFormType:I

    .line 199
    iput p2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mOrientation:I

    .line 200
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return v1
.end method
