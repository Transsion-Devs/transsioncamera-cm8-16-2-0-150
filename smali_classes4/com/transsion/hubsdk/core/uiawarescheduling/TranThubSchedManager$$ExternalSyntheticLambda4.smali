.class public final synthetic Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;ILjava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager$$ExternalSyntheticLambda4;->f$0:Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;

    iput p2, p0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager$$ExternalSyntheticLambda4;->f$1:I

    iput-object p3, p0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager$$ExternalSyntheticLambda4;->f$0:Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;

    iget v1, p0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager$$ExternalSyntheticLambda4;->f$1:I

    iget-object p0, p0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->$r8$lambda$Zb919uPqm2Hdf0bh_33gbFynUqY(Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
