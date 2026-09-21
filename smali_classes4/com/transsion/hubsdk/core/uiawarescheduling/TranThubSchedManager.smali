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
.method public static synthetic $r8$lambda$Hy-n2Zuyfz4rYz0LTJJn_QbU2Zo(Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->lambda$getTranSchedState$2()Ljava/lang/Object;

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

.method public static synthetic $r8$lambda$a6svaqXsoLTjZyz95bQ57EprWI0(Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;I)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->lambda$getTranSchedUxTags$5(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qv--uJiatWXWFUqPEn6P2aTWX2Y(Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->lambda$getTranSchedScene$4()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yRPrT9eeLu9UWmqQk7NihWilpKU(Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;I)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->lambda$setTranSchedScene$3(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "TranSchedService"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->mService:Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManager;

    return-void
.end method

.method private synthetic lambda$cancelTranSchedUxTags$1(I)Ljava/lang/Object;
    .registers 2

    .line 53
    iget-object p0, p0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->mService:Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManager;

    if-eqz p0, :cond_d

    .line 54
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManager;->cancelTranSchedUxTags(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 56
    :cond_d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$getTranSchedScene$4()Ljava/lang/Object;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->mService:Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManager;

    if-eqz p0, :cond_d

    .line 90
    invoke-interface {p0}, Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManager;->getTranSchedScene()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    .line 92
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getTranSchedState$2()Ljava/lang/Object;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->mService:Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManager;

    if-eqz p0, :cond_d

    .line 66
    invoke-interface {p0}, Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManager;->getTranSchedState()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    .line 68
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getTranSchedUxTags$5(I)Ljava/lang/Object;
    .registers 2

    .line 101
    iget-object p0, p0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->mService:Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManager;

    if-eqz p0, :cond_d

    .line 102
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManager;->getTranSchedUxTags(I)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_d
    const-wide/16 p0, 0x0

    .line 104
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setTranSchedScene$3(I)Ljava/lang/Object;
    .registers 2

    .line 77
    iget-object p0, p0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->mService:Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManager;

    if-eqz p0, :cond_d

    .line 78
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManager;->setTranSchedScene(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 80
    :cond_d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$setTranSchedUxTagsByName$0(ILjava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 41
    iget-object p0, p0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->mService:Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManager;

    if-eqz p0, :cond_d

    .line 42
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManager;->setTranSchedUxTagsByName(ILjava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 44
    :cond_d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public cancelTranSchedUxTags(I)Z
    .registers 4

    .line 52
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;I)V

    const-string p0, "TranSchedService"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 58
    sget-object p1, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->TAG:Ljava/lang/String;

    const-string v0, "cancelTranSchedUxTags"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getTranSchedScene()I
    .registers 3

    .line 88
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

    .line 94
    sget-object v0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->TAG:Ljava/lang/String;

    const-string v1, "getTranSchedScene"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getTranSchedState()I
    .registers 3

    .line 64
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

    .line 70
    sget-object v0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->TAG:Ljava/lang/String;

    const-string v1, "cancelTranSchedUxTags"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getTranSchedUxTags(I)J
    .registers 4

    .line 100
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

    .line 106
    sget-object v0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->TAG:Ljava/lang/String;

    const-string v1, "getTranSchedUxTags"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p0
.end method

.method public setTranSchedScene(I)Z
    .registers 4

    .line 76
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

    .line 82
    sget-object p1, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->TAG:Ljava/lang/String;

    const-string v0, "setTranSchedScene"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public setTranSchedUxTagsByName(ILjava/lang/String;)Z
    .registers 5

    .line 40
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

    .line 46
    sget-object p1, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->TAG:Ljava/lang/String;

    const-string p2, "setTranSchedUxTagsByName"

    invoke-static {p1, p2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method
