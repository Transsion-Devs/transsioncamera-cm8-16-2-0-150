.class public Lcom/transsion/hubsdk/core/internal/os/TranThubBackgroundThread;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/internal/os/ITranBackgroundThreadAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubBackgroundThread"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$UTxs3rlc1WgW0GgE-yd5GMTSyO8()Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-static {}, Lcom/transsion/hubsdk/core/internal/os/TranThubBackgroundThread;->lambda$getHandler$0()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/internal/os/TranThubBackgroundThread;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static synthetic lambda$getHandler$0()Ljava/lang/Object;
    .registers 1

    .line 31
    invoke-static {}, Lcom/transsion/hubsdk/internal/os/TranBackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .registers 4

    .line 30
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    iget-object p0, p0, Lcom/transsion/hubsdk/core/internal/os/TranThubBackgroundThread;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/transsion/hubsdk/core/internal/os/TranThubBackgroundThread$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/internal/os/TranThubBackgroundThread$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    .line 33
    sget-object v0, Lcom/transsion/hubsdk/core/internal/os/TranThubBackgroundThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHandler mHandler:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method
