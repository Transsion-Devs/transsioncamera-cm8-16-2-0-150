.class public final Lbytekn/foundation/utils/Transmitter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lbytekn/foundation/utils/Transmitter;

.field private static final mainExecutor:Lbytekn/foundation/concurrent/scheduler/Scheduler$Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    new-instance v0, Lbytekn/foundation/utils/Transmitter;

    invoke-direct {v0}, Lbytekn/foundation/utils/Transmitter;-><init>()V

    sput-object v0, Lbytekn/foundation/utils/Transmitter;->INSTANCE:Lbytekn/foundation/utils/Transmitter;

    .line 13
    invoke-static {}, Lbytekn/foundation/concurrent/scheduler/SchedulersKt;->getMainScheduler()Lbytekn/foundation/concurrent/scheduler/Scheduler;

    move-result-object v0

    invoke-interface {v0}, Lbytekn/foundation/concurrent/scheduler/Scheduler;->newExecutor()Lbytekn/foundation/concurrent/scheduler/Scheduler$Executor;

    move-result-object v0

    sput-object v0, Lbytekn/foundation/utils/Transmitter;->mainExecutor:Lbytekn/foundation/concurrent/scheduler/Scheduler$Executor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final transmitToMainThread(Ljava/lang/Runnable;)V
    .registers 8

    const-string p0, "runnable"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lbytekn/foundation/utils/Transmitter;->mainExecutor:Lbytekn/foundation/concurrent/scheduler/Scheduler$Executor;

    new-instance v3, Lbytekn/foundation/utils/Transmitter$transmitToMainThread$1;

    invoke-direct {v3, p1}, Lbytekn/foundation/utils/Transmitter$transmitToMainThread$1;-><init>(Ljava/lang/Runnable;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    invoke-static/range {v0 .. v5}, Lbytekn/foundation/concurrent/scheduler/Scheduler$Executor$DefaultImpls;->submit$default(Lbytekn/foundation/concurrent/scheduler/Scheduler$Executor;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method
