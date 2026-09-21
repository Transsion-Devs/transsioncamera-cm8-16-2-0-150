.class Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;)V
    .registers 2

    .line 261
    iput-object p1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;Lcom/transsion/camera/utils/encoder/MediaAudioEncoder-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;-><init>(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const/16 v0, -0x13

    .line 264
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 266
    :try_start_5
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-static {v0}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$fgetmAudioRecord(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;)Landroid/media/AudioRecord;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_104

    if-eqz v0, :cond_fa

    const/4 v0, 0x1

    .line 268
    :try_start_e
    invoke-static {}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->getInstance()Lcom/transsion/camera/thub/TranSchedManagerProxy;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->setDualVideoTranSched(I)V

    .line 269
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    iget-boolean v1, v1, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mIsCapturing:Z

    if-eqz v1, :cond_bb

    .line 270
    invoke-static {}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    const-string v2, "AudioThread:start audio recording"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v1, 0x400

    .line 271
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 273
    iget-object v3, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-static {v3}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$fgetmAudioRecord(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;)Landroid/media/AudioRecord;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_46

    .line 274
    iget-object v3, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    iget-object v4, v3, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

    invoke-interface {v4, v3, v0}, Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;->onStopped(Lcom/transsion/camera/utils/encoder/MediaEncoder;I)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_42} :catch_c9
    .catchall {:try_start_e .. :try_end_42} :catchall_43

    goto :goto_46

    :catchall_43
    move-exception v0

    goto/16 :goto_e5

    .line 277
    :cond_46
    :goto_46
    :try_start_46
    iget-object v3, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    iget-boolean v3, v3, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mIsCapturing:Z

    if-eqz v3, :cond_a2

    iget-object v3, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    iget-boolean v3, v3, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mRequestStop:Z

    if-nez v3, :cond_a2

    iget-object v3, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    iget-boolean v3, v3, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mIsEOS:Z

    if-nez v3, :cond_a2

    .line 282
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 283
    const-string v3, "AudioRecord_read"

    invoke-static {v3}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 284
    iget-object v3, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-static {v3}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$fgetmAudioRecord(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;)Landroid/media/AudioRecord;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 285
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 286
    iget-object v4, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    iget-boolean v4, v4, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mRequestPause:Z

    if-eqz v4, :cond_74

    goto :goto_46

    :cond_74
    if-lez v3, :cond_46

    .line 290
    iget-object v4, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    iget-wide v5, v4, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mFirstFrameTime:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_8f

    .line 291
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    iput-wide v5, v4, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mFirstFrameTime:J

    goto :goto_8f

    :catchall_8d
    move-exception v1

    goto :goto_b1

    .line 294
    :cond_8f
    :goto_8f
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 295
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 296
    iget-object v4, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v2, v3, v5, v6}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->encode(Ljava/nio/ByteBuffer;IJ)V

    .line 297
    iget-object v3, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-virtual {v3}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->frameAvailableSoon()Z

    goto :goto_46

    .line 300
    :cond_a2
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-virtual {v1}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->frameAvailableSoon()Z
    :try_end_a7
    .catchall {:try_start_46 .. :try_end_a7} :catchall_8d

    .line 302
    :try_start_a7
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-static {v1}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$fgetmAudioRecord(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;)Landroid/media/AudioRecord;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    goto :goto_bb

    :goto_b1
    iget-object v2, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-static {v2}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$fgetmAudioRecord(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;)Landroid/media/AudioRecord;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V

    .line 303
    throw v1
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_bb} :catch_c9
    .catchall {:try_start_a7 .. :try_end_bb} :catchall_43

    .line 308
    :cond_bb
    :goto_bb
    :try_start_bb
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-static {p0}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$fgetmAudioRecord(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;)Landroid/media/AudioRecord;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioRecord;->release()V

    .line 309
    invoke-static {}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->getInstance()Lcom/transsion/camera/thub/TranSchedManagerProxy;

    move-result-object p0
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_c8} :catch_104

    goto :goto_dd

    .line 306
    :catch_c9
    :try_start_c9
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    iget-object v2, v1, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

    invoke-interface {v2, v1, v0}, Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;->onStopped(Lcom/transsion/camera/utils/encoder/MediaEncoder;I)V
    :try_end_d0
    .catchall {:try_start_c9 .. :try_end_d0} :catchall_43

    .line 308
    :try_start_d0
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-static {p0}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$fgetmAudioRecord(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;)Landroid/media/AudioRecord;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioRecord;->release()V

    .line 309
    invoke-static {}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->getInstance()Lcom/transsion/camera/thub/TranSchedManagerProxy;

    move-result-object p0

    :goto_dd
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->cancelDualVideoTranSched(I)V

    goto :goto_10e

    .line 308
    :goto_e5
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-static {p0}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$fgetmAudioRecord(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;)Landroid/media/AudioRecord;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioRecord;->release()V

    .line 309
    invoke-static {}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->getInstance()Lcom/transsion/camera/thub/TranSchedManagerProxy;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->cancelDualVideoTranSched(I)V

    .line 310
    throw v0

    .line 312
    :cond_fa
    invoke-static {}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "failed to initialize AudioRecord"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_103} :catch_104

    goto :goto_10e

    :catch_104
    move-exception p0

    .line 315
    invoke-static {}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "AudioThread#run"

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 317
    :goto_10e
    invoke-static {}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "AudioThread:finished"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
