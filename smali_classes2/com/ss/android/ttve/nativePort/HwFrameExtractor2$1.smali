.class Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;
.super Landroid/media/MediaCodec$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->start()V
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

.field final synthetic this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

.field final synthetic val$allSensPts:Ljava/util/List;

.field final synthetic val$extractor:Landroid/media/MediaExtractor;

.field final synthetic val$iframePts:Ljava/util/List;

.field final synthetic val$sensArray:[Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;Landroid/media/MediaExtractor;Ljava/util/List;[Ljava/util/List;Ljava/util/List;)V
    .registers 6

    .line 257
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    iput-object p2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->val$extractor:Landroid/media/MediaExtractor;

    iput-object p3, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->val$allSensPts:Ljava/util/List;

    iput-object p4, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->val$sensArray:[Ljava/util/List;

    iput-object p5, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->val$iframePts:Ljava/util/List;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    const/4 p1, 0x0

    .line 258
    iput p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->input:I

    .line 259
    iput p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->outputcnt:I

    .line 260
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->currPts:Ljava/util/List;

    .line 261
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->outPts:Ljava/util/List;

    const-wide/16 p1, 0x0

    .line 262
    iput-wide p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->curIFramePts:J

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .registers 3

    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .registers 14

    .line 266
    :try_start_0
    iget p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->input:I

    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    iget-object v1, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->ptsMs:[I

    array-length v1, v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_20

    const-string v2, "onInputBufferAvailable end"

    if-lt p1, v1, :cond_24

    .line 267
    :try_start_b
    iget-object v3, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v4, p2

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 268
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_20
    move-exception v0

    move-object p1, v0

    goto/16 :goto_17d

    :cond_24
    move v1, p2

    .line 272
    iget-object p1, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1, v1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 274
    iget-object p2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->val$extractor:Landroid/media/MediaExtractor;

    const/4 v7, 0x0

    invoke-virtual {p2, p1, v7}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 276
    iget-object p2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->val$extractor:Landroid/media/MediaExtractor;

    invoke-virtual {p2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    .line 277
    iget-object p2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->val$extractor:Landroid/media/MediaExtractor;

    invoke-virtual {p2}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result p2

    .line 278
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->m_bIsAVC:Z
    invoke-static {v0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->access$100(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)Z

    move-result v0

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    if-nez v0, :cond_51

    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->m_bIsByteVC:Z
    invoke-static {v0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->access$200(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 279
    :cond_51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 281
    :goto_54
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    iget-boolean v0, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->bStopRequest:Z

    if-nez v0, :cond_a6

    cmp-long v0, v4, v8

    if-ltz v0, :cond_a6

    if-eq p2, v10, :cond_a6

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget-object v6, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->m_bIsByteVC:Z
    invoke-static {v6}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->access$200(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)Z

    move-result v6

    invoke-static {p1, v0, v6}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->isFrameCanDrop(Ljava/nio/ByteBuffer;IZ)Z

    move-result v0

    if-eqz v0, :cond_a6

    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->val$allSensPts:Ljava/util/List;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a6

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 284
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->val$extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    move-result v0

    if-nez v0, :cond_91

    .line 285
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a6

    .line 288
    :cond_91
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 289
    iget-object p2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->val$extractor:Landroid/media/MediaExtractor;

    invoke-virtual {p2, p1, v7}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    .line 290
    iget-object p2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->val$extractor:Landroid/media/MediaExtractor;

    invoke-virtual {p2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    .line 291
    iget-object p2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->val$extractor:Landroid/media/MediaExtractor;

    invoke-virtual {p2}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result p2

    goto :goto_54

    :cond_a6
    :goto_a6
    if-ne p2, v10, :cond_aa

    .line 296
    iput-wide v4, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->curIFramePts:J

    .line 298
    :cond_aa
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->currPts:Ljava/util/List;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lez v3, :cond_150

    cmp-long p1, v4, v8

    if-ltz p1, :cond_150

    .line 300
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    iget-object v0, p1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 302
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->currPts:Ljava/util/List;

    iget-object p2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->val$sensArray:[Ljava/util/List;

    iget v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->input:I

    aget-object p2, p2, v0

    invoke-interface {p1, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_d6

    .line 303
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->val$extractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->advance()Z

    return-void

    .line 305
    :cond_d6
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->currPts:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 306
    iget p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->input:I

    add-int/2addr p1, v10

    iput p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->input:I

    .line 307
    iget-object p2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    iget-object v0, p2, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->ptsMs:[I

    array-length v0, v0

    if-ge p1, v0, :cond_137

    .line 308
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->val$iframePts:Ljava/util/List;

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->curIFramePts:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 309
    iget-object p2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->val$sensArray:[Ljava/util/List;

    iget v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->input:I

    aget-object p2, p2, v0

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 p2, -0x1

    if-eq p1, p2, :cond_11e

    .line 310
    iget-object p2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->val$iframePts:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v10

    if-lt p1, p2, :cond_110

    goto :goto_11e

    :cond_110
    iget-object p2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->val$iframePts:Ljava/util/List;

    add-int/2addr p1, v10

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_123

    :cond_11e
    :goto_11e
    const-wide p1, 0x7fffffffffffffffL

    :goto_123
    cmp-long v2, v0, v4

    if-lez v2, :cond_131

    cmp-long p1, v0, p1

    if-gez p1, :cond_131

    .line 313
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->val$extractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->advance()Z

    return-void

    .line 316
    :cond_131
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->val$extractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1, v0, v1, v7}, Landroid/media/MediaExtractor;->seekTo(JI)V

    return-void

    .line 318
    :cond_137
    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->TAG:Ljava/lang/String;
    invoke-static {p2}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "timer begin"

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1$1;

    invoke-direct {p2, p0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1$1;-><init>(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 331
    :cond_150
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)Ljava/lang/String;

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

    .line 332
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    # invokes: Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->processFrameLast()V
    invoke-static {p1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->access$300(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)V

    .line 333
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    # invokes: Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->stopInternal()V
    invoke-static {p1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->access$400(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)V
    :try_end_17c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_17c} :catch_20

    return-void

    .line 336
    :goto_17d
    iget-object p2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->TAG:Ljava/lang/String;
    invoke-static {p2}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "onInputBufferAvailable crash"

    invoke-static {p2, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object p2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->TAG:Ljava/lang/String;
    invoke-static {p2}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    # invokes: Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->processFrameLast()V
    invoke-static {p1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->access$300(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)V

    .line 339
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    # invokes: Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->stopInternal()V
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->access$400(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)V

    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .registers 8

    .line 347
    :try_start_0
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_b0

    iget v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->outputcnt:I

    iget-object v1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->val$sensArray:[Ljava/util/List;

    array-length v2, v1

    if-lt v0, v2, :cond_e

    goto/16 :goto_b0

    .line 354
    :cond_e
    iget-object v2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    iget-object v2, v2, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->ptsMs:[I

    array-length v2, v2

    if-ge v0, v2, :cond_ab

    aget-object v0, v1, v0

    iget-wide v1, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 355
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->outPts:Ljava/util/List;

    iget-wide v1, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    monitor-enter v0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_8e

    const/4 v1, 0x1

    .line 360
    :try_start_32
    invoke-virtual {p1, p2, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 364
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)Ljava/lang/String;

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

    .line 365
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 366
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)Ljava/lang/String;

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

    .line 367
    monitor-exit v0
    :try_end_75
    .catchall {:try_start_32 .. :try_end_75} :catchall_a8

    .line 369
    :try_start_75
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->outPts:Ljava/util/List;

    iget-object p2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->val$sensArray:[Ljava/util/List;

    iget p3, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->outputcnt:I

    aget-object p2, p2, p3

    invoke-interface {p1, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_90

    .line 370
    iget p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->outputcnt:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->outputcnt:I

    .line 371
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->outPts:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_90

    :catch_8e
    move-exception p1

    goto :goto_c6

    .line 374
    :cond_90
    :goto_90
    iget p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->outputcnt:I

    iget-object p2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    iget-object p3, p2, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->ptsMs:[I

    array-length p3, p3

    if-lt p1, p3, :cond_a7

    .line 375
    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->TAG:Ljava/lang/String;
    invoke-static {p2}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "HwFrameExtractor2 end"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    # invokes: Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->stopInternal()V
    invoke-static {p1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->access$400(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_a7} :catch_8e

    :cond_a7
    return-void

    :catchall_a8
    move-exception p1

    .line 367
    :try_start_a9
    monitor-exit v0
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a8

    :try_start_aa
    throw p1

    :cond_ab
    const/4 p3, 0x0

    .line 379
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void

    .line 348
    :cond_b0
    :goto_b0
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onOutputBufferAvailable hw finish."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    # invokes: Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->processFrameLast()V
    invoke-static {p1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->access$300(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)V

    .line 350
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    # invokes: Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->stopInternal()V
    invoke-static {p1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->access$400(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_c5} :catch_8e

    return-void

    .line 382
    :goto_c6
    iget-object p2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->TAG:Ljava/lang/String;
    invoke-static {p2}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "onOutputBufferAvailable crash"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object p2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->TAG:Ljava/lang/String;
    invoke-static {p2}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    # invokes: Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->processFrameLast()V
    invoke-static {p1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->access$300(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)V

    .line 385
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    # invokes: Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->stopInternal()V
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->access$400(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)V

    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .registers 3

    return-void
.end method
