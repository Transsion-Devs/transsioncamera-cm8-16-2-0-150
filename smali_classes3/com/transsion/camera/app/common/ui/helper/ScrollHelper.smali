.class public Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;,
        Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$SimpleStoreStrategy;
    }
.end annotation


# instance fields
.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mScreenFormType:I

.field private final mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private final mScrollListenerRef:Ljava/lang/ref/WeakReference;

.field private final mStoreStrategy:Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;


# direct methods
.method static bridge synthetic -$$Nest$msaveScrollPosition(Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->saveScrollPosition(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;)V
    .registers 4

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$1;-><init>(Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 103
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->mScrollListenerRef:Ljava/lang/ref/WeakReference;

    .line 110
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->mStoreStrategy:Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;

    return-void
.end method

.method private destroyCallback()V
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->mScrollListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public static of(Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;)Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;
    .registers 2

    .line 106
    new-instance v0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;-><init>(Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;)V

    return-object v0
.end method

.method private saveScrollPosition(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 5

    .line 136
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 137
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v0, :cond_9

    goto :goto_15

    .line 141
    :cond_9
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 142
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 143
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_16

    :goto_15
    return-void

    .line 147
    :cond_16
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    .line 149
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->mStoreStrategy:Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;

    const-string v2, "scroll_position"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;->saveValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->mStoreStrategy:Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;

    const-string v0, "scroll_offset"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;->saveValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private scrollToPosition(II)V
    .registers 4

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_5

    goto :goto_d

    .line 165
    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    .line 166
    instance-of v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v0, :cond_e

    :goto_d
    return-void

    .line 170
    :cond_e
    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 171
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method private setupCallback()V
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->mScrollListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method


# virtual methods
.method public attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v0, p1, :cond_5

    goto :goto_14

    :cond_5
    if-eqz v0, :cond_a

    .line 118
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->destroyCallback()V

    .line 120
    :cond_a
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_14

    .line 122
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->setupCallback()V

    .line 123
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->scrollToSavedPosition()V

    :cond_14
    :goto_14
    return-void
.end method

.method public onScreenFormChanged(I)V
    .registers 2

    .line 181
    iput p1, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->mScreenFormType:I

    .line 182
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->scrollToSavedPosition()V

    return-void
.end method

.method public resetScrollPosition()V
    .registers 4

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->mStoreStrategy:Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;

    const-string v1, "scroll_position"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;->saveValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->mStoreStrategy:Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;

    const-string v1, "scroll_offset"

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;->saveValue(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 177
    invoke-direct {p0, v0, v0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->scrollToPosition(II)V

    return-void
.end method

.method public scrollToSavedPosition()V
    .registers 4

    .line 154
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->mStoreStrategy:Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;

    const-string v1, "scroll_position"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 155
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->mStoreStrategy:Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;

    const-string v2, "scroll_offset"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 157
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->scrollToPosition(II)V

    return-void
.end method
