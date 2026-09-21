.class Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$4;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)V
    .registers 2

    .line 521
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$4;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 3

    .line 524
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 525
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$4;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->-$$Nest$fgetmIsDetailRecyclerMoving(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)Z

    move-result p1

    if-eqz p1, :cond_13

    if-nez p2, :cond_13

    .line 526
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$4;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->-$$Nest$fputmIsDetailRecyclerMoving(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;Z)V

    :cond_13
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 13

    .line 532
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 534
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez p2, :cond_c

    return-void

    .line 539
    :cond_c
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_18

    .line 542
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    goto :goto_19

    :cond_18
    move p3, v0

    .line 545
    :goto_19
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 546
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    .line 549
    iget-object v3, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$4;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    invoke-static {v3}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->-$$Nest$fgetmCurrentPosition(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)I

    move-result v3

    move v4, v1

    :goto_28
    if-gt v4, v2, :cond_64

    .line 552
    invoke-virtual {p2, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_31

    goto :goto_61

    .line 558
    :cond_31
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    .line 559
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    if-nez v4, :cond_3e

    if-nez v6, :cond_3e

    goto :goto_65

    :cond_3e
    add-int/lit8 v7, p3, -0x1

    if-ne v4, v7, :cond_51

    .line 568
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    sub-int/2addr v8, v5

    iget-object v5, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$4;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    invoke-static {v5}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->-$$Nest$fgetmItemMarginBottom(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)I

    move-result v5

    if-lt v8, v5, :cond_51

    move v1, v7

    goto :goto_65

    :cond_51
    if-eqz v4, :cond_61

    if-eq v4, v7, :cond_61

    if-ltz v6, :cond_61

    .line 572
    iget-object v5, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$4;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    invoke-static {v5}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->-$$Nest$fgetmItemMarginTop(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)I

    move-result v5

    if-gt v6, v5, :cond_61

    move v1, v4

    goto :goto_65

    :cond_61
    :goto_61
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_64
    move v1, v3

    .line 581
    :goto_65
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$4;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->checkPosition(IZ)V

    return-void
.end method
