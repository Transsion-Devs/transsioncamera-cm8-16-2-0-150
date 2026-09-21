.class public final synthetic Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;

.field public final synthetic f$1:Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;

    iput-object p2, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda2;->f$1:Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;

    iget-object p0, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda2;->f$1:Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;->$r8$lambda$3wBU3amuo7tzO9mzKUcyXZwf6jg(Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
