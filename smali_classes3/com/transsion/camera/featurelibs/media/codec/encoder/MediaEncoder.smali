.class public Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;
.super Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder$EncoderCallback;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private volatile mEncoderHandler:Landroid/os/Handler;

.field private final mEncoderListener:Lcom/transsion/camera/featurelibs/media/codec/encoder/IEncoderListener;

.field private final mEncoderSource:Lcom/transsion/camera/featurelibs/media/codec/encoder/IEncoderInput;

.field private volatile mMediaEncoder:Landroid/media/MediaCodec;

.field private volatile mTrackIndex:I


# direct methods
.method static bridge synthetic -$$Nest$monError(Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monInputBufferAvailable(Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;Landroid/media/MediaCodec;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->onInputBufferAvailable(Landroid/media/MediaCodec;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monOutputBufferAvailable(Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monOutputFormatChanged(Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 35
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MediaEncoder"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/featurelibs/media/codec/encoder/IEncoderInput;Lcom/transsion/camera/featurelibs/media/codec/encoder/IEncoderListener;)V
    .registers 4

    .line 51
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;-><init>()V

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->mTrackIndex:I

    .line 52
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->mEncoderSource:Lcom/transsion/camera/featurelibs/media/codec/encoder/IEncoderInput;

    .line 53
    iput-object p2, p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->mEncoderListener:Lcom/transsion/camera/featurelibs/media/codec/encoder/IEncoderListener;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/featurelibs/media/codec/encoder/IEncoderListener;)V
    .registers 3

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;-><init>(Lcom/transsion/camera/featurelibs/media/codec/encoder/IEncoderInput;Lcom/transsion/camera/featurelibs/media/codec/encoder/IEncoderListener;)V

    return-void
.end method

.method private onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .registers 6

    .line 323
    sget-object v0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 324
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->mEncoderListener:Lcom/transsion/camera/featurelibs/media/codec/encoder/IEncoderListener;

    if-nez p0, :cond_24

    .line 326
    const-string p0, "onError mEncoderListener is null"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 329
    :cond_24
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/featurelibs/media/codec/encoder/IEncoderListener;->onError(Landroid/media/MediaCodec;Ljava/lang/Exception;)V

    return-void
.end method

.method private onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .registers 13

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->mCurrentState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-eq v1, v0, :cond_27

    const/4 v1, 0x3

    if-eq v1, v0, :cond_27

    .line 239
    sget-object p1, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInputBufferAvailable invalid state: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->stateDescription(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 243
    :cond_27
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->mEncoderSource:Lcom/transsion/camera/featurelibs/media/codec/encoder/IEncoderInput;

    .line 244
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->mMediaEncoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_35

    .line 246
    sget-object p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onInputBufferAvailable mEncodeSource is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_35
    if-nez v1, :cond_3f

    .line 251
    sget-object p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onInputBufferAvailable mMediaEncoder is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 256
    :cond_3f
    :try_start_3f
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-nez v1, :cond_4d

    .line 258
    sget-object p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onInputBufferAvailable encoderBuffer is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 262
    :cond_4d
    new-instance v2, Lcom/transsion/camera/featurelibs/media/codec/encoder/FrameInfo;

    invoke-direct {v2, v1}, Lcom/transsion/camera/featurelibs/media/codec/encoder/FrameInfo;-><init>(Ljava/nio/ByteBuffer;)V

    .line 264
    invoke-interface {v0, v2}, Lcom/transsion/camera/featurelibs/media/codec/encoder/IEncoderInput;->fillInput(Lcom/transsion/camera/featurelibs/media/codec/encoder/FrameInfo;)V

    .line 267
    sget-object v0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queueInputBuffer mTrackIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->mTrackIndex:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", presentationTime: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v2}, Lcom/transsion/camera/featurelibs/media/codec/encoder/FrameInfo;->getPresentationTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 267
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 271
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    invoke-virtual {v2}, Lcom/transsion/camera/featurelibs/media/codec/encoder/FrameInfo;->getPresentationTime()J

    move-result-wide v7

    const/4 v9, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_88} :catch_89

    return-void

    :catch_89
    move-exception v0

    move-object p0, v0

    .line 273
    sget-object p1, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "onInputBufferAvailable"

    invoke-static {p1, p2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .registers 8

    .line 279
    sget-object v0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOutputBufferAvailable mTrackIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->mTrackIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 282
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->mCurrentState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x2

    if-eq v2, v1, :cond_45

    const/4 v2, 0x3

    if-eq v2, v1, :cond_45

    .line 284
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onOutputBufferAvailable invalid state: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->stateDescription(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 288
    :cond_45
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->mMediaEncoder:Landroid/media/MediaCodec;

    .line 289
    iget-object v2, p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->mEncoderListener:Lcom/transsion/camera/featurelibs/media/codec/encoder/IEncoderListener;

    if-nez v1, :cond_51

    .line 292
    const-string p0, "onOutputBufferAvailable mMediaEncoder is null"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_51
    if-nez v2, :cond_59

    .line 297
    const-string p0, "onOutputBufferAvailable mEncoderListener is null"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 302
    :cond_59
    :try_start_59
    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_69

    .line 303
    const-string p0, "onOutputBufferAvailable audioEncodeEnd"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 304
    invoke-virtual {p1, p2, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void

    .line 308
    :cond_69
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-nez v1, :cond_75

    .line 310
    const-string p0, "onOutputBufferAvailable buffer is null"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 314
    :cond_75
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->mTrackIndex:I

    invoke-interface {v2, p0, v1, p3}, Lcom/transsion/camera/featurelibs/media/codec/encoder/IEncoderListener;->onEncoded(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 316
    invoke-virtual {p1, p2, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_7d} :catch_7e

    return-void

    :catch_7e
    move-exception p0

    .line 318
    sget-object p1, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "onOutputBufferAvailable"

    invoke-static {p1, p2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .registers 4

    .line 333
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->mEncoderListener:Lcom/transsion/camera/featurelibs/media/codec/encoder/IEncoderListener;

    if-nez v0, :cond_c

    .line 335
    sget-object p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onOutputFormatChanged mEncoderListener is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 338
    :cond_c
    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/featurelibs/media/codec/encoder/IEncoderListener;->onEncoderPrepared(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->mTrackIndex:I

    .line 339
    sget-object p1, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onOutputFormatChanged mTrackIndex: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->mTrackIndex:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createInputSurface()Landroid/view/Surface;
    .registers 6

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->mCurrentState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_2a

    if-eqz v0, :cond_2a

    const/4 v1, 0x6

    if-ne v1, v0, :cond_10

    goto :goto_2a

    .line 90
    :cond_10
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->mMediaEncoder:Landroid/media/MediaCodec;

    if-nez p0, :cond_1c

    .line 92
    sget-object p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "createInputSurface mMediaEncoder is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v2

    .line 97
    :cond_1c
    :try_start_1c
    invoke-virtual {p0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object p0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_20} :catch_21

    return-object p0

    :catch_21
    move-exception p0

    .line 99
    sget-object v0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "createInputSurface exception"

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    .line 86
    :cond_2a
    :goto_2a
    sget-object v1, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createInputSurface invalid state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->stateDescription(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v2
.end method

.method public pause()V
    .registers 5

    .line 168
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->pause()V

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->mMediaEncoder:Landroid/media/MediaCodec;

    .line 170
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->mEncoderHandler:Landroid/os/Handler;

    if-eqz v1, :cond_d

    const/4 v2, 0x0

    .line 172
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_d
    if-nez v0, :cond_17

    .line 175
    sget-object p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "pause mMediaEncoder is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 179
    :cond_17
    :try_start_17
    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_2a

    :catch_1b
    move-exception v1

    .line 181
    sget-object v2, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "pause exception"

    invoke-static {v2, v3, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->mEncoderListener:Lcom/transsion/camera/featurelibs/media/codec/encoder/IEncoderListener;

    if-eqz p0, :cond_2a

    .line 184
    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/featurelibs/media/codec/encoder/IEncoderListener;->onError(Landroid/media/MediaCodec;Ljava/lang/Exception;)V

    .line 187
    :cond_2a
    :goto_2a
    sget-object p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "flushed"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public prepare()V
    .registers 7

    .line 58
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->prepare()V

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->mParam:Ljava/lang/Object;

    if-nez v0, :cond_f

    .line 61
    sget-object p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "prepare mParam is null, config first"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 65
    :cond_f
    check-cast v0, Lcom/transsion/camera/featurelibs/media/codec/base/BaseParam;

    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseParam;->mediaFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 66
    const-string v1, "mime"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_89

    .line 71
    sget-object v2, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepare mediaFormat: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 73
    new-instance v3, Landroid/os/HandlerThread;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EncoderThread_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 75
    new-instance v4, Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v4, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->mEncoderHandler:Landroid/os/Handler;

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startEncoderThread_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 78
    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->mMediaEncoder:Landroid/media/MediaCodec;

    .line 79
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->mMediaEncoder:Landroid/media/MediaCodec;

    new-instance v2, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder$EncoderCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder$EncoderCallback;-><init>(Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder-IA;)V

    iget-object v4, p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->mEncoderHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v4}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->mMediaEncoder:Landroid/media/MediaCodec;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v3, v3, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-void

    .line 68
    :cond_89
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "MediaFormat mime is empty!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public release()V
    .registers 5

    .line 199
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->release()V

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->mMediaEncoder:Landroid/media/MediaCodec;

    .line 201
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->mEncoderHandler:Landroid/os/Handler;

    if-eqz v1, :cond_17

    .line 203
    sget-object v2, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "stopEncoderThread"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    :cond_17
    if-eqz v0, :cond_25

    .line 208
    :try_start_19
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_25

    :catch_1d
    move-exception v0

    .line 210
    sget-object v1, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "release exception"

    invoke-static {v1, v2, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_25
    :goto_25
    const/4 v0, 0x0

    .line 213
    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->mMediaEncoder:Landroid/media/MediaCodec;

    return-void
.end method

.method public reset()V
    .registers 2

    .line 192
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->reset()V

    const/4 v0, 0x0

    .line 193
    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->mParam:Ljava/lang/Object;

    .line 194
    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->release()V

    return-void
.end method

.method public resume()V
    .registers 5

    .line 149
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->resume()V

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->mMediaEncoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_f

    .line 152
    sget-object p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "resume mMediaEncoder is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 156
    :cond_f
    :try_start_f
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v1

    .line 158
    sget-object v2, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "resume exception"

    invoke-static {v2, v3, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->mEncoderListener:Lcom/transsion/camera/featurelibs/media/codec/encoder/IEncoderListener;

    if-eqz p0, :cond_22

    .line 161
    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/featurelibs/media/codec/encoder/IEncoderListener;->onError(Landroid/media/MediaCodec;Ljava/lang/Exception;)V

    :cond_22
    return-void
.end method

.method public signalEndOfInputStream()V
    .registers 5

    .line 217
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->mCurrentState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_2b

    if-eqz v0, :cond_2b

    const/4 v1, 0x5

    if-eq v1, v0, :cond_2b

    const/4 v1, 0x6

    if-ne v1, v0, :cond_12

    goto :goto_2b

    .line 224
    :cond_12
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->mMediaEncoder:Landroid/media/MediaCodec;

    if-nez p0, :cond_1e

    .line 226
    sget-object p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "signalEndOfInputStream mMediaEncoder is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 230
    :cond_1e
    :try_start_1e
    invoke-virtual {p0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_22

    return-void

    :catch_22
    move-exception p0

    .line 232
    sget-object v0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "signalEndOfInputStream exception"

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 220
    :cond_2b
    :goto_2b
    sget-object v1, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "signalEndOfInputStream invalid state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->stateDescription(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .registers 5

    .line 107
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->start()V

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->mMediaEncoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_f

    .line 110
    sget-object p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "start mMediaEncoder is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 114
    :cond_f
    :try_start_f
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v1

    .line 116
    sget-object v2, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "start exception"

    invoke-static {v2, v3, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->mEncoderListener:Lcom/transsion/camera/featurelibs/media/codec/encoder/IEncoderListener;

    if-eqz p0, :cond_22

    .line 119
    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/featurelibs/media/codec/encoder/IEncoderListener;->onError(Landroid/media/MediaCodec;Ljava/lang/Exception;)V

    :cond_22
    return-void
.end method

.method public stop()V
    .registers 5

    .line 126
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->stop()V

    .line 127
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->mMediaEncoder:Landroid/media/MediaCodec;

    .line 128
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->mEncoderHandler:Landroid/os/Handler;

    if-eqz v1, :cond_d

    const/4 v2, 0x0

    .line 130
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_d
    if-nez v0, :cond_17

    .line 133
    sget-object p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "stop mMediaEncoder is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 137
    :cond_17
    :try_start_17
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_1b

    return-void

    :catch_1b
    move-exception v1

    .line 139
    sget-object v2, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "stop exception"

    invoke-static {v2, v3, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->mEncoderListener:Lcom/transsion/camera/featurelibs/media/codec/encoder/IEncoderListener;

    if-eqz p0, :cond_2a

    .line 142
    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/featurelibs/media/codec/encoder/IEncoderListener;->onError(Landroid/media/MediaCodec;Ljava/lang/Exception;)V

    :cond_2a
    return-void
.end method
