.class Lcom/transsion/widgetslib/dialog/InputDialog$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/dialog/InputDialog;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/dialog/InputDialog;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/dialog/InputDialog;)V
    .registers 2

    .line 331
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog$4;->this$0:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 5

    .line 334
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog$4;->this$0:Lcom/transsion/widgetslib/dialog/InputDialog;

    # getter for: Lcom/transsion/widgetslib/dialog/InputDialog;->mShow:Z
    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->access$200(Lcom/transsion/widgetslib/dialog/InputDialog;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 335
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog$4;->this$0:Lcom/transsion/widgetslib/dialog/InputDialog;

    const/4 v1, 0x1

    # setter for: Lcom/transsion/widgetslib/dialog/InputDialog;->mShow:Z
    invoke-static {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->access$202(Lcom/transsion/widgetslib/dialog/InputDialog;Z)Z

    .line 336
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog$4;->this$0:Lcom/transsion/widgetslib/dialog/InputDialog;

    # getter for: Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;
    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->access$000(Lcom/transsion/widgetslib/dialog/InputDialog;)Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 339
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog$4;->this$0:Lcom/transsion/widgetslib/dialog/InputDialog;

    # getter for: Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;
    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->access$000(Lcom/transsion/widgetslib/dialog/InputDialog;)Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    new-instance v1, Lcom/transsion/widgetslib/dialog/InputDialog$4$1;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/dialog/InputDialog$4$1;-><init>(Lcom/transsion/widgetslib/dialog/InputDialog$4;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_27
    return-void
.end method
