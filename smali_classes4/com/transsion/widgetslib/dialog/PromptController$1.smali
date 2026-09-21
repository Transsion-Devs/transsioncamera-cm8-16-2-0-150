.class Lcom/transsion/widgetslib/dialog/PromptController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/dialog/PromptController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/dialog/PromptController;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/dialog/PromptController;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$1;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 113
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController$1;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    # getter for: Lcom/transsion/widgetslib/dialog/PromptController;->mButtonPositive:Landroid/widget/Button;
    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/PromptController;->access$000(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1b

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController$1;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    # getter for: Lcom/transsion/widgetslib/dialog/PromptController;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/PromptController;->access$100(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 114
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$1;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    # getter for: Lcom/transsion/widgetslib/dialog/PromptController;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->access$100(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/os/Message;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_52

    .line 115
    :cond_1b
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController$1;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    # getter for: Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNegative:Landroid/widget/Button;
    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/PromptController;->access$200(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_36

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController$1;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    # getter for: Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/PromptController;->access$300(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 116
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$1;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    # getter for: Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->access$300(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/os/Message;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_52

    .line 117
    :cond_36
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController$1;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    # getter for: Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNeutral:Landroid/widget/Button;
    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/PromptController;->access$400(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_51

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$1;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    # getter for: Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->access$500(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/os/Message;

    move-result-object p1

    if-eqz p1, :cond_51

    .line 118
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$1;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    # getter for: Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->access$500(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/os/Message;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_52

    :cond_51
    const/4 p1, 0x0

    :goto_52
    if-eqz p1, :cond_57

    .line 124
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 127
    :cond_57
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$1;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    # getter for: Lcom/transsion/widgetslib/dialog/PromptController;->mAutoDismiss:Z
    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->access$600(Lcom/transsion/widgetslib/dialog/PromptController;)Z

    move-result p1

    if-eqz p1, :cond_73

    .line 128
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$1;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    # getter for: Lcom/transsion/widgetslib/dialog/PromptController;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->access$800(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController$1;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    # getter for: Lcom/transsion/widgetslib/dialog/PromptController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->access$700(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/content/DialogInterface;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_73
    return-void
.end method
