.class public Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/appm/ITranAppmServiceManagerAdapter;


# instance fields
.field private mService:Lcom/transsion/hubsdk/appm/ITranAppmManager;


# direct methods
.method public static synthetic $r8$lambda$G21CPeHHxtVsfcr3fHjDh3LHM4k(Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;->lambda$sendEvent$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LbFpJOP_ko_8bEANWvOkMX1EASo(Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;->lambda$getPolicyVersion$4(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VYmYl2UAIKkBNKwXk3b5U1aLoYE(Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;I)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;->lambda$getRecentFpsAvg$7(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$W5KGnihISatPUXbiGyUr0Pzj3Ec(Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)Ljava/lang/Object;
    .registers 2

    .line 55
    iget-object p0, p0, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;->mService:Lcom/transsion/hubsdk/appm/ITranAppmManager;

    if-eqz p0, :cond_7

    .line 56
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper;->unregisterAppmCallback(Lcom/transsion/hubsdk/appm/ITranAppmManager;Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WERHvmNFueQe4msu7h7zwZaqWNI(Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;->lambda$notifyClient$5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_zh3GjTEM6jWofwzOnqScAJbtFA(Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)Ljava/lang/Object;
    .registers 2

    .line 45
    iget-object p0, p0, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;->mService:Lcom/transsion/hubsdk/appm/ITranAppmManager;

    if-eqz p0, :cond_7

    .line 46
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper;->registerAppmCallback(Lcom/transsion/hubsdk/appm/ITranAppmManager;Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic $r8$lambda$f_bMldJbzDbtGvD_gdu556GT13k(Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;->lambda$new$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wm7zHNfrV12HLVHkwOTExUFfuyQ(Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;IZLjava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;->lambda$setFpsMonitorSwitch$6(IZLjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;)V

    const-string p0, "appm_service"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$getPolicyVersion$4(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 65
    iget-object p0, p0, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;->mService:Lcom/transsion/hubsdk/appm/ITranAppmManager;

    if-eqz p0, :cond_9

    .line 66
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/appm/ITranAppmManager;->getPolicyVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 68
    :cond_9
    const-string p0, "unkown"

    return-object p0
.end method

.method private synthetic lambda$getRecentFpsAvg$7(I)Ljava/lang/Object;
    .registers 2

    .line 96
    iget-object p0, p0, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;->mService:Lcom/transsion/hubsdk/appm/ITranAppmManager;

    if-eqz p0, :cond_d

    .line 97
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/appm/ITranAppmManager;->getRecentFpsAvg(I)F

    move-result p0

    .line 98
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_d
    const/high16 p0, -0x40800000    # -1.0f

    .line 100
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0()Ljava/lang/Object;
    .registers 2

    .line 26
    const-string v0, "appm_service"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/transsion/hubsdk/appm/ITranAppmManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/appm/ITranAppmManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;->mService:Lcom/transsion/hubsdk/appm/ITranAppmManager;

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$notifyClient$5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 75
    iget-object p0, p0, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;->mService:Lcom/transsion/hubsdk/appm/ITranAppmManager;

    if-eqz p0, :cond_7

    .line 76
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/appm/ITranAppmManager;->notifyClient(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$sendEvent$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 35
    iget-object p0, p0, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;->mService:Lcom/transsion/hubsdk/appm/ITranAppmManager;

    if-eqz p0, :cond_7

    .line 36
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/appm/ITranAppmManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setFpsMonitorSwitch$6(IZLjava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 85
    iget-object p0, p0, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;->mService:Lcom/transsion/hubsdk/appm/ITranAppmManager;

    if-eqz p0, :cond_d

    .line 86
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/appm/ITranAppmManager;->setFpsMonitorSwitch(IZLjava/lang/String;)Z

    move-result p0

    .line 87
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 89
    :cond_d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public getPolicyVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 64
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;Ljava/lang/String;)V

    const-string p0, "appm_service"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getRecentFpsAvg(I)F
    .registers 4

    .line 95
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;I)V

    const-string p0, "appm_service"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public notifyClient(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 74
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "appm_service"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public registerAppmCallback(Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)V
    .registers 4

    .line 44
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)V

    const-string p0, "appm_service"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 34
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "appm_service"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setFpsMonitorSwitch(IZLjava/lang/String;)Z
    .registers 6

    .line 84
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;IZLjava/lang/String;)V

    const-string p0, "appm_service"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method protected setService(Lcom/transsion/hubsdk/appm/ITranAppmManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 110
    iput-object p1, p0, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;->mService:Lcom/transsion/hubsdk/appm/ITranAppmManager;

    return-void
.end method

.method public unregisterAppmCallback(Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)V
    .registers 4

    .line 54
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)V

    const-string p0, "appm_service"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
