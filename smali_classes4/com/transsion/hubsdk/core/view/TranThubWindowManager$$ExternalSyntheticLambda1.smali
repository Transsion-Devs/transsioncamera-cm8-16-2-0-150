.class public final synthetic Lcom/transsion/hubsdk/core/view/TranThubWindowManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/core/view/TranThubWindowManager;

.field public final synthetic f$1:Landroid/view/WindowManager$LayoutParams;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/view/TranThubWindowManager;Landroid/view/WindowManager$LayoutParams;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/hubsdk/core/view/TranThubWindowManager;

    iput-object p2, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager$$ExternalSyntheticLambda1;->f$1:Landroid/view/WindowManager$LayoutParams;

    iput p3, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/hubsdk/core/view/TranThubWindowManager;

    iget-object v1, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager$$ExternalSyntheticLambda1;->f$1:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->$r8$lambda$uybZyQAbmoLLt0koU6oyXHAh4-s(Lcom/transsion/hubsdk/core/view/TranThubWindowManager;Landroid/view/WindowManager$LayoutParams;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
