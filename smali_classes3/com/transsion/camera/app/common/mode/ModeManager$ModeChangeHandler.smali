.class Lcom/transsion/camera/app/common/mode/ModeManager$ModeChangeHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/ModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeChangeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/ModeManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/ModeManager;Landroid/os/Looper;)V
    .registers 3

    .line 471
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$ModeChangeHandler;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    .line 472
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 477
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 478
    invoke-static {}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[processMessage] ModeChange START, mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 479
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_7f

    const/16 v3, 0x32

    if-eq v2, v3, :cond_2a

    goto/16 :goto_a4

    .line 481
    :cond_2a
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$ModeChangeHandler;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fputmInModeSwitch(Lcom/transsion/camera/app/common/mode/ModeManager;Z)V

    .line 482
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$ModeChangeHandler;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmModeChangeLock(Lcom/transsion/camera/app/common/mode/ModeManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 484
    :try_start_37
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager$ModeChangeHandler;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v4}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/app/common/mode/ModeManager;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 485
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager$ModeChangeHandler;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v4}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/app/common/mode/ModeManager;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager$ModeChangeHandler;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v5}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/app/common/mode/ModeManager;)Landroid/os/Handler;

    move-result-object v5

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 486
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$ModeChangeHandler;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmModeChangeLock(Lcom/transsion/camera/app/common/mode/ModeManager;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_5e
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_5e} :catch_61
    .catchall {:try_start_37 .. :try_end_5e} :catchall_5f

    goto :goto_75

    :catchall_5f
    move-exception p0

    goto :goto_7d

    :catch_61
    move-exception p1

    .line 488
    :try_start_62
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 489
    invoke-static {}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v3, "ModeChange, mModeChangeLock wait error."

    invoke-static {p1, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 490
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    .line 491
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 493
    :goto_75
    monitor-exit v2
    :try_end_76
    .catchall {:try_start_62 .. :try_end_76} :catchall_5f

    .line 494
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$ModeChangeHandler;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fputmInModeSwitch(Lcom/transsion/camera/app/common/mode/ModeManager;Z)V

    goto :goto_a4

    .line 493
    :goto_7d
    :try_start_7d
    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_5f

    throw p0

    .line 497
    :cond_7f
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$ModeChangeHandler;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmModeChangeLock(Lcom/transsion/camera/app/common/mode/ModeManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 499
    :try_start_86
    invoke-static {}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    const-string v3, "MSG_BLOCK_TO_WAIT_FIRST_FRAME +"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 500
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$ModeChangeHandler;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmModeChangeLock(Lcom/transsion/camera/app/common/mode/ModeManager;)Ljava/lang/Object;

    move-result-object p0

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 501
    invoke-static {}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v2, "MSG_BLOCK_TO_WAIT_FIRST_FRAME -"

    invoke-static {p0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_a3
    .catch Ljava/lang/InterruptedException; {:try_start_86 .. :try_end_a3} :catch_c9
    .catchall {:try_start_86 .. :try_end_a3} :catchall_c7

    .line 508
    :try_start_a3
    monitor-exit p1
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_c7

    .line 513
    :goto_a4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v0

    .line 514
    invoke-static {}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[processMessage] ModeChange END, process time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catchall_c7
    move-exception p0

    goto :goto_ef

    :catch_c9
    move-exception p0

    .line 503
    :try_start_ca
    invoke-static {}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ModeChangeHandler, MSG_BLOCK_TO_WAIT_FIRST_FRAME wait error."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 504
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    .line 505
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 506
    monitor-exit p1

    return-void

    .line 508
    :goto_ef
    monitor-exit p1
    :try_end_f0
    .catchall {:try_start_ca .. :try_end_f0} :catchall_c7

    throw p0
.end method
