.class public Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;,
        Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$PlaceHolderItemViewHolder;,
        Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$LinearItemDragListener;,
        Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$ViewHolderWidthChangeListener;
    }
.end annotation


# instance fields
.field private mAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private final mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/List;

.field private mDragStarted:Z

.field private mDraggingItemPosition:I

.field private mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

.field private mDropFinished:Z

.field private mLinearItemDragListener:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$LinearItemDragListener;

.field private final mModeItemTextAllCaps:Z

.field private mViewHolderWidthChangeListener:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$ViewHolderWidthChangeListener;


# direct methods
.method public static synthetic $r8$lambda$kuZBzE3zzVQhBxBaZBMGd01nA2E(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;Landroid/view/View;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->lambda$onBindViewHolder$0(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 88
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDraggingItemPosition:I

    .line 89
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mContext:Landroid/content/Context;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$bool;->mode_item_text_all_caps:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mModeItemTextAllCaps:Z

    return-void
.end method

.method private isSupportDragDrop(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z
    .registers 2

    .line 250
    sget-object p0, Lcom/transsion/camera/app/ui/mode/more/Constants;->MORE_MODE_NOT_SUPPORT_DRAG_DROP_LIST:Ljava/util/List;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroid/view/View;)Z
    .registers 2

    .line 194
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->startDragAndDrop(Landroid/view/View;)V

    const/4 p0, 0x0

    return p0
.end method

.method private notifySideItemWidthChanged(II)V
    .registers 4

    if-nez p1, :cond_a

    .line 256
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mViewHolderWidthChangeListener:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$ViewHolderWidthChangeListener;

    if-eqz p0, :cond_19

    .line 258
    invoke-interface {p0, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$ViewHolderWidthChangeListener;->onFirstViewHolderWidthChanged(I)V

    return-void

    .line 260
    :cond_a
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_19

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mViewHolderWidthChangeListener:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$ViewHolderWidthChangeListener;

    if-eqz p0, :cond_19

    .line 261
    invoke-interface {p0, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$ViewHolderWidthChangeListener;->onLastViewHolderWidthChanged(I)V

    :cond_19
    return-void
.end method

.method private startDragAndDrop(Landroid/view/View;)V
    .registers 3

    .line 266
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mLinearItemDragListener:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$LinearItemDragListener;

    if-eqz p0, :cond_9

    .line 267
    const-string v0, "linear_item_view"

    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$LinearItemDragListener;->onLinearItemDragStart(Landroid/view/View;Ljava/lang/String;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)Z
    .registers 4

    .line 94
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 97
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 98
    iput p2, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDraggingItemPosition:I

    const/4 p0, 0x1

    return p0
.end method

.method public containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z
    .registers 2

    .line 123
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public containData(Ljava/lang/String;)Z
    .registers 3

    .line 127
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    .line 128
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public getItemCount()I
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .registers 2

    .line 167
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object p0

    iget p0, p0, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    int-to-long p0, p0

    return-wide p0
.end method

.method public getItemList()Ljava/util/List;
    .registers 5

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    .line 109
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v2

    iget-object v2, v2, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    const-string v3, "place_holder"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    goto :goto_b

    .line 112
    :cond_26
    new-instance v2, Lcom/transsion/camera/app/common/FeatureResource;

    invoke-direct {v2}, Lcom/transsion/camera/app/common/FeatureResource;-><init>()V

    .line 113
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    .line 114
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 115
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getDescription()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureDescription:Ljava/lang/String;

    .line 116
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v1

    iget v1, v1, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    iput v1, v2, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    .line 117
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_49
    return-object v0
.end method

.method public getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I
    .registers 2

    .line 141
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getItemPosition(Ljava/lang/String;)I
    .registers 4

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    .line 151
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 153
    :cond_21
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .registers 2

    .line 158
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    const-string p1, "place_holder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public getModeUIItem(I)Lcom/transsion/camera/app/ui/mode/ModeUIItem;
    .registers 2

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    return-object p0
.end method

.method public notifyDropState(Z)V
    .registers 2

    .line 71
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDropFinished:Z

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 9

    .line 172
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_5d

    const/4 v4, 0x1

    if-eq v0, v4, :cond_d

    return-void

    .line 205
    :cond_d
    check-cast p1, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$PlaceHolderItemViewHolder;

    .line 206
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v5}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v5

    iget-object v5, v5, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 207
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->setModeUIItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 208
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 209
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$PlaceHolderItemViewHolder;->-$$Nest$fgetmMoreLinearItemBackground(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$PlaceHolderItemViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$PlaceHolderItemViewHolder;->-$$Nest$fgetmMoreTabPlaceHolder(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$PlaceHolderItemViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 211
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDragStarted:Z

    if-eqz v0, :cond_4f

    .line 212
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$PlaceHolderItemViewHolder;->-$$Nest$fgetmMoreTabPlaceHolder(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$PlaceHolderItemViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->playMoreModeGuideAnim(Landroid/view/View;Z)V

    .line 214
    :cond_4f
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$PlaceHolderItemViewHolder;->-$$Nest$fgetmMoreLinearItemBackground(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$PlaceHolderItemViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->notifySideItemWidthChanged(II)V

    return-void

    .line 174
    :cond_5d
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDraggingItemPosition:I

    if-ne p2, v0, :cond_6b

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDropFinished:Z

    if-nez v0, :cond_6b

    .line 175
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_70

    .line 177
    :cond_6b
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 179
    :goto_70
    check-cast p1, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;

    .line 180
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.gopro.GoProModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 181
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;->-$$Nest$fgetmMoreLinearItemText(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    goto :goto_99

    .line 183
    :cond_90
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;->-$$Nest$fgetmMoreLinearItemText(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mModeItemTextAllCaps:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 185
    :goto_99
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;->-$$Nest$fgetmMoreLinearItemText(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;->-$$Nest$fgetmMoreLinearItemText(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/View;->measure(II)V

    .line 187
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;->-$$Nest$fgetmMoreLinearItemBackground(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;->-$$Nest$fgetmMoreLinearItemText(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    .line 188
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->more_mode_item_inner_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 189
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;->-$$Nest$fgetmMoreLinearItemBackground(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x3e051eb8    # 0.13f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 190
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 191
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->setModeUIItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->isSupportDragDrop(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z

    move-result v0

    if-eqz v0, :cond_130

    .line 193
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 197
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;->-$$Nest$fgetmMoreLinearItemText(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/camera/R$color;->more_tab_normal_view_color:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_148

    .line 199
    :cond_130
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 200
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;->-$$Nest$fgetmMoreLinearItemText(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/camera/R$color;->more_tab_not_support_drag_view_color:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    :goto_148
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;->-$$Nest$fgetmMoreLinearItemBackground(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->notifySideItemWidthChanged(II)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 6

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_16

    .line 226
    new-instance p2, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$PlaceHolderItemViewHolder;

    sget v1, Lcom/transsion/camera/R$layout;->more_tab_place_holder_item:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$PlaceHolderItemViewHolder;-><init>(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;Landroid/view/View;)V

    return-object p2

    .line 228
    :cond_16
    new-instance p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;

    sget p2, Lcom/transsion/camera/R$layout;->more_tab_linear_list_item:I

    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public onDragStarted(Z)V
    .registers 6

    .line 314
    new-instance v0, Lcom/transsion/camera/app/common/FeatureResource;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/FeatureResource;-><init>()V

    .line 315
    const-string v1, "place_holder"

    iput-object v1, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 316
    iput-object v1, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    .line 317
    new-instance v1, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;-><init>(Lcom/transsion/camera/app/common/FeatureResource;Z)V

    .line 318
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->containData(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_67

    .line 321
    :cond_1e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    const/4 v2, 0x1

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 322
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->removeItem(I)V

    .line 324
    :cond_48
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemCount()I

    move-result v3

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-eqz p1, :cond_56

    .line 326
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 328
    :cond_56
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDragStarted:Z

    .line 329
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_67

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_67

    .line 330
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_67
    :goto_67
    return-void
.end method

.method public onDragStop()V
    .registers 2

    const/4 v0, -0x1

    .line 335
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDraggingItemPosition:I

    .line 336
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->removePlaceHolderIfNecessary(I)V

    const/4 v0, 0x0

    .line 337
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDragStarted:Z

    .line 338
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 339
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_1e
    return-void
.end method

.method public playMoreModeGuideAnim(Landroid/view/View;Z)V
    .registers 8

    if-nez p1, :cond_3

    goto :goto_4b

    .line 299
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 300
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_12
    const/4 v0, 0x3

    .line 303
    new-array v0, v0, [F

    fill-array-data v0, :array_4c

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    const/4 v0, -0x1

    .line 304
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 305
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 306
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x320

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 307
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const v2, 0x3f28f5c3    # 0.66f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p2, :cond_4b

    .line 309
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_4b
    :goto_4b
    return-void

    :array_4c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public removeItem(I)V
    .registers 2

    .line 232
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public removeItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .registers 4

    .line 236
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result v0

    .line 237
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 238
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public removePlaceHolderIfNecessary(I)V
    .registers 5

    .line 57
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_2f

    .line 58
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    .line 59
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    const-string v2, "place_holder"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    if-eqz v0, :cond_2f

    .line 65
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->removeItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    :cond_2f
    return-void
.end method

.method public setDraggingModeUIItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    return-void
.end method

.method public setLinearItemDragListener(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$LinearItemDragListener;)V
    .registers 2

    .line 242
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mLinearItemDragListener:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$LinearItemDragListener;

    return-void
.end method

.method public setViewHolderWidthChangeListener(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$ViewHolderWidthChangeListener;)V
    .registers 2

    .line 246
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mViewHolderWidthChangeListener:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$ViewHolderWidthChangeListener;

    return-void
.end method

.method public updateModeData(Ljava/util/List;)V
    .registers 3

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    return-void
.end method
