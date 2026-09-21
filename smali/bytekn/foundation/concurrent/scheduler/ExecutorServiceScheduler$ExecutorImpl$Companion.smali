.class final Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler$ExecutorImpl$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler$ExecutorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 47
    invoke-direct {p0}, Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler$ExecutorImpl$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$wrapSchedulerTaskSafe(Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler$ExecutorImpl$Companion;Lkotlin/jvm/functions/Function0;)Ljava/lang/Runnable;
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler$ExecutorImpl$Companion;->wrapSchedulerTaskSafe(Lkotlin/jvm/functions/Function0;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method private final wrapSchedulerTaskSafe(Lkotlin/jvm/functions/Function0;)Ljava/lang/Runnable;
    .registers 2

    .line 49
    new-instance p0, Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler$ExecutorImpl$Companion$wrapSchedulerTaskSafe$1;

    invoke-direct {p0, p1}, Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler$ExecutorImpl$Companion$wrapSchedulerTaskSafe$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    return-object p0
.end method
