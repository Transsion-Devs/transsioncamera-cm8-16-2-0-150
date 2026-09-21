.class Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;
.super Landroid/media/MediaCodec$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field curIFramePts:J

.field currPts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field input:I

.field outPts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field outputcnt:I

.field final synthetic this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

.field final synthetic val$extractor:Landroid/media/MediaExtractor;

.field final synthetic val$iframePts:Ljava/util/List;

.field final synthetic val$sensArray:[Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/ss/android/ttve/nativePort/HwFrameExtractor;Landroid/media/MediaExtractor;[Ljava/util/List;Ljava/util/List;)V
    .registers 5

    .line 222
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    iput-object p2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->val$extractor:Landroid/media/MediaExtractor;

    iput-object p3, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->val$sensArray:[Ljava/util/List;

    iput-object p4, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->val$iframePts:Ljava/util/List;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    const/4 p1, 0x0

    .line 223
    iput p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->input:I

    .line 224
    iput p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->outputcnt:I

    .line 225
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->currPts:Ljava/util/List;

    .line 226
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->outPts:Ljava/util/List;

    const-wide/16 p1, 0x0

    .line 227
    iput-wide p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->curIFramePts:J

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .registers 3

    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .registers 13

    .line 231
    :try_start_0
    iget p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->input:I

    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    iget-object v1, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->ptsMs:[I

    array-length v1, v1

    if-lt p1, v1, :cond_24

    .line 232
    iget-object v2, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, p2

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 233
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractor;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onInputBufferAvailable end"

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_20
    move-exception v0

    move-object p1, v0

    goto/16 :goto_118

    :cond_24
    move v1, p2

    .line 237
    iget-object p1, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1, v1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 239
    iget-object p2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->val$extractor:Landroid/media/MediaExtractor;

    const/4 v7, 0x0

    invoke-virtual {p2, p1, v7}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 241
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->val$extractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    .line 242
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->val$extractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_43

    .line 243
    iput-wide v4, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->curIFramePts:J

    .line 245
    :cond_43
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->currPts:Ljava/util/List;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lez v3, :cond_eb

    const-wide/16 v8, 0x0

    cmp-long p1, v4, v8

    if-ltz p1, :cond_eb

    .line 247
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    iget-object v0, p1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 249
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->currPts:Ljava/util/List;

    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->val$sensArray:[Ljava/util/List;

    iget v1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->input:I

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_71

    .line 250
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->val$extractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->advance()Z

    return-void

    .line 252
    :cond_71
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->currPts:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 253
    iget p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->input:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->input:I

    .line 254
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    iget-object v1, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->ptsMs:[I

    array-length v1, v1

    if-ge p1, v1, :cond_d2

    .line 255
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->val$iframePts:Ljava/util/List;

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->curIFramePts:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 256
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->val$sensArray:[Ljava/util/List;

    iget v1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->input:I

    aget-object v0, v0, v1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_b9

    .line 257
    iget-object v2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->val$iframePts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, p2

    if-lt p1, v2, :cond_ab

    goto :goto_b9

    :cond_ab
    iget-object v2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->val$iframePts:Ljava/util/List;

    add-int/2addr p1, p2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_be

    :cond_b9
    :goto_b9
    const-wide p1, 0x7fffffffffffffffL

    :goto_be
    cmp-long v2, v0, v4

    if-lez v2, :cond_cc

    cmp-long p1, v0, p1

    if-gez p1, :cond_cc

    .line 259
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->val$extractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->advance()Z

    return-void

    .line 262
    :cond_cc
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->val$extractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1, v0, v1, v7}, Landroid/media/MediaExtractor;->seekTo(JI)V

    return-void

    .line 264
    :cond_d2
    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractor;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "timer begin"

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1$1;

    invoke-direct {p2, p0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1$1;-><init>(Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 277
    :cond_eb
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractor;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onInputBufferAvailable sampSize<0 or time<0 sampSize"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " time: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    # invokes: Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->processFrameLast()V
    invoke-static {p1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->access$100(Lcom/ss/android/ttve/nativePort/HwFrameExtractor;)V

    .line 279
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->stop()V
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_117} :catch_20

    return-void

    .line 282
    :goto_118
    iget-object p2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->TAG:Ljava/lang/String;
    invoke-static {p2}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractor;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "onInputBufferAvailable crash"

    invoke-static {p2, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object p2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->TAG:Ljava/lang/String;
    invoke-static {p2}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractor;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    # invokes: Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->processFrameLast()V
    invoke-static {p1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->access$100(Lcom/ss/android/ttve/nativePort/HwFrameExtractor;)V

    .line 285
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->stop()V

    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .registers 9

    .line 291
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractor;)Ljava/lang/String;

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

    .line 293
    :try_start_1c
    iget v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->outputcnt:I

    iget-object v1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    iget-object v1, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->ptsMs:[I

    array-length v1, v1

    if-ge v0, v1, :cond_e3

    iget-object v1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->val$sensArray:[Ljava/util/List;

    aget-object v0, v1, v0

    iget-wide v1, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 294
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->outPts:Ljava/util/List;

    iget-wide v1, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    monitor-enter v0
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_43} :catch_c6

    .line 296
    :try_start_43
    iget-object v1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractor;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "genVideoFrames hw out time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " outputcnt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->outputcnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 299
    invoke-virtual {p1, p2, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 303
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractor;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "out waiting before time: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 305
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractor;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "out waiting after time: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    monitor-exit v0
    :try_end_ad
    .catchall {:try_start_43 .. :try_end_ad} :catchall_e0

    .line 308
    :try_start_ad
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->outPts:Ljava/util/List;

    iget-object p2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->val$sensArray:[Ljava/util/List;

    iget p3, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->outputcnt:I

    aget-object p2, p2, p3

    invoke-interface {p1, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_c8

    .line 309
    iget p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->outputcnt:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->outputcnt:I

    .line 310
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->outPts:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_c8

    :catch_c6
    move-exception p1

    goto :goto_e8

    .line 313
    :cond_c8
    :goto_c8
    iget p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->outputcnt:I

    iget-object p2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    iget-object p3, p2, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->ptsMs:[I

    array-length p3, p3

    if-lt p1, p3, :cond_df

    .line 314
    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->TAG:Ljava/lang/String;
    invoke-static {p2}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractor;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "HwFrameExtractor end"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->stop()V
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_df} :catch_c6

    :cond_df
    return-void

    :catchall_e0
    move-exception p1

    .line 306
    :try_start_e1
    monitor-exit v0
    :try_end_e2
    .catchall {:try_start_e1 .. :try_end_e2} :catchall_e0

    :try_start_e2
    throw p1

    :cond_e3
    const/4 p3, 0x0

    .line 318
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_e7} :catch_c6

    return-void

    .line 321
    :goto_e8
    iget-object p2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->TAG:Ljava/lang/String;
    invoke-static {p2}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractor;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "onOutputBufferAvailable crash"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object p2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->TAG:Ljava/lang/String;
    invoke-static {p2}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractor;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    # invokes: Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->processFrameLast()V
    invoke-static {p1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->access$100(Lcom/ss/android/ttve/nativePort/HwFrameExtractor;)V

    .line 324
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->stop()V

    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .registers 3

    return-void
.end method
