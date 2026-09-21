.class public final synthetic Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;

.field public final synthetic f$1:Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;

    iput-object p2, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$$ExternalSyntheticLambda2;->f$1:Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;

    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$$ExternalSyntheticLambda2;->f$1:Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->$r8$lambda$0TtXSmRFl_TPUwir21GYY93hnoE(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
