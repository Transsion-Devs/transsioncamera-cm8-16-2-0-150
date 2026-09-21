.class public Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkItemTouchCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkItemTouchCallback$IEditWaterMarkItemControl;
    }
.end annotation


# instance fields
.field private final mEditWaterMarkRecycleViewAdapter:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;

.field private mEnable:Z

.field private final mIEditWaterMarkItemControl:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkItemTouchCallback$IEditWaterMarkItemControl;


# direct methods
.method public static synthetic $r8$lambda$Zfolyq1HREzrHojqV3jBWslAPvE(Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkItemTouchCallback;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkItemTouchCallback;->lambda$clearView$0()V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkItemTouchCallback$IEditWaterMarkItemControl;)V
    .registers 4

    .line 24
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkItemTouchCallback;->mEnable:Z

    .line 25
    iput-object p2, p0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkItemTouchCallback;->mIEditWaterMarkItemControl:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkItemTouchCallback$IEditWaterMarkItemControl;

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkItemTouchCallback;->mEditWaterMarkRecycleViewAdapter:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;

    return-void
.end method

.method private synthetic lambda$clearView$0()V
    .registers 2

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkItemTouchCallback;->mEnable:Z

    return-void
.end method


# virtual methods
.method public canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 4

    .line 104
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p0

    return p0
.end method

.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 5

    .line 64
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 65
    iget-object p2, p0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkItemTouchCallback;->mEditWaterMarkRecycleViewAdapter:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 66
    iget-object p2, p0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkItemTouchCallback;->mIEditWaterMarkItemControl:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkItemTouchCallback$IEditWaterMarkItemControl;

    invoke-interface {p2}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkItemTouchCallback$IEditWaterMarkItemControl;->onMovedEnd()V

    .line 67
    new-instance p2, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkItemTouchCallback$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkItemTouchCallback$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkItemTouchCallback;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public convertToAbsoluteDirection(II)I
    .registers 3

    .line 53
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result p0

    return p0
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .registers 3

    const/4 p0, 0x3

    const/4 p1, 0x0

    .line 33
    invoke-static {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p0

    return p0
.end method

.method public isItemViewSwipeEnabled()Z
    .registers 1

    .line 93
    invoke-super {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->isItemViewSwipeEnabled()Z

    move-result p0

    return p0
.end method

.method public isLongPressDragEnabled()Z
    .registers 2

    .line 85
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkItemTouchCallback;->mEnable:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 88
    :cond_6
    invoke-super {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->isLongPressDragEnabled()Z

    move-result p0

    return p0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .registers 10

    .line 72
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result v0

    if-nez v0, :cond_1a

    .line 73
    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    cmpl-float v1, p5, v0

    if-lez v1, :cond_15

    goto :goto_16

    :cond_15
    move p5, v0

    .line 74
    :goto_16
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    return-void

    .line 75
    :cond_1a
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result v0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3d

    .line 76
    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    cmpg-float v1, p5, v0

    if-gez v1, :cond_38

    goto :goto_39

    :cond_38
    move p5, v0

    .line 77
    :goto_39
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    return-void

    .line 79
    :cond_3d
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 4

    .line 39
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 40
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    .line 41
    iget-object p3, p0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkItemTouchCallback;->mEditWaterMarkRecycleViewAdapter:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;

    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;->getEditWaterMarkUIItems()Ljava/util/List;

    move-result-object p3

    invoke-static {p3, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkItemTouchCallback;->mEditWaterMarkRecycleViewAdapter:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;III)V
    .registers 8

    .line 48
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;III)V

    return-void
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 58
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    const/4 p1, 0x0

    .line 59
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkItemTouchCallback;->mEnable:Z

    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    return-void
.end method
