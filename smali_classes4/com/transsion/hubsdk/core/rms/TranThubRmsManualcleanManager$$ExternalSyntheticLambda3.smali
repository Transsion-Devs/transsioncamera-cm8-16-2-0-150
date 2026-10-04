.class public final synthetic Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;ILjava/lang/String;ILjava/util/List;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;

    iput p2, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager$$ExternalSyntheticLambda3;->f$1:I

    iput-object p3, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager$$ExternalSyntheticLambda3;->f$3:I

    iput-object p5, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager$$ExternalSyntheticLambda3;->f$4:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;

    iget v1, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager$$ExternalSyntheticLambda3;->f$1:I

    iget-object v2, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager$$ExternalSyntheticLambda3;->f$3:I

    iget-object p0, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager$$ExternalSyntheticLambda3;->f$4:Ljava/util/List;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;->$r8$lambda$zjhp-3JJcUP6kmUsVQlbWORoRes(Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;ILjava/lang/String;ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
