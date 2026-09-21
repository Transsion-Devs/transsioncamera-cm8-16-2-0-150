.class public Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;


# instance fields
.field private mService:Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;


# direct methods
.method public static synthetic $r8$lambda$3wBU3amuo7tzO9mzKUcyXZwf6jg(Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;)Ljava/lang/Object;
    .registers 2

    .line 63
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;->mService:Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;

    if-eqz p0, :cond_7

    .line 64
    invoke-static {p1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper;->unregCallback(Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic $r8$lambda$B2h8R_U0EhuKQGYnfxiof_Fwu9c(Landroid/os/Bundle;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    .line 153
    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper;->getEventBundleAsync(Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;Landroid/os/Bundle;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$By9V1JDfpfYeJzlKRCRXvaWHwBs(ILjava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;->lambda$getEventStatic$5(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DqlY0GlFcQWwr6dly0O8bMPKoyg(ILjava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;->lambda$getEvent$6(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EtajoIri5Csny1gMyuWrO8UAKCg(ILcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;IIII)Ljava/lang/Object;
    .registers 6

    .line 33
    invoke-static/range {p0 .. p5}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper;->regCallback(ILcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;IIII)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic $r8$lambda$G10EXdeFUxp7Coghcy-wH71F41g(ILjava/lang/String;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    .line 129
    invoke-static {v0, p0, p1, p2}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper;->getEventAsync(Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;ILjava/lang/String;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$GC-9xf17b4_5AwjsSfVZQIAGZOA(Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;ILcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;IIII)Ljava/lang/Object;
    .registers 7

    .line 44
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;->mService:Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;

    if-eqz p0, :cond_7

    .line 45
    invoke-static/range {p1 .. p6}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper;->regCallback(ILcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;IIII)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MKB5bRBz6rCPc1UqB02gclIE2ys(ILjava/lang/String;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    .line 137
    invoke-static {v0, p0, p1, p2}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper;->getEventAsync(Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;ILjava/lang/String;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$N8KDxm1tFYAFRBry8ofkN359jrc(Landroid/os/Bundle;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    .line 145
    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper;->getEventBundleAsync(Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;Landroid/os/Bundle;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$UZdGaUFGHHwOZAaf5xdaaSzCa8U(Landroid/os/Bundle;[Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;->lambda$getEventBundleStatic$9(Landroid/os/Bundle;[Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UppY56vM3LWm5ABiFHMcTjPnF1w(Landroid/os/Bundle;[Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;->lambda$setEventBundleStatic$11(Landroid/os/Bundle;[Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ewRRAui_fmDmgT2qPQ59s4vydrQ(Landroid/os/Bundle;[Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;->lambda$setEventBundle$12(Landroid/os/Bundle;[Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oEOYdaDejAmPil-dtKhZAZaPopQ(ILjava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;->lambda$setEventStatic$7(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$quECkydvLyt7onswGPDG70MU_cg(Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;)Ljava/lang/Object;
    .registers 1

    .line 55
    invoke-static {p0}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper;->unregCallback(Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rp39s15RCPbnB9aToybDLwXNrco(Landroid/os/Bundle;[Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;->lambda$getEventBundle$10(Landroid/os/Bundle;[Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$v-RYj863mc7_kwKRXwlq2o5R88Y(Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;->lambda$new$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yIBJi2fB_KdqZ-97BspsOs9X0fE(ILjava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;->lambda$setEvent$8(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;)V

    const-string p0, "resmonitor"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method private static synthetic lambda$getEvent$6(ILjava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 79
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/resmonitor/TranResMonitorManager;->getEventStatic(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getEventBundle$10(Landroid/os/Bundle;[Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 2

    .line 107
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/resmonitor/TranResMonitorManager;->getEventBundleStatic(Landroid/os/Bundle;[Landroid/os/Bundle;)[Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getEventBundleStatic$9(Landroid/os/Bundle;[Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 2

    .line 101
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/resmonitor/TranResMonitorManager;->getEventBundleStatic(Landroid/os/Bundle;[Landroid/os/Bundle;)[Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getEventStatic$5(ILjava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 73
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/resmonitor/TranResMonitorManager;->getEventStatic(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0()Ljava/lang/Object;
    .registers 2

    .line 22
    const-string v0, "resmonitor"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;->mService:Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$setEvent$8(ILjava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 93
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/resmonitor/TranResMonitorManager;->setEventStatic(ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$setEventBundle$12(Landroid/os/Bundle;[Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 2

    .line 121
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/resmonitor/TranResMonitorManager;->setEventBundleStatic(Landroid/os/Bundle;[Landroid/os/Bundle;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$setEventBundleStatic$11(Landroid/os/Bundle;[Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 2

    .line 113
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/resmonitor/TranResMonitorManager;->setEventBundleStatic(Landroid/os/Bundle;[Landroid/os/Bundle;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$setEventStatic$7(ILjava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 85
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/resmonitor/TranResMonitorManager;->setEventStatic(ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getEvent(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 78
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1, p2}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda9;-><init>(ILjava/lang/String;)V

    const-string p1, "resmonitor"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getEventAsync(ILjava/lang/String;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V
    .registers 5

    .line 136
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda15;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda15;-><init>(ILjava/lang/String;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V

    const-string p1, "resmonitor"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public getEventAsyncStatic(ILjava/lang/String;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V
    .registers 5

    .line 128
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda8;-><init>(ILjava/lang/String;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V

    const-string p1, "resmonitor"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public getEventBundle(Landroid/os/Bundle;[Landroid/os/Bundle;)[Landroid/os/Bundle;
    .registers 4

    .line 106
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda13;

    invoke-direct {v0, p1, p2}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda13;-><init>(Landroid/os/Bundle;[Landroid/os/Bundle;)V

    const-string p1, "resmonitor"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/Bundle;

    return-object p0
.end method

.method public getEventBundleAsync(Landroid/os/Bundle;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V
    .registers 4

    .line 152
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda1;-><init>(Landroid/os/Bundle;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V

    const-string p1, "resmonitor"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public getEventBundleAsyncStatic(Landroid/os/Bundle;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V
    .registers 4

    .line 144
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1, p2}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda14;-><init>(Landroid/os/Bundle;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V

    const-string p1, "resmonitor"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public getEventBundleStatic(Landroid/os/Bundle;[Landroid/os/Bundle;)[Landroid/os/Bundle;
    .registers 4

    .line 100
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda5;-><init>(Landroid/os/Bundle;[Landroid/os/Bundle;)V

    const-string p1, "resmonitor"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/Bundle;

    return-object p0
.end method

.method public getEventStatic(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 72
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1, p2}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda10;-><init>(ILjava/lang/String;)V

    const-string p1, "resmonitor"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public regCallback(ILcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;IIII)V
    .registers 16

    .line 43
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda16;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda16;-><init>(Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;ILcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;IIII)V

    const-string p0, "resmonitor"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public regCallbackStatic(ILcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;IIII)V
    .registers 14

    .line 32
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda7;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda7;-><init>(ILcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;IIII)V

    const-string p1, "resmonitor"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setEvent(ILjava/lang/String;)V
    .registers 4

    .line 92
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1, p2}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda11;-><init>(ILjava/lang/String;)V

    const-string p1, "resmonitor"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setEventBundle(Landroid/os/Bundle;[Landroid/os/Bundle;)V
    .registers 4

    .line 120
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda3;-><init>(Landroid/os/Bundle;[Landroid/os/Bundle;)V

    const-string p1, "resmonitor"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setEventBundleStatic(Landroid/os/Bundle;[Landroid/os/Bundle;)V
    .registers 4

    .line 112
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1, p2}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda12;-><init>(Landroid/os/Bundle;[Landroid/os/Bundle;)V

    const-string p1, "resmonitor"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setEventStatic(ILjava/lang/String;)V
    .registers 4

    .line 84
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;)V

    const-string p1, "resmonitor"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method protected setService(Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 165
    iput-object p1, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;->mService:Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;

    return-void
.end method

.method public unregCallback(Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;)V
    .registers 4

    .line 62
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;)V

    const-string p0, "resmonitor"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public unregCallbackStatic(Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;)V
    .registers 3

    .line 54
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;)V

    const-string p1, "resmonitor"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
