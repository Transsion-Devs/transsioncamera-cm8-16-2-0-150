.class Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setSingleChecked(Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnClickListener;)V
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

    .line 181
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$2;->this$0:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$2;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 183
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$2;->this$0:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->-$$Nest$fgetmCheckedView(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)Landroid/widget/CheckedTextView;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$2;->this$0:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->-$$Nest$fgetmCheckedView(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 184
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$2;->this$0:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->-$$Nest$fgetmButtonPositive(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 185
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$2;->this$0:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->-$$Nest$fgetmButtonPositive(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$2;->this$0:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->-$$Nest$fgetmCheckedView(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 188
    :cond_30
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$2;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p0, :cond_39

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 189
    invoke-interface {p0, p1, v0}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_39
    return-void
.end method
