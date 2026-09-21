.class Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$1;->this$0:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$1;->this$0:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->-$$Nest$fgetmButtonPositive(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1b

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$1;->this$0:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->-$$Nest$fgetmButtonPositiveMessage(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 113
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$1;->this$0:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->-$$Nest$fgetmButtonPositiveMessage(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)Landroid/os/Message;

    move-result-object p0

    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p0

    goto :goto_52

    .line 114
    :cond_1b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$1;->this$0:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->-$$Nest$fgetmButtonNegative(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_36

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$1;->this$0:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->-$$Nest$fgetmButtonNegativeMessage(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 115
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$1;->this$0:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->-$$Nest$fgetmButtonNegativeMessage(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)Landroid/os/Message;

    move-result-object p0

    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p0

    goto :goto_52

    .line 116
    :cond_36
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$1;->this$0:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->-$$Nest$fgetmButtonNeutral(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_51

    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$1;->this$0:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->-$$Nest$fgetmButtonNeutralMessage(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)Landroid/os/Message;

    move-result-object p1

    if-eqz p1, :cond_51

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$1;->this$0:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->-$$Nest$fgetmButtonNeutralMessage(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)Landroid/os/Message;

    move-result-object p0

    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p0

    goto :goto_52

    :cond_51
    const/4 p0, 0x0

    :goto_52
    if-eqz p0, :cond_57

    .line 123
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_57
    return-void
.end method
