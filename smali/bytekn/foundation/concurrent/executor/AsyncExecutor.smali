.class public final Lbytekn/foundation/concurrent/executor/AsyncExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbytekn/foundation/concurrent/executor/ExecutorService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbytekn/foundation/concurrent/executor/AsyncExecutor$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lbytekn/foundation/concurrent/executor/AsyncExecutor$Companion;


# instance fields
.field private final ioExecutor:Lbytekn/foundation/concurrent/scheduler/Scheduler$Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lbytekn/foundation/concurrent/executor/AsyncExecutor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbytekn/foundation/concurrent/executor/AsyncExecutor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbytekn/foundation/concurrent/executor/AsyncExecutor;->Companion:Lbytekn/foundation/concurrent/executor/AsyncExecutor$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lbytekn/foundation/concurrent/scheduler/SchedulersKt;->getIoScheduler()Lbytekn/foundation/concurrent/scheduler/Scheduler;

    move-result-object v0

    invoke-interface {v0}, Lbytekn/foundation/concurrent/scheduler/Scheduler;->newExecutor()Lbytekn/foundation/concurrent/scheduler/Scheduler$Executor;

    move-result-object v0

    iput-object v0, p0, Lbytekn/foundation/concurrent/executor/AsyncExecutor;->ioExecutor:Lbytekn/foundation/concurrent/scheduler/Scheduler$Executor;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 9

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lbytekn/foundation/concurrent/executor/AsyncExecutor;->ioExecutor:Lbytekn/foundation/concurrent/scheduler/Scheduler$Executor;

    new-instance v4, Lbytekn/foundation/concurrent/executor/AsyncExecutor$execute$1;

    invoke-direct {v4, p1}, Lbytekn/foundation/concurrent/executor/AsyncExecutor$execute$1;-><init>(Ljava/lang/Runnable;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    invoke-static/range {v1 .. v6}, Lbytekn/foundation/concurrent/scheduler/Scheduler$Executor$DefaultImpls;->submit$default(Lbytekn/foundation/concurrent/scheduler/Scheduler$Executor;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method
