.class Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog$1;->this$0:Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    .line 56
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog$1;->this$0:Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;

    # getter for: Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;->mLoadingView:Lcom/transsion/widgetslib/view/OSLoadingView;
    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;->access$000(Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;)Lcom/transsion/widgetslib/view/OSLoadingView;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 57
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog$1;->this$0:Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;

    # getter for: Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;->mLoadingView:Lcom/transsion/widgetslib/view/OSLoadingView;
    invoke-static {p0}, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;->access$000(Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;)Lcom/transsion/widgetslib/view/OSLoadingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->release()V

    :cond_11
    return-void
.end method
