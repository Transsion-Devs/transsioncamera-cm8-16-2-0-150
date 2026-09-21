.class public abstract Lbytekn/foundation/concurrent/scheduler/SchedulersKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ioSchedulerFactory:Lbytekn/foundation/concurrent/lock/AtomicReference;

.field private static final mainSchedulerFactory:Lbytekn/foundation/concurrent/lock/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 26
    new-instance v0, Lbytekn/foundation/concurrent/lock/AtomicReference;

    sget-object v1, Lbytekn/foundation/concurrent/scheduler/SchedulersKt$mainSchedulerFactory$1;->INSTANCE:Lbytekn/foundation/concurrent/scheduler/SchedulersKt$mainSchedulerFactory$1;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    invoke-direct {v0, v1}, Lbytekn/foundation/concurrent/lock/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lbytekn/foundation/concurrent/scheduler/SchedulersKt;->mainSchedulerFactory:Lbytekn/foundation/concurrent/lock/AtomicReference;

    .line 30
    new-instance v0, Lbytekn/foundation/concurrent/lock/AtomicReference;

    sget-object v1, Lbytekn/foundation/concurrent/scheduler/SchedulersKt$ioSchedulerFactory$1;->INSTANCE:Lbytekn/foundation/concurrent/scheduler/SchedulersKt$ioSchedulerFactory$1;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    invoke-direct {v0, v1}, Lbytekn/foundation/concurrent/lock/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lbytekn/foundation/concurrent/scheduler/SchedulersKt;->ioSchedulerFactory:Lbytekn/foundation/concurrent/lock/AtomicReference;

    return-void
.end method

.method public static final getIoScheduler()Lbytekn/foundation/concurrent/scheduler/Scheduler;
    .registers 1

    .line 21
    sget-object v0, Lbytekn/foundation/concurrent/scheduler/SchedulersKt;->ioSchedulerFactory:Lbytekn/foundation/concurrent/lock/AtomicReference;

    invoke-static {v0}, Lbytekn/foundation/concurrent/lock/AtomicReferenceKt;->getValue(Lbytekn/foundation/concurrent/lock/AtomicReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbytekn/foundation/concurrent/scheduler/Scheduler;

    return-object v0
.end method

.method public static final getMainScheduler()Lbytekn/foundation/concurrent/scheduler/Scheduler;
    .registers 1

    .line 16
    sget-object v0, Lbytekn/foundation/concurrent/scheduler/SchedulersKt;->mainSchedulerFactory:Lbytekn/foundation/concurrent/lock/AtomicReference;

    invoke-static {v0}, Lbytekn/foundation/concurrent/lock/AtomicReferenceKt;->getValue(Lbytekn/foundation/concurrent/lock/AtomicReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbytekn/foundation/concurrent/scheduler/Scheduler;

    return-object v0
.end method
