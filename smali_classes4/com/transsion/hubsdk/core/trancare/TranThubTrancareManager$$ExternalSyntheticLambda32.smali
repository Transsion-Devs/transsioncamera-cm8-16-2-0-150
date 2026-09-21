.class public final synthetic Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;

.field public final synthetic f$1:Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda32;->f$0:Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;

    iput-object p2, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda32;->f$1:Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda32;->f$0:Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;

    iget-object p0, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda32;->f$1:Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->$r8$lambda$xTDvZo7EqhB3pe0Jha_vpmZPuak(Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
