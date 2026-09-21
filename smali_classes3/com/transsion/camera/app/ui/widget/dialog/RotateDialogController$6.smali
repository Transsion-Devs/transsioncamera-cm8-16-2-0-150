.class Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setMultiChoiceList(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

.field final synthetic val$listener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)V
    .registers 3

    .line 454
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$6;->this$0:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$6;->val$listener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    .line 456
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$6;->val$listener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz p1, :cond_36

    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$6;->this$0:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->-$$Nest$fgetmListView(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_36

    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$6;->this$0:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->-$$Nest$fgetmContentAdapter(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;

    move-result-object p1

    if-eqz p1, :cond_36

    .line 457
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$6;->this$0:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    iget-object p2, p1, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mCheckedItems:[Z

    if-eqz p2, :cond_21

    .line 458
    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->-$$Nest$fgetmContentAdapter(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;->setSelectedPst(I)V

    .line 461
    :cond_21
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$6;->this$0:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->-$$Nest$msetListPositiveButtonStatus(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)V

    .line 462
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$6;->val$listener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$6;->this$0:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->-$$Nest$fgetmContentAdapter(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;->isItemChecked(I)Z

    move-result p0

    const/4 p2, 0x0

    invoke-interface {p1, p2, p3, p0}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    :cond_36
    return-void
.end method
