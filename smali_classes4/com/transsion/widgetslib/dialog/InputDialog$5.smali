.class Lcom/transsion/widgetslib/dialog/InputDialog$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    .line 357
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog$5;->this$0:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    .line 360
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog$5;->this$0:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/InputDialog;->dismissOprate(Landroid/content/DialogInterface;)V

    return-void
.end method
