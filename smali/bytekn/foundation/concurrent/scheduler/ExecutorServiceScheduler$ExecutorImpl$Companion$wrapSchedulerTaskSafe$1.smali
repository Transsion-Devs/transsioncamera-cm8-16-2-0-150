.class final Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler$ExecutorImpl$Companion$wrapSchedulerTaskSafe$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler$ExecutorImpl$Companion;->wrapSchedulerTaskSafe(Lkotlin/jvm/functions/Function0;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $task:Lkotlin/jvm/functions/Function0;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .registers 2

    iput-object p1, p0, Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler$ExecutorImpl$Companion$wrapSchedulerTaskSafe$1;->$task:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 51
    :try_start_0
    iget-object p0, p0, Lbytekn/foundation/concurrent/scheduler/ExecutorServiceScheduler$ExecutorImpl$Companion$wrapSchedulerTaskSafe$1;->$task:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    return-void

    :catchall_6
    move-exception p0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
