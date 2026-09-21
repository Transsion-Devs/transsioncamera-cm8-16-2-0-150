.class public Lcom/transsion/camera/feature/mode/doc/DocumentThread;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# static fields
.field private static mDocumentModeThread:Lcom/transsion/camera/feature/mode/doc/DocumentThread;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 10
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/transsion/camera/feature/mode/doc/DocumentThread;
    .registers 3

    const-class v0, Lcom/transsion/camera/feature/mode/doc/DocumentThread;

    monitor-enter v0

    .line 14
    :try_start_3
    sget-object v1, Lcom/transsion/camera/feature/mode/doc/DocumentThread;->mDocumentModeThread:Lcom/transsion/camera/feature/mode/doc/DocumentThread;

    if-nez v1, :cond_16

    .line 15
    new-instance v1, Lcom/transsion/camera/feature/mode/doc/DocumentThread;

    const-string v2, "documentmode_thread"

    invoke-direct {v1, v2}, Lcom/transsion/camera/feature/mode/doc/DocumentThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/transsion/camera/feature/mode/doc/DocumentThread;->mDocumentModeThread:Lcom/transsion/camera/feature/mode/doc/DocumentThread;

    .line 16
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_16

    :catchall_14
    move-exception v1

    goto :goto_1a

    .line 18
    :cond_16
    :goto_16
    sget-object v1, Lcom/transsion/camera/feature/mode/doc/DocumentThread;->mDocumentModeThread:Lcom/transsion/camera/feature/mode/doc/DocumentThread;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_14

    monitor-exit v0

    return-object v1

    :goto_1a
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_14

    throw v1
.end method

.method public static declared-synchronized quitDocThread()V
    .registers 2

    const-class v0, Lcom/transsion/camera/feature/mode/doc/DocumentThread;

    monitor-enter v0

    .line 22
    :try_start_3
    sget-object v1, Lcom/transsion/camera/feature/mode/doc/DocumentThread;->mDocumentModeThread:Lcom/transsion/camera/feature/mode/doc/DocumentThread;

    if-eqz v1, :cond_10

    .line 23
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v1, 0x0

    .line 24
    sput-object v1, Lcom/transsion/camera/feature/mode/doc/DocumentThread;->mDocumentModeThread:Lcom/transsion/camera/feature/mode/doc/DocumentThread;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_e

    goto :goto_10

    :catchall_e
    move-exception v1

    goto :goto_12

    .line 26
    :cond_10
    :goto_10
    monitor-exit v0

    return-void

    :goto_12
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_e

    throw v1
.end method
