.class Lcom/transsion/widgetslib/dialog/InputDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/dialog/InputDialog;->setGetInputPositiveButton(Ljava/lang/CharSequence;Lcom/transsion/widgetslib/dialog/InputDialog$OnPositiveButtonListener;)Lcom/transsion/widgetslib/dialog/InputDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/dialog/InputDialog;

.field final synthetic val$listener:Lcom/transsion/widgetslib/dialog/InputDialog$OnPositiveButtonListener;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/dialog/InputDialog;Lcom/transsion/widgetslib/dialog/InputDialog$OnPositiveButtonListener;)V
    .registers 3

    .line 166
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog$1;->this$0:Lcom/transsion/widgetslib/dialog/InputDialog;

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/InputDialog$1;->val$listener:Lcom/transsion/widgetslib/dialog/InputDialog$OnPositiveButtonListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 169
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog$1;->val$listener:Lcom/transsion/widgetslib/dialog/InputDialog$OnPositiveButtonListener;

    if-eqz p1, :cond_15

    .line 170
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog$1;->this$0:Lcom/transsion/widgetslib/dialog/InputDialog;

    # getter for: Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;
    invoke-static {p0}, Lcom/transsion/widgetslib/dialog/InputDialog;->access$000(Lcom/transsion/widgetslib/dialog/InputDialog;)Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/widgetslib/dialog/InputDialog$OnPositiveButtonListener;->onClick(Ljava/lang/String;)V

    :cond_15
    return-void
.end method
