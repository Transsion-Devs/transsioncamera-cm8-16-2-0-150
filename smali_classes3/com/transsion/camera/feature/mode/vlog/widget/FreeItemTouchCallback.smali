.class public Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback$IItemControl;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mEnable:Z

.field private final mFillAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;

.field private mIsZooming:Z

.field private final mItemControl:Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback$IItemControl;

.field private final mItemPos:[I

.field private final mItemRect:Landroid/graphics/RectF;

.field private final mMainPos:[I

.field private mOrientation:I

.field private final mParentRect:Landroid/graphics/RectF;

.field private mRecording:Z

.field private mScreenFormType:I


# direct methods
.method public static synthetic $r8$lambda$LwwXhRhBPq_CruddmEYtdSxY1o0(Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->lambda$clearView$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Vlog_TouchCallback"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback$IItemControl;II)V
    .registers 7

    .line 45
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    const/4 v0, 0x2

    .line 27
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mMainPos:[I

    .line 28
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mItemPos:[I

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mParentRect:Landroid/graphics/RectF;

    .line 30
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mItemRect:Landroid/graphics/RectF;

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mEnable:Z

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mRecording:Z

    .line 36
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mIsZooming:Z

    .line 46
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mItemControl:Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback$IItemControl;

    .line 47
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mFillAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;

    .line 48
    iput p3, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mScreenFormType:I

    .line 49
    iput p4, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mOrientation:I

    return-void
.end method

.method private synthetic lambda$clearView$0()V
    .registers 2

    .line 123
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mRecording:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mIsZooming:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mEnable:Z

    return-void
.end method

.method private setEnable(Z)V
    .registers 2

    .line 100
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mEnable:Z

    return-void
.end method


# virtual methods
.method public canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 4

    .line 263
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p0

    return p0
.end method

.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 5

    .line 117
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 118
    sget-object p2, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "clearView"

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 119
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mItemControl:Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback$IItemControl;

    invoke-interface {p2}, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback$IItemControl;->onDragEnd()V

    .line 120
    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mRecording:Z

    if-nez p2, :cond_22

    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mIsZooming:Z

    if-eqz p2, :cond_18

    goto :goto_22

    .line 123
    :cond_18
    new-instance p2, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_22
    :goto_22
    return-void
.end method

.method public convertToAbsoluteDirection(II)I
    .registers 3

    .line 84
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result p0

    return p0
.end method

.method public getMoveThreshold(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F
    .registers 2

    const/high16 p0, 0x3f000000    # 0.5f

    return p0
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .registers 3

    const/16 p0, 0xc

    const/4 p1, 0x0

    .line 56
    invoke-static {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p0

    return p0
.end method

.method public isItemViewSwipeEnabled()Z
    .registers 1

    .line 251
    invoke-super {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->isItemViewSwipeEnabled()Z

    move-result p0

    return p0
.end method

.method public isLongPressDragEnabled()Z
    .registers 4

    .line 237
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLongPressDragEnabled, mEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 238
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mEnable:Z

    if-nez v0, :cond_1e

    const/4 p0, 0x0

    return p0

    .line 241
    :cond_1e
    invoke-super {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->isLongPressDragEnabled()Z

    move-result p0

    return p0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .registers 16

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mMainPos:[I

    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 133
    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 134
    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 135
    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mItemPos:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 137
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mScreenFormType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_26

    const/4 v3, 0x3

    if-eq v0, v3, :cond_26

    if-ne v0, v2, :cond_ca

    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mOrientation:I

    if-nez v0, :cond_ca

    .line 140
    :cond_26
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mParentRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mMainPos:[I

    aget v4, v3, v1

    int-to-float v5, v4

    iput v5, v0, Landroid/graphics/RectF;->left:F

    .line 141
    aget v3, v3, v2

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/RectF;->top:F

    .line 142
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v4, v3

    int-to-float v3, v4

    iput v3, v0, Landroid/graphics/RectF;->right:F

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mParentRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mMainPos:[I

    aget v3, v3, v2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mItemRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mItemPos:[I

    aget v4, v3, v1

    int-to-float v5, v4

    iput v5, v0, Landroid/graphics/RectF;->left:F

    .line 146
    aget v3, v3, v2

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/RectF;->top:F

    .line 147
    iget-object v3, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v4, v3

    int-to-float v3, v4

    iput v3, v0, Landroid/graphics/RectF;->right:F

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mItemRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mItemPos:[I

    aget v3, v3, v2

    iget-object v4, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    .line 150
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onChildDraw: mParentRect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mParentRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mItemRect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mItemRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "dX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", dY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mItemRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float v3, v0, p4

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mParentRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_b7

    sub-float/2addr v4, v0

    .line 153
    invoke-static {p4, v4}, Ljava/lang/Math;->max(FF)F

    move-result p4

    .line 155
    :cond_b7
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mItemRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    add-float v3, v0, p4

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mParentRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_ca

    sub-float/2addr v4, v0

    .line 156
    invoke-static {p4, v4}, Ljava/lang/Math;->min(FF)F

    move-result p4

    .line 160
    :cond_ca
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mScreenFormType:I

    if-ne v0, v2, :cond_153

    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mOrientation:I

    if-eqz v0, :cond_153

    const/16 v3, 0x5a

    if-eq v0, v3, :cond_1db

    const/16 v3, 0xb4

    if-eq v0, v3, :cond_15d

    const/16 v3, 0x10e

    if-eq v0, v3, :cond_df

    goto :goto_153

    .line 200
    :cond_df
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mParentRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mMainPos:[I

    aget v3, v3, v1

    iget-object v4, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/RectF;->left:F

    .line 201
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mParentRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mMainPos:[I

    aget v4, v3, v2

    int-to-float v5, v4

    iput v5, v0, Landroid/graphics/RectF;->top:F

    .line 202
    aget v3, v3, v1

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/RectF;->right:F

    .line 203
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v4, v3

    int-to-float v3, v4

    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mItemRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mItemPos:[I

    aget v3, v3, v1

    iget-object v4, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/RectF;->left:F

    .line 206
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mItemRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mItemPos:[I

    aget v2, v3, v2

    int-to-float v4, v2

    iput v4, v0, Landroid/graphics/RectF;->top:F

    .line 207
    aget v1, v3, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 208
    iget-object v1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v2, v1

    int-to-float v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 210
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mItemRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    add-float v1, v0, p4

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mParentRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_140

    sub-float/2addr v2, v0

    .line 211
    invoke-static {p4, v2}, Ljava/lang/Math;->max(FF)F

    move-result p4

    .line 213
    :cond_140
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mItemRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float v1, v0, p4

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mParentRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_153

    sub-float/2addr v2, v0

    .line 214
    invoke-static {p4, v2}, Ljava/lang/Math;->min(FF)F

    move-result p4

    :cond_153
    :goto_153
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    goto/16 :goto_259

    .line 182
    :cond_15d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mParentRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mMainPos:[I

    aget v3, v3, v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/RectF;->left:F

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mParentRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mMainPos:[I

    aget v3, v3, v2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/RectF;->top:F

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mParentRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mMainPos:[I

    aget v4, v3, v1

    int-to-float v4, v4

    iput v4, v0, Landroid/graphics/RectF;->right:F

    .line 185
    aget v3, v3, v2

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mItemRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mItemPos:[I

    aget v3, v3, v1

    iget-object v4, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/RectF;->left:F

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mItemRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mItemPos:[I

    aget v3, v3, v2

    iget-object v4, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/RectF;->top:F

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mItemRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mItemPos:[I

    aget v1, v3, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 190
    aget v1, v3, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 192
    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float v1, v0, p4

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mParentRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1c6

    sub-float/2addr v0, v2

    .line 193
    invoke-static {p4, v0}, Ljava/lang/Math;->min(FF)F

    move-result p4

    .line 195
    :cond_1c6
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mItemRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float v1, v0, p4

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mParentRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_153

    sub-float/2addr v0, v2

    .line 196
    invoke-static {p4, v0}, Ljava/lang/Math;->max(FF)F

    move-result p4

    goto/16 :goto_153

    .line 163
    :cond_1db
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mParentRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mMainPos:[I

    aget v4, v3, v1

    int-to-float v4, v4

    iput v4, v0, Landroid/graphics/RectF;->left:F

    .line 164
    aget v3, v3, v2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/RectF;->top:F

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mParentRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mMainPos:[I

    aget v3, v3, v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/RectF;->right:F

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mParentRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mMainPos:[I

    aget v3, v3, v2

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mItemRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mItemPos:[I

    aget v4, v3, v1

    int-to-float v4, v4

    iput v4, v0, Landroid/graphics/RectF;->left:F

    .line 169
    aget v3, v3, v2

    iget-object v4, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/RectF;->top:F

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mItemRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mItemPos:[I

    aget v1, v3, v1

    iget-object v3, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mItemRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mItemPos:[I

    aget v1, v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 173
    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float v1, v0, p4

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mParentRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_244

    sub-float/2addr v0, v2

    .line 174
    invoke-static {p4, v0}, Ljava/lang/Math;->min(FF)F

    move-result p4

    .line 177
    :cond_244
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mItemRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v0, p4

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mParentRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_153

    sub-float/2addr v0, v2

    .line 178
    invoke-static {p4, v0}, Ljava/lang/Math;->max(FF)F

    move-result p4

    goto/16 :goto_153

    .line 222
    :goto_259
    invoke-super/range {v0 .. v7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 6

    .line 62
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    .line 63
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p2

    .line 64
    sget-object p3, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMove, fromPosition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", toPosition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 65
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mFillAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;

    invoke-virtual {p3}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->getMediaItemList()Ljava/util/List;

    move-result-object p3

    .line 66
    invoke-interface {p3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    .line 67
    invoke-interface {p3, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mFillAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;III)V
    .registers 11

    .line 76
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMoved, viewHolder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "fromPos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", toPos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", x: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", viewHolder.itemView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 79
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;III)V

    return-void
.end method

.method public onScreenFormChanged(II)V
    .registers 4

    .line 226
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mScreenFormType:I

    if-eq v0, p1, :cond_6

    .line 227
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mScreenFormType:I

    .line 230
    :cond_6
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mOrientation:I

    if-eq p1, p2, :cond_c

    .line 231
    iput p2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mOrientation:I

    :cond_c
    return-void
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 5

    .line 89
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 90
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSelectedChanged, actionState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x2

    if-ne p2, p1, :cond_21

    .line 93
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mItemControl:Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback$IItemControl;

    invoke-interface {p1}, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback$IItemControl;->onDragStart()V

    :cond_21
    const/4 p1, 0x0

    .line 96
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mEnable:Z

    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    return-void
.end method

.method public setRecording(Z)V
    .registers 5

    .line 104
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecording, isRecording: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 105
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mRecording:Z

    if-nez p1, :cond_20

    .line 106
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mIsZooming:Z

    if-nez p1, :cond_20

    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->setEnable(Z)V

    return-void
.end method

.method public setZooming(Z)V
    .registers 5

    .line 110
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setZooming, isZooming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 111
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mIsZooming:Z

    .line 112
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->mRecording:Z

    if-nez v0, :cond_20

    if-nez p1, :cond_20

    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->setEnable(Z)V

    return-void
.end method
