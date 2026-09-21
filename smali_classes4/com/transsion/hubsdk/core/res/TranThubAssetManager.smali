.class public Lcom/transsion/hubsdk/core/res/TranThubAssetManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/res/ITranAssetManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubAssetManager"


# instance fields
.field private mService:Lcom/transsion/hubsdk/content/res/ITranAssetManager;


# direct methods
.method public static synthetic $r8$lambda$hGfVJuSKuKSMSYeMskWzXaBCT-0(Lcom/transsion/hubsdk/core/res/TranThubAssetManager;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/res/TranThubAssetManager;->lambda$addAssetPath$0(Ljava/lang/String;)Ljava/lang/Object;

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
    const-string v0, "asset_manager"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/transsion/hubsdk/content/res/ITranAssetManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/content/res/ITranAssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/res/TranThubAssetManager;->mService:Lcom/transsion/hubsdk/content/res/ITranAssetManager;

    return-void
.end method

.method private synthetic lambda$addAssetPath$0(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 35
    iget-object p0, p0, Lcom/transsion/hubsdk/core/res/TranThubAssetManager;->mService:Lcom/transsion/hubsdk/content/res/ITranAssetManager;

    if-eqz p0, :cond_d

    .line 36
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/content/res/ITranAssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    .line 38
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addAssetPath(Ljava/lang/String;)I
    .registers 4

    .line 34
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/res/TranThubAssetManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/res/TranThubAssetManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/core/res/TranThubAssetManager;Ljava/lang/String;)V

    const-string p0, "asset_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 40
    sget-object p1, Lcom/transsion/hubsdk/core/res/TranThubAssetManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addAssetPath result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method protected setService(Lcom/transsion/hubsdk/content/res/ITranAssetManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/transsion/hubsdk/core/res/TranThubAssetManager;->mService:Lcom/transsion/hubsdk/content/res/ITranAssetManager;

    return-void
.end method
