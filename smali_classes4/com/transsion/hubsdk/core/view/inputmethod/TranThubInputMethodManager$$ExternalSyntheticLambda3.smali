.class public final synthetic Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;

.field public final synthetic f$1:Landroid/view/KeyEvent;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;Landroid/view/KeyEvent;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;

    iput-object p2, p0, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager$$ExternalSyntheticLambda3;->f$1:Landroid/view/KeyEvent;

    iput-object p3, p0, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;

    iget-object v1, p0, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager$$ExternalSyntheticLambda3;->f$1:Landroid/view/KeyEvent;

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->$r8$lambda$DwxBNDHb-ZyVlBG39CWnPD1kE1w(Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;Landroid/view/KeyEvent;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
