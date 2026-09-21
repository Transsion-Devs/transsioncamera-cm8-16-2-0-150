.class public abstract Lbytekn/foundation/concurrent/scheduler/Scheduler$Executor$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbytekn/foundation/concurrent/scheduler/Scheduler$Executor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic submit$default(Lbytekn/foundation/concurrent/scheduler/Scheduler$Executor;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .registers 6

    if-nez p5, :cond_c

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_8

    const-wide/16 p1, 0x0

    .line 31
    :cond_8
    invoke-interface {p0, p1, p2, p3}, Lbytekn/foundation/concurrent/scheduler/Scheduler$Executor;->submit(JLkotlin/jvm/functions/Function0;)V

    return-void

    .line 0
    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: submit"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
