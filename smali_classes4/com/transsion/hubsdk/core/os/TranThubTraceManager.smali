.class public Lcom/transsion/hubsdk/core/os/TranThubTraceManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/os/ITranTraceManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubTraceManager"


# instance fields
.field private mService:Lcom/transsion/hubsdk/os/ITranTrace;

.field private mTranAsyncTrace:Lcom/transsion/hubsdk/os/TranAsyncTrace;


# direct methods
.method public static synthetic $r8$lambda$Bsfici2U5QD4qoT8C2usrWOenck(Lcom/transsion/hubsdk/core/os/TranThubTraceManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/os/TranThubTraceManager;->lambda$new$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$W42Gt9L5zZCRtk4SCJ8BY5xQNb4(Lcom/transsion/hubsdk/core/os/TranThubTraceManager;JLjava/lang/String;I)Ljava/lang/Object;
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/core/os/TranThubTraceManager;->lambda$asyncTraceBegin$3(JLjava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$b1eUVh1_K5zifcw-1pK_hmNCfYU(Lcom/transsion/hubsdk/core/os/TranThubTraceManager;JLjava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/hubsdk/core/os/TranThubTraceManager;->lambda$traceBegin$1(JLjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oxSsV4cMldywx7q2wCA9uQhGhsw(Lcom/transsion/hubsdk/core/os/TranThubTraceManager;JLjava/lang/String;I)Ljava/lang/Object;
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/core/os/TranThubTraceManager;->lambda$asyncTraceEnd$4(JLjava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vvDGonlOhxy7wCW5c_4eDz6Bkig(Lcom/transsion/hubsdk/core/os/TranThubTraceManager;J)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/os/TranThubTraceManager;->lambda$traceEnd$2(J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/os/TranThubTraceManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/os/TranThubTraceManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/hubsdk/core/os/TranThubTraceManager;)V

    const-string p0, "trace"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->exceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$ExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$asyncTraceBegin$3(JLjava/lang/String;I)Ljava/lang/Object;
    .registers 5

    .line 74
    invoke-virtual {p0}, Lcom/transsion/hubsdk/core/os/TranThubTraceManager;->getTranAsyncTrace()Lcom/transsion/hubsdk/os/TranAsyncTrace;

    invoke-static {p1, p2, p3, p4}, Lcom/transsion/hubsdk/os/TranAsyncTrace;->asyncTraceBegin(JLjava/lang/String;I)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$asyncTraceEnd$4(JLjava/lang/String;I)Ljava/lang/Object;
    .registers 5

    .line 82
    invoke-virtual {p0}, Lcom/transsion/hubsdk/core/os/TranThubTraceManager;->getTranAsyncTrace()Lcom/transsion/hubsdk/os/TranAsyncTrace;

    invoke-static {p1, p2, p3, p4}, Lcom/transsion/hubsdk/os/TranAsyncTrace;->asyncTraceEnd(JLjava/lang/String;I)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$new$0()Ljava/lang/Object;
    .registers 2

    .line 33
    const-string v0, "trace"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/transsion/hubsdk/os/ITranTrace$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/os/ITranTrace;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/os/TranThubTraceManager;->mService:Lcom/transsion/hubsdk/os/ITranTrace;

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$traceBegin$1(JLjava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 51
    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/TranThubTraceManager;->mService:Lcom/transsion/hubsdk/os/ITranTrace;

    if-eqz p0, :cond_e

    .line 52
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/os/ITranTrace;->traceBegin(JLjava/lang/String;)V

    .line 53
    sget-object p0, Lcom/transsion/hubsdk/core/os/TranThubTraceManager;->TAG:Ljava/lang/String;

    const-string p1, "traceBegin"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$traceEnd$2(J)Ljava/lang/Object;
    .registers 3

    .line 62
    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/TranThubTraceManager;->mService:Lcom/transsion/hubsdk/os/ITranTrace;

    if-eqz p0, :cond_e

    .line 63
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/os/ITranTrace;->traceEnd(J)V

    .line 64
    sget-object p0, Lcom/transsion/hubsdk/core/os/TranThubTraceManager;->TAG:Ljava/lang/String;

    const-string p1, "traceEnd"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public asyncTraceBegin(JLjava/lang/String;I)V
    .registers 12
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    .line 73
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/os/TranThubTraceManager$$ExternalSyntheticLambda2;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/transsion/hubsdk/core/os/TranThubTraceManager$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/hubsdk/core/os/TranThubTraceManager;JLjava/lang/String;I)V

    const-string p0, "trace"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->exceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$ExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public asyncTraceEnd(JLjava/lang/String;I)V
    .registers 12
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    .line 81
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/os/TranThubTraceManager$$ExternalSyntheticLambda0;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/transsion/hubsdk/core/os/TranThubTraceManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/core/os/TranThubTraceManager;JLjava/lang/String;I)V

    const-string p0, "trace"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->exceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$ExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public getTranAsyncTrace()Lcom/transsion/hubsdk/os/TranAsyncTrace;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/transsion/hubsdk/core/os/TranThubTraceManager;->mTranAsyncTrace:Lcom/transsion/hubsdk/os/TranAsyncTrace;

    if-nez v0, :cond_b

    .line 42
    new-instance v0, Lcom/transsion/hubsdk/os/TranAsyncTrace;

    invoke-direct {v0}, Lcom/transsion/hubsdk/os/TranAsyncTrace;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/os/TranThubTraceManager;->mTranAsyncTrace:Lcom/transsion/hubsdk/os/TranAsyncTrace;

    .line 44
    :cond_b
    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/TranThubTraceManager;->mTranAsyncTrace:Lcom/transsion/hubsdk/os/TranAsyncTrace;

    return-object p0
.end method

.method public traceBegin(JLjava/lang/String;)V
    .registers 6

    .line 50
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/os/TranThubTraceManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/transsion/hubsdk/core/os/TranThubTraceManager$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/hubsdk/core/os/TranThubTraceManager;JLjava/lang/String;)V

    const-string p0, "trace"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->exceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$ExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public traceEnd(J)V
    .registers 5

    .line 61
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/os/TranThubTraceManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/hubsdk/core/os/TranThubTraceManager$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/hubsdk/core/os/TranThubTraceManager;J)V

    const-string p0, "trace"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->exceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$ExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
