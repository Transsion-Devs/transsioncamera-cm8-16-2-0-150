.class public Lcom/transsion/hubsdk/core/os/TranThubNvramManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/os/ITranNvramServiceAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubNvramManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mService:Lcom/transsion/hubsdk/os/ITranNvramService;


# direct methods
.method public static synthetic $r8$lambda$8PN5Ov3LEmzJrMpq2LeCIy3JKJw(Lcom/transsion/hubsdk/core/os/TranThubNvramManager;Ljava/lang/String;ILjava/util/List;)Ljava/lang/Object;
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/hubsdk/core/os/TranThubNvramManager;->lambda$writeFileByNamevec$1(Ljava/lang/String;ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JN7mFJpRGTy3GnUkvveU1VgAD9A(Lcom/transsion/hubsdk/core/os/TranThubNvramManager;Ljava/lang/String;I)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/os/TranThubNvramManager;->lambda$readFileByName$0(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YVfRJzQNT1xxKPEE3Y_9HIA2nzg(Lcom/transsion/hubsdk/core/os/TranThubNvramManager;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/os/TranThubNvramManager;->lambda$deleteFile$2(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sB2y8Y-_mmYmPtMHFEcGt7OSiuo(Lcom/transsion/hubsdk/core/os/TranThubNvramManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/os/TranThubNvramManager;->lambda$backupToBinRegion_All$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/os/TranThubNvramManager;->mContext:Landroid/content/Context;

    .line 29
    const-string v0, "nvram"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/transsion/hubsdk/os/ITranNvramService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/os/ITranNvramService;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/os/TranThubNvramManager;->mService:Lcom/transsion/hubsdk/os/ITranNvramService;

    return-void
.end method

.method private synthetic lambda$backupToBinRegion_All$3()Ljava/lang/Object;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/TranThubNvramManager;->mService:Lcom/transsion/hubsdk/os/ITranNvramService;

    if-eqz p0, :cond_d

    .line 73
    invoke-interface {p0}, Lcom/transsion/hubsdk/os/ITranNvramService;->BackupToBinRegion_All()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    .line 75
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$deleteFile$2(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 60
    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/TranThubNvramManager;->mService:Lcom/transsion/hubsdk/os/ITranNvramService;

    if-eqz p0, :cond_d

    .line 61
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/os/ITranNvramService;->DeleteFile(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    .line 63
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$readFileByName$0(Ljava/lang/String;I)Ljava/lang/Object;
    .registers 3

    .line 36
    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/TranThubNvramManager;->mService:Lcom/transsion/hubsdk/os/ITranNvramService;

    if-eqz p0, :cond_9

    .line 37
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/os/ITranNvramService;->readFileByName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    .line 39
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$writeFileByNamevec$1(Ljava/lang/String;ILjava/util/List;)Ljava/lang/Object;
    .registers 4

    .line 48
    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/TranThubNvramManager;->mService:Lcom/transsion/hubsdk/os/ITranNvramService;

    if-eqz p0, :cond_d

    .line 49
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/os/ITranNvramService;->writeFileByNamevec(Ljava/lang/String;ILjava/util/List;)B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    .line 51
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public backupToBinRegion_All()Z
    .registers 4

    .line 71
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    iget-object v1, p0, Lcom/transsion/hubsdk/core/os/TranThubNvramManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/transsion/hubsdk/core/os/TranThubNvramManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/os/TranThubNvramManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/core/os/TranThubNvramManager;)V

    const-string p0, "nvram"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 77
    sget-object v0, Lcom/transsion/hubsdk/core/os/TranThubNvramManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backupToBinRegion_All result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .registers 4

    .line 59
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    iget-object v1, p0, Lcom/transsion/hubsdk/core/os/TranThubNvramManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/transsion/hubsdk/core/os/TranThubNvramManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/os/TranThubNvramManager$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/hubsdk/core/os/TranThubNvramManager;Ljava/lang/String;)V

    const-string p0, "nvram"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 65
    sget-object p1, Lcom/transsion/hubsdk/core/os/TranThubNvramManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteFileByName result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public readFileByName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .line 35
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    iget-object v1, p0, Lcom/transsion/hubsdk/core/os/TranThubNvramManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/transsion/hubsdk/core/os/TranThubNvramManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/hubsdk/core/os/TranThubNvramManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/hubsdk/core/os/TranThubNvramManager;Ljava/lang/String;I)V

    const-string p0, "nvram"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 41
    sget-object p1, Lcom/transsion/hubsdk/core/os/TranThubNvramManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "readFileByName result:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public writeFileByNamevec(Ljava/lang/String;ILjava/util/List;)B
    .registers 6

    .line 47
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    iget-object v1, p0, Lcom/transsion/hubsdk/core/os/TranThubNvramManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/transsion/hubsdk/core/os/TranThubNvramManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/transsion/hubsdk/core/os/TranThubNvramManager$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/hubsdk/core/os/TranThubNvramManager;Ljava/lang/String;ILjava/util/List;)V

    const-string p0, "nvram"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    .line 53
    sget-object p1, Lcom/transsion/hubsdk/core/os/TranThubNvramManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "writeFileByNamevec mByteData:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method
