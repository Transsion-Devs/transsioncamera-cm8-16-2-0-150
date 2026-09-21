.class public Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutRunnable;,
        Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$ExceptionRunnable;,
        Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranTimeOutOrExceptionExecute"

.field private static final TIMEOUT:J = 0xc8L


# instance fields
.field private mTranContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->mTranContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public exceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$ExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$ExceptionRunnable;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 57
    :try_start_0
    invoke-interface {p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$ExceptionRunnable;->run()Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p1

    .line 59
    iget-object v0, p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->mTranContext:Landroid/content/Context;

    if-eqz v0, :cond_10

    .line 60
    iget-object p0, p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->mTranContext:Landroid/content/Context;

    invoke-static {p0, p2, p1}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->recordException(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13

    .line 62
    :cond_10
    invoke-static {p2, p1}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->recordException(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public recordTimeout(Ljava/lang/String;J)V
    .registers 6

    const-wide/16 v0, 0xc8

    cmp-long v0, p2, v0

    if-ltz v0, :cond_11

    .line 86
    iget-object p0, p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->mTranContext:Landroid/content/Context;

    if-eqz p0, :cond_e

    .line 87
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->recordTimeout(Landroid/content/Context;Ljava/lang/String;J)V

    return-void

    .line 89
    :cond_e
    invoke-static {p1, p2, p3}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->recordTimeout(Ljava/lang/String;J)V

    :cond_11
    return-void
.end method

.method public timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 72
    :try_start_4
    invoke-interface {p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;->run()Ljava/lang/Object;

    move-result-object p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    goto :goto_18

    :catch_9
    move-exception p1

    .line 74
    iget-object v2, p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->mTranContext:Landroid/content/Context;

    if-eqz v2, :cond_14

    .line 75
    iget-object v2, p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->mTranContext:Landroid/content/Context;

    invoke-static {v2, p2, p1}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->recordException(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_17

    .line 77
    :cond_14
    invoke-static {p2, p1}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->recordException(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_17
    const/4 p1, 0x0

    .line 80
    :goto_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, p2, v2, v3}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->recordTimeout(Ljava/lang/String;J)V

    return-object p1
.end method

.method public timeOutRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutRunnable;Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutRunnable;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 46
    :try_start_4
    invoke-interface {p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutRunnable;->run()Ljava/lang/Object;

    move-result-object p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    goto :goto_21

    :catch_9
    move-exception p1

    .line 48
    sget-object v2, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TimeOutException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 50
    :goto_21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, p2, v2, v3}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->recordTimeout(Ljava/lang/String;J)V

    return-object p1
.end method
