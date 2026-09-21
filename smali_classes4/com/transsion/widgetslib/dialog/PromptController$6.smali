.class Lcom/transsion/widgetslib/dialog/PromptController$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/dialog/PromptController;->setMultiChoiceList(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/dialog/PromptController;

.field final synthetic val$listener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/dialog/PromptController;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)V
    .registers 3

    .line 446
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$6;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController$6;->val$listener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 449
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$6;->val$listener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz p1, :cond_3b

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$6;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    # getter for: Lcom/transsion/widgetslib/dialog/PromptController;->mListView:Landroid/view/View;
    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->access$1400(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3b

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$6;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    # getter for: Lcom/transsion/widgetslib/dialog/PromptController;->mContentAdapter:Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;
    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->access$1200(Lcom/transsion/widgetslib/dialog/PromptController;)Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;

    move-result-object p1

    if-eqz p1, :cond_3b

    .line 450
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$6;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    iget-object p2, p1, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedItems:[Z

    if-eqz p2, :cond_21

    .line 451
    # getter for: Lcom/transsion/widgetslib/dialog/PromptController;->mContentAdapter:Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;
    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->access$1200(Lcom/transsion/widgetslib/dialog/PromptController;)Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->setSelectedPst(I)V

    .line 453
    :cond_21
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$6;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    # invokes: Lcom/transsion/widgetslib/dialog/PromptController;->setListPositiveButtonStatus()V
    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->access$1300(Lcom/transsion/widgetslib/dialog/PromptController;)V

    .line 454
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$6;->val$listener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController$6;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    .line 455
    # getter for: Lcom/transsion/widgetslib/dialog/PromptController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {p2}, Lcom/transsion/widgetslib/dialog/PromptController;->access$700(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/content/DialogInterface;

    move-result-object p2

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController$6;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    # getter for: Lcom/transsion/widgetslib/dialog/PromptController;->mContentAdapter:Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;
    invoke-static {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->access$1200(Lcom/transsion/widgetslib/dialog/PromptController;)Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->isItemChecked(I)Z

    move-result p0

    .line 454
    invoke-interface {p1, p2, p3, p0}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    :cond_3b
    return-void
.end method
