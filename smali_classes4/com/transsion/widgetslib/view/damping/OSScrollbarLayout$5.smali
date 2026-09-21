.class Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->drawScrollBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

.field final synthetic val$view:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;)V
    .registers 3

    .line 252
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$5;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    iput-object p2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$5;->val$view:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 255
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$5;->val$view:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->computeVerticalScrollRange()I

    move-result v0

    .line 256
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$5;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    # getter for: Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mScrollRange:I
    invoke-static {v1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$500(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)I

    move-result v1

    if-ne v1, v0, :cond_f

    return-void

    .line 260
    :cond_f
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$5;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    # setter for: Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mScrollRange:I
    invoke-static {v1, v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$502(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;I)I

    .line 261
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$5;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    const/4 v1, 0x0

    # setter for: Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mHeight:I
    invoke-static {v0, v1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$602(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;I)I

    .line 262
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$5;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$5;->val$view:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    # getter for: Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mScrollRange:I
    invoke-static {v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$500(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)I

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$5;->val$view:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-virtual {v3}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->computeVerticalScrollOffset()I

    move-result v3

    # invokes: Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->updateScrollBar(Landroid/view/View;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$300(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Landroid/view/View;II)V

    .line 264
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$5;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    # invokes: Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->playAnimScrollBarFade()V
    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$700(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    return-void
.end method
