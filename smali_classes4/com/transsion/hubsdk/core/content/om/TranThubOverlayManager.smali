.class public Lcom/transsion/hubsdk/core/content/om/TranThubOverlayManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/content/om/ITranOverlayManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubOverlayManager"


# instance fields
.field private mService:Lcom/transsion/hubsdk/content/om/ITranOverlayManager;


# direct methods
.method public static synthetic $r8$lambda$pTuTUyKS5S-fwH7xirg5TPChTPo(Lcom/transsion/hubsdk/core/content/om/TranThubOverlayManager;Ljava/lang/String;I)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/content/om/TranThubOverlayManager;->lambda$setEnabledExclusiveInCategory$0(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "overlay"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/transsion/hubsdk/content/om/ITranOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/content/om/ITranOverlayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/content/om/TranThubOverlayManager;->mService:Lcom/transsion/hubsdk/content/om/ITranOverlayManager;

    return-void
.end method

.method private synthetic lambda$setEnabledExclusiveInCategory$0(Ljava/lang/String;I)Ljava/lang/Object;
    .registers 3

    .line 31
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/om/TranThubOverlayManager;->mService:Lcom/transsion/hubsdk/content/om/ITranOverlayManager;

    if-eqz p0, :cond_7

    .line 32
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/content/om/ITranOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public setEnabledExclusiveInCategory(Ljava/lang/String;I)V
    .registers 5

    .line 30
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/content/om/TranThubOverlayManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/hubsdk/core/content/om/TranThubOverlayManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/core/content/om/TranThubOverlayManager;Ljava/lang/String;I)V

    const-string p0, "overlay"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    sget-object p0, Lcom/transsion/hubsdk/core/content/om/TranThubOverlayManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setEnabledExclusiveInCategory packageName:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected setService(Lcom/transsion/hubsdk/content/om/ITranOverlayManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/transsion/hubsdk/core/content/om/TranThubOverlayManager;->mService:Lcom/transsion/hubsdk/content/om/ITranOverlayManager;

    return-void
.end method
