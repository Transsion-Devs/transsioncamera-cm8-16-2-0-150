.class Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$1;
.super Landroid/media/MediaCodec$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)V
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .registers 5

    .line 193
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onError"

    invoke-static {v0, v1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    :try_start_9
    invoke-virtual {p1}, Landroid/media/MediaCodec;->reset()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_c

    .line 197
    :catch_c
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$mrelease(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)V

    .line 198
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$fgetmErrorListener(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$IMediaCodecErrorListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$IMediaCodecErrorListener;->onMediaCodecException()V

    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .registers 3

    .line 148
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onInputBufferAvailable"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .registers 12

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$MainHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 154
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$MainHandler;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$fgetmFrameLock(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 156
    :try_start_1c
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    const-string v3, "onOutputBufferAvailable"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 157
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$fgetmStopCalled(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Z

    move-result v2

    if-eqz v2, :cond_32

    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p0

    goto/16 :goto_e0

    .line 159
    :cond_32
    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x0

    if-eqz v2, :cond_43

    .line 160
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    const-string v4, "onOutputBufferAvailable BUFFER_FLAG_END_OF_STREAM"

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_1c .. :try_end_42} :catchall_2f

    goto :goto_44

    :cond_43
    move v1, v3

    .line 164
    :goto_44
    :try_start_44
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 165
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$fgetmTempEOSBuffer(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    if-nez v4, :cond_60

    .line 166
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$fputmTempEOSBuffer(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;Ljava/nio/ByteBuffer;)V

    goto :goto_60

    :catch_5e
    move-exception p1

    goto :goto_b8

    .line 168
    :cond_60
    :goto_60
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iput-wide v4, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 169
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$fgetmBufferWriterThread(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Landroid/os/HandlerThread;

    move-result-object v4

    if-eqz v4, :cond_a6

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$fgetmBufferWriterThread(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Landroid/os/HandlerThread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_a6

    if-nez v1, :cond_a6

    .line 170
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 171
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 172
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$fgetmBufferWriterHandler(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 173
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$fgetmBufferWriterHandler(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Landroid/os/Handler;

    move-result-object v2

    new-instance v5, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$BufferData;

    invoke-direct {v5, v4, p3, v3}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$BufferData;-><init>(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)V

    invoke-virtual {v2, v3, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    .line 175
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_ab

    .line 177
    :cond_a6
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {v4, v2, p3, v1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$mwriteBuffer(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)V

    .line 179
    :goto_ab
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p3

    const-string v2, "onOutputBufferAvailable releaseOutputBuffer"

    invoke-static {p3, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1, p2, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_b7} :catch_5e
    .catchall {:try_start_44 .. :try_end_b7} :catchall_2f

    goto :goto_d7

    .line 182
    :goto_b8
    :try_start_b8
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOutputBufferAvailable exception"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_d7
    if-eqz v1, :cond_de

    .line 186
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$mrelease(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)V

    .line 188
    :cond_de
    monitor-exit v0

    return-void

    :goto_e0
    monitor-exit v0
    :try_end_e1
    .catchall {:try_start_b8 .. :try_end_e1} :catchall_2f

    throw p0
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .registers 5

    .line 203
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOutputFormatChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 204
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$fgetmBufferWriterHandler(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 205
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$MainHandler;

    move-result-object p0

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
