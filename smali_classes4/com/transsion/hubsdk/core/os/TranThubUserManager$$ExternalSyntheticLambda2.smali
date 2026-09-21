.class public final synthetic Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/core/os/TranThubUserManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/os/TranThubUserManager;Ljava/lang/String;ZLandroid/os/UserHandle;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/hubsdk/core/os/TranThubUserManager;

    iput-object p2, p0, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda2;->f$2:Z

    iput-object p4, p0, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda2;->f$3:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/hubsdk/core/os/TranThubUserManager;

    iget-object v1, p0, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda2;->f$2:Z

    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/TranThubUserManager$$ExternalSyntheticLambda2;->f$3:Landroid/os/UserHandle;

    invoke-static {v0, v1, v2, p0}, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->$r8$lambda$wAIcG6rddl6HROsXSSoQ11u8NDA(Lcom/transsion/hubsdk/core/os/TranThubUserManager;Ljava/lang/String;ZLandroid/os/UserHandle;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
