.class public Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/uiawarescheduling/ITranSchedManagerAdapter;


# static fields
.field public static final SS_ANIMATION:I = 0x4

.field public static final SS_CANCEL_MASK:I = -0x80000000

.field public static final SS_LAUNCHER:I = 0x2

.field public static final SS_UNLOCK:I = 0x8

.field private static final TAG:Ljava/lang/String; = "TranThubSchedManager"

.field public static sSFling:I = 0x20

.field public static sSTouch:I = 0x10


# instance fields
.field private mService:Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManager;


# direct methods
.method public static synthetic $r8$lambda$C06mMntFHHCV6cdrdLuuNRt63Y0(Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->lambda$getTranSchedScene$5()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PD9GhK2vyeUY0eJrEWTW464VCYM(Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;I)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->lambda$cancelTranSchedUxTags$1(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Zb919uPqm2Hdf0bh_33gbFynUqY(Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;ILjava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->lambda$setTranSchedUxTagsByName$0(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZsjQWH51Xr-pwwVQjqn9iW2SQDc(Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;I)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->lambda$getTranSchedUxTags$6(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_DL19KgsBV7KSAXyRyh0npAwcjo(Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;ILjava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->lambda$cancelTransSchedUxTagsByName$2(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dd251w8R951ZUa0RRxTpQhxkOu8(Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;I)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->lambda$setTranSchedScene$4(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nyT7xrEeoFhBvtFhJ4oTzn8YKU8(Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->lambda$getTranSchedState$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "TranSchedService"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 38
    invoke-static {v0}, Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->mService:Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManager;

    return-void
.end method

.method private synthetic lambda$cancelTranSchedUxTags$1(I)Ljava/lang/Object;
    .registers 2

    .line 56
    iget-object p0, p0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->mService:Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManager;

    if-eqz p0, :cond_d

    .line 57
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManager;->cancelTranSchedUxTags(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 59
    :cond_d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$cancelTransSchedUxTagsByName$2(ILjava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 68
    iget-object p0, p0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->mService:Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManager;

    if-eqz p0, :cond_d

    .line 69
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManager;->cancelTransSchedUxTagsByName(ILjava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 71
    :cond_d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$getTranSchedScene$5()Ljava/lang/Object;
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->mService:Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManager;

    if-eqz p0, :cond_d

    .line 105
    invoke-interface {p0}, Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManager;->getTranSchedScene()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    .line 107
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getTranSchedState$3()Ljava/lang/Object;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->mService:Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManager;

    if-eqz p0, :cond_d

    .line 81
    invoke-interface {p0}, Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManager;->getTranSchedState()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    .line 83
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getTranSchedUxTags$6(I)Ljava/lang/Object;
    .registers 2

    .line 116
    iget-object p0, p0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->mService:Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManager;

    if-eqz p0, :cond_d

    .line 117
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManager;->getTranSchedUxTags(I)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_d
    const-wide/16 p0, 0x0

    .line 119
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setTranSchedScene$4(I)Ljava/lang/Object;
    .registers 2

    .line 92
    iget-object p0, p0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->mService:Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManager;

    if-eqz p0, :cond_d

    .line 93
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManager;->setTranSchedScene(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 95
    :cond_d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$setTranSchedUxTagsByName$0(ILjava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 44
    iget-object p0, p0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->mService:Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManager;

    if-eqz p0, :cond_d

    .line 45
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManager;->setTranSchedUxTagsByName(ILjava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 47
    :cond_d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public cancelTranSchedUxTags(I)Z
    .registers 4

    .line 55
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;I)V

    const-string p0, "TranSchedService"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 61
    sget-object p1, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->TAG:Ljava/lang/String;

    const-string v0, "cancelTranSchedUxTags"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public cancelTranSchedUxTagsAsync(ILcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager$ITranSchedManagerCallback;)V
    .registers 5

    .line 147
    iget-object v0, p0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->mService:Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManager;

    if-eqz v0, :cond_26

    .line 148
    new-instance v0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager$2;

    invoke-direct {v0, p0, p2}, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager$2;-><init>(Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager$ITranSchedManagerCallback;)V

    .line 157
    :try_start_9
    iget-object p0, p0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->mService:Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManager;

    invoke-interface {p0, p1, v0}, Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManager;->cancelTranSchedUxTagsAsync(ILcom/transsion/hubsdk/uiawarescheduling/ITranSchedManagerAsyncCallback;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f

    goto :goto_26

    :catch_f
    move-exception p0

    .line 159
    sget-object p2, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelTranSchedUxTagsAsync RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_26
    :goto_26
    sget-object p0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cancelTranSchedUxTagsAsync pid="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public cancelTransSchedUxTagsByName(ILjava/lang/String;)Z
    .registers 6

    .line 67
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;ILjava/lang/String;)V

    const-string p0, "TranSchedService"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 73
    sget-object v0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelTransSchedUxTagsByName pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mainThread="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public cancelTransSchedUxTagsByNameAsync(ILjava/lang/String;Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager$ITranSchedManagerCallback;)V
    .registers 6

    .line 167
    iget-object v0, p0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->mService:Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManager;

    if-eqz v0, :cond_26

    .line 168
    new-instance v0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager$3;

    invoke-direct {v0, p0, p3}, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager$3;-><init>(Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager$ITranSchedManagerCallback;)V

    .line 177
    :try_start_9
    iget-object p0, p0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->mService:Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManager;

    invoke-interface {p0, p1, p2, v0}, Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManager;->cancelTransSchedUxTagsByNameAsync(ILjava/lang/String;Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManagerAsyncCallback;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f

    goto :goto_26

    :catch_f
    move-exception p0

    .line 179
    sget-object p3, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelTransSchedUxTagsByNameAsync RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_26
    :goto_26
    sget-object p0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cancelTransSchedUxTagsByNameAsync pid="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mainThread="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getTranSchedScene()I
    .registers 3

    .line 103
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;)V

    const-string p0, "TranSchedService"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 109
    sget-object v0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->TAG:Ljava/lang/String;

    const-string v1, "getTranSchedScene"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getTranSchedState()I
    .registers 3

    .line 79
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;)V

    const-string p0, "TranSchedService"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 85
    sget-object v0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->TAG:Ljava/lang/String;

    const-string v1, "cancelTranSchedUxTags"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getTranSchedUxTags(I)J
    .registers 4

    .line 115
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;I)V

    const-string p0, "TranSchedService"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    .line 121
    sget-object v0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->TAG:Ljava/lang/String;

    const-string v1, "getTranSchedUxTags"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p0
.end method

.method public setTranSchedScene(I)Z
    .registers 4

    .line 91
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;I)V

    const-string p0, "TranSchedService"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 97
    sget-object p1, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->TAG:Ljava/lang/String;

    const-string v0, "setTranSchedScene"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public setTranSchedUxTagsByName(ILjava/lang/String;)Z
    .registers 5

    .line 43
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;ILjava/lang/String;)V

    const-string p0, "TranSchedService"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 49
    sget-object p1, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->TAG:Ljava/lang/String;

    const-string p2, "setTranSchedUxTagsByName"

    invoke-static {p1, p2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public setTranSchedUxTagsByNameAsync(ILjava/lang/String;Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager$ITranSchedManagerCallback;)V
    .registers 6

    .line 127
    iget-object v0, p0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->mService:Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManager;

    if-eqz v0, :cond_26

    .line 128
    new-instance v0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager$1;

    invoke-direct {v0, p0, p3}, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager$1;-><init>(Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager$ITranSchedManagerCallback;)V

    .line 137
    :try_start_9
    iget-object p0, p0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->mService:Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManager;

    invoke-interface {p0, p1, p2, v0}, Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManager;->setTranSchedUxTagsByNameAsync(ILjava/lang/String;Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManagerAsyncCallback;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f

    goto :goto_26

    :catch_f
    move-exception p0

    .line 139
    sget-object p3, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTranSchedUxTagsByNameAsync RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_26
    :goto_26
    sget-object p0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setTranSchedUxTagsByNameAsync pid="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mainThread="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
