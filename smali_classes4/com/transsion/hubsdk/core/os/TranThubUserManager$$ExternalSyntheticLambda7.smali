.class public final synthetic Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/core/os/TranThubUserManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/os/TranThubUserManager;Ljava/lang/String;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda7;->f$0:Lcom/transsion/hubsdk/core/os/TranThubUserManager;

    iput-object p2, p0, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda7;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda7;->f$0:Lcom/transsion/hubsdk/core/os/TranThubUserManager;

    iget-object v1, p0, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    iget p0, p0, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda7;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->$r8$lambda$bJXERxuOhxyrgzqZ5IT1MMaLvs0(Lcom/transsion/hubsdk/core/os/TranThubUserManager;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
