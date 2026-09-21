.class Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setSingleChoiceList(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

.field final synthetic val$listener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 3

    .line 519
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$8;->this$0:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$8;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    .line 521
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$8;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p1, :cond_8

    const/4 p2, 0x0

    .line 522
    invoke-interface {p1, p2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 525
    :cond_8
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$8;->this$0:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->-$$Nest$msetListPositiveButtonStatus(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)V

    return-void
.end method
