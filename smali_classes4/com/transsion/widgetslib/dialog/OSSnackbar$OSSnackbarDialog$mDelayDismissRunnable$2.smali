.class final Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$mDelayDismissRunnable$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;-><init>(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$mDelayDismissRunnable$2;->this$0:Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$DelayDismissRunnable;
    .registers 2

    .line 88
    new-instance v0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$DelayDismissRunnable;

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$mDelayDismissRunnable$2;->this$0:Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$DelayDismissRunnable;-><init>(Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 87
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$mDelayDismissRunnable$2;->invoke()Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$DelayDismissRunnable;

    move-result-object p0

    return-object p0
.end method
