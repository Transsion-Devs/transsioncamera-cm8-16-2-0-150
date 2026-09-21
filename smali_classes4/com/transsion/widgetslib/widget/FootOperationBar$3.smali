.class Lcom/transsion/widgetslib/widget/FootOperationBar$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/FootOperationBar;->addItemView(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/FootOperationBar;I)V
    .registers 3

    .line 470
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$3;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    iput p2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$3;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 475
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$3;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    # getter for: Lcom/transsion/widgetslib/widget/FootOperationBar;->mItemClickListener:Lcom/transsion/widgetslib/widget/FootOperationBar$OnFootOptBarClickListener;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$500(Lcom/transsion/widgetslib/widget/FootOperationBar;)Lcom/transsion/widgetslib/widget/FootOperationBar$OnFootOptBarClickListener;

    move-result-object p1

    if-eqz p1, :cond_35

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$3;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$3;->val$index:I

    # invokes: Lcom/transsion/widgetslib/widget/FootOperationBar;->isFastClick(I)Z
    invoke-static {p1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$600(Lcom/transsion/widgetslib/widget/FootOperationBar;I)Z

    move-result p1

    if-nez p1, :cond_35

    .line 476
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$3;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    # getter for: Lcom/transsion/widgetslib/widget/FootOperationBar;->mItemClickListener:Lcom/transsion/widgetslib/widget/FootOperationBar$OnFootOptBarClickListener;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$500(Lcom/transsion/widgetslib/widget/FootOperationBar;)Lcom/transsion/widgetslib/widget/FootOperationBar$OnFootOptBarClickListener;

    move-result-object p1

    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$3;->val$index:I

    invoke-interface {p1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar$OnFootOptBarClickListener;->onItemClick(I)V

    .line 479
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$3;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    # getter for: Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$700(Lcom/transsion/widgetslib/widget/FootOperationBar;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 480
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$3;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    iget p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$3;->val$index:I

    invoke-virtual {p1, p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setItemSelectState(I)V

    return-void

    .line 482
    :cond_2d
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$3;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    iget p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$3;->val$index:I

    const/4 v0, 0x1

    # invokes: Lcom/transsion/widgetslib/widget/FootOperationBar;->setItemSelectState(IZ)V
    invoke-static {p1, p0, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$800(Lcom/transsion/widgetslib/widget/FootOperationBar;IZ)V

    :cond_35
    return-void
.end method
