.class public final Lbytekn/foundation/concurrent/scheduler/MainScheduler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbytekn/foundation/concurrent/scheduler/Scheduler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbytekn/foundation/concurrent/scheduler/MainScheduler$ExecutorImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newExecutor()Lbytekn/foundation/concurrent/scheduler/Scheduler$Executor;
    .registers 1

    .line 11
    new-instance p0, Lbytekn/foundation/concurrent/scheduler/MainScheduler$ExecutorImpl;

    invoke-direct {p0}, Lbytekn/foundation/concurrent/scheduler/MainScheduler$ExecutorImpl;-><init>()V

    return-object p0
.end method
