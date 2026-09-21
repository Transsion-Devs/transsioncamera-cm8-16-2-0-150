.class public final synthetic Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Lcom/transsion/hubsdk/aosp/os/TranAospRemoteCallbackExt$ITranRemoteCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager;Ljava/lang/String;Ljava/lang/String;IILcom/transsion/hubsdk/aosp/os/TranAospRemoteCallbackExt$ITranRemoteCallback;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager;

    iput-object p2, p0, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager$$ExternalSyntheticLambda1;->f$3:I

    iput p5, p0, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager$$ExternalSyntheticLambda1;->f$4:I

    iput-object p6, p0, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager$$ExternalSyntheticLambda1;->f$5:Lcom/transsion/hubsdk/aosp/os/TranAospRemoteCallbackExt$ITranRemoteCallback;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 7

    .line 0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager;

    iget-object v1, p0, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager$$ExternalSyntheticLambda1;->f$3:I

    iget v4, p0, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager$$ExternalSyntheticLambda1;->f$4:I

    iget-object v5, p0, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager$$ExternalSyntheticLambda1;->f$5:Lcom/transsion/hubsdk/aosp/os/TranAospRemoteCallbackExt$ITranRemoteCallback;

    invoke-static/range {v0 .. v5}, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager;->$r8$lambda$8l6pvBHSubH65gXO4BC4EXKoMPQ(Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager;Ljava/lang/String;Ljava/lang/String;IILcom/transsion/hubsdk/aosp/os/TranAospRemoteCallbackExt$ITranRemoteCallback;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
