.class Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libsdl/app/BufferedAudioRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioRecorderRunnable"
.end annotation


# instance fields
.field private speed:D

.field startFeeding:Z

.field final synthetic this$0:Lorg/libsdl/app/BufferedAudioRecorder;


# direct methods
.method public constructor <init>(Lorg/libsdl/app/BufferedAudioRecorder;DZ)V
    .registers 5

    .line 464
    iput-object p1, p0, Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;->this$0:Lorg/libsdl/app/BufferedAudioRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    iput-wide p2, p0, Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;->speed:D

    .line 466
    iput-boolean p4, p0, Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;->startFeeding:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 472
    iget-object v0, p0, Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;->this$0:Lorg/libsdl/app/BufferedAudioRecorder;

    iget v0, v0, Lorg/libsdl/app/BufferedAudioRecorder;->bufferSizeInBytes:I

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 475
    :catch_9
    :cond_9
    :goto_9
    iget-object v4, p0, Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;->this$0:Lorg/libsdl/app/BufferedAudioRecorder;

    iget-boolean v5, v4, Lorg/libsdl/app/BufferedAudioRecorder;->isRecording:Z

    if-eqz v5, :cond_a6

    .line 476
    iget-object v5, v4, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    if-eqz v5, :cond_19

    .line 477
    iget v2, v4, Lorg/libsdl/app/BufferedAudioRecorder;->bufferSizeInBytes:I

    invoke-virtual {v5, v0, v1, v2}, Landroid/media/AudioRecord;->read([BII)I

    move-result v2

    :cond_19
    const/4 v4, -0x3

    if-eq v4, v2, :cond_8e

    if-lez v2, :cond_70

    .line 482
    iget-object v4, p0, Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;->this$0:Lorg/libsdl/app/BufferedAudioRecorder;

    # getter for: Lorg/libsdl/app/BufferedAudioRecorder;->mAudioRecordStartTime:J
    invoke-static {v4}, Lorg/libsdl/app/BufferedAudioRecorder;->access$000(Lorg/libsdl/app/BufferedAudioRecorder;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3f

    .line 483
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v8, p0, Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;->this$0:Lorg/libsdl/app/BufferedAudioRecorder;

    # getter for: Lorg/libsdl/app/BufferedAudioRecorder;->mAudioRecordStartTime:J
    invoke-static {v8}, Lorg/libsdl/app/BufferedAudioRecorder;->access$000(Lorg/libsdl/app/BufferedAudioRecorder;)J

    move-result-wide v8

    sub-long/2addr v4, v8

    const-string v8, "te_record_audio_first_frame"

    invoke-static {v1, v8, v4, v5}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 484
    iget-object v4, p0, Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;->this$0:Lorg/libsdl/app/BufferedAudioRecorder;

    # setter for: Lorg/libsdl/app/BufferedAudioRecorder;->mAudioRecordStartTime:J
    invoke-static {v4, v6, v7}, Lorg/libsdl/app/BufferedAudioRecorder;->access$002(Lorg/libsdl/app/BufferedAudioRecorder;J)J

    .line 488
    :cond_3f
    :try_start_3f
    iget-object v4, p0, Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;->this$0:Lorg/libsdl/app/BufferedAudioRecorder;

    # getter for: Lorg/libsdl/app/BufferedAudioRecorder;->mEnableMicBgmDelayOpt:Z
    invoke-static {v4}, Lorg/libsdl/app/BufferedAudioRecorder;->access$100(Lorg/libsdl/app/BufferedAudioRecorder;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 490
    iget-object v4, p0, Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;->this$0:Lorg/libsdl/app/BufferedAudioRecorder;

    iget v4, v4, Lorg/libsdl/app/BufferedAudioRecorder;->channelConfig:I

    .line 494
    :cond_4b
    iget-object v4, p0, Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;->this$0:Lorg/libsdl/app/BufferedAudioRecorder;

    iget-boolean v5, v4, Lorg/libsdl/app/BufferedAudioRecorder;->isRecording:Z

    if-eqz v5, :cond_5a

    iget-boolean v5, v4, Lorg/libsdl/app/BufferedAudioRecorder;->isStopPCMCallback:Z

    if-nez v5, :cond_5a

    .line 495
    iget-object v4, v4, Lorg/libsdl/app/BufferedAudioRecorder;->presenter:Lorg/libsdl/app/AudioRecorderInterfaceExt;

    invoke-interface {v4, v0, v2, v6, v7}, Lorg/libsdl/app/AudioRecorderInterface;->addPCMData([BIJ)I

    .line 498
    :cond_5a
    iget-object v4, p0, Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;->this$0:Lorg/libsdl/app/BufferedAudioRecorder;

    iget-object v4, v4, Lorg/libsdl/app/BufferedAudioRecorder;->mProcessThread:Lcom/ss/android/medialib/audio/AudioDataProcessThread;

    invoke-virtual {v4}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->isProcessing()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;->this$0:Lorg/libsdl/app/BufferedAudioRecorder;

    iget-boolean v5, v4, Lorg/libsdl/app/BufferedAudioRecorder;->isStopped:Z

    if-nez v5, :cond_9

    .line 499
    iget-object v4, v4, Lorg/libsdl/app/BufferedAudioRecorder;->mProcessThread:Lcom/ss/android/medialib/audio/AudioDataProcessThread;

    invoke-virtual {v4, v0, v2, v6, v7}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->feed([BIJ)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_6f} :catch_9

    goto :goto_9

    .line 506
    :cond_70
    iget-object v4, p0, Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;->this$0:Lorg/libsdl/app/BufferedAudioRecorder;

    iget-object v4, v4, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    if-eqz v4, :cond_87

    invoke-virtual {v4}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_87

    if-nez v3, :cond_87

    .line 508
    iget-object v3, p0, Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;->this$0:Lorg/libsdl/app/BufferedAudioRecorder;

    iget-object v3, v3, Lorg/libsdl/app/BufferedAudioRecorder;->presenter:Lorg/libsdl/app/AudioRecorderInterfaceExt;

    invoke-interface {v3, v1}, Lorg/libsdl/app/AudioRecorderInterface;->recordStatus(Z)V

    const/4 v3, 0x1

    :cond_87
    const-wide/16 v4, 0x32

    .line 512
    :try_start_89
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8c} :catch_9

    goto/16 :goto_9

    .line 518
    :cond_8e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad audio buffer len "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BufferedAudioRecorder"

    invoke-static {v5, v4}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_a6
    return-void
.end method
