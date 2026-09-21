.class public final synthetic Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;

.field public final synthetic f$1:Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;

    iput-object p2, p0, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager$$ExternalSyntheticLambda2;->f$1:Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;

    iget-object p0, p0, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager$$ExternalSyntheticLambda2;->f$1:Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;->$r8$lambda$_zh3GjTEM6jWofwzOnqScAJbtFA(Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
