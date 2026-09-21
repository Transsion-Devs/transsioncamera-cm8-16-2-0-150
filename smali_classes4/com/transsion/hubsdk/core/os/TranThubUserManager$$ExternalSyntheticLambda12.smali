.class public final synthetic Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/core/os/TranThubUserManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/os/TranThubUserManager;IZ)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda12;->f$0:Lcom/transsion/hubsdk/core/os/TranThubUserManager;

    iput p2, p0, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda12;->f$1:I

    iput-boolean p3, p0, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda12;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda12;->f$0:Lcom/transsion/hubsdk/core/os/TranThubUserManager;

    iget v1, p0, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda12;->f$1:I

    iget-boolean p0, p0, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda12;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->$r8$lambda$k1q0UlB8lpemQrn38n3jVNjVpwY(Lcom/transsion/hubsdk/core/os/TranThubUserManager;IZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
