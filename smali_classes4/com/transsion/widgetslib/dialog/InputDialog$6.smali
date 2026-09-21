.class Lcom/transsion/widgetslib/dialog/InputDialog$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/dialog/InputDialog;->initPasswordHideMode()V
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

    .line 589
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog$6;->this$0:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 592
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog$6;->this$0:Lcom/transsion/widgetslib/dialog/InputDialog;

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mPasswordListener:Lcom/transsion/widgetslib/dialog/InputDialog$PasswordListener;

    iget-boolean p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mIsPasswordChecked:Z

    invoke-interface {p1, p0}, Lcom/transsion/widgetslib/dialog/InputDialog$PasswordListener;->onUpdate(Z)V

    return-void
.end method
