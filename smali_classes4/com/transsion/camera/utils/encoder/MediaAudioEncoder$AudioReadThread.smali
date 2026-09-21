.class Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioReadThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioReadThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;Ljava/lang/String;)V
    .registers 3

    .line 326
    iput-object p1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioReadThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    .line 327
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioReadThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-static {v0}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$fgetmAudioRecord(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;)Landroid/media/AudioRecord;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_117

    if-eqz v0, :cond_10d

    const/4 v0, 0x1

    .line 335
    :try_start_9
    invoke-static {}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->getInstance()Lcom/transsion/camera/thub/TranSchedManagerProxy;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->setDualVideoTranSched(I)V

    .line 336
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioReadThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    iget-boolean v1, v1, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mIsCapturing:Z

    if-eqz v1, :cond_ce

    .line 337
    invoke-static {}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    const-string v2, "AudioReadThread:start audio recording"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 339
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioReadThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-static {v1}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$fgetmAudioRecord(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;)Landroid/media/AudioRecord;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3b

    .line 340
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioReadThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    iget-object v2, v1, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

    invoke-interface {v2, v1, v0}, Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;->onStopped(Lcom/transsion/camera/utils/encoder/MediaEncoder;I)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_37} :catch_dc
    .catchall {:try_start_9 .. :try_end_37} :catchall_38

    goto :goto_3b

    :catchall_38
    move-exception v0

    goto/16 :goto_f8

    :cond_3b
    :goto_3b
    const/4 v1, 0x0

    .line 343
    :try_start_3c
    iget-object v2, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioReadThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    iget-boolean v2, v2, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mIsCapturing:Z

    if-eqz v2, :cond_88

    iget-object v2, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioReadThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    iget-boolean v2, v2, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mRequestStop:Z

    if-nez v2, :cond_88

    iget-object v2, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioReadThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    iget-boolean v3, v2, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mIsEOS:Z

    if-nez v3, :cond_88

    .line 347
    invoke-static {v2}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$macquireBuffer(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_55

    goto :goto_88

    .line 351
    :cond_55
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 352
    const-string v3, "AudioRecord_read"

    invoke-static {v3}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 353
    iget-object v3, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioReadThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-static {v3}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$fgetmAudioRecord(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;)Landroid/media/AudioRecord;

    move-result-object v3

    const/16 v4, 0x400

    invoke-virtual {v3, v2, v4}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 354
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 355
    iget-object v4, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioReadThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    iget-boolean v4, v4, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mRequestPause:Z

    if-eqz v4, :cond_7a

    .line 356
    iget-object v3, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioReadThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-static {v3, v2}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$mreleaseBuffer(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;Ljava/nio/ByteBuffer;)V

    goto :goto_3b

    :catchall_78
    move-exception v2

    goto :goto_ab

    :cond_7a
    if-lez v3, :cond_82

    .line 360
    iget-object v4, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioReadThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-static {v4, v2, v3}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$menqueueAudioFrame(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;Ljava/nio/ByteBuffer;I)V

    goto :goto_3b

    .line 362
    :cond_82
    iget-object v3, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioReadThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-static {v3, v2}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$mreleaseBuffer(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;Ljava/nio/ByteBuffer;)V
    :try_end_87
    .catchall {:try_start_3c .. :try_end_87} :catchall_78

    goto :goto_3b

    .line 366
    :cond_88
    :goto_88
    :try_start_88
    iget-object v2, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioReadThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$fputmEncodeThreadRunning(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;Z)V

    .line 367
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioReadThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-static {v1}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$fgetmAudioLock(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_94} :catch_dc
    .catchall {:try_start_88 .. :try_end_94} :catchall_38

    .line 368
    :try_start_94
    iget-object v2, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioReadThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-static {v2}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$fgetmAudioLock(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 369
    monitor-exit v1
    :try_end_9e
    .catchall {:try_start_94 .. :try_end_9e} :catchall_a8

    .line 370
    :try_start_9e
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioReadThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-static {v1}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$fgetmAudioRecord(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;)Landroid/media/AudioRecord;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a7} :catch_dc
    .catchall {:try_start_9e .. :try_end_a7} :catchall_38

    goto :goto_ce

    :catchall_a8
    move-exception v2

    .line 369
    :try_start_a9
    monitor-exit v1
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a8

    :try_start_aa
    throw v2

    .line 366
    :goto_ab
    iget-object v3, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioReadThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-static {v3, v1}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$fputmEncodeThreadRunning(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;Z)V

    .line 367
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioReadThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-static {v1}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$fgetmAudioLock(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_b7} :catch_dc
    .catchall {:try_start_aa .. :try_end_b7} :catchall_38

    .line 368
    :try_start_b7
    iget-object v3, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioReadThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-static {v3}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$fgetmAudioLock(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 369
    monitor-exit v1
    :try_end_c1
    .catchall {:try_start_b7 .. :try_end_c1} :catchall_cb

    .line 370
    :try_start_c1
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioReadThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-static {v1}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$fgetmAudioRecord(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;)Landroid/media/AudioRecord;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    .line 371
    throw v2
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_cb} :catch_dc
    .catchall {:try_start_c1 .. :try_end_cb} :catchall_38

    :catchall_cb
    move-exception v2

    .line 369
    :try_start_cc
    monitor-exit v1
    :try_end_cd
    .catchall {:try_start_cc .. :try_end_cd} :catchall_cb

    :try_start_cd
    throw v2
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_ce} :catch_dc
    .catchall {:try_start_cd .. :try_end_ce} :catchall_38

    .line 376
    :cond_ce
    :goto_ce
    :try_start_ce
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioReadThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-static {p0}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$fgetmAudioRecord(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;)Landroid/media/AudioRecord;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioRecord;->release()V

    .line 377
    invoke-static {}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->getInstance()Lcom/transsion/camera/thub/TranSchedManagerProxy;

    move-result-object p0
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_db} :catch_117

    goto :goto_f0

    .line 374
    :catch_dc
    :try_start_dc
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioReadThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    iget-object v2, v1, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

    invoke-interface {v2, v1, v0}, Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;->onStopped(Lcom/transsion/camera/utils/encoder/MediaEncoder;I)V
    :try_end_e3
    .catchall {:try_start_dc .. :try_end_e3} :catchall_38

    .line 376
    :try_start_e3
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioReadThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-static {p0}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$fgetmAudioRecord(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;)Landroid/media/AudioRecord;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioRecord;->release()V

    .line 377
    invoke-static {}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->getInstance()Lcom/transsion/camera/thub/TranSchedManagerProxy;

    move-result-object p0

    :goto_f0
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->cancelDualVideoTranSched(I)V

    goto :goto_121

    .line 376
    :goto_f8
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioReadThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-static {p0}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$fgetmAudioRecord(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;)Landroid/media/AudioRecord;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioRecord;->release()V

    .line 377
    invoke-static {}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->getInstance()Lcom/transsion/camera/thub/TranSchedManagerProxy;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->cancelDualVideoTranSched(I)V

    .line 378
    throw v0

    .line 380
    :cond_10d
    invoke-static {}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "failed to initialize AudioRecord"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_116} :catch_117

    goto :goto_121

    :catch_117
    move-exception p0

    .line 383
    invoke-static {}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "AudioReadThread#run"

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 385
    :goto_121
    invoke-static {}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "AudioReadThread:finished"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
