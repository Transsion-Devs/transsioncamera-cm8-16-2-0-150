.class Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setSecondLayout(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V
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

    .line 239
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$3;->this$0:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$3;->val$listener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 242
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$3;->this$0:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mSecondSwitch:Landroid/widget/Switch;

    if-eqz p1, :cond_1e

    .line 243
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    .line 244
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$3;->this$0:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mSecondSwitch:Landroid/widget/Switch;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 245
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$3;->val$listener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz p0, :cond_1e

    const/4 v0, 0x0

    xor-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    .line 246
    invoke-interface {p0, v1, v0, p1}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    :cond_1e
    return-void
.end method
