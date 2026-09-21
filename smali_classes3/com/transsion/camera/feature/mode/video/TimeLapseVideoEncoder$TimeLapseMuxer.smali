.class Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeLapseMuxer"
.end annotation


# static fields
.field private static final MS_TO_NANO:J = 0x3e8L

.field private static final TIME_FRAME_GAP:J = 0x80e8L


# instance fields
.field private mEOSCommit:Z

.field private mFrameCount:J

.field private mLastTimeUs:J

.field private mLastWriteTime:J

.field private final mListener:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;

.field private final mMediaMuxer:Landroid/media/MediaMuxer;

.field private mStartTime:J

.field private mStarted:Z

.field private mStopWithException:Z

.field private final mTimeLapse:I

.field private mTrack:I

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;


# direct methods
.method static bridge synthetic -$$Nest$fgetmFrameCount(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mFrameCount:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmStarted(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mStarted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStopWithException(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mStopWithException:Z

    return p0
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$EncoderParams;)V
    .registers 5

    .line 522
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 518
    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mFrameCount:J

    const/4 p1, 0x0

    .line 519
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mStopWithException:Z

    .line 520
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mEOSCommit:Z

    .line 523
    iget-object v0, p2, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$EncoderParams;->mFD:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 524
    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v1, p2, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$EncoderParams;->mFD:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1, p1}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    goto :goto_2b

    .line 526
    :cond_22
    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v1, p2, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$EncoderParams;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    .line 528
    :goto_2b
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mListener:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;

    .line 529
    iget p1, p2, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$EncoderParams;->mTimeLapse:I

    iput p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mTimeLapse:I

    return-void
.end method


# virtual methods
.method declared-synchronized addTrack(Landroid/media/MediaFormat;)V
    .registers 3

    monitor-enter p0

    .line 621
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mTrack:I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 622
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public getCurrentDuration()J
    .registers 3

    .line 578
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mLastTimeUs:J

    return-wide v0
.end method

.method public onFrameData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)V
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move/from16 v2, p3

    .line 533
    iget-object v3, v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$fgetmLock(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 534
    :try_start_d
    iget-boolean v4, v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mStarted:Z

    if-eqz v4, :cond_13a

    iget-object v4, v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$fgetmMuxerPaused(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Z

    move-result v4

    if-nez v4, :cond_13a

    iget-boolean v4, v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mEOSCommit:Z

    if-eqz v4, :cond_1f

    goto/16 :goto_13a

    .line 535
    :cond_1f
    new-instance v5, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v5}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 536
    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v7, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v8, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v10, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual/range {v5 .. v10}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 537
    iput-boolean v2, v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mEOSCommit:Z

    .line 538
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    iget-wide v10, v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mStartTime:J

    sub-long/2addr v6, v10

    .line 540
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$fgetmMaxDurationLimitMap(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Landroid/util/SparseArray;

    move-result-object v0

    iget v4, v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mTimeLapse:I

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v10, 0x0

    if-eqz v0, :cond_66

    .line 541
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$fgetmMaxDurationLimitMap(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Landroid/util/SparseArray;

    move-result-object v0

    iget v4, v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mTimeLapse:I

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v12, v0

    const-wide/32 v14, 0x3938700

    mul-long/2addr v12, v14

    goto :goto_67

    :catchall_63
    move-exception v0

    goto/16 :goto_13c

    :cond_66
    move-wide v12, v10

    :goto_67
    cmp-long v0, v6, v12

    if-lez v0, :cond_81

    cmp-long v0, v12, v10

    if-lez v0, :cond_81

    .line 543
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$fgetmIsAutoTimeLapseRate(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Z

    move-result v0

    if-eqz v0, :cond_81

    const/4 v0, 0x0

    .line 544
    iput-boolean v0, v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mStarted:Z

    .line 545
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mListener:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;->onDurationOutLimit()V

    .line 546
    monitor-exit v3

    return-void

    .line 548
    :cond_81
    iget-wide v6, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v12, v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mLastWriteTime:J

    sub-long v12, v6, v12

    iget v0, v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mTimeLapse:I

    int-to-long v14, v0

    const-wide/32 v16, 0x80e8

    mul-long v14, v14, v16

    const-wide/32 v18, 0x186a0

    sub-long v14, v14, v18

    cmp-long v0, v12, v14

    if-gez v0, :cond_9a

    if-eqz v2, :cond_138

    .line 549
    :cond_9a
    iput-wide v6, v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mLastWriteTime:J

    .line 550
    iget-wide v6, v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mFrameCount:J

    const-wide/16 v12, 0x3

    rem-long/2addr v6, v12

    cmp-long v0, v6, v10

    if-nez v0, :cond_aa

    .line 551
    iget-wide v6, v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mLastTimeUs:J

    add-long/2addr v6, v8

    iput-wide v6, v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mLastTimeUs:J

    .line 553
    :cond_aa
    iget-wide v6, v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mLastTimeUs:J

    iput-wide v6, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_ae
    .catchall {:try_start_d .. :try_end_ae} :catchall_63

    .line 555
    :try_start_ae
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 556
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "writeSampleData start, mTimeLapse = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mTimeLapse:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", isEOS = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 557
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    iget v4, v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mTrack:I

    move-object/from16 v8, p1

    invoke-virtual {v0, v4, v8, v5}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 558
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeSampleData end, cost : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_fc
    .catch Ljava/lang/IllegalStateException; {:try_start_ae .. :try_end_fc} :catch_fd
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ae .. :try_end_fc} :catch_fd
    .catchall {:try_start_ae .. :try_end_fc} :catchall_63

    goto :goto_121

    :catch_fd
    move-exception v0

    .line 560
    :try_start_fe
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v4

    const-string/jumbo v5, "writeSampleData error, please check."

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 561
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x1

    .line 562
    iput-boolean v0, v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mStopWithException:Z

    .line 563
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mListener:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;->onDurationOutLimit()V

    .line 564
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$mrelease(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)V

    .line 565
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$fgetmErrorListener(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$IMediaCodecErrorListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$IMediaCodecErrorListener;->onMediaCodecException()V

    .line 567
    :goto_121
    iget-wide v4, v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mLastTimeUs:J

    add-long v4, v4, v16

    iput-wide v4, v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mLastTimeUs:J

    if-nez v2, :cond_138

    .line 568
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$fgetmNeedDropFrame(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Z

    move-result v0

    if-nez v0, :cond_138

    iget-wide v4, v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mFrameCount:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mFrameCount:J

    .line 570
    :cond_138
    monitor-exit v3

    return-void

    .line 534
    :cond_13a
    :goto_13a
    monitor-exit v3

    return-void

    .line 570
    :goto_13c
    monitor-exit v3
    :try_end_13d
    .catchall {:try_start_fe .. :try_end_13d} :catchall_63

    throw v0
.end method

.method declared-synchronized prepared()V
    .registers 2

    monitor-enter p0

    .line 625
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mListener:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;->onPrepared()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 626
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public declared-synchronized setOrientationHint(I)V
    .registers 3

    monitor-enter p0

    .line 574
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->setOrientationHint(I)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 575
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method declared-synchronized start()V
    .registers 5

    monitor-enter p0

    .line 607
    :try_start_1
    iget v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mTimeLapse:I

    const v1, 0x186a0

    if-ne v0, v1, :cond_16

    .line 608
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mListener:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;->onDurationOutLimit()V

    .line 609
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_16
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 610
    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    goto :goto_32

    :catch_16
    :cond_16
    const/4 v0, 0x1

    .line 613
    :try_start_17
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mStarted:Z

    .line 614
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 615
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mListener:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;->onStarted()V

    .line 616
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mStartTime:J

    const-wide/16 v0, 0x0

    .line 617
    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mLastTimeUs:J
    :try_end_30
    .catchall {:try_start_17 .. :try_end_30} :catchall_14

    .line 618
    monitor-exit p0

    return-void

    :goto_32
    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_14

    throw v0
.end method

.method public stop()V
    .registers 9

    .line 582
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mStarted:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 583
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mStarted:Z

    const/4 v1, -0x1

    .line 585
    :try_start_9
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v2}, Landroid/media/MediaMuxer;->release()V

    .line 586
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-wide v4, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mStartTime:J

    sub-long/2addr v2, v4

    .line 588
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$fgetmMinDurationLimitMap(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Landroid/util/SparseArray;

    move-result-object v4

    iget v5, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mTimeLapse:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_40

    .line 589
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$fgetmMinDurationLimitMap(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Landroid/util/SparseArray;

    move-result-object v4

    iget v5, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mTimeLapse:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0x3938700

    mul-long/2addr v4, v6

    goto :goto_42

    :catch_3e
    move-exception v0

    goto :goto_6c

    :cond_40
    const-wide/16 v4, 0x0

    :goto_42
    cmp-long v2, v2, v4

    if-gez v2, :cond_4e

    .line 591
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$fgetmIsAutoTimeLapseRate(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Z

    move-result v2

    if-nez v2, :cond_56

    :cond_4e
    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mFrameCount:J

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-gez v2, :cond_5c

    .line 592
    :cond_56
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mListener:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;->onDurationOutLimit()V

    return-void

    .line 593
    :cond_5c
    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mStopWithException:Z

    if-eqz v2, :cond_66

    .line 594
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mListener:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;->onStopped(I)V

    return-void

    .line 596
    :cond_66
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mListener:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;

    invoke-interface {v2, v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;->onStopped(I)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_6b} :catch_3e

    return-void

    .line 599
    :goto_6c
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    const-string v3, "TimeLapseMuxer stop"

    invoke-static {v2, v3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 600
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mListener:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;

    invoke-interface {p0, v1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;->onStopped(I)V

    return-void
.end method
