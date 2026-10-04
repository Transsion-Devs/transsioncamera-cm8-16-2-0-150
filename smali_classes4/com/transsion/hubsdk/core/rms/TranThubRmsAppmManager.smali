.class public Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/rms/ITranRmsAppmManagerAdapter;


# instance fields
.field private mService:Lcom/transsion/hubsdk/appm/ITranAppmManager;


# direct methods
.method public static synthetic $r8$lambda$83Qa-NK1WZoe9VEixi7OVY4ipTY(Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;->lambda$getTargetFps$5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Bs5XUL6vGo2sOs4uMqW7Xjg_ke8(Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;I)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;->lambda$getTranGameList$2(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DJxcPwvic5i5GTbyJMqT_28kdLI(Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;->lambda$getTranAppmSystemInfo$3(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Kk-RGcu3HJFbQ_oVAkoS5w599z0(Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;->lambda$getMEMCList$6(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TbXxvDaSWNUDVjYJJd21CW5AiQI(Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;->lambda$sendEvent$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XpkRz5JgfaoB-gAkpiu4Gn7iNDM(Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;->lambda$new$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$byJd8UFIQ408HBvJ2nV7tpDnkU8(Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;->lambda$getETControl$4(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gBhxwtJg1Oxn0Vnfz2SYkDpaqp8(Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;->lambda$setGameParam$7(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 4

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    :try_start_3
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;)V

    const-string v2, "rms_appm_service"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_12} :catch_13

    return-void

    :catch_13
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;->mService:Lcom/transsion/hubsdk/appm/ITranAppmManager;

    return-void
.end method

.method private synthetic lambda$getETControl$4(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 71
    iget-object p0, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;->mService:Lcom/transsion/hubsdk/appm/ITranAppmManager;

    if-eqz p0, :cond_d

    .line 72
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/appm/ITranAppmManager;->getETControl(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 74
    :cond_d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$getMEMCList$6(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 93
    iget-object p0, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;->mService:Lcom/transsion/hubsdk/appm/ITranAppmManager;

    if-eqz p0, :cond_9

    .line 94
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/appm/ITranAppmManager;->getMEMCList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 96
    :cond_9
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method private synthetic lambda$getTargetFps$5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 82
    iget-object p0, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;->mService:Lcom/transsion/hubsdk/appm/ITranAppmManager;

    if-eqz p0, :cond_d

    .line 83
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/appm/ITranAppmManager;->getTargetFps(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    .line 85
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getTranAppmSystemInfo$3(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 60
    iget-object p0, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;->mService:Lcom/transsion/hubsdk/appm/ITranAppmManager;

    if-eqz p0, :cond_9

    .line 61
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/appm/ITranAppmManager;->getTranAppmSystemInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getTranGameList$2(I)Ljava/lang/Object;
    .registers 2

    .line 49
    iget-object p0, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;->mService:Lcom/transsion/hubsdk/appm/ITranAppmManager;

    if-eqz p0, :cond_9

    .line 50
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/appm/ITranAppmManager;->getTranGameList(I)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 52
    :cond_9
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method private synthetic lambda$new$0()Ljava/lang/Object;
    .registers 2

    .line 26
    const-string v0, "rms_appm_service"

    invoke-static {v0}, Lcom/transsion/hubsdk/tranrms/transs/TranRmsSystemManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/transsion/hubsdk/appm/ITranAppmManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/appm/ITranAppmManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;->mService:Lcom/transsion/hubsdk/appm/ITranAppmManager;

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$sendEvent$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 39
    iget-object p0, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;->mService:Lcom/transsion/hubsdk/appm/ITranAppmManager;

    if-eqz p0, :cond_7

    .line 40
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/appm/ITranAppmManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setGameParam$7(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 104
    iget-object p0, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;->mService:Lcom/transsion/hubsdk/appm/ITranAppmManager;

    if-eqz p0, :cond_d

    .line 105
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/appm/ITranAppmManager;->setGameParam(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 107
    :cond_d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public getETControl(Ljava/lang/String;)Z
    .registers 4

    .line 70
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;Ljava/lang/String;)V

    const-string p0, "rms_appm_service"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_19

    .line 76
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public getMEMCList(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;Ljava/lang/String;)V

    const-string p0, "rms_appm_service"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_15

    return-object p0

    .line 98
    :cond_15
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public getTargetFps(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 81
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "rms_appm_service"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_19

    .line 87
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public getTranAppmSystemInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 59
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;Ljava/lang/String;)V

    const-string p0, "rms_appm_service"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_15

    return-object p0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTranGameList(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;I)V

    const-string p0, "rms_appm_service"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_15

    return-object p0

    .line 54
    :cond_15
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 38
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "rms_appm_service"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setGameParam(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 103
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "rms_appm_service"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_19

    .line 109
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method protected setService(Lcom/transsion/hubsdk/appm/ITranAppmManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 118
    iput-object p1, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;->mService:Lcom/transsion/hubsdk/appm/ITranAppmManager;

    return-void
.end method
