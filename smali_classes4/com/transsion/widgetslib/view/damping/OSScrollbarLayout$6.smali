.class Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->updateScrollBar(Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V
    .registers 2

    .line 378
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$6;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 381
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$6;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    # getter for: Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;
    invoke-static {v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$100(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    # setter for: Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarTop:I
    invoke-static {v0, v1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$802(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;I)I

    .line 382
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$6;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    # getter for: Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;
    invoke-static {v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$100(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    # setter for: Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarBottom:I
    invoke-static {v0, v1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$902(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;I)I

    .line 384
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$6;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    # getter for: Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$1000(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$6;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    # getter for: Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;
    invoke-static {v1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$100(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$6;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    # getter for: Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarTop:I
    invoke-static {v2}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$800(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)I

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$6;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    # getter for: Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;
    invoke-static {v3}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$100(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$6;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    # getter for: Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarBottom:I
    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$900(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)I

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
