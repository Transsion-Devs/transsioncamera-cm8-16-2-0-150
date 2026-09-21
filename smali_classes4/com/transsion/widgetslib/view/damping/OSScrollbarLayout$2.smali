.class Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->setOverScrollView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

.field final synthetic val$view:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    .line 187
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$2;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    iput-object p2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$2;->val$view:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 5

    .line 190
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 191
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$2;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    if-lez p3, :cond_9

    const/4 p2, 0x1

    goto :goto_a

    :cond_9
    const/4 p2, 0x0

    :goto_a
    # setter for: Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mIsDownScroll:Z
    invoke-static {p1, p2}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$202(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Z)Z

    .line 192
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$2;->val$view:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    .line 193
    iget-object p2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$2;->val$view:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result p2

    .line 195
    iget-object p3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$2;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$2;->val$view:Landroidx/recyclerview/widget/RecyclerView;

    # invokes: Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->updateScrollBar(Landroid/view/View;II)V
    invoke-static {p3, v0, p2, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$300(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Landroid/view/View;II)V

    .line 196
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$2;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    # invokes: Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->sendScrollBarFadeMsg()V
    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$400(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    return-void
.end method
