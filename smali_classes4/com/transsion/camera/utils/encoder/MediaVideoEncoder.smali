.class public Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;
.super Lcom/transsion/camera/utils/encoder/MediaEncoder;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field protected static recognizedFormats:[I


# instance fields
.field private final mHeight:I

.field private mReleaseRequested:Z

.field private mRenderHandler:Lcom/transsion/camera/utils/encoder/RenderHandler;

.field private mSurface:Landroid/view/Surface;

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 16
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MediaVideoEncoder"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const v0, 0x7f000789

    .line 232
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->recognizedFormats:[I

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;III)V
    .registers 13

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 31
    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;-><init>(Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaFrameTimeStamp;III)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaFrameTimeStamp;III)V
    .registers 7

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/utils/encoder/MediaEncoder;-><init>(Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaFrameTimeStamp;)V

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->mReleaseRequested:Z

    .line 36
    sget-object p1, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "MediaVideoEncoder: "

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 37
    iput p4, p0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->mWidth:I

    .line 38
    iput p5, p0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->mHeight:I

    .line 39
    const-string p1, "MediaVideoEncoder"

    invoke-static {p1, p6}, Lcom/transsion/camera/utils/encoder/RenderHandler;->createHandler(Ljava/lang/String;I)Lcom/transsion/camera/utils/encoder/RenderHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->mRenderHandler:Lcom/transsion/camera/utils/encoder/RenderHandler;

    return-void
.end method

.method private calcBitRate()I
    .registers 4

    .line 160
    iget v0, p0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->mWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40c80000    # 6.25f

    mul-float/2addr v0, v1

    iget p0, p0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->mHeight:I

    int-to-float p0, p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    .line 161
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    int-to-float v1, p0

    const/high16 v2, 0x44800000    # 1024.0f

    div-float/2addr v1, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "bitrate=%5.2f[Mbps]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method private static final isRecognizedViewoFormat(I)Z
    .registers 5

    .line 241
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRecognizedViewoFormat:colorFormat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 242
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->recognizedFormats:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    array-length v0, v0

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    move v2, v1

    :goto_1f
    if-ge v2, v0, :cond_2c

    .line 244
    sget-object v3, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->recognizedFormats:[I

    aget v3, v3, v2

    if-ne v3, p0, :cond_29

    const/4 p0, 0x1

    return p0

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_2c
    return v1
.end method

.method protected static final selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I
    .registers 7

    .line 203
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "selectColorFormat: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 207
    :try_start_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 208
    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_55

    .line 210
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setPriority(I)V

    const/4 v0, 0x0

    move v2, v0

    .line 213
    :goto_1e
    iget-object v3, v1, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v4, v3

    if-ge v2, v4, :cond_30

    .line 214
    aget v3, v3, v2

    .line 215
    invoke-static {v3}, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->isRecognizedViewoFormat(I)Z

    move-result v4

    if-eqz v4, :cond_2d

    move v0, v3

    goto :goto_30

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_30
    :goto_30
    if-nez v0, :cond_54

    .line 222
    sget-object v1, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t find a good color format for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " / "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_54
    return v0

    :catchall_55
    move-exception p0

    .line 210
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 211
    throw p0
.end method

.method protected static final selectVideoCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .registers 10

    .line 172
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "selectVideoCodec:"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 175
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    if-ge v2, v0, :cond_5b

    .line 177
    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 179
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_1a

    goto :goto_58

    .line 183
    :cond_1a
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    move v5, v1

    .line 184
    :goto_1f
    array-length v6, v4

    if-ge v5, v6, :cond_58

    .line 185
    aget-object v6, v4, v5

    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_55

    .line 186
    sget-object v6, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "codec:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",MIME="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v4, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 187
    invoke-static {v3, p0}, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_55

    return-object v3

    :cond_55
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_58
    :goto_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_5b
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public frameAvailableSoon(I[F)Z
    .registers 11

    .line 43
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->mRenderHandler:Lcom/transsion/camera/utils/encoder/RenderHandler;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/RenderHandler;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 45
    :cond_a
    invoke-super {p0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->frameAvailableSoon()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 46
    iget-wide v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mFirstFrameTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    const-wide/16 v2, 0x3e8

    if-nez v1, :cond_24

    .line 47
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    div-long/2addr v4, v2

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mFirstFrameTime:J

    .line 49
    :cond_24
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    div-long/2addr v4, v2

    .line 50
    iget-wide v6, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mFirstFrameTime:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mTotalPauseTime:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mPresentationTime:J

    .line 53
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->mRenderHandler:Lcom/transsion/camera/utils/encoder/RenderHandler;

    iget-wide v4, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mPresentationTime:J

    mul-long/2addr v4, v2

    invoke-virtual {v1, p1, p2, v4, v5}, Lcom/transsion/camera/utils/encoder/RenderHandler;->draw(I[FJ)V

    :cond_39
    return v0
.end method

.method public getRecordingDuration()J
    .registers 5

    .line 269
    iget-wide v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->prevOutputPTSUs:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1e

    add-long/2addr v0, v2

    return-wide v0
.end method

.method protected prepare()V
    .registers 8

    .line 85
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "prepare: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 86
    iput v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mTrackIndex:I

    const/4 v1, 0x0

    .line 87
    iput-boolean v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mIsEOS:Z

    iput-boolean v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMuxerStarted:Z

    .line 89
    const-string v2, "video/avc"

    invoke-static {v2}, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->selectVideoCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v3

    if-nez v3, :cond_1d

    .line 91
    const-string p0, "Unable to find an appropriate codec for video/avc"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 94
    :cond_1d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selected codec: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 96
    iget v3, p0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->mWidth:I

    iget v4, p0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->mHeight:I

    invoke-static {v2, v3, v4}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v3

    .line 97
    const-string v4, "color-format"

    const v5, 0x7f000789

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 98
    const-string v4, "bitrate"

    invoke-direct {p0}, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->calcBitRate()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 99
    const-string v4, "frame-rate"

    const/16 v5, 0x19

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 100
    const-string v4, "i-frame-interval"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "format: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 103
    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    .line 104
    invoke-virtual {v2, v3, v4, v4, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 107
    iget-object v2, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->mSurface:Landroid/view/Surface;

    .line 108
    iget-object v2, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    .line 109
    iput-boolean v1, p0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->mReleaseRequested:Z

    .line 110
    const-string v1, "prepare finishing"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

    if-eqz v0, :cond_9d

    .line 113
    :try_start_91
    invoke-interface {v0, p0}, Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;->onPrepared(Lcom/transsion/camera/utils/encoder/MediaEncoder;)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_94} :catch_95

    return-void

    :catch_95
    move-exception p0

    .line 115
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "prepare:"

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9d
    return-void
.end method

.method protected release()V
    .registers 6

    .line 130
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "release start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 131
    iput-boolean v1, p0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->mReleaseRequested:Z

    .line 132
    invoke-super {p0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->release()V

    .line 133
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mWeakMuxer:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    goto :goto_1a

    :cond_19
    move-object v1, v2

    .line 134
    :goto_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "muxer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v1, :cond_3e

    .line 136
    invoke-virtual {v1}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 137
    const-string v3, "muxer is enCoderLock"

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 138
    invoke-virtual {v1}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->enCoderLock()V

    .line 141
    :cond_3e
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

    if-eqz v0, :cond_4f

    const/4 v1, -0x1

    .line 143
    :try_start_43
    invoke-interface {v0, p0, v1}, Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;->onStopped(Lcom/transsion/camera/utils/encoder/MediaEncoder;I)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_4f

    :catch_47
    move-exception v0

    .line 145
    sget-object v1, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "failed onStopped"

    invoke-static {v1, v3, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    :cond_4f
    :goto_4f
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_58

    .line 149
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 150
    iput-object v2, p0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->mSurface:Landroid/view/Surface;

    .line 152
    :cond_58
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->mRenderHandler:Lcom/transsion/camera/utils/encoder/RenderHandler;

    if-eqz v0, :cond_61

    .line 153
    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/RenderHandler;->release()V

    .line 154
    iput-object v2, p0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->mRenderHandler:Lcom/transsion/camera/utils/encoder/RenderHandler;

    .line 156
    :cond_61
    sget-object p0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "release end"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setEglContext(Landroid/opengl/EGLContext;)V
    .registers 4

    .line 121
    iget-boolean v0, p0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->mReleaseRequested:Z

    if-eqz v0, :cond_c

    .line 122
    sget-object p0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "setEglContext release requested, do not set EGL context."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 125
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->mRenderHandler:Lcom/transsion/camera/utils/encoder/RenderHandler;

    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->mSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Lcom/transsion/camera/utils/encoder/RenderHandler;->setEglContext(Landroid/opengl/EGLContext;Landroid/view/Surface;Z)V

    return-void
.end method

.method protected signalEndOfInputStream()V
    .registers 4

    .line 253
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "sending EOS to encoder"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 255
    :try_start_7
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1f

    .line 256
    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_f

    goto :goto_1f

    :catch_f
    move-exception v0

    .line 259
    sget-object v1, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "sending EOS onError"

    invoke-static {v1, v2, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 261
    :try_start_17
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->reset()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1c} :catch_1c

    .line 263
    :catch_1c
    invoke-virtual {p0}, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->release()V

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    .line 265
    iput-boolean v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mIsEOS:Z

    return-void
.end method
