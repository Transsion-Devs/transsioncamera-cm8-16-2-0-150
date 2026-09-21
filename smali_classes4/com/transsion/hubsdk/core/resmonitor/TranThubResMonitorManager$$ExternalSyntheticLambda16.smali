.class public final synthetic Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;ILcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;IIII)V
    .registers 8

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda16;->f$0:Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;

    iput p2, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda16;->f$1:I

    iput-object p3, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda16;->f$2:Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;

    iput p4, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda16;->f$3:I

    iput p5, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda16;->f$4:I

    iput p6, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda16;->f$5:I

    iput p7, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda16;->f$6:I

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 8

    .line 0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda16;->f$0:Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;

    iget v1, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda16;->f$1:I

    iget-object v2, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda16;->f$2:Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;

    iget v3, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda16;->f$3:I

    iget v4, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda16;->f$4:I

    iget v5, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda16;->f$5:I

    iget v6, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda16;->f$6:I

    invoke-static/range {v0 .. v6}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;->$r8$lambda$GC-9xf17b4_5AwjsSfVZQIAGZOA(Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;ILcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;IIII)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
