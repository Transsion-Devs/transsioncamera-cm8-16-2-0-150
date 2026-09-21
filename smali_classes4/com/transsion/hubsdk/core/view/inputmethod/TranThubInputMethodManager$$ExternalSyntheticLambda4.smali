.class public final synthetic Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager$$ExternalSyntheticLambda4;->f$0:Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;

    iput-boolean p2, p0, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager$$ExternalSyntheticLambda4;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager$$ExternalSyntheticLambda4;->f$0:Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;

    iget-boolean p0, p0, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager$$ExternalSyntheticLambda4;->f$1:Z

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->$r8$lambda$9hCurwDXbHc-V9X0uxyUGI7jMGc(Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
