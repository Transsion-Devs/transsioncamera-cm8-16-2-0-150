.class public Lcom/ss/android/ttve/monitor/TEExceptionMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttve/monitor/TEExceptionMonitor$IExceptionMonitor;
    }
.end annotation


# static fields
.field private static sExceptionMonitor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/android/ttve/monitor/TEExceptionMonitor$IExceptionMonitor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static monitorException(Ljava/lang/Throwable;)V
    .registers 2

    .line 18
    sget-object v0, Lcom/ss/android/ttve/monitor/TEExceptionMonitor;->sExceptionMonitor:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    .line 19
    :cond_6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/ttve/monitor/TEExceptionMonitor$IExceptionMonitor;

    :goto_c
    if-eqz v0, :cond_11

    .line 21
    invoke-interface {v0, p0}, Lcom/ss/android/ttve/monitor/TEExceptionMonitor$IExceptionMonitor;->onException(Ljava/lang/Throwable;)V

    :cond_11
    return-void
.end method

.method public static register(Lcom/ss/android/ttve/monitor/TEExceptionMonitor$IExceptionMonitor;)V
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_a

    .line 14
    :cond_4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_a
    sput-object p0, Lcom/ss/android/ttve/monitor/TEExceptionMonitor;->sExceptionMonitor:Ljava/lang/ref/WeakReference;

    return-void
.end method
