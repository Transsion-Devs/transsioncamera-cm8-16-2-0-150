.class Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setupView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

.field final synthetic val$parent_:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;Landroid/view/ViewGroup;)V
    .registers 3

    .line 654
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$11;->this$0:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$11;->val$parent_:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 656
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$11;->val$parent_:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$11;->this$0:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->-$$Nest$fgetmListView(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lt v0, v1, :cond_2e

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$11;->this$0:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->-$$Nest$fgetmFrameContainerTrueHeight(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)I

    move-result v0

    if-lez v0, :cond_2d

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$11;->this$0:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->-$$Nest$fgetmFrameContainer(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$11;->this$0:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->-$$Nest$fgetmFrameContainerTrueHeight(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)I

    move-result v1

    if-ge v0, v1, :cond_2d

    goto :goto_2e

    :cond_2d
    return-void

    .line 657
    :cond_2e
    :goto_2e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$11;->this$0:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->-$$Nest$fgetmFrameContainer(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x3

    .line 658
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v2, 0xc

    .line 659
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 660
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$11;->this$0:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->-$$Nest$fgetmFrameContainer(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 661
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$11;->val$parent_:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 662
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 663
    sget v0, Lcom/transsion/widgetslib/R$id;->os_module_dialog_damping_layout_title:I

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v0, 0x2

    .line 664
    sget v1, Lcom/transsion/widgetslib/R$id;->os_module_dialog_custom_view:I

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 665
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$11;->val$parent_:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
