.class public Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$HWEncodeParams;,
        Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static ENCODE_RESOLUTION_ALIGN:I = 0x10

.field private static final MASK_BIT_RATE:I = 0x1

.field private static final MASK_FORCE_RESTART:I = 0x4

.field private static final MASK_FRAME_RATE:I = 0x2

.field private static MAX_FRAME_RATE:I = 0x7d0

.field private static MAX_PRODUCT_OF_SIZE_AND_FPS:J = -0x1L

.field private static final MIMETYPE_VIDEO_AVC:Ljava/lang/String; = "video/avc"

.field private static final MIMETYPE_VIDEO_BYTEVC1:Ljava/lang/String; = "video/hevc"

.field private static final MIMETYPE_VIDEO_MPEG4:Ljava/lang/String; = "video/mp4v-es"

.field private static MIN_FRAME_RATE:I = 0x7

.field private static final TAG:Ljava/lang/String; = "TEAvcEncoder"

.field private static final TIMEOUT_USEC:I = 0x0

.field private static final TIMEOUT_USEC_EOS:I = 0x2710

.field private static final TIMEOUT_USEC_SYNC:I = 0x2710

.field private static avcqueuesize:I = 0x19

.field private static file_count:I


# instance fields
.field public AVCQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;",
            ">;"
        }
    .end annotation
.end field

.field private final ENCODE_COUNT_DEFAULT:I

.field private MINIMUM_KEY_FRAME_PTS_DISTANCE_IN_US:J

.field public configByte:[B

.field private configWaitingFrameCounter:I

.field private isEnableHwEncoderOpt:Z

.field private mBufferIndex:I

.field public mByteBuf:Ljava/nio/ByteBuffer;

.field private mEnableOperatingRate:Z

.field private mEncFrameCount:J

.field private mEndOfStream:Z

.field private mFirstFrame:Z

.field private mFirstFrameTimestamp:J

.field private mGOPSize:J

.field private mLastEncodeFramePTS:J

.field private mLastFramePTS:J

.field private mLastKeyFramePTS:J

.field private mPicBufferCount:J

.field private mPicEncodeCount:J

.field private mPicSendCount:J

.field private mTotalFrameCount:J

.field private m_MediaCodecDecInstance:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;

.field private m_PTSQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private m_TransitionKeyframeRatio:D

.field private m_bByteVC110BitHWDecoder:Z

.field private m_bColorRangeFull:I

.field private m_bEncodeOESTexture:Z

.field private m_bEncoderBanExtraDataLoop:Z

.field private m_bEncoderGLContextReuse:Z

.field private m_bIsStartEncoder:Z

.field private m_bNeedSingalEnd:Z

.field private m_bSignalEndOfStream:Z

.field private m_bSuccessInit:Z

.field private m_bitRate:I

.field private m_codecFormat:Landroid/media/MediaFormat;

.field private m_codec_type:I

.field private m_colorFormat:I

.field private m_colorTrc:I

.field private m_colorspace:I

.field private m_configStatus:I

.field private m_dHpBitrateRatio:D

.field private m_eglStateSaver:Lcom/ss/android/ttve/common/TEEglStateSaver;

.field private m_encodeStartTime:J

.field private m_frameRate:I

.field private m_getnerateIndex:J

.field private m_height:I

.field private m_height_align:I

.field private m_iFrameInternal:I

.field private m_isNeedReconfigure:Z

.field private m_lastCodecData:Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;

.field private m_level:I

.field private m_maxBitRate:I

.field private m_mediaCodec:Landroid/media/MediaCodec;

.field private m_mime_type:Ljava/lang/String;

.field private m_profile:I

.field private m_sharedContext:Lcom/ss/android/ttve/common/TESharedContext;

.field private m_surface:Landroid/view/Surface;

.field private m_textureDrawer:Lcom/ss/android/ttve/common/TETextureDrawer;

.field private m_textureOESDrawer:Lcom/ss/android/ttve/common/TETextureOESDrawer;

.field private m_useInputSurface:Z

.field private m_width:I

.field private m_width_align:I

.field private pps:[B

.field private sps:[B


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 10

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 78
    iput v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->ENCODE_COUNT_DEFAULT:I

    .line 83
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    sget v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->avcqueuesize:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->AVCQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 84
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_PTSQueue:Ljava/util/Queue;

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->configByte:[B

    .line 86
    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    .line 87
    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    .line 88
    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_surface:Landroid/view/Surface;

    const/4 v1, 0x0

    .line 92
    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codec_type:I

    .line 93
    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_width:I

    .line 94
    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_height:I

    .line 95
    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_width_align:I

    .line 96
    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_height_align:I

    .line 97
    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_frameRate:I

    .line 98
    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_colorFormat:I

    .line 99
    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bitRate:I

    .line 100
    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_maxBitRate:I

    .line 101
    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_iFrameInternal:I

    .line 102
    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_profile:I

    .line 103
    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_colorspace:I

    .line 104
    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bColorRangeFull:I

    .line 105
    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_colorTrc:I

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    .line 106
    iput-wide v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_dHpBitrateRatio:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 107
    iput-wide v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_TransitionKeyframeRatio:D

    .line 108
    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_level:I

    const/4 v2, 0x1

    .line 109
    iput-boolean v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_useInputSurface:Z

    const-wide/16 v3, 0x0

    .line 110
    iput-wide v3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_getnerateIndex:J

    .line 113
    const-string v5, "video/avc"

    iput-object v5, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mime_type:Ljava/lang/String;

    .line 115
    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_lastCodecData:Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;

    .line 117
    iput-boolean v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bSuccessInit:Z

    .line 118
    iput-boolean v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_isNeedReconfigure:Z

    .line 119
    iput-boolean v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bNeedSingalEnd:Z

    .line 120
    iput-boolean v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bSignalEndOfStream:Z

    .line 122
    iput-boolean v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bByteVC110BitHWDecoder:Z

    .line 124
    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_configStatus:I

    const-wide/16 v5, -0x1

    .line 126
    iput-wide v5, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_encodeStartTime:J

    .line 130
    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_textureOESDrawer:Lcom/ss/android/ttve/common/TETextureOESDrawer;

    .line 131
    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_MediaCodecDecInstance:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;

    .line 132
    iput-boolean v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bEncodeOESTexture:Z

    .line 134
    iput-boolean v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bIsStartEncoder:Z

    .line 135
    iput-boolean v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bEncoderGLContextReuse:Z

    .line 136
    iput-boolean v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bEncoderBanExtraDataLoop:Z

    .line 137
    iput-boolean v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->isEnableHwEncoderOpt:Z

    .line 138
    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->configWaitingFrameCounter:I

    const-wide/high16 v7, -0x8000000000000000L

    .line 140
    iput-wide v7, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mFirstFrameTimestamp:J

    .line 146
    iput-wide v3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mLastKeyFramePTS:J

    const-wide/32 v7, 0x7a120

    .line 147
    iput-wide v7, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->MINIMUM_KEY_FRAME_PTS_DISTANCE_IN_US:J

    .line 148
    iput-wide v3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mEncFrameCount:J

    .line 149
    iput-wide v3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mTotalFrameCount:J

    .line 150
    iput-wide v5, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mLastFramePTS:J

    .line 151
    iput-wide v5, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mGOPSize:J

    .line 153
    iput-boolean v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mEnableOperatingRate:Z

    .line 156
    iput-wide v5, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mLastEncodeFramePTS:J

    .line 158
    iput-wide v3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mPicBufferCount:J

    .line 160
    iput-wide v3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mPicEncodeCount:J

    .line 162
    iput-wide v3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mPicSendCount:J

    .line 167
    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mByteBuf:Ljava/nio/ByteBuffer;

    .line 551
    iput-boolean v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mFirstFrame:Z

    .line 552
    iput-boolean v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mEndOfStream:Z

    const/4 v0, -0x1

    .line 553
    iput v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mBufferIndex:I

    return-void
.end method

.method private addOutputData([BLandroid/media/MediaCodec$BufferInfo;)V
    .registers 12

    .line 1554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encode: pts queue size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_PTSQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " avc sdata size= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->AVCQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TEAvcEncoder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_PTSQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/16 v2, 0x8

    if-gtz v0, :cond_4f

    iget v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_profile:I

    if-lt v0, v2, :cond_4f

    .line 1556
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "encode: no available pts!!! profile "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_profile:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1560
    :cond_4f
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_PTSQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-gtz v0, :cond_5d

    .line 1561
    const-string p0, "encode: no available pts!!!"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1565
    :cond_5d
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_PTSQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1566
    iget-wide v5, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_72

    goto :goto_73

    :cond_72
    move-wide v5, v7

    .line 1567
    :goto_73
    iget v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_profile:I

    if-lt v0, v2, :cond_7c

    const-wide/32 v7, 0x30d40

    sub-long/2addr v3, v7

    goto :goto_7d

    :cond_7c
    move-wide v3, v5

    .line 1572
    :goto_7d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dts = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", pts = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " add codecdata-encode AVCQueue-size= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->AVCQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1573
    new-instance v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;

    invoke-direct {v0}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;-><init>()V

    .line 1574
    iput-object p1, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;->data:[B

    .line 1575
    iput-wide v5, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;->pts:J

    .line 1576
    iput-wide v3, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;->dts:J

    .line 1577
    iget p1, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput p1, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;->flag:I

    .line 1580
    :try_start_b6
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->AVCQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_bb} :catch_bc

    return-void

    :catch_bc
    move-exception p0

    .line 1582
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private cleanUpMediaCodec()I
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .line 1589
    const-string v0, "TEAvcEncoder"

    iget-boolean v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mEndOfStream:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    return v2

    :cond_8
    const/16 v1, -0xd5

    .line 1593
    :try_start_a
    iget-object v3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Landroid/media/MediaCodec;->signalEndOfInputStream()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_12

    goto :goto_14

    :catch_12
    move-exception p0

    goto :goto_77

    :cond_14
    :goto_14
    const/16 v3, 0x1e

    .line 1603
    :goto_16
    iget-boolean v4, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mEndOfStream:Z

    if-nez v4, :cond_3c

    if-lez v3, :cond_3c

    const-wide/16 v4, 0x2710

    .line 1604
    invoke-direct {p0, v4, v5}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->drainOutputBuffer(J)I

    move-result v4

    if-eqz v4, :cond_39

    .line 1606
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CleanUpMediaCodec drainOutputBuffer failed ret: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_39
    add-int/lit8 v3, v3, -0x1

    goto :goto_16

    .line 1611
    :cond_3c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CleanUpMediaCodec: cnt= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mEndOfStream = "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mEndOfStream:Z

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    iget-boolean v3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mEndOfStream:Z

    if-nez v3, :cond_64

    .line 1613
    const-string p0, "CleanUpMediaCodec: Not reaching end of stream but encoder is alive so let\'s keep it going!"

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 1617
    :cond_64
    invoke-virtual {p0}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->restartEncoder()I

    move-result p0

    if-gez p0, :cond_76

    .line 1619
    const-string p0, "CleanupMediaCodec restartEncoder failed"

    new-array v2, v2, [Lcom/ss/android/vesdk/VELogUtil$LogData;

    invoke-static {v0, p0, v2}, Lcom/ss/android/vesdk/VELogUtil;->formatLog(Ljava/lang/String;Ljava/lang/String;[Lcom/ss/android/vesdk/VELogUtil$LogData;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_76
    return v2

    .line 1595
    :goto_77
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 1596
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1597
    invoke-virtual {p0, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1598
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CleanUpMediaCodec signalEndOfInputStream exception:"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v2, v2, [Lcom/ss/android/vesdk/VELogUtil$LogData;

    invoke-static {v0, p0, v2}, Lcom/ss/android/vesdk/VELogUtil;->formatLog(Ljava/lang/String;Ljava/lang/String;[Lcom/ss/android/vesdk/VELogUtil$LogData;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private configEncode()I
    .registers 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .line 180
    const-string v0, "TEAvcEncoder"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    if-eqz v2, :cond_e

    .line 181
    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    goto :goto_e

    :catch_b
    move-exception p0

    goto/16 :goto_f0

    .line 183
    :cond_e
    :goto_e
    iget-object v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_surface:Landroid/view/Surface;

    const/4 v3, 0x0

    if-eqz v2, :cond_18

    .line 184
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 185
    iput-object v3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_surface:Landroid/view/Surface;

    .line 187
    :cond_18
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v2

    const-string v4, "ve_mediacodec_resource_reasonable_distribute"

    invoke-virtual {v2, v4, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_63

    .line 188
    sput-boolean v4, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sHWEncoderStateIsBeforeRunning:Z

    .line 189
    iget v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_width_align:I

    iget v5, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_height_align:I

    mul-int/2addr v2, v5

    iget v5, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_frameRate:I

    mul-int/2addr v2, v5

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v2, v5}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->tryUseCodecBlocksSize(II)Z

    move-result v2

    if-nez v2, :cond_63

    .line 190
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR_HW_OVERLOAD, MaxCodecBlocksSize is: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->getMaxCodecBlocksSize()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", UsedCodecBlocksSize is: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-static {}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->getUsedCodecBlocksSize()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 190
    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 195
    :cond_63
    iget-object v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mime_type:Ljava/lang/String;

    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    .line 196
    invoke-virtual {v2}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v2

    .line 197
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    .line 198
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "configEncode supports "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    aget-object v5, v5, v1

    invoke-virtual {v2, v5}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v5

    .line 200
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "configEncode caps "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OMX.google."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c4

    .line 203
    const-string p0, "TEAvcEncoder mediaCodecInfo Name() startsWith OMX.google."

    new-array v2, v1, [Lcom/ss/android/vesdk/VELogUtil$LogData;

    invoke-static {v0, p0, v2}, Lcom/ss/android/vesdk/VELogUtil;->formatLog(Ljava/lang/String;Ljava/lang/String;[Lcom/ss/android/vesdk/VELogUtil$LogData;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x2

    return p0

    .line 208
    :cond_c4
    invoke-direct {p0, v2}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->reconfigureMediaFormat(Landroid/media/MediaCodecInfo;)I

    move-result v2

    if-eqz v2, :cond_d7

    .line 209
    const-string p0, "TEAvcEncoder reconfigureMediaFormat failed"

    new-array v2, v1, [Lcom/ss/android/vesdk/VELogUtil$LogData;

    invoke-static {v0, p0, v2}, Lcom/ss/android/vesdk/VELogUtil;->formatLog(Ljava/lang/String;Ljava/lang/String;[Lcom/ss/android/vesdk/VELogUtil$LogData;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x3

    return p0

    .line 213
    :cond_d7
    iget-object v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    iget-object v5, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    invoke-virtual {v2, v5, v3, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 214
    iget-boolean v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_useInputSurface:Z

    if-eqz v2, :cond_ef

    .line 215
    const-string v2, "m_mediaCodec.createInputSurface()"

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v2

    iput-object v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_surface:Landroid/view/Surface;
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_ef} :catch_b

    :cond_ef
    return v1

    .line 219
    :goto_f0
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 220
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 221
    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 222
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TEAvcEncoder configEncode Exception"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Lcom/ss/android/vesdk/VELogUtil$LogData;

    invoke-static {v0, p0, v1}, Lcom/ss/android/vesdk/VELogUtil;->formatLog(Ljava/lang/String;Ljava/lang/String;[Lcom/ss/android/vesdk/VELogUtil$LogData;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x4

    return p0
.end method

.method public static convertTexToBitmap(III)Landroid/graphics/Bitmap;
    .registers 4

    .line 715
    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->readTextureToByteBuffer(III)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 716
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 717
    invoke-virtual {p1, p0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    return-object p1
.end method

.method public static createEncoderObject()Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;
    .registers 1

    .line 164
    new-instance v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;

    invoke-direct {v0}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;-><init>()V

    return-object v0
.end method

.method private drainOutputBuffer(J)I
    .registers 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1650
    const-string v0, "drainOutputBuffer exception:"

    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 1651
    const-string v2, "drainOutputBuffer before dequeueOutputBuffer"

    const-string v3, "TEAvcEncoder"

    invoke-static {v3, v2}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    .line 1652
    iput v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mBufferIndex:I

    const/16 v4, -0xd6

    const/4 v5, 0x0

    .line 1654
    :try_start_14
    iget-object v6, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v6, v1, p1, p2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v6

    iput v6, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mBufferIndex:I

    .line 1655
    iget-object v7, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->configByte:[B

    if-nez v7, :cond_3a

    if-ne v6, v2, :cond_3a

    .line 1656
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configByte = null and mBufferIndex = MediaCodec.INFO_TRY_AGAIN_LATER, timeoutUs: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_36} :catch_37

    goto :goto_3a

    :catch_37
    move-exception p0

    goto/16 :goto_163

    .line 1666
    :cond_3a
    :goto_3a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HW_ENCODE drainOutputBuffer mBufferIndex "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mBufferIndex:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " buffer-flag= "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    :goto_5a
    iget v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mBufferIndex:I

    if-ltz v2, :cond_10c

    .line 1670
    invoke-direct {p0, v2}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->getOutputBufferByIdx(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1671
    iget v6, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v7, v6, [B

    .line 1672
    iget v8, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1673
    iget v8, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v9, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v8, v9

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1675
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1676
    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v8, 0x2

    if-ne v2, v8, :cond_83

    .line 1677
    const-string v2, "HW_ENCODE drainOutputBuffer BUFFER_FLAG_CODEC_CONFIG"

    invoke-static {v3, v2}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1678
    iput-object v7, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->configByte:[B

    goto :goto_d0

    :cond_83
    const-wide/16 v8, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x4

    if-ne v2, v10, :cond_b9

    .line 1687
    const-string v2, "HW_ENCODE drainOutputBuffer data BUFFER_FLAG_KEY_FRAME"

    invoke-static {v3, v2}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    iget-object v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->configByte:[B

    if-eqz v2, :cond_ab

    .line 1690
    aget-byte v10, v7, v11

    aget-byte v12, v2, v11

    if-ne v10, v12, :cond_b0

    array-length v10, v2

    add-int/2addr v10, v11

    aget-byte v10, v7, v10

    and-int/lit8 v10, v10, 0x1f

    const/4 v11, 0x5

    if-ne v10, v11, :cond_b0

    .line 1691
    array-length v10, v2

    sub-int/2addr v6, v10

    new-array v10, v6, [B

    .line 1692
    array-length v2, v2

    invoke-static {v7, v2, v10, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v7, v10

    goto :goto_b0

    .line 1698
    :cond_ab
    const-string v2, "I can\'t find configByte!!!! NEED extract from I frame!!!"

    invoke-static {v3, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    :cond_b0
    :goto_b0
    invoke-direct {p0, v7, v1}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->addOutputData([BLandroid/media/MediaCodec$BufferInfo;)V

    .line 1703
    iget-wide v6, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mPicEncodeCount:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mPicEncodeCount:J

    goto :goto_d0

    :cond_b9
    if-ne v2, v11, :cond_c3

    .line 1705
    const-string p1, "HW_ENCODE drainOutputBuffer BUFFER_FLAG_END_OF_STREAM"

    invoke-static {v3, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1706
    iput-boolean v10, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mEndOfStream:Z

    goto :goto_10c

    .line 1709
    :cond_c3
    const-string v2, "HW_ENCODE drainOutputBuffer data"

    invoke-static {v3, v2}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    invoke-direct {p0, v7, v1}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->addOutputData([BLandroid/media/MediaCodec$BufferInfo;)V

    .line 1711
    iget-wide v6, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mPicEncodeCount:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mPicEncodeCount:J

    .line 1715
    :goto_d0
    :try_start_d0
    iget-object v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    iget v6, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mBufferIndex:I

    invoke-virtual {v2, v6, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1716
    iget-object v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1, p1, p2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    iput v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mBufferIndex:I
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_df} :catch_e1

    goto/16 :goto_5a

    :catch_e1
    move-exception p0

    .line 1719
    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 1720
    new-instance p2, Ljava/io/PrintWriter;

    invoke-direct {p2, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1721
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1722
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v5, [Lcom/ss/android/vesdk/VELogUtil$LogData;

    invoke-static {v3, p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->formatLog(Ljava/lang/String;Ljava/lang/String;[Lcom/ss/android/vesdk/VELogUtil$LogData;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 1727
    :cond_10c
    :goto_10c
    iget p1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mBufferIndex:I

    const/4 p2, -0x2

    if-ne p1, p2, :cond_162

    .line 1728
    const-string p1, "HW_ENCODE drainOutputBuffer INFO_OUTPUT_FORMAT_CHANGED"

    invoke-static {v3, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    iget-object p1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p1

    .line 1730
    const-string p2, "csd-0"

    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 1731
    const-string v0, "csd-1"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p1

    if-eqz p2, :cond_138

    .line 1734
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->sps:[B

    .line 1735
    array-length v0, v0

    goto :goto_139

    :cond_138
    move v0, v5

    :goto_139
    if-eqz p1, :cond_149

    .line 1739
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->pps:[B

    .line 1740
    array-length v1, v1

    add-int/2addr v0, v1

    .line 1742
    :cond_149
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->configByte:[B

    if-eqz p2, :cond_155

    .line 1744
    iget-object p2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->sps:[B

    array-length v1, p2

    invoke-static {p2, v5, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_155
    if-eqz p1, :cond_162

    .line 1748
    iget-object p1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->pps:[B

    iget-object p2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->configByte:[B

    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->sps:[B

    array-length p0, p0

    array-length v0, p1

    invoke-static {p1, v5, p2, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_162
    return v5

    .line 1660
    :goto_163
    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 1661
    new-instance p2, Ljava/io/PrintWriter;

    invoke-direct {p2, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1662
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1663
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v5, [Lcom/ss/android/vesdk/VELogUtil$LogData;

    invoke-static {v3, p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->formatLog(Ljava/lang/String;Ljava/lang/String;[Lcom/ss/android/vesdk/VELogUtil$LogData;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method private forceToPrepareKeyFrame()I
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .line 1627
    const-string v0, "HW_ENCODE forceToPrepareKeyFrame"

    const-string v1, "TEAvcEncoder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    const/16 v0, 0x1e

    .line 1631
    :cond_e
    iget-boolean v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mEndOfStream:Z

    if-nez v2, :cond_38

    const-wide/16 v2, 0x2710

    .line 1632
    invoke-direct {p0, v2, v3}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->drainOutputBuffer(J)I

    move-result v2

    if-eqz v2, :cond_2f

    .line 1634
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "forceToPrepareKeyFrame failed ret: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 1637
    :cond_2f
    iget v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mBufferIndex:I

    if-ltz v2, :cond_34

    goto :goto_38

    :cond_34
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_e

    .line 1642
    :cond_38
    :goto_38
    invoke-virtual {p0}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->restartEncoder()I

    const/4 p0, 0x0

    return p0
.end method

.method private getInputBufferByIdx(I)Ljava/nio/ByteBuffer;
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1536
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private getOutputBufferByIdx(I)Ljava/nio/ByteBuffer;
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1546
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static readTextureToByteBuffer(III)Ljava/nio/ByteBuffer;
    .registers 16

    const/4 v0, 0x1

    .line 722
    new-array v1, v0, [I

    .line 723
    new-array v2, v0, [I

    const v3, 0x8ca6

    const/4 v4, 0x0

    .line 724
    invoke-static {v3, v2, v4}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 725
    invoke-static {v0, v1, v4}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 726
    aget v3, v1, v4

    const v5, 0x8d40

    invoke-static {v5, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v3, 0x8ce0

    const/16 v6, 0xde1

    .line 727
    invoke-static {v5, v3, v6, p0, v4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    mul-int p0, p1, p2

    mul-int/lit8 p0, p0, 0x4

    .line 728
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    const/16 v10, 0x1908

    const/16 v11, 0x1401

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, p1

    move v9, p2

    .line 729
    invoke-static/range {v6 .. v12}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 730
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 731
    aget p0, v2, v4

    invoke-static {v5, p0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 732
    invoke-static {v0, v1, v4}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    return-object v12
.end method

.method private reconfigureMediaFormat(Landroid/media/MediaCodecInfo;)I
    .registers 14
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .line 1191
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v0

    .line 1192
    const-string v1, "CodecNames:"

    const-string v2, "TEAvcEncoder"

    invoke-static {v2, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    array-length v1, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_e
    if-ge v4, v1, :cond_29

    aget-object v5, v0, v4

    .line 1194
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Codec: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 1197
    :cond_29
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mime_type:Ljava/lang/String;

    iget v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_width_align:I

    iget v4, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_height_align:I

    invoke-static {v0, v1, v4}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    .line 1198
    const-string v1, "color-format"

    iget v4, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_colorFormat:I

    invoke-virtual {v0, v1, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1199
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    const-string v1, "bitrate"

    iget v4, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bitRate:I

    invoke-virtual {v0, v1, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1200
    iget v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_frameRate:I

    .line 1201
    sget-wide v4, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->MAX_PRODUCT_OF_SIZE_AND_FPS:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_5c

    .line 1202
    iget v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_width_align:I

    iget v8, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_height_align:I

    mul-int/2addr v1, v8

    int-to-long v8, v1

    div-long/2addr v4, v8

    int-to-long v8, v0

    cmp-long v1, v8, v4

    if-lez v1, :cond_5c

    long-to-int v0, v4

    .line 1207
    :cond_5c
    iget-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    const-string v4, "frame-rate"

    invoke-virtual {v1, v4, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1208
    iget-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    const-string v4, "i-frame-interval"

    iget v5, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_iFrameInternal:I

    invoke-virtual {v1, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1211
    iget v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_iFrameInternal:I

    mul-int/2addr v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mGOPSize:J

    .line 1212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " m_colorspace "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_colorspace:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " m_bColorRangeFull "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bColorRangeFull:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " m_colorTrc "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_colorTrc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_color_space_for_2020"

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object v0

    if-eqz v0, :cond_c1

    .line 1215
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_c1

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_c1

    .line 1216
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_c2

    :cond_c1
    move v0, v3

    :goto_c2
    if-nez v0, :cond_c8

    .line 1219
    iget-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_useInputSurface:Z

    if-nez v0, :cond_e3

    .line 1220
    :cond_c8
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    const-string v1, "color-standard"

    iget v4, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_colorspace:I

    invoke-virtual {v0, v1, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1221
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    const-string v1, "color-range"

    iget v4, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bColorRangeFull:I

    invoke-virtual {v0, v1, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1222
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    const-string v1, "color-transfer"

    iget v4, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_colorTrc:I

    invoke-virtual {v0, v1, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1224
    :cond_e3
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mime_type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    .line 1225
    invoke-direct {p0, v0}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->setProfile(Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    .line 1226
    invoke-direct {p0, p1}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->setCacMode(Landroid/media/MediaCodecInfo;)V

    .line 1228
    invoke-direct {p0, p1}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->setQpParameters(Landroid/media/MediaCodecInfo;)V

    .line 1230
    iput-wide v6, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mEncFrameCount:J

    .line 1232
    iget p1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_width_align:I

    .line 1233
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget p1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_height_align:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget p1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_frameRate:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget p1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_iFrameInternal:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget p1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bitRate:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget p1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_colorFormat:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget p1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codec_type:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-wide p0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mGOPSize:J

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    filled-new-array/range {v4 .. v11}, [Ljava/lang/Object;

    move-result-object p0

    .line 1232
    const-string p1, "RequestSyncFrame width:[%d] height:[%d] frameRate:[%d] iFrameInternal:[%d] bitRate:[%d] colorFormat:[%d] codec_type:[%d] gop_size: [%d]"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public static saveFrameToFile(IIIJ)Z
    .registers 5

    const/4 p0, 0x1

    return p0
.end method

.method private setBitRateMode(Landroid/media/MediaCodecInfo$CodecCapabilities;)V
    .registers 6

    .line 1312
    const-string v0, "BITRATE_MODE_VBR"

    const-string v1, "BITRATE_MODE_CBR"

    const-string v2, "BITRATE_MODE_CQ"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 1314
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getEncoderCapabilities()Landroid/media/MediaCodecInfo$EncoderCapabilities;

    move-result-object p1

    const/4 v1, 0x0

    :goto_f
    const/4 v2, 0x3

    if-ge v1, v2, :cond_34

    .line 1316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->isBitrateModeSupported(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TEAvcEncoder"

    invoke-static {v3, v2}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1318
    :cond_34
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    const-string p1, "bitrate-mode"

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-void
.end method

.method private setByteVC110BitHWDecoderFlag(Z)V
    .registers 2

    .line 1764
    iput-boolean p1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bByteVC110BitHWDecoder:Z

    return-void
.end method

.method private setCacMode(Landroid/media/MediaCodecInfo;)V
    .registers 4

    .line 1521
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1523
    const-string v0, ".qcom."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, ".qti."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_42

    .line 1524
    :cond_18
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p1

    const-string v0, "ve_content_adaptive_coding_mode"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;I)I

    move-result p1

    .line 1525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set cac value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TEAvcEncoder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_42

    .line 1527
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    const-string v0, "vendor.qti-ext-enc-content-adaptive-mode.value"

    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_42
    return-void
.end method

.method public static setEncodeParams(Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$HWEncodeParams;)V
    .registers 4

    .line 1768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEncodeParams "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$HWEncodeParams;->maxProductOfSizeAndFps:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TEAvcEncoder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    iget-wide v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$HWEncodeParams;->maxProductOfSizeAndFps:J

    sput-wide v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->MAX_PRODUCT_OF_SIZE_AND_FPS:J

    return-void
.end method

.method public static setEncodeResolutionAlign(I)V
    .registers 1

    .line 1791
    sput p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->ENCODE_RESOLUTION_ALIGN:I

    return-void
.end method

.method private setEncoder(IIIIIIIIDIII)V
    .registers 16
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/4 v0, 0x0

    .line 322
    iput v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_configStatus:I

    .line 323
    iput p1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codec_type:I

    .line 324
    sget-object v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;->ENCODE_STANDARD_ByteVC1:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_12

    .line 325
    const-string p1, "video/hevc"

    iput-object p1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mime_type:Ljava/lang/String;

    goto :goto_23

    .line 326
    :cond_12
    sget-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;->ENCODE_STANDARD_MPEG4:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_1f

    .line 327
    const-string p1, "video/mp4v-es"

    iput-object p1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mime_type:Ljava/lang/String;

    goto :goto_23

    .line 329
    :cond_1f
    const-string p1, "video/avc"

    iput-object p1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mime_type:Ljava/lang/String;

    :goto_23
    if-lez p2, :cond_29

    .line 333
    iput p2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_width:I

    .line 334
    iput p2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_width_align:I

    :cond_29
    if-lez p3, :cond_2f

    .line 338
    iput p3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_height:I

    .line 339
    iput p3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_height_align:I

    .line 342
    :cond_2f
    iget p1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_width_align:I

    iget p2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_height_align:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 356
    const-string p1, "TEAvcEncoder"

    const/4 p2, 0x1

    if-lez p4, :cond_a1

    .line 357
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p3

    const-string v1, "ve_enable_limit_min_encode_fps"

    invoke-virtual {p3, v1, p2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_6c

    .line 358
    sget p3, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->MIN_FRAME_RATE:I

    if-ge p4, p3, :cond_6c

    .line 359
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    sget v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->MIN_FRAME_RATE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p4, v1}, [Ljava/lang/Object;

    move-result-object p4

    const-string v1, "_frameRate:[%d] is too small, change to %d"

    invoke-static {p3, v1, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 360
    invoke-static {p1, p3}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    sget p4, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->MIN_FRAME_RATE:I

    .line 364
    :cond_6c
    sget p3, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->MAX_FRAME_RATE:I

    if-le p4, p3, :cond_8d

    .line 365
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    sget v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->MAX_FRAME_RATE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p4, v1}, [Ljava/lang/Object;

    move-result-object p4

    const-string v1, "_frameRate:[%d] is too large, change to %d"

    invoke-static {p3, v1, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 366
    invoke-static {p1, p3}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    sget p4, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->MAX_FRAME_RATE:I

    .line 370
    :cond_8d
    iget p3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_frameRate:I

    if-eq p3, p4, :cond_a1

    .line 371
    iput p4, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_frameRate:I

    .line 372
    iget p3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_iFrameInternal:I

    if-ge p4, p3, :cond_99

    .line 373
    iput p4, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_iFrameInternal:I

    .line 375
    :cond_99
    iput-boolean p2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_isNeedReconfigure:Z

    .line 376
    iget p3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_configStatus:I

    or-int/lit8 p3, p3, 0x2

    iput p3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_configStatus:I

    :cond_a1
    if-lez p5, :cond_b2

    .line 381
    iput p5, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_maxBitRate:I

    .line 382
    iget p3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bitRate:I

    if-eq p3, p5, :cond_b2

    .line 383
    iput p5, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bitRate:I

    .line 384
    iput-boolean p2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_isNeedReconfigure:Z

    .line 385
    iget p3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_configStatus:I

    or-int/2addr p3, p2

    iput p3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_configStatus:I

    :cond_b2
    if-ltz p6, :cond_b6

    .line 390
    iput p6, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_iFrameInternal:I

    :cond_b6
    if-lez p7, :cond_ba

    .line 393
    iput p7, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_colorFormat:I

    .line 395
    :cond_ba
    iget p3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codec_type:I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    if-ne p3, p4, :cond_c5

    .line 397
    iput p2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_profile:I

    goto :goto_cd

    :cond_c5
    const/16 p3, 0x40

    .line 399
    invoke-static {p8, p2, p3}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p2

    iput p2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_profile:I

    .line 401
    :goto_cd
    iput-wide p9, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_dHpBitrateRatio:D

    .line 402
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setEncoder, m_mime_type = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mime_type:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", bitRate = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bitRate:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", maxBitRate = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_maxBitRate:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", m_dHpBitrateRatio = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_dHpBitrateRatio:D

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iput p11, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_colorspace:I

    .line 405
    iput p12, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bColorRangeFull:I

    .line 406
    iput p13, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_colorTrc:I

    return-void
.end method

.method private setMediaCodecDecInstance(Ljava/lang/Object;)V
    .registers 2

    .line 1796
    check-cast p1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;

    iput-object p1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_MediaCodecDecInstance:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;

    if-nez p1, :cond_d

    .line 1798
    const-string p0, "TEAvcEncoder"

    const-string p1, "m_MediaCodecDecInstance is null"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method private setProcessFlag(I)V
    .registers 3

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_5

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    .line 1807
    :goto_6
    iput-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bEncodeOESTexture:Z

    return-void
.end method

.method private setProfile(Landroid/media/MediaCodecInfo$CodecCapabilities;)V
    .registers 16

    .line 1243
    iget-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_useInputSurface:Z

    const/4 v1, 0x0

    const-string v2, "operating-rate"

    const/4 v3, 0x1

    const-string v4, "TEAvcEncoder"

    if-nez v0, :cond_19

    .line 1244
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    const/16 v5, 0xf0

    invoke-virtual {v0, v2, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1245
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    const-string v2, "bitrate-mode"

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_8a

    .line 1246
    :cond_19
    iget-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mEnableOperatingRate:Z

    if-eqz v0, :cond_8a

    .line 1247
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    .line 1250
    :try_start_21
    iget v5, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_width_align:I

    iget v6, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_height_align:I

    invoke-virtual {v0, v5, v6}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedFrameRatesFor(II)Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0
    :try_end_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_33} :catch_34

    goto :goto_3c

    .line 1252
    :catch_34
    const-string v0, "getSupportedFrameRate unsupported size"

    invoke-static {v4, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7fffffff

    .line 1254
    :goto_3c
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v5

    const-string v6, "ve_enable_encode_operating_rate"

    invoke-virtual {v5, v6, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;I)I

    move-result v5

    .line 1255
    div-int/lit8 v6, v0, 0x78

    mul-int/lit8 v6, v6, 0x78

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1256
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    iget v8, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_width_align:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_height_align:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v8, v9, v0, v5, v10}, [Ljava/lang/Object;

    move-result-object v0

    const-string v5, "device support max_fps for Res(%d * %d) is %d, libra val = %d, final val = %d"

    invoke-static {v7, v5, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_8a

    .line 1257
    iget v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_width_align:I

    iget v5, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_height_align:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v5, 0x780

    if-gt v0, v5, :cond_8a

    .line 1258
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v2, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1262
    :cond_8a
    :goto_8a
    iget v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_profile:I

    iget v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codec_type:I

    invoke-static {p1, v0, v2}, Lcom/ss/android/ttve/mediacodec/MediaCodecUtils;->findBestMatchedProfile(Landroid/media/MediaCodecInfo$CodecCapabilities;II)Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object p1

    .line 1263
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mime_type:Ljava/lang/String;

    const-string v2, "video/avc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "\uff0cm_bitRate = "

    const-string v5, "main"

    const-string v6, "high"

    const/4 v7, 0x2

    const-string v8, "bitrate"

    const-string v9, "level"

    const-string v10, "profile"

    const-string v11, "te_composition_video_hw_profile"

    if-eqz v0, :cond_141

    if-eqz p1, :cond_141

    .line 1264
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    iget v3, p1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v0, v10, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1265
    iget v0, p1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 1266
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v3

    const-string v10, "ve_enable_adaptive_encode_level"

    invoke-virtual {v3, v10, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 1267
    iget v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_width_align:I

    iget v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_height_align:I

    iget v3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_frameRate:I

    iget v10, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bitRate:I

    invoke-static {p1, v0, v1, v3, v10}, Lcom/ss/android/ttve/mediacodec/MediaCodecUtils;->findBestMatchedAVCLevel(Landroid/media/MediaCodecInfo$CodecProfileLevel;IIII)I

    move-result v0

    .line 1269
    :cond_d2
    iget-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    invoke-virtual {v1, v9, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1270
    iget v1, p1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-eq v1, v7, :cond_f7

    const/16 v3, 0x8

    if-eq v1, v3, :cond_e5

    .line 1282
    const-string v1, "baseline"

    invoke-static {v11, v1}, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->addInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_108

    .line 1272
    :cond_e5
    const-string v1, "Set High Profile"

    invoke-static {v4, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    iget v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_maxBitRate:I

    int-to-double v9, v1

    iget-wide v12, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_dHpBitrateRatio:D

    mul-double/2addr v9, v12

    double-to-int v1, v9

    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bitRate:I

    .line 1274
    invoke-static {v11, v6}, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->addInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_108

    .line 1277
    :cond_f7
    const-string v1, "Set Main Profile"

    invoke-static {v4, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    iget v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_maxBitRate:I

    int-to-double v6, v1

    iget-wide v9, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_dHpBitrateRatio:D

    mul-double/2addr v6, v9

    double-to-int v1, v6

    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bitRate:I

    .line 1279
    invoke-static {v11, v5}, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->addInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    :goto_108
    iget-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    iget v3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bitRate:I

    invoke-virtual {v1, v8, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set Profile for AVC: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Level = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", maxLevel = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bitRate:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1bf

    .line 1288
    :cond_141
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mime_type:Ljava/lang/String;

    const-string v1, "video/mp4v-es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15e

    .line 1289
    iget-object p1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    invoke-virtual {p1, v10, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1290
    iget-object p1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    invoke-virtual {p1, v9, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1291
    iget-object p1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    iget p0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bitRate:I

    mul-int/2addr p0, v7

    invoke-virtual {p1, v8, p0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_1bf

    .line 1292
    :cond_15e
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mime_type:Ljava/lang/String;

    const-string v1, "video/hevc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bf

    if-eqz p1, :cond_1bf

    .line 1293
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    iget v1, p1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v0, v10, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1294
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    iget v1, p1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v0, v9, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1295
    iget v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_maxBitRate:I

    int-to-double v0, v0

    iget-wide v9, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_dHpBitrateRatio:D

    mul-double/2addr v0, v9

    double-to-int v0, v0

    iput v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bitRate:I

    .line 1296
    iget v0, p1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const v1, 0x5555555

    and-int/2addr v0, v1

    if-eqz v0, :cond_18d

    .line 1297
    invoke-static {v11, v5}, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->addInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_190

    .line 1299
    :cond_18d
    invoke-static {v11, v6}, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->addInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    :goto_190
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    iget v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bitRate:I

    invoke-virtual {v0, v8, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set Profile for HEVC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", level = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bitRate:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1bf
    :goto_1bf
    return-void
.end method

.method private setQpParameters(Landroid/media/MediaCodecInfo;)V
    .registers 14

    .line 1461
    const-string v0, "exynos"

    const-string v1, "others"

    const-string v2, "mtk"

    iget-object v3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    if-eqz v3, :cond_178

    .line 1464
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1465
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v3

    const-string v4, "ve_encoder_qp_range"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1466
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v4

    const-string v6, "ve_encoder_initial_qp"

    invoke-virtual {v4, v6, v5}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_34

    .line 1467
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_34

    move v7, v6

    goto :goto_35

    :cond_34
    move v7, v5

    :goto_35
    if-eqz v4, :cond_3e

    .line 1468
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3e

    move v5, v6

    .line 1469
    :cond_3e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setQpParameters codecName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", hasQpRangeJson:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", hasInitialQpJson:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "TEAvcEncoder"

    invoke-static {v9, v8}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    const-string v8, ".qti."

    const-string v10, ".qcom."

    const-string v11, "qcom"

    if-eqz v7, :cond_d4

    .line 1473
    :try_start_6c
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1474
    invoke-virtual {p1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b1

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7e

    goto :goto_b1

    .line 1476
    :cond_7e
    const-string v3, ".exynos."

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a9

    const-string v3, ".sec."

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8f

    goto :goto_a9

    .line 1478
    :cond_8f
    const-string v0, ".mtk."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 1479
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->setQpRange(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_d4

    :catch_9f
    move-exception v0

    goto :goto_b9

    .line 1481
    :cond_a1
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->setQpRange(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_d4

    .line 1477
    :cond_a9
    :goto_a9
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->setQpRange(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_d4

    .line 1475
    :cond_b1
    :goto_b1
    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0, v11}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->setQpRange(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_b8
    .catch Lorg/json/JSONException; {:try_start_6c .. :try_end_b8} :catch_9f

    goto :goto_d4

    .line 1484
    :goto_b9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qp range json str parse error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d4
    :goto_d4
    if-eqz v5, :cond_178

    .line 1491
    :try_start_d6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1492
    invoke-virtual {p1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ea

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_178

    goto :goto_ea

    :catch_e8
    move-exception p0

    goto :goto_15d

    .line 1493
    :cond_ea
    :goto_ea
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1494
    const-string v0, "i"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1495
    const-string v1, "p"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1496
    const-string v2, "b"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 1497
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse initial QP, I:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " P:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " B:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x33

    if-lt v0, v6, :cond_138

    if-gt v0, v2, :cond_138

    .line 1499
    iget-object v3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    const-string v4, "vendor.qti-ext-enc-initial-qp.qp-i-enable"

    invoke-virtual {v3, v4, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1500
    iget-object v3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    const-string v4, "vendor.qti-ext-enc-initial-qp.qp-i"

    invoke-virtual {v3, v4, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_138
    if-lt v1, v6, :cond_14a

    if-gt v1, v2, :cond_14a

    .line 1503
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    const-string v3, "vendor.qti-ext-enc-initial-qp.qp-p-enable"

    invoke-virtual {v0, v3, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1504
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    const-string v3, "vendor.qti-ext-enc-initial-qp.qp-p"

    invoke-virtual {v0, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_14a
    if-lt p1, v6, :cond_178

    if-gt p1, v2, :cond_178

    .line 1507
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    const-string v1, "vendor.qti-ext-enc-initial-qp.qp-b-enable"

    invoke-virtual {v0, v1, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1508
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    const-string v0, "vendor.qti-ext-enc-initial-qp.qp-b"

    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_15c
    .catch Lorg/json/JSONException; {:try_start_d6 .. :try_end_15c} :catch_e8

    goto :goto_178

    .line 1512
    :goto_15d
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1513
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initial qp json str parse error : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_178
    :goto_178
    return-void
.end method

.method private setQpRange(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 16

    if-eqz p1, :cond_19c

    if-nez p2, :cond_6

    goto/16 :goto_19c

    .line 1325
    :cond_6
    const-string v0, "i_min"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1326
    const-string v1, "i_max"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1327
    const-string v2, "p_min"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1328
    const-string v3, "p_max"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1329
    const-string v4, "b_min"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1330
    const-string v5, "b_max"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 1332
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1333
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " platform parse QP range, I:"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " P:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " B:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TEAvcEncoder"

    invoke-static {v6, v5}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    const-string v5, "qcom"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "video-qp-p-max"

    const-string v7, "video-qp-b-max"

    const-string v8, "video-qp-b-min"

    const-string v9, "video-qp-p-min"

    const-string v10, "video-qp-i-max"

    const-string v11, "video-qp-i-min"

    const/16 v12, 0x33

    if-eqz v5, :cond_ef

    const/4 p2, 0x1

    if-gt v0, v1, :cond_aa

    if-lt v0, p2, :cond_9a

    if-gt v0, v12, :cond_9a

    .line 1340
    iget-object v5, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    invoke-virtual {v5, v11, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1341
    iget-object v5, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    const-string v11, "vendor.qti-ext-enc-qp-range.qp-i-min"

    invoke-virtual {v5, v11, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_9a
    if-lt v1, p2, :cond_aa

    if-gt v1, v12, :cond_aa

    .line 1344
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v10, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1345
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    const-string v5, "vendor.qti-ext-enc-qp-range.qp-i-max"

    invoke-virtual {v0, v5, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_aa
    if-gt v2, v3, :cond_cc

    if-lt v2, p2, :cond_bc

    if-gt v2, v12, :cond_bc

    .line 1350
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v9, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1351
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    const-string v1, "vendor.qti-ext-enc-qp-range.qp-p-min"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_bc
    if-lt v3, p2, :cond_cc

    if-gt v3, v12, :cond_cc

    .line 1354
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v6, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1355
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    const-string v1, "vendor.qti-ext-enc-qp-range.qp-p-max"

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_cc
    if-gt v4, p1, :cond_19c

    if-lt v4, p2, :cond_de

    if-gt v4, v12, :cond_de

    .line 1360
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v8, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1361
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    const-string v1, "vendor.qti-ext-enc-qp-range.qp-b-min"

    invoke-virtual {v0, v1, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_de
    if-lt p1, p2, :cond_19c

    if-gt p1, v12, :cond_19c

    .line 1364
    iget-object p2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    invoke-virtual {p2, v7, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1365
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    const-string p2, "vendor.qti-ext-enc-qp-range.qp-b-max"

    invoke-virtual {p0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-void

    .line 1368
    :cond_ef
    const-string v5, "exynos"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15e

    if-gt v0, v1, :cond_119

    if-ltz v0, :cond_109

    if-gt v0, v12, :cond_109

    .line 1371
    iget-object p2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    invoke-virtual {p2, v11, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1372
    iget-object p2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    const-string v5, "vendor.sec-ext-enc-qp-range.I-minQP"

    invoke-virtual {p2, v5, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_109
    if-ltz v1, :cond_119

    if-gt v1, v12, :cond_119

    .line 1375
    iget-object p2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    invoke-virtual {p2, v10, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1376
    iget-object p2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    const-string v0, "vendor.sec-ext-enc-qp-range.I-maxQP"

    invoke-virtual {p2, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_119
    if-gt v2, v3, :cond_13b

    if-ltz v2, :cond_12b

    if-gt v2, v12, :cond_12b

    .line 1381
    iget-object p2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    invoke-virtual {p2, v9, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1382
    iget-object p2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    const-string v0, "vendor.sec-ext-enc-qp-range.P-minQP"

    invoke-virtual {p2, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_12b
    if-ltz v3, :cond_13b

    if-gt v3, v12, :cond_13b

    .line 1385
    iget-object p2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    invoke-virtual {p2, v6, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1386
    iget-object p2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    const-string v0, "vendor.sec-ext-enc-qp-range.P-maxQP"

    invoke-virtual {p2, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_13b
    if-gt v4, p1, :cond_19c

    if-ltz v4, :cond_14d

    if-gt v4, v12, :cond_14d

    .line 1391
    iget-object p2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    invoke-virtual {p2, v8, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1392
    iget-object p2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    const-string v0, "vendor.sec-ext-enc-qp-range.B-minQP"

    invoke-virtual {p2, v0, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_14d
    if-ltz p1, :cond_19c

    if-gt p1, v12, :cond_19c

    .line 1395
    iget-object p2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    invoke-virtual {p2, v7, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1396
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    const-string p2, "vendor.sec-ext-enc-qp-range.B-maxQP"

    invoke-virtual {p0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-void

    :cond_15e
    if-gt v0, v1, :cond_172

    if-ltz v0, :cond_169

    if-gt v0, v12, :cond_169

    .line 1402
    iget-object p2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    invoke-virtual {p2, v11, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_169
    if-ltz v1, :cond_172

    if-gt v1, v12, :cond_172

    .line 1404
    iget-object p2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    invoke-virtual {p2, v10, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_172
    if-gt v2, v3, :cond_188

    if-ltz v2, :cond_17d

    if-gt v2, v12, :cond_17d

    .line 1408
    iget-object p2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    invoke-virtual {p2, v9, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_17d
    if-ltz v3, :cond_188

    if-gt v3, v12, :cond_188

    .line 1410
    iget-object p2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    const-string v0, "video-qp-p-man"

    invoke-virtual {p2, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_188
    if-gt v4, p1, :cond_19c

    if-ltz v4, :cond_193

    if-gt v4, v12, :cond_193

    .line 1414
    iget-object p2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    invoke-virtual {p2, v8, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_193
    if-ltz p1, :cond_19c

    if-gt p1, v12, :cond_19c

    .line 1416
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    invoke-virtual {p0, v7, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_19c
    :goto_19c
    return-void
.end method


# virtual methods
.method public enableOperatingRate(Z)V
    .registers 2

    .line 1815
    iput-boolean p1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mEnableOperatingRate:Z

    return-void
.end method

.method public encodeVideoFromBuffer(IJZZ)I
    .registers 21

    move/from16 v0, p4

    .line 636
    iget-boolean v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bSuccessInit:Z

    const/4 v2, 0x0

    if-nez v1, :cond_8

    return v2

    .line 639
    :cond_8
    iget-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    if-nez v1, :cond_f

    const/16 p0, -0xd3

    return p0

    .line 642
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HW_ENCODE encodeVideoFromBuffer start isSignalEndStream = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mEndOfStream = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mEndOfStream:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", size= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TEAvcEncoder"

    invoke-static {v3, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    iget-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_PTSQueue:Ljava/util/Queue;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 646
    iget-boolean v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_isNeedReconfigure:Z

    const-string v4, "video-bitrate"

    if-nez v1, :cond_4e

    iget v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_configStatus:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_b8

    .line 647
    :cond_4e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HW_ENCODE encodeVideoFromBuffer restartEncoder------------------restartEncoder -----------0-0-0-0---"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_isNeedReconfigure:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "---"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_configStatus:I

    and-int/lit8 v6, v6, 0x4

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HW_ENCODE encodeVideoFromBuffer restartEncoder------------------restartEncoder -----------1-1-1-1---"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_configStatus:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_89

    move v5, v6

    goto :goto_8a

    :cond_89
    move v5, v2

    :goto_8a
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    iget-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    if-eqz v1, :cond_ae

    iget v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_configStatus:I

    if-ne v1, v6, :cond_ae

    .line 651
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 652
    iget v5, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bitRate:I

    invoke-virtual {v1, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 653
    iget-object v5, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v5, v1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 654
    iput v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_configStatus:I

    goto :goto_b6

    .line 656
    :cond_ae
    const-string v1, "HW_ENCODE encodeVideoFromBuffer restartEncoder------------------restartEncoder -----------0000"

    invoke-static {v3, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    invoke-virtual {p0}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->restartEncoder()I

    .line 660
    :goto_b6
    iput-boolean v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_isNeedReconfigure:Z

    :cond_b8
    const/4 v1, -0x1

    if-eqz p5, :cond_e8

    .line 663
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ss/android/vesdk/runtime/VERuntime;->isTransitionKeyFrameEnable()Z

    move-result v5

    if-nez v5, :cond_cf

    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ss/android/vesdk/runtime/VERuntime;->getTransitionKeyFrameVersion()I

    move-result v5

    if-le v5, v1, :cond_e8

    .line 664
    :cond_cf
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 665
    const-string v6, "request-sync"

    invoke-virtual {v5, v6, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 666
    iget v6, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bitRate:I

    int-to-double v8, v6

    iget-wide v10, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_TransitionKeyframeRatio:D

    mul-double/2addr v8, v10

    double-to-int v6, v8

    invoke-virtual {v5, v4, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 667
    iget-object v4, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4, v5}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 670
    :cond_e8
    iget-wide v4, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_encodeStartTime:J

    const-wide/16 v8, -0x1

    cmp-long v4, v4, v8

    if-nez v4, :cond_f6

    .line 671
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_encodeStartTime:J

    :cond_f6
    const-wide/16 v4, 0x0

    .line 674
    invoke-direct {p0, v4, v5}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->drainOutputBuffer(J)I

    move-result v4

    if-eqz v4, :cond_ff

    return v4

    :cond_ff
    if-nez v0, :cond_11c

    .line 679
    const-string v0, "HW_ENCODE encodeYUV420"

    invoke-static {v3, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mByteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mByteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    move-object v4, p0

    move-wide/from16 v8, p2

    invoke-virtual/range {v4 .. v9}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->encodeYUV420([BIIJ)I

    move-result v0

    if-eqz v0, :cond_151

    return v0

    :cond_11c
    const/16 v0, 0x1e

    .line 685
    :cond_11e
    iget-boolean v5, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mEndOfStream:Z

    if-nez v5, :cond_151

    .line 686
    const-string v5, "HW_ENCODE signal flush()"

    invoke-static {v3, v5}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    :try_start_127
    iget-object v5, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x2710

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v9

    .line 690
    iget-object v8, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v12, 0x0

    const/4 v14, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v8 .. v14}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_139} :catch_149

    .line 695
    invoke-direct {p0, v6, v7}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->drainOutputBuffer(J)I

    move-result v5

    if-eqz v5, :cond_140

    return v5

    .line 698
    :cond_140
    iget v5, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mBufferIndex:I

    if-ltz v5, :cond_145

    goto :goto_151

    :cond_145
    add-int/2addr v0, v1

    if-gtz v0, :cond_11e

    goto :goto_151

    :catch_149
    move-exception v0

    move-object p0, v0

    .line 692
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 p0, -0xd5

    return p0

    .line 704
    :cond_151
    :goto_151
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->AVCQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;

    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_lastCodecData:Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;

    if-eqz v0, :cond_167

    .line 707
    iget-object v0, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;->data:[B

    array-length v2, v0

    .line 708
    iget-wide v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mPicSendCount:J

    const-wide/16 v5, 0x1

    add-long/2addr v0, v5

    iput-wide v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mPicSendCount:J

    .line 710
    :cond_167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HW_ENCODE AVCQueue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->AVCQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPicSendCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mPicSendCount:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mPicBufferCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mPicBufferCount:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mPicEncodeCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mPicEncodeCount:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public encodeVideoFromTexture(IJZZZ)I
    .registers 38
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p5

    .line 779
    const-string v5, ""

    iget-boolean v6, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bSuccessInit:Z

    const/4 v7, 0x0

    if-nez v6, :cond_10

    return v7

    .line 784
    :cond_10
    iget-wide v8, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mLastFramePTS:J

    cmp-long v6, v2, v8

    const-wide/16 v10, 0x0

    const-string v12, "TEAvcEncoder"

    if-eqz v6, :cond_85

    .line 785
    iget-wide v13, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mGOPSize:J

    cmp-long v6, v13, v10

    if-gtz v6, :cond_39

    .line 786
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "RequestSyncFrame: GOPSize incorrect! GOPSize="

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mGOPSize:J

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v15, 0x1

    goto :goto_78

    :cond_39
    const-wide/16 v15, 0x1

    .line 788
    iget-wide v8, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mEncFrameCount:J

    rem-long/2addr v8, v13

    cmp-long v6, v8, v10

    if-nez v6, :cond_78

    .line 789
    iput-wide v2, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mLastKeyFramePTS:J

    .line 790
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RequestSyncFrame: KeyFrame from PresetGOP size="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mGOPSize:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " FrameNo.="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mEncFrameCount:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " TotalFrameCount="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mTotalFrameCount:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " lastKeyFramePTS="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mLastKeyFramePTS:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    :cond_78
    :goto_78
    iget-wide v8, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mEncFrameCount:J

    add-long/2addr v8, v15

    iput-wide v8, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mEncFrameCount:J

    .line 794
    iget-wide v8, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mTotalFrameCount:J

    add-long/2addr v8, v15

    iput-wide v8, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mTotalFrameCount:J

    .line 795
    iput-wide v2, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mLastFramePTS:J

    goto :goto_87

    :cond_85
    const-wide/16 v15, 0x1

    .line 803
    :goto_87
    sget v6, Lcom/ss/android/vesdk/VERuntimeConfig;->sHardWareEncFallBack:I

    sget-object v8, Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;->VIDEO_ENC_ENCODING_FALLBACK:Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;

    invoke-virtual {v8}, Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;->getValue()I

    move-result v8

    const/16 v9, -0xd3

    if-ne v6, v8, :cond_99

    .line 804
    const-string v0, "TESTING! HW VIDEO ENC ENCODING FALLBACK"

    invoke-static {v12, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_99
    const-wide/high16 v17, -0x8000000000000000L

    .line 807
    iget-wide v13, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mFirstFrameTimestamp:J

    cmp-long v6, v17, v13

    if-nez v6, :cond_a7

    .line 808
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mFirstFrameTimestamp:J

    .line 812
    :cond_a7
    iget-object v6, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_PTSQueue:Ljava/util/Queue;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 814
    iget-object v6, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_eglStateSaver:Lcom/ss/android/ttve/common/TEEglStateSaver;

    if-nez v6, :cond_be

    .line 815
    new-instance v6, Lcom/ss/android/ttve/common/TEEglStateSaver;

    invoke-direct {v6}, Lcom/ss/android/ttve/common/TEEglStateSaver;-><init>()V

    iput-object v6, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_eglStateSaver:Lcom/ss/android/ttve/common/TEEglStateSaver;

    .line 816
    invoke-virtual {v6}, Lcom/ss/android/ttve/common/TEEglStateSaver;->saveEGLState()V

    .line 822
    :cond_be
    iget-boolean v6, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bIsStartEncoder:Z

    const/4 v8, 0x1

    if-nez v6, :cond_c8

    .line 823
    invoke-virtual {v0}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->startEncoder()I

    .line 824
    iput-boolean v8, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bIsStartEncoder:Z

    .line 848
    :cond_c8
    :try_start_c8
    invoke-direct {v0, v10, v11}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->drainOutputBuffer(J)I

    move-result v6
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_cc} :catch_677

    if-eqz v6, :cond_cf

    return v6

    .line 857
    :cond_cf
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v6

    const-string v13, "ve_smart_trans_detect"

    invoke-virtual {v6, v13}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object v6

    if-eqz v6, :cond_ec

    .line 858
    invoke-virtual {v6}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_ec

    .line 859
    invoke-virtual {v6}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    goto :goto_ed

    :cond_ec
    move v6, v7

    .line 862
    :goto_ed
    const-string v13, " bp_ratio "

    const/4 v14, -0x1

    if-eqz v4, :cond_109

    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/ss/android/vesdk/runtime/VERuntime;->isTransitionKeyFrameEnable()Z

    move-result v17

    if-nez v17, :cond_10f

    if-nez v6, :cond_10f

    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ss/android/vesdk/runtime/VERuntime;->getTransitionKeyFrameVersion()I

    move-result v6

    if-le v6, v14, :cond_109

    goto :goto_10f

    :cond_109
    move/from16 p4, v9

    move/from16 v19, v14

    goto/16 :goto_1f2

    .line 863
    :cond_10f
    :goto_10f
    const-string v6, "RequestKeyFrame: TransitionKeyFrame Enabled"

    invoke-static {v12, v6}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 866
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ss/android/vesdk/runtime/VERuntime;->getTransitionKeyFrameMode()I

    move-result v6

    move/from16 p4, v9

    .line 867
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    move/from16 v19, v14

    .line 869
    iget v14, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bitRate:I

    int-to-double v7, v14

    iget-wide v10, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_TransitionKeyframeRatio:D

    mul-double/2addr v7, v10

    double-to-int v7, v7

    const-string v8, "video-bitrate"

    invoke-virtual {v9, v8, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 872
    iget-wide v7, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mLastKeyFramePTS:J

    sub-long v7, v2, v7

    .line 874
    iget-wide v10, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->MINIMUM_KEY_FRAME_PTS_DISTANCE_IN_US:J

    cmp-long v7, v7, v10

    const-string v8, " LastKeyFramePTS="

    if-gez v7, :cond_169

    .line 876
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RequestSyncFrame: KeyFrames too close. Skipped! CurrFramePTS = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mLastKeyFramePTS:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " CurrFrameNo.="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mTotalFrameCount:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1f2

    .line 878
    :cond_169
    iput-wide v2, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mLastKeyFramePTS:J

    const-wide/16 v10, 0x0

    .line 879
    iput-wide v10, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mEncFrameCount:J

    .line 881
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RequestSyncFrame: Restart encoder! totalFrameCount="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mTotalFrameCount:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mLastKeyFramePTS:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    const-string v7, "request-sync"

    const/4 v8, 0x1

    if-eq v6, v8, :cond_19c

    .line 903
    const-string v6, "RequestSyncFrame_MODE0"

    invoke-static {v12, v6}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 904
    invoke-virtual {v9, v7, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1bb

    :cond_19c
    const/4 v6, 0x0

    .line 887
    const-string v8, "RequestSyncFrame_MODE1"

    invoke-static {v12, v8}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    invoke-direct {v0}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->cleanUpMediaCodec()I

    move-result v8

    if-nez v8, :cond_1b1

    .line 892
    const-string v8, " RequestSyncFrame Success"

    invoke-static {v12, v8}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    invoke-virtual {v9, v7, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1b6

    .line 895
    :cond_1b1
    const-string v6, "RequestSyncFrame Fail"

    invoke-static {v12, v6}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    :goto_1b6
    iget-object v6, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v6, v9}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 910
    :goto_1bb
    iget-object v6, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v6, v9}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 911
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v17

    .line 912
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RequestSyncFrame:: pts = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " isKeyFrame= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_TransitionKeyframeRatio:D

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v9, "  SyncOnceTime="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1f2
    if-eqz p6, :cond_21b

    .line 917
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isForceIFrame pts = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " keyframe isKeyFrame= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_TransitionKeyframeRatio:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    invoke-direct {v0}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->forceToPrepareKeyFrame()I

    .line 921
    :cond_21b
    iget-wide v6, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_encodeStartTime:J

    const-wide/16 v8, -0x1

    cmp-long v4, v6, v8

    if-nez v4, :cond_229

    .line 922
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_encodeStartTime:J

    .line 928
    :cond_229
    const-string v4, "TE_RECORD_GEN_EXTRA_DATA_COST: "

    const-string v6, "te_record_generate_extra_data_cost"

    if-eqz v1, :cond_546

    .line 931
    :try_start_22f
    iget-object v10, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_textureDrawer:Lcom/ss/android/ttve/common/TETextureDrawer;

    if-nez v10, :cond_241

    iget-object v10, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_textureOESDrawer:Lcom/ss/android/ttve/common/TETextureOESDrawer;

    if-eqz v10, :cond_238

    goto :goto_241

    :cond_238
    move-wide/from16 v17, v15

    const/16 v2, 0x1e

    goto/16 :goto_539

    :catch_23e
    move-exception v0

    goto/16 :goto_542

    .line 932
    :cond_241
    :goto_241
    invoke-static {}, Lcom/ss/android/vesdk/VERuntimeConfig;->useSingleGLThread()Z

    move-result v10

    if-eqz v10, :cond_257

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v10

    iget-object v11, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_sharedContext:Lcom/ss/android/ttve/common/TESharedContext;

    invoke-virtual {v11}, Lcom/ss/android/ttve/common/TESharedContext;->getContext()Landroid/opengl/EGLContext;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/opengl/EGLContext;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_25c

    .line 933
    :cond_257
    iget-object v10, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_sharedContext:Lcom/ss/android/ttve/common/TESharedContext;

    invoke-virtual {v10}, Lcom/ss/android/ttve/common/TESharedContext;->makeCurrent()Z

    .line 935
    :cond_25c
    iget v10, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_width:I

    iget v11, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_height:I

    const/4 v13, 0x0

    invoke-static {v13, v13, v10, v11}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 936
    iget-boolean v10, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bEncodeOESTexture:Z

    if-eqz v10, :cond_2b2

    .line 937
    iget-object v10, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_textureOESDrawer:Lcom/ss/android/ttve/common/TETextureOESDrawer;

    iget-object v11, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_MediaCodecDecInstance:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;

    invoke-virtual {v11}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->getRenderParam()Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$RenderParam;

    move-result-object v11

    iget-object v11, v11, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$RenderParam;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {v10, v11}, Lcom/ss/android/ttve/common/TETextureOESDrawer;->setTextureCropData(Landroid/graphics/RectF;)V

    .line 938
    iget-object v10, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_textureOESDrawer:Lcom/ss/android/ttve/common/TETextureOESDrawer;

    iget-object v11, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_MediaCodecDecInstance:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;

    invoke-virtual {v11}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->getRenderParam()Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$RenderParam;

    move-result-object v11

    iget v11, v11, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$RenderParam;->rotate:I

    neg-int v11, v11

    iget-object v13, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_MediaCodecDecInstance:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;

    .line 939
    invoke-virtual {v13}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->getRenderParam()Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$RenderParam;

    move-result-object v13

    iget v13, v13, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$RenderParam;->frameWidth:I

    iget-object v14, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_MediaCodecDecInstance:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;

    .line 940
    invoke-virtual {v14}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->getRenderParam()Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$RenderParam;

    move-result-object v14

    iget v14, v14, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$RenderParam;->frameHeight:I

    move-wide/from16 v17, v15

    iget v15, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_width_align:I

    const-wide p5, 0x7fffffffffffffffL

    iget v8, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_height_align:I

    const/16 v26, 0x1

    move/from16 v30, v8

    move-object/from16 v24, v10

    move/from16 v25, v11

    move/from16 v27, v13

    move/from16 v28, v14

    move/from16 v29, v15

    .line 938
    invoke-virtual/range {v24 .. v30}, Lcom/ss/android/ttve/common/TETextureOESDrawer;->setMVPMatrix(IZIIII)V

    .line 943
    iget-object v8, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_textureOESDrawer:Lcom/ss/android/ttve/common/TETextureOESDrawer;

    invoke-virtual {v8, v1}, Lcom/ss/android/ttve/common/TETextureOESDrawer;->drawTexture(I)V

    goto :goto_2be

    :cond_2b2
    move-wide/from16 v17, v15

    const-wide p5, 0x7fffffffffffffffL

    .line 945
    iget-object v8, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_textureDrawer:Lcom/ss/android/ttve/common/TETextureDrawer;

    invoke-virtual {v8, v1}, Lcom/ss/android/ttve/common/TETextureDrawer;->drawTexture(I)V

    .line 949
    :goto_2be
    iget-boolean v8, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mFirstFrame:Z

    if-eqz v8, :cond_2ec

    .line 950
    sget-boolean v8, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->DEBUG:Z

    if-eqz v8, :cond_2e9

    const v8, 0x384000

    .line 951
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 952
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v13, 0x0

    .line 953
    invoke-virtual {v8, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v28, 0x1908

    const/16 v29, 0x1401

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x500

    const/16 v27, 0x2d0

    move-object/from16 v30, v8

    .line 954
    invoke-static/range {v24 .. v30}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    :cond_2e9
    const/4 v13, 0x0

    .line 962
    iput-boolean v13, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mFirstFrame:Z

    .line 965
    :cond_2ec
    iget-object v8, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_sharedContext:Lcom/ss/android/ttve/common/TESharedContext;

    const-wide/16 v9, 0x3e8

    mul-long/2addr v9, v2

    invoke-virtual {v8, v9, v10}, Lcom/ss/android/ttve/common/TESharedContext;->setPresentationTime(J)V

    .line 968
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 969
    iget-object v8, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_sharedContext:Lcom/ss/android/ttve/common/TESharedContext;

    invoke-virtual {v8}, Lcom/ss/android/ttve/common/TESharedContext;->swapBuffers()Z

    const/4 v8, 0x1

    .line 970
    iput-boolean v8, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bNeedSingalEnd:Z

    .line 971
    iget-wide v13, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mPicBufferCount:J

    add-long v13, v13, v17

    iput-wide v13, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mPicBufferCount:J

    .line 972
    iget-object v8, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->configByte:[B

    if-eqz v8, :cond_310

    iget-object v8, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_MediaCodecDecInstance:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;

    if-eqz v8, :cond_310

    .line 973
    invoke-virtual {v8}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->signalReEncodeOptCV()V

    :cond_310
    const-wide/16 v13, 0x0

    .line 977
    invoke-direct {v0, v13, v14}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->drainOutputBuffer(J)I

    move-result v8

    if-eqz v8, :cond_319

    return v8

    .line 981
    :cond_319
    iget-boolean v8, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->isEnableHwEncoderOpt:Z

    if-eqz v8, :cond_336

    iget-object v11, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->configByte:[B

    if-nez v11, :cond_336

    .line 982
    iget v11, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->configWaitingFrameCounter:I

    const/16 v21, 0x1

    add-int/lit8 v11, v11, 0x1

    iput v11, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->configWaitingFrameCounter:I

    const/16 v13, 0x19

    if-lt v11, v13, :cond_336

    const/4 v13, 0x0

    .line 984
    iput v13, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->configWaitingFrameCounter:I

    .line 985
    const-string v0, "get config fail, back to soft encode"

    invoke-static {v12, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p4

    .line 990
    :cond_336
    iget-object v11, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->configByte:[B

    if-nez v11, :cond_51a

    iget-boolean v11, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bEncoderBanExtraDataLoop:Z

    if-nez v11, :cond_51a

    if-nez v8, :cond_51a

    const/4 v8, 0x0

    .line 995
    :goto_341
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Encoder first frame, count = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    iget v11, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_width:I

    iget v13, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_height:I

    const/4 v14, 0x0

    invoke-static {v14, v14, v11, v13}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 997
    iget-boolean v11, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bEncodeOESTexture:Z

    if-eqz v11, :cond_3a4

    .line 998
    iget-object v11, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_textureOESDrawer:Lcom/ss/android/ttve/common/TETextureOESDrawer;

    iget-object v13, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_MediaCodecDecInstance:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;

    invoke-virtual {v13}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->getRenderParam()Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$RenderParam;

    move-result-object v13

    iget-object v13, v13, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$RenderParam;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {v11, v13}, Lcom/ss/android/ttve/common/TETextureOESDrawer;->setTextureCropData(Landroid/graphics/RectF;)V

    .line 999
    iget-object v11, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_textureOESDrawer:Lcom/ss/android/ttve/common/TETextureOESDrawer;

    iget-object v13, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_MediaCodecDecInstance:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;

    invoke-virtual {v13}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->getRenderParam()Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$RenderParam;

    move-result-object v13

    iget v13, v13, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$RenderParam;->rotate:I

    neg-int v13, v13

    iget-object v14, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_MediaCodecDecInstance:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;

    .line 1000
    invoke-virtual {v14}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->getRenderParam()Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$RenderParam;

    move-result-object v14

    iget v14, v14, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$RenderParam;->frameWidth:I

    iget-object v15, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_MediaCodecDecInstance:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;

    .line 1001
    invoke-virtual {v15}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->getRenderParam()Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$RenderParam;

    move-result-object v15

    iget v15, v15, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$RenderParam;->frameHeight:I

    iget v7, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_width_align:I

    iget v2, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_height_align:I

    const/16 v26, 0x1

    move/from16 v30, v2

    move/from16 v29, v7

    move-object/from16 v24, v11

    move/from16 v25, v13

    move/from16 v27, v14

    move/from16 v28, v15

    .line 999
    invoke-virtual/range {v24 .. v30}, Lcom/ss/android/ttve/common/TETextureOESDrawer;->setMVPMatrix(IZIIII)V

    .line 1004
    iget-object v2, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_textureOESDrawer:Lcom/ss/android/ttve/common/TETextureOESDrawer;

    invoke-virtual {v2, v1}, Lcom/ss/android/ttve/common/TETextureOESDrawer;->drawTexture(I)V

    goto :goto_3a9

    .line 1006
    :cond_3a4
    iget-object v2, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_textureDrawer:Lcom/ss/android/ttve/common/TETextureDrawer;

    invoke-virtual {v2, v1}, Lcom/ss/android/ttve/common/TETextureDrawer;->drawTexture(I)V

    .line 1008
    :goto_3a9
    iget-object v2, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_sharedContext:Lcom/ss/android/ttve/common/TESharedContext;

    invoke-virtual {v2, v9, v10}, Lcom/ss/android/ttve/common/TESharedContext;->setPresentationTime(J)V

    .line 1009
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 1010
    iget-object v2, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_sharedContext:Lcom/ss/android/ttve/common/TESharedContext;

    invoke-virtual {v2}, Lcom/ss/android/ttve/common/TESharedContext;->swapBuffers()Z

    const-wide/16 v13, 0x0

    .line 1011
    invoke-direct {v0, v13, v14}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->drainOutputBuffer(J)I

    move-result v2

    if-eqz v2, :cond_3bf

    return v2

    :cond_3bf
    add-int/lit8 v8, v8, 0x1

    const/16 v2, 0x1e

    if-le v8, v2, :cond_3c6

    goto :goto_3d0

    :cond_3c6
    const-wide/16 v13, 0xa

    const/4 v3, 0x0

    .line 1018
    invoke-static {v13, v14, v3}, Ljava/lang/Thread;->sleep(JI)V

    .line 1021
    iget-object v3, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->configByte:[B

    if-eqz v3, :cond_511

    .line 1023
    :goto_3d0
    iget-object v3, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->configByte:[B

    if-nez v3, :cond_454

    .line 1024
    const-string v2, "TEAvcEncoder Generate configData failed!!!"

    new-instance v13, Lcom/ss/android/vesdk/VELogUtil$LogData;

    const-string v3, "AVCQueue count"

    iget-object v4, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->AVCQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 1025
    invoke-virtual {v4}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v13, v3, v4, v5}, Lcom/ss/android/vesdk/VELogUtil$LogData;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Lcom/ss/android/vesdk/VELogUtil$LogData;

    const-string v3, "textureID"

    .line 1026
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v14, v3, v4, v5}, Lcom/ss/android/vesdk/VELogUtil$LogData;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v15, Lcom/ss/android/vesdk/VELogUtil$LogData;

    const-string v3, "isTexture"

    .line 1027
    invoke-static {v1}, Landroid/opengl/GLES20;->glIsTexture(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v15, v3, v1, v5}, Lcom/ss/android/vesdk/VELogUtil$LogData;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/ss/android/vesdk/VELogUtil$LogData;

    const-string v3, "timestampUs"

    .line 1028
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v1, v3, v4, v5}, Lcom/ss/android/vesdk/VELogUtil$LogData;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/ss/android/vesdk/VELogUtil$LogData;

    const-string v4, "glCheckError"

    .line 1029
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v3, v4, v6, v5}, Lcom/ss/android/vesdk/VELogUtil$LogData;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/ss/android/vesdk/VELogUtil$LogData;

    const-string v6, "m_bEncoderGLContextReuse"

    iget-boolean v7, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bEncoderGLContextReuse:Z

    .line 1030
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v4, v6, v7, v5}, Lcom/ss/android/vesdk/VELogUtil$LogData;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lcom/ss/android/vesdk/VELogUtil$LogData;

    const-string v7, "currentContext"

    iget-object v0, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_sharedContext:Lcom/ss/android/ttve/common/TESharedContext;

    .line 1031
    invoke-virtual {v0}, Lcom/ss/android/ttve/common/TESharedContext;->getContext()Landroid/opengl/EGLContext;

    move-result-object v0

    if-eqz v0, :cond_437

    const/16 v20, 0x1

    goto :goto_439

    :cond_437
    const/16 v20, 0x0

    :goto_439
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v6, v7, v0, v5}, Lcom/ss/android/vesdk/VELogUtil$LogData;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    filled-new-array/range {v13 .. v19}, [Lcom/ss/android/vesdk/VELogUtil$LogData;

    move-result-object v0

    .line 1024
    invoke-static {v12, v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->formatLog(Ljava/lang/String;Ljava/lang/String;[Lcom/ss/android/vesdk/VELogUtil$LogData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p4

    .line 1036
    :cond_454
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Generate configData succeed!!!"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    iget-object v3, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->AVCQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    .line 1044
    iget-object v3, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->flush()V

    const-wide/16 v13, 0x0

    .line 1046
    iput-wide v13, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_getnerateIndex:J

    .line 1047
    iget-object v3, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_sharedContext:Lcom/ss/android/ttve/common/TESharedContext;

    invoke-virtual {v3}, Lcom/ss/android/ttve/common/TESharedContext;->makeCurrent()Z

    .line 1048
    iget v3, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_width:I

    iget v5, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_height:I

    const/4 v13, 0x0

    invoke-static {v13, v13, v3, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 1049
    iget-boolean v3, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bEncodeOESTexture:Z

    if-eqz v3, :cond_4ca

    .line 1050
    iget-object v3, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_textureOESDrawer:Lcom/ss/android/ttve/common/TETextureOESDrawer;

    iget-object v5, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_MediaCodecDecInstance:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;

    invoke-virtual {v5}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->getRenderParam()Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$RenderParam;

    move-result-object v5

    iget-object v5, v5, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$RenderParam;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v5}, Lcom/ss/android/ttve/common/TETextureOESDrawer;->setTextureCropData(Landroid/graphics/RectF;)V

    .line 1051
    iget-object v3, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_textureOESDrawer:Lcom/ss/android/ttve/common/TETextureOESDrawer;

    iget-object v5, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_MediaCodecDecInstance:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;

    invoke-virtual {v5}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->getRenderParam()Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$RenderParam;

    move-result-object v5

    iget v5, v5, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$RenderParam;->rotate:I

    neg-int v5, v5

    iget-object v7, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_MediaCodecDecInstance:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;

    .line 1052
    invoke-virtual {v7}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->getRenderParam()Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$RenderParam;

    move-result-object v7

    iget v7, v7, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$RenderParam;->frameWidth:I

    iget-object v8, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_MediaCodecDecInstance:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;

    .line 1053
    invoke-virtual {v8}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->getRenderParam()Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$RenderParam;

    move-result-object v8

    iget v8, v8, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$RenderParam;->frameHeight:I

    iget v11, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_width_align:I

    iget v13, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_height_align:I

    const/16 v26, 0x1

    move-object/from16 v24, v3

    move/from16 v25, v5

    move/from16 v27, v7

    move/from16 v28, v8

    move/from16 v29, v11

    move/from16 v30, v13

    .line 1051
    invoke-virtual/range {v24 .. v30}, Lcom/ss/android/ttve/common/TETextureOESDrawer;->setMVPMatrix(IZIIII)V

    .line 1056
    iget-object v3, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_textureOESDrawer:Lcom/ss/android/ttve/common/TETextureOESDrawer;

    invoke-virtual {v3, v1}, Lcom/ss/android/ttve/common/TETextureOESDrawer;->drawTexture(I)V

    goto :goto_4cf

    .line 1058
    :cond_4ca
    iget-object v3, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_textureDrawer:Lcom/ss/android/ttve/common/TETextureDrawer;

    invoke-virtual {v3, v1}, Lcom/ss/android/ttve/common/TETextureDrawer;->drawTexture(I)V

    .line 1060
    :goto_4cf
    iget-object v1, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_sharedContext:Lcom/ss/android/ttve/common/TESharedContext;

    invoke-virtual {v1, v9, v10}, Lcom/ss/android/ttve/common/TESharedContext;->setPresentationTime(J)V

    .line 1061
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 1062
    iget-object v1, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_sharedContext:Lcom/ss/android/ttve/common/TESharedContext;

    invoke-virtual {v1}, Lcom/ss/android/ttve/common/TESharedContext;->swapBuffers()Z

    .line 1063
    iget-object v1, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_MediaCodecDecInstance:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;

    if-eqz v1, :cond_4e3

    .line 1064
    invoke-virtual {v1}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->signalReEncodeOptCV()V

    .line 1066
    :cond_4e3
    iget-wide v7, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mFirstFrameTimestamp:J

    const-wide/16 v22, 0x0

    cmp-long v1, v7, v22

    if-lez v1, :cond_51c

    cmp-long v1, v7, p5

    if-eqz v1, :cond_51c

    .line 1067
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mFirstFrameTimestamp:J

    sub-long/2addr v7, v9

    move-wide/from16 v9, p5

    .line 1068
    iput-wide v9, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mFirstFrameTimestamp:J

    const/4 v13, 0x0

    .line 1069
    invoke-static {v13, v6, v7, v8}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 1070
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51c

    :cond_511
    move-wide/from16 v2, p2

    const-wide p5, 0x7fffffffffffffffL

    goto/16 :goto_341

    :cond_51a
    const/16 v2, 0x1e

    .line 1074
    :cond_51c
    :goto_51c
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v1

    const-string v3, "ve_mediacodec_resource_reasonable_distribute"

    const/4 v8, 0x1

    invoke-virtual {v1, v3, v8}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_539

    iget-wide v7, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_getnerateIndex:J

    const-wide/16 v22, 0x0

    cmp-long v1, v7, v22

    if-nez v1, :cond_539

    const/16 v20, 0x0

    .line 1075
    sput-boolean v20, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sHWEncoderStateIsBeforeRunning:Z
    :try_end_539
    .catch Ljava/lang/Exception; {:try_start_22f .. :try_end_539} :catch_23e
    .catchall {:try_start_22f .. :try_end_539} :catchall_540

    .line 1092
    :cond_539
    :goto_539
    iget-wide v7, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_getnerateIndex:J

    add-long v7, v7, v17

    iput-wide v7, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_getnerateIndex:J

    goto :goto_56e

    :catchall_540
    move-exception v0

    .line 1091
    throw v0

    .line 1081
    :goto_542
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return p4

    :cond_546
    move-wide/from16 v17, v15

    const/16 v2, 0x1e

    .line 1094
    iget-object v1, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    if-eqz v1, :cond_56e

    iget-boolean v1, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bSignalEndOfStream:Z

    if-nez v1, :cond_56e

    iget-boolean v1, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bNeedSingalEnd:Z

    if-eqz v1, :cond_56e

    .line 1096
    :try_start_556
    const-string v1, "HW_ENCODE signal flush()"

    invoke-static {v12, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x1

    .line 1097
    iput-boolean v8, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bSignalEndOfStream:Z

    const/4 v13, 0x0

    .line 1098
    iput-boolean v13, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mEndOfStream:Z

    .line 1099
    iget-object v1, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->signalEndOfInputStream()V
    :try_end_566
    .catch Ljava/lang/Exception; {:try_start_556 .. :try_end_566} :catch_567

    goto :goto_56e

    :catch_567
    move-exception v0

    .line 1101
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 v0, -0xd5

    return v0

    .line 1107
    :cond_56e
    :goto_56e
    invoke-static {}, Lcom/ss/android/vesdk/VERuntimeConfig;->useSingleGLThread()Z

    move-result v1

    if-nez v1, :cond_579

    .line 1108
    iget-object v1, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_eglStateSaver:Lcom/ss/android/ttve/common/TEEglStateSaver;

    invoke-virtual {v1}, Lcom/ss/android/ttve/common/TEEglStateSaver;->makeSavedStateCurrent()V

    .line 1111
    :cond_579
    iget-boolean v1, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bSignalEndOfStream:Z

    if-eqz v1, :cond_597

    move v7, v2

    .line 1113
    :cond_57e
    iget-boolean v1, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mEndOfStream:Z

    if-nez v1, :cond_627

    const-wide/16 v1, 0x2710

    .line 1114
    invoke-direct {v0, v1, v2}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->drainOutputBuffer(J)I

    move-result v1

    if-eqz v1, :cond_58b

    return v1

    .line 1117
    :cond_58b
    iget v1, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mBufferIndex:I

    if-ltz v1, :cond_591

    goto/16 :goto_627

    :cond_591
    add-int/lit8 v7, v7, -0x1

    if-gtz v7, :cond_57e

    goto/16 :goto_627

    .line 1124
    :cond_597
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v1

    const-string v2, "byteVC1_10bit_hardware_encoder_timeout"

    invoke-virtual {v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object v1

    if-eqz v1, :cond_5bb

    .line 1125
    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5bb

    .line 1127
    iget-boolean v2, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bByteVC110BitHWDecoder:Z

    if-eqz v2, :cond_5b8

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_5b9

    :cond_5b8
    const/4 v1, 0x0

    :goto_5b9
    if-gtz v1, :cond_5bc

    :cond_5bb
    const/4 v1, 0x0

    :cond_5bc
    int-to-long v1, v1

    .line 1136
    invoke-direct {v0, v1, v2}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->drainOutputBuffer(J)I

    move-result v1

    if-eqz v1, :cond_5c4

    return v1

    .line 1139
    :cond_5c4
    iget-boolean v1, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bEncoderBanExtraDataLoop:Z

    if-nez v1, :cond_5cc

    iget-boolean v1, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->isEnableHwEncoderOpt:Z

    if-eqz v1, :cond_627

    .line 1140
    :cond_5cc
    iget-object v1, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->configByte:[B

    if-nez v1, :cond_5d7

    .line 1141
    const-string v0, "Skip extra data looper."

    invoke-static {v12, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    return v13

    :cond_5d7
    const/4 v13, 0x0

    .line 1144
    iget-wide v1, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mFirstFrameTimestamp:J

    const-wide/16 v22, 0x0

    cmp-long v3, v1, v22

    if-lez v3, :cond_627

    const-wide v9, 0x7fffffffffffffffL

    cmp-long v1, v1, v9

    if-eqz v1, :cond_627

    .line 1145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v7, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mFirstFrameTimestamp:J

    sub-long/2addr v1, v7

    .line 1146
    iput-wide v9, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mFirstFrameTimestamp:J

    .line 1147
    invoke-static {v13, v6, v1, v2}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 1148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    iget-object v1, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->AVCQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v1

    .line 1150
    const-string v2, "te_record_packet_count_before_extra_data"

    int-to-long v3, v1

    invoke-static {v13, v2, v3, v4}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 1151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TE_RECORD_PACKET_COUNT_BEFORE_EXTRA_DATA: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    :cond_627
    :goto_627
    iget-object v1, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->AVCQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;

    iput-object v1, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_lastCodecData:Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;

    if-eqz v1, :cond_63d

    .line 1160
    iget-object v1, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;->data:[B

    array-length v7, v1

    .line 1161
    iget-wide v1, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mPicSendCount:J

    add-long v1, v1, v17

    iput-wide v1, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mPicSendCount:J

    goto :goto_63e

    :cond_63d
    const/4 v7, 0x0

    .line 1163
    :goto_63e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HW_ENCODE AVCQueue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->AVCQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mPicSendCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mPicSendCount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mPicBufferCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mPicBufferCount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mPicEncodeCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mPicEncodeCount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :catch_677
    move-exception v0

    .line 850
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drainOutputBuffer exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x0

    new-array v1, v13, [Lcom/ss/android/vesdk/VELogUtil$LogData;

    invoke-static {v12, v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->formatLog(Ljava/lang/String;Ljava/lang/String;[Lcom/ss/android/vesdk/VELogUtil$LogData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0xd6

    return v0
.end method

.method public encodeYUV420([BIIJ)I
    .registers 18

    .line 566
    iget-wide v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mLastEncodeFramePTS:J

    cmp-long v0, v0, p4

    const-string v1, "TEAvcEncoder"

    const/4 v2, 0x0

    if-nez v0, :cond_f

    .line 567
    const-string p0, "inputBuffer repeat"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 598
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v7, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_17} :catch_9f

    const/16 v3, 0x1e

    move v9, v2

    :goto_1a
    const-wide/16 v10, 0x2710

    if-gez v0, :cond_48

    if-lez v3, :cond_48

    .line 601
    :try_start_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HW_ENCODE no inputBuffer maxCount = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    invoke-direct {p0, v7, v8}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->drainOutputBuffer(J)I

    move-result v9

    if-eqz v9, :cond_3b

    return v9

    .line 606
    :cond_3b
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    add-int/lit8 v3, v3, -0x1

    goto :goto_1a

    :catch_44
    move-exception v0

    move-object p0, v0

    move v2, v9

    goto :goto_a1

    :cond_48
    if-ltz v0, :cond_90

    .line 610
    invoke-direct {p0, v0}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->getInputBufferByIdx(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 611
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 612
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inputBuffer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", inputBufferIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    if-le p3, v1, :cond_79

    .line 614
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    move v3, v1

    goto :goto_7a

    :cond_79
    move v3, p3

    .line 616
    :goto_7a
    invoke-virtual {v2, p1, p2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move v1, v0

    .line 617
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-wide/from16 v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 618
    iput-wide v4, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mLastEncodeFramePTS:J

    .line 619
    iget-wide p1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mPicBufferCount:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mPicBufferCount:J

    .line 622
    :cond_90
    iget-object p1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->AVCQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ge p1, p2, :cond_9a

    move-wide v7, v10

    .line 625
    :cond_9a
    invoke-direct {p0, v7, v8}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->drainOutputBuffer(J)I

    move-result p0
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_9e} :catch_44

    return p0

    :catch_9f
    move-exception v0

    move-object p0, v0

    .line 630
    :goto_a1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v2
.end method

.method public getCodecData(I)[B
    .registers 2

    .line 1169
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_lastCodecData:Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;

    if-eqz p0, :cond_7

    .line 1170
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;->data:[B

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public getExtraData()[B
    .registers 1

    .line 1756
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->configByte:[B

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/4 p0, 0x0

    .line 1759
    new-array p0, p0, [B

    return-object p0
.end method

.method public getFrameCacheBuf()Ljava/nio/ByteBuffer;
    .registers 3

    .line 169
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mByteBuf:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_18

    .line 170
    iget v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_width:I

    iget v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_height:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mByteBuf:Ljava/nio/ByteBuffer;

    .line 171
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 173
    :cond_18
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mByteBuf:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 174
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mByteBuf:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public getInfoByFlag([JI)I
    .registers 6

    const/4 v0, 0x1

    if-ne p2, v0, :cond_10

    .line 1180
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_lastCodecData:Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;

    iget-wide v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;->pts:J

    const/4 p2, 0x0

    aput-wide v1, p1, p2

    .line 1181
    iget-wide v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;->dts:J

    aput-wide v1, p1, v0

    const/4 p0, 0x4

    return p0

    :cond_10
    const/4 p0, -0x1

    return p0
.end method

.method public getInputSurface()Landroid/view/Surface;
    .registers 1

    .line 315
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_surface:Landroid/view/Surface;

    return-object p0
.end method

.method public initEncoder(IIIIIIIIDZIIIDIZZ)I
    .registers 37
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p11

    move-wide/from16 v14, p15

    if-lez p17, :cond_b

    .line 235
    invoke-static/range {p17 .. p17}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->setEncodeResolutionAlign(I)V

    .line 237
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "m_mediaCodec initEncoder == enter transitionRatio "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TEAvcEncoder"

    invoke-static {v3, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v2

    const-string v4, "ve_enable_compile_hw_encoder_opt"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->isEnableHwEncoderOpt:Z

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEnableHwEncoderOpt: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->isEnableHwEncoderOpt:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iput-boolean v1, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_useInputSurface:Z

    if-eqz v1, :cond_52

    const v1, 0x7f000789

    .line 246
    iput v1, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_colorFormat:I

    goto :goto_56

    :cond_52
    move/from16 v1, p5

    .line 248
    iput v1, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_colorFormat:I

    .line 250
    :goto_56
    iget v7, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_colorFormat:I

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p4

    move/from16 v6, p6

    move/from16 v5, p7

    move/from16 v8, p8

    move-wide/from16 v9, p9

    move/from16 v11, p12

    move/from16 v12, p13

    move/from16 v13, p14

    move-object/from16 v16, v3

    move/from16 v3, p3

    invoke-direct/range {v0 .. v13}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->setEncoder(IIIIIIIIDIII)V

    const-wide/16 v1, 0x0

    cmpl-double v1, v14, v1

    if-lez v1, :cond_81

    const-wide/high16 v1, 0x4014000000000000L    # 5.0

    cmpg-double v1, v14, v1

    if-gez v1, :cond_81

    .line 252
    iput-wide v14, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_TransitionKeyframeRatio:D

    :cond_81
    const/4 v1, 0x1

    .line 255
    iput-boolean v1, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_isNeedReconfigure:Z

    .line 256
    iput-boolean v1, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bSuccessInit:Z

    const/4 v1, 0x0

    .line 257
    iput-boolean v1, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bSignalEndOfStream:Z

    move/from16 v2, p18

    .line 258
    iput-boolean v2, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bEncoderGLContextReuse:Z

    move/from16 v2, p19

    .line 259
    iput-boolean v2, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bEncoderBanExtraDataLoop:Z

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "avcencoder glcontext reuse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bEncoderGLContextReuse:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v16

    invoke-static {v3, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-direct {v0}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->configEncode()I

    move-result v2

    if-gez v2, :cond_ce

    .line 264
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v4

    const-string v5, "ve_mediacodec_resource_reasonable_distribute"

    invoke-virtual {v4, v5, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_ce

    .line 265
    iget v4, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_width_align:I

    iget v5, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_height_align:I

    mul-int/2addr v4, v5

    iget v5, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_frameRate:I

    mul-int/2addr v4, v5

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v4, v5}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->freeCodecBlocksSize(II)V

    :cond_ce
    if-nez v2, :cond_ee

    .line 268
    iget-boolean v4, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bEncoderBanExtraDataLoop:Z

    if-eqz v4, :cond_ee

    .line 269
    invoke-virtual {v0}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->startEncoder()I

    move-result v2

    if-eqz v2, :cond_ee

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start encoder failed on initEncoder: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_ee
    sget v0, Lcom/ss/android/vesdk/VERuntimeConfig;->sHardWareEncFallBack:I

    sget-object v4, Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;->VIDEO_ENC_INIT_FALLBACK:Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;

    invoke-virtual {v4}, Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;->getValue()I

    move-result v4

    if-ne v0, v4, :cond_ff

    .line 276
    const-string v0, "TESTING! HW VIDEO ENC INIT FALLBACK"

    invoke-static {v3, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    .line 279
    :cond_ff
    sput v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->file_count:I

    return v2
.end method

.method public initTextureDrawer()Z
    .registers 4

    .line 411
    iget-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bEncodeOESTexture:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    .line 412
    invoke-static {}, Lcom/ss/android/ttve/common/TETextureOESDrawer;->create()Lcom/ss/android/ttve/common/TETextureOESDrawer;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_textureOESDrawer:Lcom/ss/android/ttve/common/TETextureOESDrawer;

    if-nez v0, :cond_f

    return v2

    :cond_f
    return v1

    .line 418
    :cond_10
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_textureDrawer:Lcom/ss/android/ttve/common/TETextureDrawer;

    if-eqz v0, :cond_1a

    .line 419
    invoke-virtual {v0}, Lcom/ss/android/ttve/common/TETextureDrawer;->release()V

    const/4 v0, 0x0

    .line 420
    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_textureDrawer:Lcom/ss/android/ttve/common/TETextureDrawer;

    .line 422
    :cond_1a
    invoke-static {}, Lcom/ss/android/ttve/common/TETextureDrawer;->create()Lcom/ss/android/ttve/common/TETextureDrawer;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_textureDrawer:Lcom/ss/android/ttve/common/TETextureDrawer;

    if-nez v0, :cond_23

    return v2

    :cond_23
    const/4 v2, 0x0

    .line 426
    invoke-virtual {v0, v2}, Lcom/ss/android/ttve/common/TETextureDrawer;->setRotation(F)V

    .line 427
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_textureDrawer:Lcom/ss/android/ttve/common/TETextureDrawer;

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {p0, v0, v2}, Lcom/ss/android/ttve/common/TETextureDrawer;->setFlipScale(FF)V

    return v1
.end method

.method public releaseEncoder()V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->configByte:[B

    if-nez v0, :cond_7

    const-wide/16 v0, 0x1

    goto :goto_9

    :cond_7
    const-wide/16 v0, 0x0

    :goto_9
    const/4 v2, 0x0

    const-string v3, "te_record_is_stop_before_extra_data"

    invoke-static {v2, v3, v0, v1}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TE_RECORD_IS_STOP_BEFORE_EXTRA_DATA: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->configByte:[B

    if-nez v1, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    move v1, v2

    :goto_20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TEAvcEncoder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HW_ENCODE AVCQueue = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->AVCQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mPicSendCount = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mPicSendCount:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", mPicBufferCount = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mPicBufferCount:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", mPicEncodeCount = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mPicEncodeCount:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v0, "HW_ENCODE releaseEncoder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->stopEncoder()V

    .line 290
    const-string v0, "releaseEncoder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    if-eqz v0, :cond_a1

    .line 292
    const-string v0, "release mediaCodec"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 294
    iput-object v3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    .line 295
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v4, "ve_mediacodec_resource_reasonable_distribute"

    invoke-virtual {v0, v4, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 296
    iget v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_width_align:I

    iget v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_height_align:I

    mul-int/2addr v0, v2

    iget v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_frameRate:I

    mul-int/2addr v0, v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v0, v2}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->freeCodecBlocksSize(II)V

    .line 299
    :cond_a1
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_sharedContext:Lcom/ss/android/ttve/common/TESharedContext;

    if-eqz v0, :cond_b2

    .line 300
    iget-boolean v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bEncoderGLContextReuse:Z

    if-nez v2, :cond_ad

    .line 301
    invoke-virtual {v0}, Lcom/ss/android/ttve/common/TESharedContext;->release()V

    goto :goto_b0

    .line 303
    :cond_ad
    invoke-virtual {v0}, Lcom/ss/android/ttve/common/TESharedContext;->releaseSurface()V

    .line 305
    :goto_b0
    iput-object v3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_sharedContext:Lcom/ss/android/ttve/common/TESharedContext;

    .line 307
    :cond_b2
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_surface:Landroid/view/Surface;

    if-eqz v0, :cond_c2

    .line 308
    const-string v0, "release surface"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 310
    iput-object v3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_surface:Landroid/view/Surface;

    :cond_c2
    return-void
.end method

.method public releaseTextureDrawer()V
    .registers 3

    .line 433
    iget-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bEncodeOESTexture:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 434
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_textureOESDrawer:Lcom/ss/android/ttve/common/TETextureOESDrawer;

    if-eqz v0, :cond_13

    .line 435
    invoke-virtual {v0}, Lcom/ss/android/ttve/common/TETextureOESDrawer;->release()V

    .line 436
    iput-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_textureOESDrawer:Lcom/ss/android/ttve/common/TETextureOESDrawer;

    return-void

    .line 440
    :cond_f
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_textureDrawer:Lcom/ss/android/ttve/common/TETextureDrawer;

    if-nez v0, :cond_14

    :cond_13
    return-void

    .line 443
    :cond_14
    invoke-virtual {v0}, Lcom/ss/android/ttve/common/TETextureDrawer;->release()V

    .line 444
    iput-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_textureDrawer:Lcom/ss/android/ttve/common/TETextureDrawer;

    return-void
.end method

.method public restartEncoder()I
    .registers 5

    .line 538
    const-string v0, "TEAvcEncoder"

    const-string v1, "HW_ENCODE restartEncoder..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 539
    iput-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bNeedSingalEnd:Z

    .line 540
    invoke-virtual {p0}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->stopEncoder()V

    .line 541
    invoke-direct {p0}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->configEncode()I

    move-result v1

    if-gez v1, :cond_33

    .line 543
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v2

    const-string v3, "ve_mediacodec_resource_reasonable_distribute"

    invoke-virtual {v2, v3, v0}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 544
    iget v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_width_align:I

    iget v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_height_align:I

    mul-int/2addr v0, v2

    iget v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_frameRate:I

    mul-int/2addr v0, v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {v0, p0}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->freeCodecBlocksSize(II)V

    :cond_32
    return v1

    .line 548
    :cond_33
    invoke-virtual {p0}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->startEncoder()I

    move-result p0

    return p0
.end method

.method public setSharedEGLContext()V
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .line 558
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_eglStateSaver:Lcom/ss/android/ttve/common/TEEglStateSaver;

    if-nez v0, :cond_e

    .line 559
    new-instance v0, Lcom/ss/android/ttve/common/TEEglStateSaver;

    invoke-direct {v0}, Lcom/ss/android/ttve/common/TEEglStateSaver;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_eglStateSaver:Lcom/ss/android/ttve/common/TEEglStateSaver;

    .line 560
    invoke-virtual {v0}, Lcom/ss/android/ttve/common/TEEglStateSaver;->saveEGLState()V

    :cond_e
    return-void
.end method

.method public startEncoder()I
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 450
    const-string v0, "TEAvcEncoder"

    const-string v1, "startEncoder..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    :try_start_7
    iget-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_useInputSurface:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_68

    .line 465
    iget-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bEncoderGLContextReuse:Z

    const/16 v2, 0x3142

    if-eqz v0, :cond_3f

    .line 466
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_eglStateSaver:Lcom/ss/android/ttve/common/TEEglStateSaver;

    if-nez v0, :cond_20

    .line 467
    new-instance v0, Lcom/ss/android/ttve/common/TEEglStateSaver;

    invoke-direct {v0}, Lcom/ss/android/ttve/common/TEEglStateSaver;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_eglStateSaver:Lcom/ss/android/ttve/common/TEEglStateSaver;

    .line 468
    invoke-virtual {v0}, Lcom/ss/android/ttve/common/TEEglStateSaver;->saveEGLState()V

    .line 470
    :cond_20
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_sharedContext:Lcom/ss/android/ttve/common/TESharedContext;

    if-nez v0, :cond_37

    .line 471
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_eglStateSaver:Lcom/ss/android/ttve/common/TEEglStateSaver;

    .line 472
    invoke-virtual {v0}, Lcom/ss/android/ttve/common/TEEglStateSaver;->getSavedEGLContext()Landroid/opengl/EGLContext;

    move-result-object v0

    iget-object v3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_eglStateSaver:Lcom/ss/android/ttve/common/TEEglStateSaver;

    .line 473
    invoke-virtual {v3}, Lcom/ss/android/ttve/common/TEEglStateSaver;->getSavedDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v3

    const/4 v4, 0x0

    .line 471
    invoke-static {v0, v3, v4, v2}, Lcom/ss/android/ttve/common/TESharedContext;->createReuseGLContext(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I)Lcom/ss/android/ttve/common/TESharedContext;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_sharedContext:Lcom/ss/android/ttve/common/TESharedContext;

    .line 476
    :cond_37
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_sharedContext:Lcom/ss/android/ttve/common/TESharedContext;

    iget-object v3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_surface:Landroid/view/Surface;

    invoke-virtual {v0, v1, v1, v2, v3}, Lcom/ss/android/ttve/common/TESharedContext;->updateSurface(IIILjava/lang/Object;)Z

    goto :goto_60

    .line 478
    :cond_3f
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_sharedContext:Lcom/ss/android/ttve/common/TESharedContext;

    const/4 v3, -0x2

    if-nez v0, :cond_57

    .line 479
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_eglStateSaver:Lcom/ss/android/ttve/common/TEEglStateSaver;

    invoke-virtual {v0}, Lcom/ss/android/ttve/common/TEEglStateSaver;->getSavedEGLContext()Landroid/opengl/EGLContext;

    move-result-object v0

    iget-object v4, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_surface:Landroid/view/Surface;

    const/16 v5, 0x40

    invoke-static {v0, v5, v5, v2, v4}, Lcom/ss/android/ttve/common/TESharedContext;->create(Landroid/opengl/EGLContext;IIILjava/lang/Object;)Lcom/ss/android/ttve/common/TESharedContext;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_sharedContext:Lcom/ss/android/ttve/common/TESharedContext;

    if-nez v0, :cond_60

    return v3

    .line 484
    :cond_57
    iget-object v4, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_surface:Landroid/view/Surface;

    invoke-virtual {v0, v1, v1, v2, v4}, Lcom/ss/android/ttve/common/TESharedContext;->updateSurface(IIILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    return v3

    .line 489
    :cond_60
    :goto_60
    invoke-virtual {p0}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->initTextureDrawer()Z

    move-result v0

    if-nez v0, :cond_68

    const/4 p0, -0x3

    return p0

    .line 494
    :cond_68
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 495
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_encodeStartTime:J

    .line 496
    iput-boolean v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_isNeedReconfigure:Z

    .line 497
    iput-boolean v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mEndOfStream:Z
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_77} :catch_78

    return v1

    :catch_78
    move-exception p0

    .line 499
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public stopEncoder()V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/4 v0, 0x0

    .line 510
    :try_start_1
    iput-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bByteVC110BitHWDecoder:Z

    .line 512
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_sharedContext:Lcom/ss/android/ttve/common/TESharedContext;

    if-eqz v0, :cond_a

    .line 513
    invoke-virtual {v0}, Lcom/ss/android/ttve/common/TESharedContext;->makeCurrent()Z

    .line 516
    :cond_a
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_textureDrawer:Lcom/ss/android/ttve/common/TETextureDrawer;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 517
    invoke-virtual {v0}, Lcom/ss/android/ttve/common/TETextureDrawer;->release()V

    .line 518
    iput-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_textureDrawer:Lcom/ss/android/ttve/common/TETextureDrawer;

    .line 521
    :cond_14
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_textureOESDrawer:Lcom/ss/android/ttve/common/TETextureOESDrawer;

    if-eqz v0, :cond_1d

    .line 522
    invoke-virtual {v0}, Lcom/ss/android/ttve/common/TETextureOESDrawer;->release()V

    .line 523
    iput-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_textureOESDrawer:Lcom/ss/android/ttve/common/TETextureOESDrawer;

    .line 526
    :cond_1d
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    if-eqz p0, :cond_24

    .line 527
    invoke-virtual {p0}, Landroid/media/MediaCodec;->stop()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_25

    :cond_24
    return-void

    :catch_25
    move-exception p0

    .line 531
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
