.class public Lcom/transsion/hubsdk/core/service/dream/TranThubDreamService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/service/dream/ITranDreamServiceAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubDreamService"


# instance fields
.field private mService:Lcom/transsion/hubsdk/dreams/ITranDreamManager;

.field private mTranAospDreamServiceWrapperExt:Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "dream"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/transsion/hubsdk/dreams/ITranDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/dreams/ITranDreamManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/service/dream/TranThubDreamService;->mService:Lcom/transsion/hubsdk/dreams/ITranDreamManager;

    return-void
.end method

.method private getTranAospDreamServiceWrapperExt()Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/transsion/hubsdk/core/service/dream/TranThubDreamService;->mTranAospDreamServiceWrapperExt:Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt;

    if-nez v0, :cond_b

    .line 85
    new-instance v0, Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/service/dream/TranThubDreamService;->mTranAospDreamServiceWrapperExt:Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt;

    .line 87
    :cond_b
    iget-object p0, p0, Lcom/transsion/hubsdk/core/service/dream/TranThubDreamService;->mTranAospDreamServiceWrapperExt:Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt;

    return-object p0
.end method


# virtual methods
.method public finishSelf(Landroid/os/IBinder;Z)V
    .registers 4

    .line 68
    iget-object p0, p0, Lcom/transsion/hubsdk/core/service/dream/TranThubDreamService;->mService:Lcom/transsion/hubsdk/dreams/ITranDreamManager;

    if-eqz p0, :cond_1f

    .line 70
    :try_start_4
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/dreams/ITranDreamManager;->finishSelf(Landroid/os/IBinder;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 72
    sget-object p1, Lcom/transsion/hubsdk/core/service/dream/TranThubDreamService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "finishSelf fail "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return-void
.end method

.method public getTranDreamServiceWrapper(Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranDreamService;)Landroid/os/IBinder;
    .registers 2

    .line 80
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/service/dream/TranThubDreamService;->getTranAospDreamServiceWrapperExt()Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt;->getTranDreamServiceWrapper(Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranDreamService;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method protected setService(Lcom/transsion/hubsdk/dreams/ITranDreamManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/transsion/hubsdk/core/service/dream/TranThubDreamService;->mService:Lcom/transsion/hubsdk/dreams/ITranDreamManager;

    return-void
.end method

.method public startDozing(Landroid/os/IBinder;II)V
    .registers 4

    .line 46
    iget-object p0, p0, Lcom/transsion/hubsdk/core/service/dream/TranThubDreamService;->mService:Lcom/transsion/hubsdk/dreams/ITranDreamManager;

    if-eqz p0, :cond_1f

    .line 48
    :try_start_4
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/dreams/ITranDreamManager;->startDozing(Landroid/os/IBinder;II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 50
    sget-object p1, Lcom/transsion/hubsdk/core/service/dream/TranThubDreamService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "startDozing fail "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return-void
.end method

.method public stopDozing(Landroid/os/IBinder;)V
    .registers 4

    .line 57
    iget-object p0, p0, Lcom/transsion/hubsdk/core/service/dream/TranThubDreamService;->mService:Lcom/transsion/hubsdk/dreams/ITranDreamManager;

    if-eqz p0, :cond_1f

    .line 59
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/dreams/ITranDreamManager;->stopDozing(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 61
    sget-object p1, Lcom/transsion/hubsdk/core/service/dream/TranThubDreamService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopDozing fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return-void
.end method
