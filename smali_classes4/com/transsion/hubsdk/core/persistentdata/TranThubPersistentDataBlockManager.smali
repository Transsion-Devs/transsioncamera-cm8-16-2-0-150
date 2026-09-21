.class public Lcom/transsion/hubsdk/core/persistentdata/TranThubPersistentDataBlockManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/persistentdata/ITranPersistentDataBlockManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubPersistentDataBlockManager"


# instance fields
.field private mService:Lcom/transsion/hubsdk/persistentdata/ITranPersistentDataBlockManager;


# direct methods
.method public static synthetic $r8$lambda$WZoZat-pv2MHADEI7l-ldSyIuBk(Lcom/transsion/hubsdk/core/persistentdata/TranThubPersistentDataBlockManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/persistentdata/TranThubPersistentDataBlockManager;->lambda$getDataBlockSize$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "persistent_data_block_service"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/transsion/hubsdk/persistentdata/ITranPersistentDataBlockManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/persistentdata/ITranPersistentDataBlockManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/persistentdata/TranThubPersistentDataBlockManager;->mService:Lcom/transsion/hubsdk/persistentdata/ITranPersistentDataBlockManager;

    return-void
.end method

.method private synthetic lambda$getDataBlockSize$0()Ljava/lang/Object;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/transsion/hubsdk/core/persistentdata/TranThubPersistentDataBlockManager;->mService:Lcom/transsion/hubsdk/persistentdata/ITranPersistentDataBlockManager;

    if-eqz p0, :cond_d

    .line 24
    invoke-interface {p0}, Lcom/transsion/hubsdk/persistentdata/ITranPersistentDataBlockManager;->getDataBlockSize()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, -0x1

    .line 26
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDataBlockSize()I
    .registers 3

    .line 22
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/persistentdata/TranThubPersistentDataBlockManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/persistentdata/TranThubPersistentDataBlockManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/core/persistentdata/TranThubPersistentDataBlockManager;)V

    const-string p0, "persistent_data_block_service"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
