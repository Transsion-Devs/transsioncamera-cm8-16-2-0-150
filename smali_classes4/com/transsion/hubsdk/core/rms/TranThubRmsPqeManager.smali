.class public Lcom/transsion/hubsdk/core/rms/TranThubRmsPqeManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/rms/ITranRmsPqeManagerAdapter;


# instance fields
.field private mService:Lcom/transsion/hubsdk/view/ITranPqeManager;


# direct methods
.method public static synthetic $r8$lambda$LWAfapwtT6mmoU7rLVN8NdBBKnw(Lcom/transsion/hubsdk/core/rms/TranThubRmsPqeManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/rms/TranThubRmsPqeManager;->lambda$new$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UG1DX5UgJ8sW_LWWR1irzVj3YpQ(Lcom/transsion/hubsdk/core/rms/TranThubRmsPqeManager;I)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/rms/TranThubRmsPqeManager;->lambda$getTranPictureList$1(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vH2MVM7o9dBpHwxE_Vf-ln8EP_M(Lcom/transsion/hubsdk/core/rms/TranThubRmsPqeManager;ILjava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/rms/TranThubRmsPqeManager;->lambda$setTranPictureMode$3(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zjd9W41cBA4hqRLNPHsmt849djs(Lcom/transsion/hubsdk/core/rms/TranThubRmsPqeManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/rms/TranThubRmsPqeManager;->lambda$getTranPictureSupportMode$2()Ljava/lang/Object;

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

    new-instance v1, Lcom/transsion/hubsdk/core/rms/TranThubRmsPqeManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/rms/TranThubRmsPqeManager$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/hubsdk/core/rms/TranThubRmsPqeManager;)V

    const-string v2, "rms_pqe_service"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_12} :catch_13

    return-void

    :catch_13
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsPqeManager;->mService:Lcom/transsion/hubsdk/view/ITranPqeManager;

    return-void
.end method

.method private synthetic lambda$getTranPictureList$1(I)Ljava/lang/Object;
    .registers 2

    .line 39
    iget-object p0, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsPqeManager;->mService:Lcom/transsion/hubsdk/view/ITranPqeManager;

    if-eqz p0, :cond_9

    .line 40
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/view/ITranPqeManager;->getTranPictureList(I)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 42
    :cond_9
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method private synthetic lambda$getTranPictureSupportMode$2()Ljava/lang/Object;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsPqeManager;->mService:Lcom/transsion/hubsdk/view/ITranPqeManager;

    if-eqz p0, :cond_9

    .line 51
    invoke-interface {p0}, Lcom/transsion/hubsdk/view/ITranPqeManager;->getTranPictureSupportMode()[I

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$new$0()Ljava/lang/Object;
    .registers 2

    .line 26
    const-string v0, "rms_pqe_service"

    invoke-static {v0}, Lcom/transsion/hubsdk/tranrms/transs/TranRmsSystemManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/transsion/hubsdk/view/ITranPqeManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/view/ITranPqeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsPqeManager;->mService:Lcom/transsion/hubsdk/view/ITranPqeManager;

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setTranPictureMode$3(ILjava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 61
    iget-object p0, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsPqeManager;->mService:Lcom/transsion/hubsdk/view/ITranPqeManager;

    if-eqz p0, :cond_7

    .line 62
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/view/ITranPqeManager;->setTranPictureMode(ILjava/lang/String;)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getTranPictureList(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/rms/TranThubRmsPqeManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/rms/TranThubRmsPqeManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/core/rms/TranThubRmsPqeManager;I)V

    const-string p0, "rms_pqe_service"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_15

    return-object p0

    .line 44
    :cond_15
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public getTranPictureSupportMode()[I
    .registers 3

    .line 49
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/rms/TranThubRmsPqeManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/rms/TranThubRmsPqeManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/hubsdk/core/rms/TranThubRmsPqeManager;)V

    const-string p0, "rms_pqe_service"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method protected setService(Lcom/transsion/hubsdk/view/ITranPqeManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsPqeManager;->mService:Lcom/transsion/hubsdk/view/ITranPqeManager;

    return-void
.end method

.method public setTranPictureMode(ILjava/lang/String;)V
    .registers 5

    .line 60
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/rms/TranThubRmsPqeManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/hubsdk/core/rms/TranThubRmsPqeManager$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/hubsdk/core/rms/TranThubRmsPqeManager;ILjava/lang/String;)V

    const-string p0, "rms_pqe_service"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
