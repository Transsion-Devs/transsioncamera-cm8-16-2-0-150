.class public final synthetic Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/core/os/TranThubUserManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/os/TranThubUserManager;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda6;->f$0:Lcom/transsion/hubsdk/core/os/TranThubUserManager;

    iput p2, p0, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda6;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda6;->f$0:Lcom/transsion/hubsdk/core/os/TranThubUserManager;

    iget p0, p0, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda6;->f$1:I

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->$r8$lambda$Bm9rmse08pv0Km-n5C3sf08r76E(Lcom/transsion/hubsdk/core/os/TranThubUserManager;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
