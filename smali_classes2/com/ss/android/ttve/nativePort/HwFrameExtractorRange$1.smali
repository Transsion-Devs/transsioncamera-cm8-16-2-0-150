.class Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$1;
.super Landroid/media/MediaCodec$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

.field final synthetic val$extractor:Landroid/media/MediaExtractor;


# direct methods
.method constructor <init>(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;Landroid/media/MediaExtractor;)V
    .registers 3

    .line 158
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    iput-object p2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$1;->val$extractor:Landroid/media/MediaExtractor;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .registers 3

    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .registers 12

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    iget-object v0, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p2}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$1;->val$extractor:Landroid/media/MediaExtractor;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v4

    .line 166
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$1;->val$extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    if-lez v4, :cond_57

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-ltz v0, :cond_57

    .line 168
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    iget-object v1, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    const/4 v7, 0x0

    move v2, p2

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 171
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$1;->val$extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    iget v0, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->m_endTime:I

    if-lez v0, :cond_3b

    int-to-long v1, v0

    cmp-long v0, v5, v1

    if-ltz v0, :cond_3b

    goto :goto_3e

    :cond_3b
    return-void

    :catch_3c
    move-exception v0

    goto :goto_84

    .line 172
    :cond_3e
    :goto_3e
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    iget-object v1, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v5, 0x0

    const/4 v7, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v2, p2

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 173
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onInputBufferAvailable end"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 176
    :cond_57
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInputBufferAvailable sampSize<0 or time<0 sampSize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    # invokes: Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->processFrameLast()V
    invoke-static {v0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->access$100(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)V

    .line 178
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    # invokes: Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->stopInternal()V
    invoke-static {v0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->access$200(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_83} :catch_3c

    return-void

    .line 181
    :goto_84
    iget-object v1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onInputBufferAvailable crash"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    # invokes: Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->processFrameLast()V
    invoke-static {v0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->access$100(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)V

    .line 184
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    # invokes: Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->stopInternal()V
    invoke-static {v0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->access$200(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)V

    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .registers 10

    .line 190
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOutputBufferAvailable hw all time output: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :try_start_1c
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_3e

    .line 193
    iget-object p3, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->TAG:Ljava/lang/String;
    invoke-static {p3}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "HwFrameExtractorRange end"

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {p1, p2, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 195
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    # invokes: Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->processFrameLast()V
    invoke-static {p1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->access$100(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)V

    .line 196
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    # invokes: Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->stopInternal()V
    invoke-static {p1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->access$200(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)V

    return-void

    :catch_3c
    move-exception p1

    goto :goto_b2

    .line 200
    :cond_3e
    iget-wide v2, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    iget v4, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->m_startTime:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_ae

    .line 201
    monitor-enter v0
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_4a} :catch_3c

    .line 202
    :try_start_4a
    iget-object v1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "genVideoFrames hw out time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 205
    invoke-virtual {p1, p2, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 209
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "out waiting before time: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 211
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "out waiting after time: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    monitor-exit v0

    return-void

    :catchall_ab
    move-exception p1

    monitor-exit v0
    :try_end_ad
    .catchall {:try_start_4a .. :try_end_ad} :catchall_ab

    :try_start_ad
    throw p1

    .line 214
    :cond_ae
    invoke-virtual {p1, p2, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b1} :catch_3c

    return-void

    .line 217
    :goto_b2
    iget-object p2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->TAG:Ljava/lang/String;
    invoke-static {p2}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "onOutputBufferAvailable crash"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object p2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->TAG:Ljava/lang/String;
    invoke-static {p2}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    # invokes: Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->processFrameLast()V
    invoke-static {p1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->access$100(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)V

    .line 220
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    # invokes: Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->stopInternal()V
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->access$200(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)V

    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .registers 3

    return-void
.end method
