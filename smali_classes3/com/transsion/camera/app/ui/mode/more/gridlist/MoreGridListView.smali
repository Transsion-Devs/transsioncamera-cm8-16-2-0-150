.class public Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$GridItemDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$ListEmptyListener;,
        Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$OnGridViewDataChangedListener;,
        Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$IAddItemLastCallback;
    }
.end annotation


# instance fields
.field private mDragListener:Lcom/transsion/camera/app/ui/mode/more/IMoreDragListener;

.field private mItemLastCallback:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$IAddItemLastCallback;

.field private mListEmptyListener:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$ListEmptyListener;

.field private mOnDataChangedListener:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$OnGridViewDataChangedListener;

.field private final mSwapItemCenterPosition:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 60
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->mSwapItemCenterPosition:Landroid/graphics/Point;

    return-void
.end method

.method private isItemNeedChange(FFLandroid/view/View;)Z
    .registers 8

    .line 290
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 291
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 292
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v2, v0

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    int-to-float v0, v1

    sub-float/2addr p1, v0

    .line 294
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    int-to-float v0, v2

    sub-float/2addr p2, v0

    .line 295
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-int p2, p2

    int-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 296
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    int-to-double p1, p2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 297
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x3

    if-ge p1, p2, :cond_56

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isAnimating()Z

    move-result p0

    if-nez p0, :cond_56

    const/4 p0, 0x1

    return p0

    :cond_56
    const/4 p0, 0x0

    return p0
.end method

.method private isItemNeedChange(Landroid/view/View;IIF)Z
    .registers 7

    const/4 p0, 0x0

    if-eqz p1, :cond_2a

    const/4 v0, -0x1

    if-eq p2, v0, :cond_2a

    if-eq p3, v0, :cond_2a

    if-ne p2, p3, :cond_b

    goto :goto_2a

    .line 280
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    .line 281
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    float-to-int p1, v0

    const/4 v0, 0x1

    if-le p2, p3, :cond_24

    int-to-float p1, p1

    cmpg-float p1, p4, p1

    if-gez p1, :cond_23

    return v0

    :cond_23
    return p0

    :cond_24
    int-to-float p1, p1

    cmpl-float p1, p4, p1

    if-lez p1, :cond_2a

    return v0

    :cond_2a
    :goto_2a
    return p0
.end method

.method private updateFixedModeLayout(Z)V
    .registers 3

    .line 301
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 302
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->setEditMode(Z)V

    .line 303
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_14
    return-void
.end method

.method private updateModeChangeAnimFlag()V
    .registers 5

    .line 81
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1e

    .line 83
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_e

    goto :goto_1b

    .line 88
    :cond_e
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;

    if-nez v2, :cond_17

    goto :goto_1b

    :cond_17
    const/4 v3, 0x1

    .line 92
    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->updateAnimFlag(Z)V

    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1e
    return-void
.end method


# virtual methods
.method public addItemToLast(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .registers 4

    .line 68
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 69
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemCount()I

    move-result v0

    .line 70
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V

    .line 71
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_1c
    return-void
.end method

.method public changeEditMode()V
    .registers 2

    .line 76
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->updateModeChangeAnimFlag()V

    const/4 v0, 0x1

    .line 77
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->updateFixedModeLayout(Z)V

    return-void
.end method

.method public changeNormalMode()V
    .registers 2

    .line 97
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->updateModeChangeAnimFlag()V

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->updateFixedModeLayout(Z)V

    return-void
.end method

.method public containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z
    .registers 3

    .line 102
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public findItemView(I)Landroid/view/View;
    .registers 3

    .line 113
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_16

    .line 116
    :cond_d
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_16
    :goto_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public findItemView(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Landroid/view/View;
    .registers 3

    .line 106
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_1e

    .line 109
    :cond_d
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1e
    :goto_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .registers 1

    .line 32
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;
    .registers 1

    .line 121
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    return-object p0
.end method

.method protected getBottomPaddingOffset()I
    .registers 1

    .line 175
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    return p0
.end method

.method public getSwapItemCenterPosition()Landroid/graphics/Point;
    .registers 1

    .line 262
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->mSwapItemCenterPosition:Landroid/graphics/Point;

    return-object p0
.end method

.method protected getTopFadingEdgeStrength()F
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected isPaddingOffsetRequired()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public onDragStop()V
    .registers 2

    .line 40
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 41
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->onDragStop()V

    :cond_d
    return-void
.end method

.method public onGridItemDragStart(Landroid/view/View;Ljava/lang/String;)V
    .registers 3

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->mDragListener:Lcom/transsion/camera/app/ui/mode/more/IMoreDragListener;

    if-eqz p0, :cond_7

    .line 132
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/more/IMoreDragListener;->onItemDragStart(Landroid/view/View;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public removeItemForDragging(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .registers 3

    .line 137
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 138
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p1

    .line 139
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->removeItem(I)V

    .line 140
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 141
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_37

    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->mListEmptyListener:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$ListEmptyListener;

    if-eqz p1, :cond_37

    .line 142
    invoke-interface {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$ListEmptyListener;->onListEmpty()V

    .line 144
    :cond_37
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->mOnDataChangedListener:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$OnGridViewDataChangedListener;

    if-eqz p0, :cond_3e

    .line 145
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$OnGridViewDataChangedListener;->onGridViewDataChanged()V

    :cond_3e
    return-void
.end method

.method public setAdapter(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;)V
    .registers 2

    .line 125
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 126
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->setDragEnterListener(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$GridItemDragListener;)V

    return-void
.end method

.method public setAddItemCallback(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$IAddItemLastCallback;)V
    .registers 2

    .line 258
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->mItemLastCallback:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$IAddItemLastCallback;

    return-void
.end method

.method public setListEmptyListener(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$ListEmptyListener;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->mListEmptyListener:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$ListEmptyListener;

    .line 152
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p1

    if-eqz p1, :cond_19

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_19

    .line 153
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->mListEmptyListener:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$ListEmptyListener;

    if-eqz p0, :cond_19

    .line 154
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$ListEmptyListener;->onListEmpty()V

    :cond_19
    return-void
.end method

.method public setOnDataChangedListener(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$OnGridViewDataChangedListener;)V
    .registers 2

    .line 160
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->mOnDataChangedListener:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$OnGridViewDataChangedListener;

    return-void
.end method

.method public setOnGridItemDragListener(Lcom/transsion/camera/app/ui/mode/more/IMoreDragListener;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->mDragListener:Lcom/transsion/camera/app/ui/mode/more/IMoreDragListener;

    return-void
.end method

.method public setSwapItemCenterPosition(I)V
    .registers 6

    .line 266
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->findItemView(I)Landroid/view/View;

    move-result-object p1

    .line 267
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz p1, :cond_33

    if-eqz v0, :cond_33

    .line 269
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 270
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v2, p1

    .line 271
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->mSwapItemCenterPosition:Landroid/graphics/Point;

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Point;->set(II)V

    :cond_33
    return-void
.end method

.method public showDraggingItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .registers 5

    .line 179
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 180
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 181
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_2b

    .line 183
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_49

    .line 185
    :cond_2b
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    const/4 v0, 0x0

    if-ne p1, v2, :cond_3e

    .line 186
    sget p1, Lcom/transsion/camera/R$id;->more_linear_main:I

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 187
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_49

    .line 189
    :cond_3e
    sget p1, Lcom/transsion/camera/R$id;->more_grid_main:I

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/mode/more/gridlist/GridListItemView;

    .line 190
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 193
    :goto_49
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemCount()I

    move-result p1

    if-ne p1, v2, :cond_63

    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->mListEmptyListener:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$ListEmptyListener;

    if-eqz p1, :cond_63

    .line 194
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->resetFlag()V

    .line 195
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->mListEmptyListener:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$ListEmptyListener;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$ListEmptyListener;->onNotListEmpty()V

    .line 197
    :cond_63
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->mOnDataChangedListener:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$OnGridViewDataChangedListener;

    if-eqz p0, :cond_6a

    .line 198
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$OnGridViewDataChangedListener;->onGridViewDataChanged()V

    :cond_6a
    return-void
.end method

.method public swapItemPositionIfNecessary(Lcom/transsion/camera/app/ui/mode/ModeUIItem;FFILandroid/view/View;IIF)I
    .registers 12

    .line 205
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    const/4 v2, 0x2

    if-nez p4, :cond_5c

    .line 209
    invoke-direct {p0, p2, p3, p5}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->isItemNeedChange(FFLandroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_b8

    .line 210
    invoke-virtual {p0, v2}, Landroid/view/View;->setOverScrollMode(I)V

    .line 211
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p2

    check-cast p5, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    invoke-virtual {p5}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p2

    .line 212
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z

    move-result p3

    if-eqz p3, :cond_43

    .line 213
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p3

    .line 214
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->removeItem(I)V

    .line 215
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 217
    :cond_43
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->setSwapItemCenterPosition(I)V

    .line 218
    iget-object p3, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->mItemLastCallback:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$IAddItemLastCallback;

    if-eqz p3, :cond_4d

    .line 219
    invoke-interface {p3, v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$IAddItemLastCallback;->updateAddItemLast(Z)V

    .line 221
    :cond_4d
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V

    .line 222
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_b8

    .line 225
    :cond_5c
    invoke-direct {p0, p5, p6, p7, p8}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->isItemNeedChange(Landroid/view/View;IIF)Z

    move-result p2

    if-eqz p2, :cond_b8

    .line 226
    invoke-virtual {p0, v2}, Landroid/view/View;->setOverScrollMode(I)V

    .line 227
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p2

    check-cast p5, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    invoke-virtual {p5}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p2

    .line 228
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p3

    .line 229
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z

    move-result p4

    if-eqz p4, :cond_95

    .line 230
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->removeItem(I)V

    if-eqz p2, :cond_95

    .line 232
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 235
    :cond_95
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->setSwapItemCenterPosition(I)V

    .line 236
    iget-object p3, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->mItemLastCallback:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$IAddItemLastCallback;

    if-eqz p3, :cond_9f

    .line 237
    invoke-interface {p3, v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$IAddItemLastCallback;->updateAddItemLast(Z)V

    .line 239
    :cond_9f
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V

    if-eqz p2, :cond_b0

    .line 241
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    return p2

    .line 243
    :cond_b0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return p2

    :cond_b8
    :goto_b8
    return v1
.end method
