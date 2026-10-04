.class public final synthetic Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;Ljava/lang/String;ILjava/lang/String;I)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager$$ExternalSyntheticLambda5;->f$0:Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;

    iput-object p2, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager$$ExternalSyntheticLambda5;->f$2:I

    iput-object p4, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager$$ExternalSyntheticLambda5;->f$3:Ljava/lang/String;

    iput p5, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager$$ExternalSyntheticLambda5;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager$$ExternalSyntheticLambda5;->f$0:Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;

    iget-object v1, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager$$ExternalSyntheticLambda5;->f$2:I

    iget-object v3, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager$$ExternalSyntheticLambda5;->f$3:Ljava/lang/String;

    iget p0, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager$$ExternalSyntheticLambda5;->f$4:I

    invoke-static {v0, v1, v2, v3, p0}, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;->$r8$lambda$c6snIcsQLuPfZi1fTXtkCEpCHIE(Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
