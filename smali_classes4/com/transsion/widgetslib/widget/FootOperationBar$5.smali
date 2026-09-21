.class Lcom/transsion/widgetslib/widget/FootOperationBar$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/FootOperationBar;->resetClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

.field final synthetic val$finalIndex:I


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/FootOperationBar;I)V
    .registers 3

    .line 527
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$5;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    iput p2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$5;->val$finalIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 532
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$5;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    # getter for: Lcom/transsion/widgetslib/widget/FootOperationBar;->mItemClickListener:Lcom/transsion/widgetslib/widget/FootOperationBar$OnFootOptBarClickListener;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$500(Lcom/transsion/widgetslib/widget/FootOperationBar;)Lcom/transsion/widgetslib/widget/FootOperationBar$OnFootOptBarClickListener;

    move-result-object p1

    if-eqz p1, :cond_35

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$5;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$5;->val$finalIndex:I

    # invokes: Lcom/transsion/widgetslib/widget/FootOperationBar;->isFastClick(I)Z
    invoke-static {p1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$600(Lcom/transsion/widgetslib/widget/FootOperationBar;I)Z

    move-result p1

    if-nez p1, :cond_35

    .line 533
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$5;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    # getter for: Lcom/transsion/widgetslib/widget/FootOperationBar;->mItemClickListener:Lcom/transsion/widgetslib/widget/FootOperationBar$OnFootOptBarClickListener;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$500(Lcom/transsion/widgetslib/widget/FootOperationBar;)Lcom/transsion/widgetslib/widget/FootOperationBar$OnFootOptBarClickListener;

    move-result-object p1

    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$5;->val$finalIndex:I

    invoke-interface {p1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar$OnFootOptBarClickListener;->onItemClick(I)V

    .line 536
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$5;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    # getter for: Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$700(Lcom/transsion/widgetslib/widget/FootOperationBar;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 537
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$5;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    iget p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$5;->val$finalIndex:I

    invoke-virtual {p1, p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setItemSelectState(I)V

    return-void

    .line 539
    :cond_2d
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$5;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    iget p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$5;->val$finalIndex:I

    const/4 v0, 0x1

    # invokes: Lcom/transsion/widgetslib/widget/FootOperationBar;->setItemSelectState(IZ)V
    invoke-static {p1, p0, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$800(Lcom/transsion/widgetslib/widget/FootOperationBar;IZ)V

    :cond_35
    return-void
.end method
