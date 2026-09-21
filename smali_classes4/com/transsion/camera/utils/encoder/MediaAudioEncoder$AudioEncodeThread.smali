.class Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioEncodeThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioEncodeThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;Ljava/lang/String;)V
    .registers 3

    .line 394
    iput-object p1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioEncodeThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    .line 395
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 400
    invoke-static {}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->getInstance()Lcom/transsion/camera/thub/TranSchedManagerProxy;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->setDualVideoTranSched(I)V

    .line 401
    invoke-static {}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "AudioEncodeThread:start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 405
    :goto_14
    :try_start_14
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioEncodeThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-static {v0}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$fgetmAudioLock(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1b} :catch_c4
    .catchall {:try_start_14 .. :try_end_1b} :catchall_d9

    .line 406
    :goto_1b
    :try_start_1b
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioEncodeThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-static {v1}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$fgetmAudioQueue(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;)Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioEncodeThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-static {v1}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$fgetmEncodeThreadRunning(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;)Z

    move-result v1
    :try_end_2d
    .catchall {:try_start_1b .. :try_end_2d} :catchall_3b

    if-eqz v1, :cond_52

    .line 408
    :try_start_2f
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioEncodeThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-static {v1}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$fgetmAudioLock(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;)Ljava/lang/Object;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_3a} :catch_3e
    .catchall {:try_start_2f .. :try_end_3a} :catchall_3b

    goto :goto_1b

    :catchall_3b
    move-exception p0

    goto/16 :goto_c2

    .line 410
    :catch_3e
    :try_start_3e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 411
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3e .. :try_end_46} :catchall_3b

    .line 436
    invoke-static {}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->getInstance()Lcom/transsion/camera/thub/TranSchedManagerProxy;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->cancelDualVideoTranSched(I)V

    return-void

    .line 414
    :cond_52
    :try_start_52
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioEncodeThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-static {v1}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$fgetmAudioQueue(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;)Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_78

    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioEncodeThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-static {v1}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$fgetmEncodeThreadRunning(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;)Z

    move-result v1

    if-nez v1, :cond_78

    .line 415
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_52 .. :try_end_67} :catchall_3b

    .line 432
    :try_start_67
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioEncodeThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->frameAvailableSoon()Z
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6c} :catch_c4
    .catchall {:try_start_67 .. :try_end_6c} :catchall_d9

    .line 436
    :goto_6c
    invoke-static {}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->getInstance()Lcom/transsion/camera/thub/TranSchedManagerProxy;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->cancelDualVideoTranSched(I)V

    goto :goto_cf

    .line 417
    :cond_78
    :try_start_78
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioEncodeThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-static {v1}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$fgetmAudioQueue(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;)Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_86

    .line 418
    monitor-exit v0

    goto :goto_14

    .line 420
    :cond_86
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioEncodeThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-static {v1}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$fgetmAudioQueue(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;)Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioInfo;

    .line 421
    monitor-exit v0
    :try_end_93
    .catchall {:try_start_78 .. :try_end_93} :catchall_3b

    .line 422
    :try_start_93
    iget v0, v1, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioInfo;->mReadBytes:I

    if-lez v0, :cond_b9

    .line 423
    iget-object v2, v1, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioInfo;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 424
    iget-object v0, v1, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioInfo;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 425
    const-string v0, "Audio_encode"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioEncodeThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    iget-object v2, v1, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioInfo;->mBuffer:Ljava/nio/ByteBuffer;

    iget v3, v1, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioInfo;->mReadBytes:I

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->encode(Ljava/nio/ByteBuffer;IJ)V

    .line 427
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 428
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioEncodeThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->frameAvailableSoon()Z

    .line 430
    :cond_b9
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioEncodeThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    iget-object v1, v1, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioInfo;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$mreleaseBuffer(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;Ljava/nio/ByteBuffer;)V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_c0} :catch_c4
    .catchall {:try_start_93 .. :try_end_c0} :catchall_d9

    goto/16 :goto_14

    .line 421
    :goto_c2
    :try_start_c2
    monitor-exit v0
    :try_end_c3
    .catchall {:try_start_c2 .. :try_end_c3} :catchall_3b

    :try_start_c3
    throw p0
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_c4} :catch_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_d9

    :catch_c4
    move-exception p0

    .line 434
    :try_start_c5
    invoke-static {}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "AudioEncodeThread#run"

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_ce
    .catchall {:try_start_c5 .. :try_end_ce} :catchall_d9

    goto :goto_6c

    .line 438
    :goto_cf
    invoke-static {}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "AudioEncodeThread:finished"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catchall_d9
    move-exception p0

    .line 436
    invoke-static {}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->getInstance()Lcom/transsion/camera/thub/TranSchedManagerProxy;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->cancelDualVideoTranSched(I)V

    .line 437
    throw p0
.end method
