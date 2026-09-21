.class public Lcom/transsion/camera/feature/setting/livephoto/writer/LiveAudioFileDataWriter;
.super Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFileDataWriter;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAudioCaptureShot:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;

.field private final mAudioTrackId:I

.field private final mMediaMuxer:Landroid/media/MediaMuxer;

.field private final mVideoFirstKeyFrameArrivedNotifier:Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFileDataWriter$StatusNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFileDataWriter$StatusNotifier<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 12
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "LiveAudioFileDataWriter"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveAudioFileDataWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaMuxer;Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;ILcom/transsion/camera/feature/setting/livephoto/writer/LiveFileDataWriter$StatusNotifier;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaMuxer;",
            "Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;",
            "I",
            "Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFileDataWriter$StatusNotifier<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFileDataWriter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveAudioFileDataWriter;->mMediaMuxer:Landroid/media/MediaMuxer;

    .line 24
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveAudioFileDataWriter;->mAudioCaptureShot:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;

    .line 25
    iput p3, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveAudioFileDataWriter;->mAudioTrackId:I

    .line 26
    iput-object p4, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveAudioFileDataWriter;->mVideoFirstKeyFrameArrivedNotifier:Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFileDataWriter$StatusNotifier;

    return-void
.end method


# virtual methods
.method public writeSample()J
    .registers 21

    move-object/from16 v0, p0

    .line 33
    iget-object v1, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveAudioFileDataWriter;->mVideoFirstKeyFrameArrivedNotifier:Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFileDataWriter$StatusNotifier;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_23

    .line 34
    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFileDataWriter$StatusNotifier;->getStatus()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Long;

    if-eqz v1, :cond_23

    .line 35
    array-length v6, v1

    const/4 v7, 0x2

    if-lt v6, v7, :cond_23

    .line 36
    aget-object v6, v1, v3

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 37
    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_25

    :cond_23
    move-wide v6, v4

    move-wide v8, v6

    .line 41
    :goto_25
    iget-object v1, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveAudioFileDataWriter;->mAudioCaptureShot:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;

    iget-wide v10, v1, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;->head:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    add-long/2addr v10, v6

    .line 42
    iget-object v1, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveAudioFileDataWriter;->mAudioCaptureShot:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;

    iget-wide v6, v1, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;->tail:J

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, -0x1

    .line 50
    :goto_39
    :try_start_39
    iget-object v1, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveAudioFileDataWriter;->mAudioCaptureShot:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;

    iget-object v1, v1, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;->samples:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;

    .line 51
    iget-object v12, v1, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;->mData:Ljava/nio/ByteBuffer;

    .line 52
    iget-object v1, v1, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 53
    invoke-virtual {v12}, Ljava/nio/Buffer;->limit()I

    move-result v13

    if-eqz v13, :cond_53

    iget v13, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_4f
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_4f} :catch_c0

    const/4 v14, 0x4

    and-int/2addr v13, v14

    if-eqz v13, :cond_57

    :cond_53
    move/from16 v19, v3

    goto/16 :goto_c3

    :cond_57
    move v15, v3

    .line 57
    :try_start_58
    iget-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v16, v2, v10

    if-ltz v16, :cond_62

    cmp-long v16, v2, v6

    if-lez v16, :cond_65

    :cond_62
    move/from16 v19, v15

    goto :goto_a6

    :cond_65
    sub-long v17, v2, v4

    cmp-long v17, v8, v17

    if-gez v17, :cond_a1

    if-nez v15, :cond_80

    .line 64
    iget-object v13, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveAudioFileDataWriter;->mAudioCaptureShot:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;
    :try_end_6f
    .catch Ljava/lang/InterruptedException; {:try_start_58 .. :try_end_6f} :catch_7d

    move/from16 v19, v15

    :try_start_71
    iget-wide v14, v13, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;->head:J

    sub-long v14, v2, v14

    iput-wide v14, v13, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;->offset:J
    :try_end_77
    .catch Ljava/lang/InterruptedException; {:try_start_71 .. :try_end_77} :catch_7a

    move-wide v4, v2

    const/4 v3, 0x1

    goto :goto_84

    :catch_7a
    :goto_7a
    move/from16 v3, v19

    goto :goto_e6

    :catch_7d
    move/from16 v19, v15

    goto :goto_7a

    :cond_80
    move/from16 v19, v15

    move/from16 v3, v19

    :goto_84
    if-ltz v16, :cond_91

    .line 70
    :try_start_86
    sget-object v2, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveAudioFileDataWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v13, "writeSample: stop writing as reaching the ending timestamp"

    invoke-static {v2, v13}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v2, 0x4

    .line 71
    iput v2, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 74
    :cond_91
    iget-wide v13, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long/2addr v13, v4

    iput-wide v13, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 75
    iget-object v2, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveAudioFileDataWriter;->mMediaMuxer:Landroid/media/MediaMuxer;

    iget v13, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveAudioFileDataWriter;->mAudioTrackId:I

    invoke-virtual {v2, v13, v12, v1}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 76
    iget-wide v1, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_9f
    .catch Ljava/lang/InterruptedException; {:try_start_86 .. :try_end_9f} :catch_e6

    move-wide v8, v1

    goto :goto_a4

    :cond_a1
    move/from16 v19, v15

    goto :goto_bd

    :goto_a4
    const/4 v2, 0x1

    goto :goto_39

    .line 59
    :goto_a6
    :try_start_a6
    sget-object v1, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveAudioFileDataWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "writeSample: skip frame outside stable interval, timestamp: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_bd
    move/from16 v3, v19

    goto :goto_a4

    :catch_c0
    move/from16 v19, v3

    goto :goto_e6

    .line 54
    :goto_c3
    sget-object v1, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveAudioFileDataWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v2, "writeSample, finish"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_cb
    .catch Ljava/lang/InterruptedException; {:try_start_a6 .. :try_end_cb} :catch_7a

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeSample: duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 83
    iget-object v0, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveAudioFileDataWriter;->mAudioCaptureShot:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;->clear()V

    return-wide v8

    .line 79
    :catch_e6
    :goto_e6
    sget-object v1, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveAudioFileDataWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v2, "writeSample: interrupted exception"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_a4
.end method
