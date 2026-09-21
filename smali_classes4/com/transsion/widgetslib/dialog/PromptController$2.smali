.class Lcom/transsion/widgetslib/dialog/PromptController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/dialog/PromptController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/dialog/PromptController;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/dialog/PromptController;Landroid/content/Context;)V
    .registers 3

    .line 145
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$2;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .line 148
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$2;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    # getter for: Lcom/transsion/widgetslib/dialog/PromptController;->mCancelable:Z
    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->access$900(Lcom/transsion/widgetslib/dialog/PromptController;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$2;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    # getter for: Lcom/transsion/widgetslib/dialog/PromptController;->mCancelOutSide:Z
    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->access$1000(Lcom/transsion/widgetslib/dialog/PromptController;)Z

    move-result p1

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$2;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController$2;->val$context:Landroid/content/Context;

    invoke-virtual {p1, v1, p2}, Lcom/transsion/widgetslib/dialog/PromptController;->shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 149
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$2;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    # getter for: Lcom/transsion/widgetslib/dialog/PromptController;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->access$800(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController$2;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    # getter for: Lcom/transsion/widgetslib/dialog/PromptController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->access$700(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/content/DialogInterface;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_2e
    return v0
.end method
