.class Lcom/transsion/widgetslib/dialog/SelectDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/dialog/SelectDialog;->setListView(Ljava/util/List;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/dialog/SelectDialog;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/dialog/SelectDialog;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/SelectDialog$1;->this$0:Lcom/transsion/widgetslib/dialog/SelectDialog;

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

    .line 85
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/SelectDialog$1;->this$0:Lcom/transsion/widgetslib/dialog/SelectDialog;

    # getter for: Lcom/transsion/widgetslib/dialog/SelectDialog;->mAdapter:Lcom/transsion/widgetslib/adapter/SelectDialogAdapter;
    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/SelectDialog;->access$000(Lcom/transsion/widgetslib/dialog/SelectDialog;)Lcom/transsion/widgetslib/adapter/SelectDialogAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/transsion/widgetslib/adapter/SelectDialogAdapter;->setCheckedItem(I)V

    .line 86
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/SelectDialog$1;->this$0:Lcom/transsion/widgetslib/dialog/SelectDialog;

    # getter for: Lcom/transsion/widgetslib/dialog/SelectDialog;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;
    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/SelectDialog;->access$100(Lcom/transsion/widgetslib/dialog/SelectDialog;)Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/dialog/PromptDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    .line 87
    iget-object p2, p0, Lcom/transsion/widgetslib/dialog/SelectDialog$1;->this$0:Lcom/transsion/widgetslib/dialog/SelectDialog;

    # getter for: Lcom/transsion/widgetslib/dialog/SelectDialog;->mIsCount:Z
    invoke-static {p2}, Lcom/transsion/widgetslib/dialog/SelectDialog;->access$200(Lcom/transsion/widgetslib/dialog/SelectDialog;)Z

    move-result p2

    if-eqz p2, :cond_4e

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_4e

    .line 88
    iget-object p2, p0, Lcom/transsion/widgetslib/dialog/SelectDialog$1;->this$0:Lcom/transsion/widgetslib/dialog/SelectDialog;

    # getter for: Lcom/transsion/widgetslib/dialog/SelectDialog;->mAdapter:Lcom/transsion/widgetslib/adapter/SelectDialogAdapter;
    invoke-static {p2}, Lcom/transsion/widgetslib/dialog/SelectDialog;->access$000(Lcom/transsion/widgetslib/dialog/SelectDialog;)Lcom/transsion/widgetslib/adapter/SelectDialogAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/widgetslib/adapter/SelectDialogAdapter;->getCheckCount()I

    move-result p2

    .line 89
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/SelectDialog$1;->this$0:Lcom/transsion/widgetslib/dialog/SelectDialog;

    # getter for: Lcom/transsion/widgetslib/dialog/SelectDialog;->mBtnPositiveText:Ljava/lang/CharSequence;
    invoke-static {p0}, Lcom/transsion/widgetslib/dialog/SelectDialog;->access$300(Lcom/transsion/widgetslib/dialog/SelectDialog;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "("

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4e
    return-void
.end method
