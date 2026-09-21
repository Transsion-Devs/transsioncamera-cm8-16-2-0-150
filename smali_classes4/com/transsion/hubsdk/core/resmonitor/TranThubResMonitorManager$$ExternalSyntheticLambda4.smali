.class public final synthetic Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda4;->f$0:Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda4;->f$0:Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;

    invoke-static {p0}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;->$r8$lambda$quECkydvLyt7onswGPDG70MU_cg(Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
