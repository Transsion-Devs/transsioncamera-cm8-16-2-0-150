.class public Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/rms/ITranRmsManualcleanManagerAdapter;


# instance fields
.field private mService:Lcom/transsion/hubsdk/tranrms/manualcean/ITranRmsManualclean;


# direct methods
.method public static synthetic $r8$lambda$6XmfCKdXLfcILkzMdcIpVsoLK4I(Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;->lambda$setCleanProtect$2(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$C98tXcuONyRJiqRgZhMVQo9gl50(Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;->lambda$isManualcleanEnabled$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$c6snIcsQLuPfZi1fTXtkCEpCHIE(Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/Object;
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;->lambda$swipeUpClean$6(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$j8b5bL8OWIoKEC3rPSeFgrRpkAw(Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;->lambda$getCleanProtectList$4()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pG3BcBCIQXjLUesxm-9h9YnqVA0(Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;Ljava/util/List;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;->lambda$updateCleanProtectList$3(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pbFwwjLOp8H7I6xO2DmUo9AvOKU(Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;->lambda$new$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zjhp-3JJcUP6kmUsVQlbWORoRes(Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;ILjava/lang/String;ILjava/util/List;)Ljava/lang/Object;
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;->lambda$doClean$5(ILjava/lang/String;ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 4

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    :try_start_3
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;)V

    const-string v2, "tran_rms_manualclean"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_12} :catch_13

    return-void

    :catch_13
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;->mService:Lcom/transsion/hubsdk/tranrms/manualcean/ITranRmsManualclean;

    return-void
.end method

.method private synthetic lambda$doClean$5(ILjava/lang/String;ILjava/util/List;)Ljava/lang/Object;
    .registers 5

    .line 76
    iget-object p0, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;->mService:Lcom/transsion/hubsdk/tranrms/manualcean/ITranRmsManualclean;

    if-eqz p0, :cond_7

    .line 77
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/tranrms/manualcean/ITranRmsManualclean;->doClean(ILjava/lang/String;ILjava/util/List;)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getCleanProtectList$4()Ljava/lang/Object;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;->mService:Lcom/transsion/hubsdk/tranrms/manualcean/ITranRmsManualclean;

    if-eqz p0, :cond_9

    .line 67
    invoke-interface {p0}, Lcom/transsion/hubsdk/tranrms/manualcean/ITranRmsManualclean;->getCleanProtectList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 69
    :cond_9
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method private synthetic lambda$isManualcleanEnabled$1()Ljava/lang/Object;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;->mService:Lcom/transsion/hubsdk/tranrms/manualcean/ITranRmsManualclean;

    if-eqz p0, :cond_d

    .line 38
    invoke-interface {p0}, Lcom/transsion/hubsdk/tranrms/manualcean/ITranRmsManualclean;->isManualcleanEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 40
    :cond_d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$new$0()Ljava/lang/Object;
    .registers 2

    .line 25
    const-string v0, "tran_rms_manualclean"

    invoke-static {v0}, Lcom/transsion/hubsdk/tranrms/transs/TranRmsSystemManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/transsion/hubsdk/tranrms/manualcean/ITranRmsManualclean$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/tranrms/manualcean/ITranRmsManualclean;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;->mService:Lcom/transsion/hubsdk/tranrms/manualcean/ITranRmsManualclean;

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setCleanProtect$2(Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 3

    .line 47
    iget-object p0, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;->mService:Lcom/transsion/hubsdk/tranrms/manualcean/ITranRmsManualclean;

    if-eqz p0, :cond_d

    .line 48
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/tranrms/manualcean/ITranRmsManualclean;->setCleanProtect(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 50
    :cond_d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$swipeUpClean$6(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/Object;
    .registers 5

    .line 86
    iget-object p0, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;->mService:Lcom/transsion/hubsdk/tranrms/manualcean/ITranRmsManualclean;

    if-eqz p0, :cond_d

    .line 87
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/tranrms/manualcean/ITranRmsManualclean;->swipeUpClean(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 89
    :cond_d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$updateCleanProtectList$3(Ljava/util/List;)Ljava/lang/Object;
    .registers 2

    .line 57
    iget-object p0, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;->mService:Lcom/transsion/hubsdk/tranrms/manualcean/ITranRmsManualclean;

    if-eqz p0, :cond_7

    .line 58
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/tranrms/manualcean/ITranRmsManualclean;->updateCleanProtectList(Ljava/util/List;)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public doClean(ILjava/lang/String;ILjava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 75
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager$$ExternalSyntheticLambda3;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;ILjava/lang/String;ILjava/util/List;)V

    const-string p0, "tran_rms_manualclean"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "doClean level: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", callerPkg: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", callerPid: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", protectList: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TranThubRmsManualcleanManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getCleanProtectList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;)V

    const-string p0, "tran_rms_manualclean"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_15

    return-object p0

    .line 71
    :cond_15
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public isManualcleanEnabled()Z
    .registers 3

    .line 36
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;)V

    const-string p0, "tran_rms_manualclean"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_19

    .line 42
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public setCleanProtect(Ljava/lang/String;Z)Z
    .registers 5

    .line 46
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;Ljava/lang/String;Z)V

    const-string p0, "tran_rms_manualclean"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_19

    .line 52
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method protected setService(Lcom/transsion/hubsdk/tranrms/manualcean/ITranRmsManualclean;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;->mService:Lcom/transsion/hubsdk/tranrms/manualcean/ITranRmsManualclean;

    return-void
.end method

.method public swipeUpClean(Ljava/lang/String;ILjava/lang/String;I)Z
    .registers 12

    .line 85
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager$$ExternalSyntheticLambda5;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;Ljava/lang/String;ILjava/lang/String;I)V

    const-string p0, "tran_rms_manualclean"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_1e

    .line 91
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public updateCleanProtectList(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/hubsdk/core/rms/TranThubRmsManualcleanManager;Ljava/util/List;)V

    const-string p0, "tran_rms_manualclean"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
