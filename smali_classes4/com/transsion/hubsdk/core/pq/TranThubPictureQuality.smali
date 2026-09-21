.class public Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/pq/ITranPictureQualityAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubPictureQuality"


# instance fields
.field private mService:Lcom/transsion/hubsdk/pq/ITranPictureQuality;

.field private mTranContext:Lcom/transsion/hubsdk/TranContext;


# direct methods
.method public static synthetic $r8$lambda$SWmj-XqB6Ct0GKBUQnyEy2rm_Ts(Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality;I)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality;->lambda$setAALFunction$2(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VgFE3J7ChyriIRq7hjNVZL5uHaQ(Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality;->lambda$getAALFunction$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_1oZ0RuSlPfKALpl_S48Q_XVatM(Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality;Z)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality;->lambda$enableC3D$3(Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_w3wQ1leKI6-BQ025lWym35jdoA(Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality;I)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality;->lambda$setSmartBacklightStrength$0(I)Ljava/lang/Object;

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
    const-string v0, "picture_quality"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 38
    invoke-static {v0}, Lcom/transsion/hubsdk/pq/ITranPictureQuality$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/pq/ITranPictureQuality;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality;->mService:Lcom/transsion/hubsdk/pq/ITranPictureQuality;

    return-void
.end method

.method private synthetic lambda$enableC3D$3(Z)Ljava/lang/Object;
    .registers 2

    .line 120
    iget-object p0, p0, Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality;->mService:Lcom/transsion/hubsdk/pq/ITranPictureQuality;

    if-eqz p0, :cond_7

    .line 121
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/pq/ITranPictureQuality;->enableC3D(Z)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getAALFunction$1()Ljava/lang/Object;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality;->mService:Lcom/transsion/hubsdk/pq/ITranPictureQuality;

    if-eqz p0, :cond_d

    .line 100
    invoke-interface {p0}, Lcom/transsion/hubsdk/pq/ITranPictureQuality;->getAALFunction()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, -0x1

    .line 102
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setAALFunction$2(I)Ljava/lang/Object;
    .registers 2

    .line 110
    iget-object p0, p0, Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality;->mService:Lcom/transsion/hubsdk/pq/ITranPictureQuality;

    if-eqz p0, :cond_7

    .line 111
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/pq/ITranPictureQuality;->setAALFunction(I)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setSmartBacklightStrength$0(I)Ljava/lang/Object;
    .registers 2

    .line 89
    iget-object p0, p0, Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality;->mService:Lcom/transsion/hubsdk/pq/ITranPictureQuality;

    if-eqz p0, :cond_7

    .line 90
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/pq/ITranPictureQuality;->setSmartBacklightStrength(I)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public enableC3D(Z)V
    .registers 4

    .line 119
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality;Z)V

    const-string p0, "picture_quality"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public getAALFunction()I
    .registers 3

    .line 98
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality;)V

    const-string p0, "picture_quality"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getGammaIndex()I
    .registers 4

    .line 76
    iget-object p0, p0, Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality;->mService:Lcom/transsion/hubsdk/pq/ITranPictureQuality;

    if-eqz p0, :cond_20

    .line 78
    :try_start_4
    invoke-interface {p0}, Lcom/transsion/hubsdk/pq/ITranPictureQuality;->getGammaIndex()I

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 80
    sget-object v0, Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGammaIndex fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public getPictureMode()I
    .registers 4

    .line 64
    iget-object p0, p0, Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality;->mService:Lcom/transsion/hubsdk/pq/ITranPictureQuality;

    if-eqz p0, :cond_20

    .line 66
    :try_start_4
    invoke-interface {p0}, Lcom/transsion/hubsdk/pq/ITranPictureQuality;->getPictureMode()I

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 68
    sget-object v0, Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPictureMode fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public setAALFunction(I)V
    .registers 4

    .line 109
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality;I)V

    const-string p0, "picture_quality"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setGammaIndex(I)V
    .registers 4

    .line 53
    iget-object p0, p0, Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality;->mService:Lcom/transsion/hubsdk/pq/ITranPictureQuality;

    if-eqz p0, :cond_1f

    .line 55
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/pq/ITranPictureQuality;->setGammaIndex(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 57
    sget-object p1, Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setGammaIndex fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return-void
.end method

.method public setPictureMode(I)V
    .registers 4

    .line 42
    iget-object p0, p0, Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality;->mService:Lcom/transsion/hubsdk/pq/ITranPictureQuality;

    if-eqz p0, :cond_1f

    .line 44
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/pq/ITranPictureQuality;->setPictureMode(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 46
    sget-object p1, Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPictureMode fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return-void
.end method

.method public setSmartBacklightStrength(I)V
    .registers 4

    .line 88
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality;I)V

    const-string p0, "picture_quality"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
